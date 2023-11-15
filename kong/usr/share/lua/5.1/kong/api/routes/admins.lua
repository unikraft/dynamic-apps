-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local enums      = require "kong.enterprise_edition.dao.enums"
local rbac       = require "kong.rbac"
local admins     = require "kong.enterprise_edition.admins_helpers"
local ee_api     = require "kong.enterprise_edition.api_helpers"
local auth_helpers = require "kong.enterprise_edition.auth_helpers"
local endpoints  = require "kong.api.endpoints"
local tablex     = require "pl.tablex"
local secrets = require "kong.enterprise_edition.consumer_reset_secret_helpers"
local cjson = require "cjson"


local emails = kong.admin_emails
local kong = kong

local log  = ngx.log
local ERR  = ngx.ERR
local null = ngx.null

local _log_prefix = "[admins] "


--- Allowed auth plugins
-- Table containing allowed auth plugins that the developer portal api
-- can create credentials for.
--
--["<route>"]:     {  name = "<name>",    dao = "<dao_collection>" }
local auth_plugins = {
  ["basic-auth"] = {
    name = "basic-auth",
    dao = "basicauth_credentials",
    credential_key = "password"
  },
  ["key-auth"] =   {
    name = "key-auth",
    dao = "keyauth_credentials",
    credential_key = "key"
  },
  ["ldap-auth-advanced"] = { name = "ldap-auth-advanced" },
  ["openid-connect"] = { name = "openid-connect" },
}


local function validate_auth_plugin(self, dao_factory, helpers, plugin_name)
  local gui_auth = kong.configuration.admin_gui_auth
  plugin_name = plugin_name or gui_auth
  self.plugin = auth_plugins[plugin_name]
  if not self.plugin and gui_auth then
    return kong.response.exit(404, { message = "Not found" })
  end

  if self.plugin and self.plugin.dao then
    self.collection = dao_factory[self.plugin.dao]
  else
    self.token_optional = true
  end
end


