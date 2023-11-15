-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local helpers       = require "kong.portal.render_toolset.helpers"
local workspaces    = require "kong.workspaces"
local lyaml         = require "lyaml"
local looper        = require "kong.portal.render_toolset.looper"
local workspace_config = require "kong.portal.workspace_config"

local yaml_load     = lyaml.load


return function()
  local conf = kong.configuration
  local render_ctx = ngx.ctx.render_ctx
  local workspace = workspaces.get_workspace()
  local workspace_path_gsub = "^/" .. workspace.name .. "/"
  local portal_gui_url = workspace_config.build_ws_portal_gui_url(conf, workspace)
  local route_config = render_ctx.route_config or {}

  local page = {}
  page.body = route_config.body or ""

  local ok, parsed = pcall(yaml_load, page.body)
  if ok then
    page.parsed_body = parsed
  else
    page.parsed_body = {}
  end

  if route_config.path then
    page.document_object = kong.db.document_objects:select_by_path(route_config.path) or {}

    local service_id = page.document_object.service
                       and page.document_object.service.id

    if service_id then
      for plugin, err in kong.db.plugins:each() do
        if err then
          kong.log.err(err)
          break
        end

        if plugin.name == "application-registration"
        and plugin.service.id == service_id then
          page.document_object.registration = true
          break
        end
      end
    end
  end

  -- Helper variables
  local route = route_config.route or render_ctx.path
  route = string.gsub(route, workspace_path_gsub, "")
  if helpers.str.startswith(route, "/") then
    route = string.gsub(route, "/", "", 1)
  end

  page.route = route
  page.url = portal_gui_url .. "/" .. page.route

  -- Locale function
  page.l = function(property, fallback)
    return (page.locale and page.locale[property]) or fallback
  end

  -- everything after this is un-nillable
  looper.set_node(page)

  -- Build breadcrumbs object with helpful properties
  page.breadcrumbs = {}
  local crumbs = helpers.str.split(page.route, "/")
  for i,v in ipairs(crumbs) do
    local path_parts = {unpack(crumbs, 1, i)}
    local v_unslug = v.gsub(v, "-"," ")
    table.insert(page.breadcrumbs, {
      name = v,
      display_name = v_unslug.gsub(" "..v_unslug, "%W%l", string.upper):sub(2),
      path = table.concat(path_parts, "/"),
      is_last = i == #crumbs,
      is_first = i == 1,
    })
  end

  local headmatter = route_config.headmatter or {}
  for k, v in pairs(headmatter) do
    page[k] = v
  end

  return page
end
