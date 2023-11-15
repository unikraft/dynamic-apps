-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local migrations_utils = require "kong.cmd.utils.migrations"
local prefix_handler = require "kong.cmd.utils.prefix_handler"
local nginx_signals = require "kong.cmd.utils.nginx_signals"
local conf_loader = require "kong.conf_loader"
local kong_global = require "kong.global"
local kill = require "kong.cmd.utils.kill"
local log = require "kong.cmd.utils.log"
local DB = require "kong.db"
local lfs = require "lfs"

local fmt = string.format

local function list_fields(db, tname)

  local qs = {
    postgres = function()
      return fmt("SELECT column_name FROM information_schema.columns WHERE table_schema='%s' and table_name='%s';",
        db.connector.config.schema,
        tname)
    end,
    cassandra = function()
      -- Handle schema system tables and column name differences between Apache
      -- Cassandra version
      if db.connector.major_version >= 3 then
        return fmt("SELECT column_name FROM system_schema.columns WHERE keyspace_name='%s' and table_name='%s';",
          db.connector.keyspace,
          tname)
      else
        return fmt("SELECT column_name FROM system.schema_columns WHERE keyspace_name='%s' and columnfamily_name='%s';",
          db.connector.keyspace,
          tname)
      end
    end,
    off = function()
      return setmetatable({}, {
        __index = function()
          return true
      end})
    end,
  }

  if not qs[db.strategy] then
    return {}
  end

  local fields = {}
  local rows, err = db.connector:query(qs[db.strategy]())

  if err then
    return nil, err
  end
  for _, v in ipairs(rows) do
    local _,vv = next(v)
    fields[vv]=true
  end

  return fields
end

local function has_ws_id_in_db(db, tname)
  local res, err = list_fields(db, tname)
  if err then
    return nil, err
  end
  return res.ws_id
end

local function custom_wspaced_entities(db, conf)
  local ret = {}
  local strategy = db.strategy

  if strategy ~= 'postgres' and  strategy ~= 'cassandra' then
    return false
  end

  db.plugins:load_plugin_schemas(conf.loaded_plugins)

  for k, v in pairs(db.daos) do
    local schema = v.schema
    if schema.workspaceable and not has_ws_id_in_db(db, schema.table_name) then -- we have to check at db level
      table.insert(ret, k)
    end
  end

  return #ret>0 and ret
end

local function is_socket(path)
  return lfs.attributes(path, "mode") == "socket"
end

local function cleanup_dangling_unix_sockets(prefix)
  local found = {}

  for child in lfs.dir(prefix) do
    local path = prefix .. "/" .. child
    if is_socket(path) then
      table.insert(found, path)
    end
  end

  if #found < 1 then
    return
  end

  log.warn("Found dangling unix sockets in the prefix directory (%q) while " ..
           "preparing to start Kong. This may be a sign that Kong was " ..
           "previously shut down uncleanly or is in an unknown state and " ..
           "could require further investigation.",
           prefix)

  log.warn("Attempting to remove dangling sockets before starting Kong...")

  for _, sock in ipairs(found) do
    if is_socket(sock) then
      log.warn("removing unix socket: %s", sock)
      assert(os.remove(sock))
    end
  end
end

local function execute(args)
  args.db_timeout = args.db_timeout * 1000
  args.lock_timeout = args.lock_timeout

  local conf = assert(conf_loader(args.conf, {
    prefix = args.prefix
  }, { starting = true }))

  conf.pg_timeout = args.db_timeout -- connect + send + read

  conf.cassandra_timeout = args.db_timeout -- connect + send + read
  conf.cassandra_schema_consensus_timeout = args.db_timeout

  assert(not kill.is_running(conf.nginx_pid),
         "Kong is already running in " .. conf.prefix)

  assert(prefix_handler.prepare_prefix(conf, args.nginx_conf))

  cleanup_dangling_unix_sockets(conf.prefix)

  _G.kong = kong_global.new()
  kong_global.init_pdk(_G.kong, conf)

  local db = assert(DB.new(conf))
  assert(db:init_connector())

  local schema_state = assert(db:schema_state())
  local err

  xpcall(function()
    if not schema_state:is_up_to_date() and args.run_migrations then
      migrations_utils.up(schema_state, db, {
        ttl = args.lock_timeout,
      })

      schema_state = assert(db:schema_state())
    end

    migrations_utils.check_state(schema_state)

    if schema_state.missing_migrations or schema_state.pending_migrations then
      local r = ""
      if schema_state.missing_migrations then
        log.info("Database is missing some migrations:\n%s",
                 tostring(schema_state.missing_migrations))

        r = "\n\n"
      end

      if schema_state.pending_migrations then
        log.info("%sDatabase has pending migrations:\n%s",
                 r, tostring(schema_state.pending_migrations))
      end
    end

    local non_migrated_entities = custom_wspaced_entities(db, conf)
    local tx = require("pl.tablex")
    if non_migrated_entities then
      log.info(table.concat(
        {"This instance contains workspaced entities that need a custom migration.",
         "please use the provided helpers to migrate them: ",
         unpack(tx.imap(
           function(x)
             return "kong migrations upgrade-workspace-table " .. x
           end,
           non_migrated_entities))
        }, "\n"))
      error("non-migrated entities")
    end

    assert(nginx_signals.start(conf))

    log("Kong started")
  end, function(e)
    -- cannot throw from this function
    err = e or "unknown error"
  end)

  if err then
    log.verbose("could not start Kong, stopping services")
    pcall(nginx_signals.stop, conf)
    log.verbose("stopped services")
    error(err) -- report to main error handler
  end
end

local lapp = [[
Usage: kong start [OPTIONS]

Start Kong (Nginx and other configured services) in the configured
prefix directory.

Options:
 -c,--conf        (optional string)   Configuration file.

 -p,--prefix      (optional string)   Override prefix directory.

 --nginx-conf     (optional string)   Custom Nginx configuration template.

 --run-migrations (optional boolean)  Run migrations before starting.

 --db-timeout     (default 60)        Timeout, in seconds, for all database
                                      operations (including schema consensus for
                                      Cassandra).

 --lock-timeout   (default 60)        When --run-migrations is enabled, timeout,
                                      in seconds, for nodes waiting on the
                                      leader node to finish running migrations.
]]

return {
  lapp = lapp,
  execute = execute
}