return {
  ["/admins"] = {
    before = function(self, db, helpers, parent)
       validate_auth_plugin(self, db, helpers)
    end,

    GET = function(self, db, helpers, parent)
      local all_workspaces = self.params.all_workspaces ~= nil and tostring(self.params.all_workspaces) == "true"
      local res, err = admins.find_all(all_workspaces)

      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end,

    POST = function(self, db, helpers, parent)
      local res, err = admins.create(self.params, {
        token_optional = self.token_optional,
        workspace = { id = ngx.ctx.workspace },
        remote_addr = ngx.var.remote_addr,
        db = db,
      })

      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end,
  },

  ["/admins/:admins"] = {
    before = function(self, db, helpers, parent)
      local err

      self.admin, err = admins.find_by_username_or_id(
                               ngx.unescape_uri(self.params.admins), true)
      if err then
        return endpoints.handle_error(err)
      end

      if not self.admin then
        return kong.response.exit(404, { message = "Not found" })
      end
    end,

    GET = function(self, db, helpers, parent)
      local opts = { generate_register_url = self.params.generate_register_url }

      local res, err = admins.generate_token(self.admin, opts)
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end,

    PATCH = function(self, db, helpers, parent)
      local res, err = admins.update(self.params, self.admin, { db = db })
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end,

    DELETE = function(self, db, helpers, parent)
      local res, err = admins.delete(self.admin, { db = db })
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end
  },

  ["/admins/:admin/roles"] = {
    before = function(self, db, helpers, parent)
      local err

      local name_or_id = ngx.unescape_uri(self.params.admin)
      -- should be able to add an admin roles to a workspace they do not
      -- have roles in
      local require_workspace_ctx = self.req.method == 'GET'
      self.admin, err = admins.find_by_username_or_id(name_or_id, true, require_workspace_ctx)
      if err then
        return endpoints.handle_error(err)
      end

      if not self.admin then
        return kong.response.exit(404, { message = "Not found" })
      end
    end,

    GET = function(self, db, helpers, parent)
      -- get user roles for this workspace
      local roles, err = rbac.get_user_roles(db, self.admin.rbac_user, ngx.ctx.workspace)

      if err then
        return endpoints.handle_error(err)
      end

      -- filter out default roles
      roles = tablex.filter(roles, function(role) return not role.is_default end)

      setmetatable(roles, cjson.empty_array_mt)

      return kong.response.exit(200, {
        roles = roles,
      })
    end,

    POST = function(self, db, helpers, parent)
      -- we have the user, now verify our roles
      if not self.params.roles then
        return kong.response.exit(400, { message = "must provide >= 1 role" })
      end

      local roles, err = rbac.objects_from_names(db, self.params.roles, "role")
      if err then
        if err:find("not found with name", nil, true) then
          return kong.response.exit(400, { message = err })
        else
          return endpoints.handle_error(err)
        end
      end

      -- we've now validated that all our roles exist, and this user exists,
      -- so time to create the assignment
      for i = 1, #roles do
        local _, _, err_t = db.rbac_user_roles:insert({
          user = self.admin.rbac_user,
          role = roles[i]
        })

        if err_t then
          return endpoints.handle_error(err_t)
        end
      end

      -- invalidate rbac user so we don't fetch the old roles
      local cache_key = db["rbac_user_roles"]:cache_key(self.admin.rbac_user.id)
      kong.cache:invalidate(cache_key)

      -- re-fetch the users roles so we show all the role objects, not just our
      -- newly assigned mappings
      roles, err = rbac.get_user_roles(db, self.admin.rbac_user, ngx.ctx.workspace)
      if err then
        return endpoints.handle_error(err)
      end

      -- filter out default roles
      roles = tablex.filter(roles, function(role) return not role.is_default end)

      return kong.response.exit(201, { roles = roles })
    end,

    DELETE = function(self, db, helpers, parent)
      -- we have the user, now verify our roles
      if not self.params.roles then
        return kong.response.exit(400, { message = "must provide >= 1 role" })
      end

      local roles, err = rbac.objects_from_names(db, self.params.roles, "role")
      if err then
        if err:find("not found with name", nil, true) then
          return kong.response.exit(400, { message = err })
        else
          return endpoints.handle_error(err)
        end
      end

      local _
      for i = 1, #roles do
        _, err = db.rbac_user_roles:delete({
          user = self.admin.rbac_user,
          role = roles[i],
        })
        if err then
          return endpoints.handle_error(err)
        end
      end

      local cache_key = db.rbac_user_roles:cache_key(self.admin.rbac_user.id)
      kong.cache:invalidate(cache_key)

      return kong.response.exit(204)
    end,
  },

  ["/admins/password_resets"] = {
    before = function(self, db, helpers, parent)
      validate_auth_plugin(self, db, helpers)

      -- if we don't store your creds, you don't belong here
      if self.token_optional then
        return kong.response.exit(404, { message = "Not found" })
      end

      if not self.params.email or self.params.email == "" then
        return kong.response.exit(400, { message = "email is required" })
      end

      -- if you've forgotten your password, this is all we know about you
      self.admin = kong.db.admins:select_by_email(self.params.email)
      if not self.admin then
        kong.log.err("Failed to find admin with email" .. self.params.email)
        return kong.response.exit(200)
      end

      -- when you reset your password, you come in with an email and a JWT
      -- if it's there, make sure it's good
      if self.params.token then
        -- validate_jwt both validates the JWT and determines which consumer
        -- owns it, setting consumer_id on self. still :magic:
        ee_api.validate_jwt(self, db, helpers)

        -- make sure the email in the query params matches the one in the token
        if self.admin.consumer.id ~= self.consumer_id then
          kong.log.err("self.admin.consumer.id(" .. self.admin.consumer.id .. ") and self.consumer_id(" .. self.consumer_id .. ") not match")
          return kong.response.exit(200)
        end
      end
    end,

    -- create a password reset request and send mail
    POST = function(self, db, helpers, parent)
      local expiry = kong.configuration.admin_invitation_expiry

      local jwt, err = secrets.create(self.admin.consumer, ngx.var.remote_addr, expiry)

      if err then
        return endpoints.handle_error("failed to generate reset token: " .. err)
      end

      -- send mail
      local _, err = emails:reset_password(self.admin.email, jwt)
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(200)
    end,

    -- reset password and consume token
    PATCH = function(self, db, helpers, parent)
      ee_api.validate_password(self.params.password)

      if not self.reset_secret_id then
        return kong.response.exit(400, { message = "token is required" })
      end

      local found, err = admins.reset_password(self.plugin,
                                               self.collection,
                                               self.admin.consumer,
                                               self.params.password,
                                               self.reset_secret_id)

      if err then
        return endpoints.handle_error(err)
      end

      if not found then
        return kong.response.exit(404, { message = "Not found" })
      end

      auth_helpers.reset_attempts(self.admin.consumer)

      local _, err = emails:reset_password_success(self.admin.email)
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(200)
    end
  },

  ["/admins/:admin/workspaces"] = {
    GET = function(self, db, helpers, parent)
      -- lookup across all workspaces
      local res, err = admins.workspaces_for_admin(self.params.admin)
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end
  },

  ["/admins/register"] = {
    before = function(self, db, helpers, parent)
      if not kong.configuration.admin_gui_auth then
        kong.response.exit(400, { message = "cannot register when admin_gui_auth is unset" })
      end
      validate_auth_plugin(self, db, helpers)
      if self.token_optional then
        return kong.response.exit(400, {
          message = "cannot register with admin_gui_auth = " .. self.plugin.name})
      end
      ee_api.validate_password(self.params.password)
      ee_api.validate_email(self, db, helpers)
      ee_api.validate_jwt(self, db, helpers)
    end,

    POST = function(self, db, helpers, parent)
      -- validate_jwt both validates the JWT and determines which consumer
      -- owns it, setting that on self. :magic:
      if not self.consumer_id then
        log(ERR, _log_prefix, "consumer not found for registration")
        return kong.response.exit(401, { message = "Unauthorized" })
      end

      -- this block is a little messy. A consumer cannot logically belong to
      -- >1 admin, but the schema doesn't generate select_by for foreign keys.
      local res = {}
      for row, err in db.admins:each_for_consumer({ id = self.consumer_id }) do
        if err then
          return endpoints.handle_error(err)
        end
        res[1] = row
      end

      local admin = res[1]

      if not admin or admin.email ~= self.params.email then
        return kong.response.exit(401, { message = "Unauthorized" })
      end

      local credential_data
      local credential_dao

      -- create credential object based on admin_gui_auth
      if self.plugin.name == "basic-auth" then
        credential_dao = db.basicauth_credentials
        credential_data = {
          consumer = admin.consumer,
          username = admin.username,
          password = self.params.password,
        }
      end

      if self.plugin.name == "key-auth" then
        credential_dao = db.keyauth_credentials
        credential_data = {
          consumer = admin.consumer,
          key = self.params.password,
        }
      end

      if not credential_data then
        return kong.response.exit(400,
          "Cannot create credential with admin_gui_auth = " ..
          self.plugin.name)
      end

      -- Find the workspace the rbac_user is in
      local rbac_user, err = db.rbac_users:select({ id = admin.rbac_user.id }, {
        show_ws_id = true,
        workspace = null,
      })

      if not rbac_user then
        return endpoints.handle_error(err)
      end

      local _, err = credential_dao:insert(credential_data, { workspace = rbac_user.ws_id })
      if err then
        return endpoints.handle_error(err)
      end

      if admin.status == enums.CONSUMERS.STATUS.INVITED then
        db.admins:update({status = enums.CONSUMERS.STATUS.APPROVED}, {id = admin.id})
      end

      -- Mark the token secret as consumed
      local _, err = secrets.consume_secret(self.reset_secret_id)
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(201)
    end,
  },

  ["/admins/self/password"] = {
    before = function(self, db, helpers, parent)
      validate_auth_plugin(self, db, helpers)

      if not self.admin then
        return kong.response.exit(404, {message = "Not found"})
      end
    end,

    PATCH = function(self, db, helpers, parent)
      ee_api.validate_password(self.params.password)

      local res, err = admins.update_password(self.admin, self.params)

      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end
  },

  ["/admins/self/token"] = {
    before = function(self, db, helpers, parent)
      validate_auth_plugin(self, db, helpers)
      if not self.admin then
        return kong.response.exit(404, {message = "Not found"})
      end
    end,

    PATCH = function(self, db, helpers, parent)
      local res, err = admins.update_token(self.admin, self.params)
      if err then
        return endpoints.handle_error(err)
      end

      return kong.response.exit(res.code, res.body)
    end
  }
}
