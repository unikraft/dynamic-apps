-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local Schema    = require "kong.db.schema"
local Errors = require "kong.db.errors"
local enums  = require "kong.enterprise_edition.dao.enums"
local application_instances  = require "kong.db.schema.entities.application_instances"

local _ApplicationInstances = {}


local function skip_permission_update(entity, application_instance)
  return entity.suspended == nil and not entity.status or
         entity.status == application_instance.status
end


local function should_create_permission(init_application_instance, application_instance)
  local is_suspended = application_instance.suspended
  local is_approved = application_instance.status == enums.CONSUMERS.STATUS.APPROVED
  local status_did_change = application_instance.status ~= init_application_instance.status
  local suspended_did_change = application_instance.suspended ~= init_application_instance.suspended

  -- always delete acl group when instance is suspended
  if is_suspended then
    return false
  end

  -- create acl group when suspended changed to false and is_approved
  if is_approved and suspended_did_change then
    return true
  end

    -- create acl group when status changed and is_approved
  if is_approved and status_did_change then
    return true
  end
end


local function validate_insert(entity)
  local ApplicationInstances = Schema.new(application_instances)
  local application_instance = entity

  local res, err = ApplicationInstances:validate_insert(application_instance)
  if not res then
    return nil, err
  end

  return res
end


local function get_application_instance_status(app_reg)
  local auto_approve = app_reg.config and app_reg.config.auto_approve
  if (auto_approve) then
    return enums.CONSUMERS.STATUS.APPROVED
  end

  return enums.CONSUMERS.STATUS.PENDING
end


local function create_acl_permission(consumer_id, service_id)
  return kong.db.daos["acls"]:insert({
    consumer = { id = consumer_id },
    group = service_id,
  })
end


local function delete_acl_permission(consumer_id, service_id)
  for row, err in kong.db.daos["acls"]:each_for_consumer({ id = consumer_id }) do
    if row.group == service_id then
      local ok, err, err_t = kong.db.daos["acls"]:delete({ id = row.id })
      if not ok then
        return nil, err, err_t
      end
    end
  end

  return true
end


-- Creates an application_instance, and an ACL credential
function _ApplicationInstances:insert(entity, options)
  -- validate entity
  local ok, err = validate_insert(entity)
  if not ok then
    local err_t = { code = Errors.codes.SCHEMA_VIOLATION, fields = err }
    kong.log.debug(tostring(err))
    return nil, err, err_t
  end

  local application_registration
  -- check if application reg plugin is enabled on service
  for plugin, err in kong.db.plugins:each() do
    if err then
      kong.log.err(err)
      break
    end

    if plugin.name == "application-registration"
    and plugin.service.id == entity.service.id then
      application_registration = plugin
      break
    end
  end

  if not application_registration then
    local err = "'Application Registration' plugin must be enabled."
    local err_t = { code = Errors.codes.OPERATION_UNSUPPORTED, message = err }
    return nil, err, err_t
  end

  if not entity.status then
    entity.status = get_application_instance_status(application_registration)
  end

  entity.composite_id = entity.application.id .. "_" .. entity.service.id

  local application_instance, err, err_t = self.super.insert(self, entity, options)
  if not application_instance then
    return nil, err, err_t
  end

  if application_instance.status == enums.CONSUMERS.STATUS.APPROVED then
    local application, err, err_t =
      kong.db.applications:select({ id = application_instance.application.id })

    if not application then
      kong.db.application_instance:delete({ id = application_instance.id })

      return nil, err, err_t
    end

    local consumer_id = application.consumer.id
    local service_id = application_instance.service.id
    local ok, err, err_t = create_acl_permission(consumer_id, service_id)
    if not ok then
      kong.db.application_instance:delete({ id = application_instance.id })

      return nil, err, err_t
    end
  end

  return application_instance
end


-- Updates an application_instance, and an associated ACL credential
function _ApplicationInstances:update(app_instance_pk, entity, options)
  local init_application_instance, err, err_t = self.super.select(self, app_instance_pk, options)
  if not init_application_instance then
    return nil, err, err_t
  end

  if skip_permission_update(entity, init_application_instance) then
    return init_application_instance
  end

  local entity = {
    status = entity.status,
    suspended = entity.suspended
  }

  local application_instance, err, err_t = self.super.update(self, app_instance_pk, entity, options)
  if not application_instance then
    return nil, err, err_t
  end

  local application, err, err_t = kong.db.applications:select({ id = application_instance.application.id })
  if not application then
    kong.db.application_instance:delete({ id = application_instance.id })

    return nil, err, err_t
  end

  local consumer_id = application.consumer.id
  local service_id = application_instance.service.id
  if should_create_permission(init_application_instance, application_instance) then
    local ok, err, err_t = create_acl_permission(consumer_id, service_id)
    if not ok then
      return nil, err, err_t
    end
  else
    local ok, err, err_t = delete_acl_permission(consumer_id, service_id)
    if not ok then
      return nil, err, err_t
    end
  end

  return application_instance
end


-- Deletes an application_instance, and an associated ACL credential
function _ApplicationInstances:delete(app_instance_pk, options)
  local application_instance, err, err_t = self.super.select(self, app_instance_pk, options)
  if not application_instance then
    return nil, err, err_t
  end

  local application, err, err_t = kong.db.applications:select({ id = application_instance.application.id })
  if not application then
    kong.db.application_instance:delete({ id = application_instance.id })

    return nil, err, err_t
  end

  local ok, err, err_t = self.super.delete(self, app_instance_pk, options)
  if not ok then
    return nil, err, err_t
  end

  local consumer_id = application.consumer.id
  local service_id = application_instance.service.id

  return delete_acl_permission(consumer_id, service_id)
end


return _ApplicationInstances
