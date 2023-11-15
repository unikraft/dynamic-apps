-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local rbac         = require "kong.rbac"
local constants    = require "kong.constants"
local file_helpers = require "kong.portal.file_helpers"


local RBAC_BITFIELD_READ = rbac.actions_bitfields.read

-- returns true if the developer has permissions to access the given file
-- returns false, nil if the developer does not have permissions (but no errors happened)
-- returns nil, error if an error happened
local function can_read(developer, workspace, file_path)
  if not developer or not workspace or not file_path then
    return false
  end

  -- Portal auth is disabled or request is from an admin
  if developer.skip_portal_rbac then
    return true
  end

  local rbac_user = developer.rbac_user
  if not rbac_user then
    return false
  end

  local rbac_roles, err = rbac.get_user_roles(kong.db, rbac_user, workspace)
  if err then
    return nil, err
  end

  -- Attempt to authorize using the file path
  if file_path:sub(1, 1) ~= "/" then
    file_path = "/" .. file_path
  end

  local endpoints_permissions_map =
    rbac.resolve_role_endpoint_permissions(rbac_roles)

  return rbac.authorize_request_endpoint(
    endpoints_permissions_map,
    workspace,
    file_path, -- endpoint
    file_path, -- route_name
    RBAC_BITFIELD_READ)
end

-- readable by can be a string or a list of strings or empty table
local function is_valid_type_readable_by(readable_by)
  if type(readable_by) == "string" then
    return true
  end
  if type(readable_by) ~= "table" then
    return false
  end

  for k, v in pairs(readable_by) do
    if type(k) ~= "number" then
      return false
    end
    if type(v) ~= "string" then
      return false
    end
  end

  return true
end


local function set_file_permissions(file, workspace, new_role_names, is_create)
  if (not file_helpers.is_content(file) and not file_helpers.is_spec(file))
    and (is_create or not file_helpers.is_config_path(file.path)) then
    return true
  end

  -- this should never happen, as file.contents is required by the schema
  if file.contents == nil then
    return nil, "contents: missing required field"
  end

  local parsed_content, err = file_helpers.parse_content(file)
  if err then
    return nil, err
  end

  local headmatter = parsed_content.headmatter or {}

  local readable_by = headmatter.readable_by or {}
  local ok = is_valid_type_readable_by(readable_by)
  if not ok then
    return nil, "readable_by must be a string role or array of string roles"
  end

  new_role_names = new_role_names or readable_by

  -- File requires auth, but no roles
  if new_role_names == "*" then
    new_role_names = {}
  end

  local endpoint = file.path
  if type(endpoint) ~= "string" then
    return nil, "endpoint required to set file permissions"
  end

  if endpoint:sub(1, 1) ~= "/" then
    endpoint = "/" .. endpoint
  end

  local new_roles = {}
  local new_roles_hash = {}
  local role_name
  for i = 1, #new_role_names do
    role_name = constants.PORTAL_PREFIX .. new_role_names[i]
    new_roles[i] = kong.db.rbac_roles:select_by_name(role_name)
    if not new_roles[i] then
      return nil, "could not find role: " .. new_role_names[i]
    end
    new_roles_hash[role_name] = true
  end

  local existing_roles = {}
  local existing_roles_hash = {}
  local endpoint_permissions, err, err_t =
    kong.db.rbac_role_endpoints:all_by_endpoint(endpoint, workspace)
  if not endpoint_permissions then
    return nil, err, err_t
  end

  local permission, existing_role
  for i = 1, #endpoint_permissions do
    permission = endpoint_permissions[i]
    if permission.actions == RBAC_BITFIELD_READ then
      existing_role, err = kong.db.rbac_roles:select(permission.role)
      if not existing_role then
        return nil, err
      end
      if not existing_roles_hash[existing_role.name] then
        existing_roles_hash[existing_role.name] = true
        existing_roles[#existing_roles + 1] = existing_role
      end
    end
  end

  local new_role
  for i = 1, #new_roles do
    new_role = new_roles[i]
    if not existing_roles_hash[new_role.name] then
      local ok, err = kong.db.rbac_role_endpoints:insert({
        workspace = workspace,
        endpoint = endpoint,
        actions = RBAC_BITFIELD_READ,
        role = new_role,
      })
      if not ok then
        return nil, err
      end
    end
  end

  local existing_role
  for i = 1, #existing_roles do
    existing_role = existing_roles[i]
    if not new_roles_hash[existing_role.name] then
      local ok, err = kong.db.rbac_role_endpoints:delete({
        workspace = workspace,
        endpoint = endpoint,
        role = existing_role,
      })
      if not ok then
        return nil, err
      end
    end
  end

  return true
end


local function delete_file_permissions(file, workspace)
  return set_file_permissions(file, workspace, {})
end


return {
  can_read = can_read,
  delete_file_permissions = delete_file_permissions,
  set_file_permissions = set_file_permissions,
}
