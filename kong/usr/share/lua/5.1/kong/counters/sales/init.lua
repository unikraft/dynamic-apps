-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local kong             = kong
local utils            = require "kong.tools.utils"
local counters_service = require "kong.counters"
local workspace_counters = require "kong.workspaces.counters"


local timer_at   = ngx.timer.at
local log        = ngx.log
local INFO       = ngx.INFO
local DEBUG      = ngx.DEBUG
local ERR        = ngx.ERR

local knode  = (kong and kong.node) and kong.node or
  require "kong.pdk.node".new()


local FLUSH_LOCK_KEY = "counters:sales:flush_lock"
local _log_prefix = "[sales counters] "

local EMPTY = {}


local _M = {}
local mt = { __index = _M }


local METRICS = {
  requests = "request_count"
}

local UNLICENSED = {
  ["payload"] = {
    ["admin_seats"] = "0",
    ["customer"] = "UNLICENSED",
    ["dataplanes"] = "0",
    ["license_creation_date"] = "2017-07-20",
    ["license_expiration_date"] = "2017-7-20",
    ["license_key"] = "UNLICENSED",
    ["product_subscription"] = "UNLICENSED",
    ["support_plan"] = "UNLICENSED",
  },
  ["signature"] = "UNLICENSED",
  ["version"] = "v1"
}

local persistence_handler

persistence_handler = function(premature, self)
  if premature then
    -- we could flush counters now
    return
  end

  if self.hybrid_cp then
   -- we don't need to run it in hybdrid_cp mode
   return
  end

  -- if we've drifted, get back in sync
  local delay = self.flush_interval
  local when  = delay - (ngx.now() - (math.floor(ngx.now() / delay) * delay))

  -- only adjust if we're off by 1 second or more, otherwise we spawn
  -- a gazillion timers and run out of memory.
  when = when < 1 and delay or when

  local ok, err = timer_at(when, persistence_handler, self)
  if not ok then
    return nil, "failed to start recurring vitals timer (2): " .. err
  end

  local _, err = self:flush_data()
  if err then
    log(ERR, _log_prefix, "flush_counters() threw an error: ", err)
  end
end

local function get_license_data()
  return kong.license and
         kong.license.license and
         kong.license.license.payload or
         UNLICENSED.payload
end

-- retrieves all merged counters data from all nodes that is stored in the database
local function get_counters_data(strategy)
  return strategy:pull_data()
end

local function get_workspaces_count()
  local n = 0
  for _, err in kong.db.workspaces:each() do
    if err then
      kong.log.warn("failed to get count of workspaces: ", err)
      return nil
    end

    n = n + 1
  end
  return n
end

local function get_workspace_entity_counts()
  local counts, err = workspace_counters.entity_counts()

  if not counts then
    log(ERR, _log_prefix, "failed to retrieve entity counts: ", err)
  end

  return counts or EMPTY
end

local function merge_counter(counter_data)
  local final_counter = 0
  if counter_data then
    for _, counter in pairs(counter_data) do
      final_counter = final_counter + counter
    end
  end
  return final_counter
end


function _M.new(opts)
  local strategy = opts.strategy
  local hybrid_cp = false

  if kong.configuration.role ~= "traditional" then
    local db_strategy = require "kong.counters.sales.strategies.clustering"
    local err
    strategy, err = db_strategy.new(strategy, {
      node_id = opts.node_id
    })
    if not strategy then
      log(ERR, _log_prefix, "failed to initialize strategy, check: ", err)
      return
    end
    hybrid_cp = kong.configuration.role == "control_plane"
    log(DEBUG, _log_prefix, "loading clustering strategy, is CP: ", hybrid_cp)
  end

  local self = {
    list_cache     = ngx.shared.kong_counters,
    flush_interval = opts.flush_interval or 60,
    strategy = strategy,
    counters = counters_service.new({
      name = "sales"
    }),
    hybrid_cp = hybrid_cp,
  }

  self.counters:add_key(METRICS.requests)
  return setmetatable(self, mt)
end

function _M:init()
  -- get node id (uuid)
  local node_id, err = knode.get_id()
  if err then
    log(ERR, _log_prefix, "failed to get node_id ", err)
    return
  end

  -- init strategy, recording node id and hostname in db
  local ok, err = self.strategy:init(node_id, knode.get_hostname())
  if not ok then
    log(ERR, _log_prefix, "failed to initialize strategy ", err)
    return
  end

  if self.hybrid_cp then
    -- we don't need to run it on hybrid_cp mode
    return true
  end

  self.counters:init()

  local delay = self.flush_interval
  local when  = delay - (ngx.now() - (math.floor(ngx.now() / delay) * delay))
  log(INFO, _log_prefix, "starting sales counters timer (1) in ", when, " seconds")

  local ok, _ = timer_at(when, persistence_handler, self)
  if ok then
    self:flush_data()
  end

  return "ok"
end

function _M:log_request()
  if self.hybrid_cp then
    return
  end
  self.counters:increment(METRICS.requests)
end

-- Acquire a lock for flushing counters to the database
function _M:flush_lock()
  local ok, err = self.list_cache:safe_add(FLUSH_LOCK_KEY, true,
    self.flush_interval - 0.01)
  if not ok then
    if err ~= "exists" then
      log(ERR, _log_prefix, "failed to acquire lock: ", err)
    end

    return false
  end

  return true
end

function _M:flush_data()
  local lock = self:flush_lock()

  if lock then
    local counters = self.counters:get_counters()
    local license_data = get_license_data()

    local merged_data = {
      node_id = self.counters.node_id,
      license_creation_date = license_data and license_data.license_creation_date,
      request_count = 0
    }

    -- merge data
    if counters then
      for _, row in ipairs(counters) do
        local data = row.data
        if data then
          for _, metric_name in pairs(METRICS) do
            local cnt = merge_counter(data[metric_name])
            merged_data[metric_name] = merged_data[metric_name] + cnt
          end
        end
      end

      self.strategy:flush_data(merged_data)
    end
  end
end

function _M:get_license_report()
  local db = kong.db
  local sys_info = utils.get_system_infos()
  local entity_counts = get_workspace_entity_counts()
  local license_data = get_license_data()

  local report = {
    kong_version = kong.version,
    db_version = tostring(db.strategy) .. " " .. tostring(db.connector.major_minor_version),
    -- system info
    system_info = {
      uname = sys_info.uname,
      hostname = sys_info.hostname,
      cores = sys_info.cores
    },
    license_key = license_data and license_data.license_key or nil,
    -- counters
    counters = get_counters_data(self.strategy),
    rbac_users = entity_counts.rbac_users,
    workspaces_count = get_workspaces_count(),
    services_count = entity_counts.services,
    consumers_count = entity_counts.consumers
  }

  return report
end


return _M
