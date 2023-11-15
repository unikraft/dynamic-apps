-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local log = require "kong.cmd.utils.log"
local stop = require "kong.cmd.stop"
local kill = require "kong.cmd.utils.kill"
local start = require "kong.cmd.start"
local pl_path = require "pl.path"
local conf_loader = require "kong.conf_loader"

local function execute(args)
  local conf

  log.disable()

  if args.prefix then
    conf = assert(conf_loader(pl_path.join(args.prefix, ".kong_env")))

  else
    conf = assert(conf_loader(args.conf))
    args.prefix = conf.prefix
  end

  pcall(stop.execute, args, { quiet = true })

  log.enable()

  -- ensure Nginx stopped
  local texp = ngx.time() + 5 -- 5s
  local running
  repeat
    ngx.sleep(0.1)
    running = kill.is_running(conf.nginx_pid)
  until not running or ngx.time() >= texp

  start.execute(args)
end

local lapp = [[
Usage: kong restart [OPTIONS]

Restart a Kong node (and other configured services like Serf)
in the given prefix directory.

This command is equivalent to doing both 'kong stop' and
'kong start'.

Options:
 -c,--conf        (optional string)   configuration file
 -p,--prefix      (optional string)   prefix at which Kong should be running
 --nginx-conf     (optional string)   custom Nginx configuration template
 --run-migrations (optional boolean)  optionally run migrations on the DB
 --db-timeout     (default 60)
 --lock-timeout   (default 60)
]]

return {
  lapp = lapp,
  execute = execute
}
