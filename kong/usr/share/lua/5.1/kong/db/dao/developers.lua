-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local Schema    = require "kong.db.schema"
local Errors    = require "kong.db.errors"
local constants = require "kong.constants"
local workspaces = require "kong.workspaces"
local dao_helpers = require "kong.portal.dao_helpers"
local developers  = require "kong.db.schema.entities.developers"
local workspace_config = require "kong.portal.workspace_config"

local ws_constants = constants.WORKSPACE_CONFIG


local _Developers = {}


local function validate_insert(entity)
  local Developers = Schema.new(developers)
  local developer = entity
  developer.key = nil
  developer.password = nil

  local roles = developer.roles

  developer.roles = nil
  local res, err = Developers:validate_insert(developer)
  if not res then
    return nil, err
  end

  developer.roles = roles
  return res
end


-- TODO DEVX: look into implementing update validation
-- local function validate_update(entity)
--   local Developers = Schema.new(developers)

--   return Developers:validate_update(entity)
-- end

function _Developers:get_roles(entity, options)
  local workspace
  if options then
    workspace = options.workspace
  end
  if not workspace then
    workspace = ngx.ctx.workspace or ngx.null
  end

  return dao_helpers.get_roles(entity, workspace)
end


-- Creates an developer, and an associated consumer
function _Developers:insert(entity, options)
  -- ensure portal_auth is set
  local workspace = workspaces.get_workspace()

  self.portal_auth = workspace_config.retrieve(ws_constants.PORTAL_AUTH, workspace)
  if not self.portal_auth then
    local err = "portal_auth must be enabled create a developer"
    local err_t = { code = Errors.codes.SCHEMA_VIOLATION, message = err }
    ngx.log(ngx.DEBUG, err)
    return nil, err, err_t
  end

  self.password = entity.password
  self.key = entity.key
  entity.password = nil
  entity.key = nil

  -- validate entity
  local ok, err = validate_insert(entity)
  if not ok then
    local err_t = { code = Errors.codes.SCHEMA_VIOLATION, fields = err }
    ngx.log(ngx.DEBUG, tostring(err))
    return nil, err, err_t
  end

  local developer, err, err_t =
    dao_helpers.create_developer(self, entity, options)

  if not developer then
    ngx.log(ngx.DEBUG, tostring(err))
    return nil, err, err_t
  end

  return developer
end


function _Developers:update(developer_pk, entity, options)
  local developer, err, err_t = self.db.developers:select({ id = developer_pk.id })
  if not developer then
    ngx.log(ngx.DEBUG, err)
    return nil, err, err_t
  end

  local update_suspended_status = entity.status and entity.status ~= developer.status
  local developer, err, err_t =
    dao_helpers.update_developer(self, developer, entity, options)

  if not developer then
    ngx.log(ngx.DEBUG, err)
    return nil, err, err_t
  end

  if update_suspended_status then
    local ok, err, err_t =
      dao_helpers.set_app_instance_suspension_by_developer(self, developer)

    if not ok then
      ngx.log(ngx.DEBUG, err)
      return nil, err, err_t
    end
  end

  return developer
end


function _Developers:update_by_email(developer_email, entity, options)
  local developer, err, err_t = self.db.developers:select_by_email(developer_email)
  if not developer then
    ngx.log(ngx.DEBUG, err, err_t)
    return nil, err, err_t
  end

  -- local ok, err = validate_update(entity)
  -- if not ok then
  --   local code = Errors.codes.SCHEMA_VIOLATION
  --   local err_t = { code = code, fields = err }
  --   ngx.log(ngx.DEBUG, err, err_t)
  --   return nil, err, err_t
  -- end

  local developer, err, err_t =
    dao_helpers.update_developer(self, developer, entity, options)

  if not developer then
    ngx.log(ngx.DEBUG, err)
    return nil, err, err_t
  end

  return developer
end


-- deletes consumer associated with developer, as well as developer
function _Developers:delete(developer_pk, options)
  local developer, err, err_t = self.db.developers:select({ id = developer_pk.id })
  if not developer then
    return nil, err, err_t
  end

  local consumer_id = developer.consumer.id

  for row, err in self.db.applications:each_for_developer({ id = developer.id }) do
    if err then
      return nil, err
    end

    local _, err, err_t = self.db.applications:delete({ id = row.id })
    if err then
      return nil, err, err_t
    end
  end

  for row, err in self.db.credentials:each_for_consumer({ id = consumer_id }) do
    if err then
      return nil, err
    end

    local _, err, err_t = self.db.credentials:delete({ id = row.id })
    if err then
      return nil, err, err_t
    end
  end

  local ok, err, err_t = self.super.delete(self, developer_pk, options)
  if not ok then
    return nil, err, err_t
  end

  local ok, err, err_t = self.db.consumers:delete({ id = consumer_id })
  if not ok then
    return nil, err, err_t
  end

  local rbac_user_id = developer.rbac_user and developer.rbac_user.id
  if rbac_user_id then
    local ok, err, err_t = self.db.rbac_users:delete({ id = rbac_user_id })
    if not ok then
      return nil, err, err_t
    end
  end


  return ok, err, err_t
end


return _Developers
