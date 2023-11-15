-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local cjson = require "cjson"

local GLOBAL_QUERY_OPTS = { workspace = ngx.null, show_ws_id = true }

local function does_plugin_map_to_service (plugin, service)
  return plugin.service and plugin.service.id == service.id
end

return {
  ["kong-oauth2"] = {
    build_service_auth_config = function(service)
      local auth_config

      for plugin, err in kong.db.plugins:each(nil, GLOBAL_QUERY_OPTS) do
        if err then
          kong.log.err(err)
          break
        end

        if plugin.name == "key-auth" then
          if does_plugin_map_to_service(plugin, service) then
            auth_config = {
              key_in_body = plugin.config.key_in_body,
              key_names = setmetatable(plugin.config.key_names, cjson.empty_array_mt),
              run_on_preflight = plugin.config.run_on_preflight,
            }
            break
          end
        end

        if plugin.name == "oauth2" then
          if does_plugin_map_to_service(plugin, service) then
            auth_config = {
              scopes = plugin.config.scopes,
              auth_header_name = plugin.config.auth_header_name,
              provision_key = plugin.config.provision_key,
              enable_implicit_grant = plugin.config.enable_implicit_grant,
              enable_password_grant = plugin.config.enable_password_grant,
              enable_client_credentials = plugin.config.enable_client_credentials,
              enable_authorization_code = plugin.config.enable_authorization_code,
            }
            break
          end
        end
      end

      return auth_config
    end
  },

  ["external-oauth2"] = {
    build_service_auth_config = function(service, app_reg_plugin)
      local auth_config = {}

      for plugin, err in kong.db.plugins:each(nil, GLOBAL_QUERY_OPTS) do
        if err then
          kong.log.err(err)
          break
        end
        if plugin.name == "openid-connect" then
          if does_plugin_map_to_service(plugin, service) then
            auth_config.scopes = plugin.config.scopes
            auth_config.auth_methods = plugin.config.auth_methods
            if app_reg_plugin.config.show_issuer then
              auth_config.issuer = plugin.config.issuer
            end
            break
          end
        end
      end

      return auth_config
    end
  }
}
