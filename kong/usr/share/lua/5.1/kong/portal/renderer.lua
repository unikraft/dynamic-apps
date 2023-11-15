-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local pl_stringx   = require "pl.stringx"
local workspaces   = require "kong.workspaces"
local permissions  = require "kong.portal.permissions"
local file_helpers = require "kong.portal.file_helpers"
local template     = require "kong.portal.template"
local lyaml        = require "lyaml"
local handler      = require "kong.portal.render_toolset.handler"
local constants    = require "kong.constants"
local emails       = require "kong.portal.emails"
local workspace_config = require "kong.portal.workspace_config"

local LAYOUTS = constants.PORTAL_RENDERER.LAYOUTS
local FALLBACK_404 = constants.PORTAL_RENDERER.FALLBACK_404
local FALLBACK_EMAIL = constants.PORTAL_RENDERER.FALLBACK_EMAIL
local SITEMAP = constants.PORTAL_RENDERER.SITEMAP

local ws_constants  = constants.WORKSPACE_CONFIG
local yaml_load = lyaml.load

local portal_conf_values = {
  "auth",
  "auth_conf",
  "session_conf",
  "auto_approve",
  "token_exp",
  "invite_email",
  "access_request_email",
  "approved_email",
  "reset_email",
  "reset_success_email",
  "emails_from",
  "emails_reply_to",
}


template.caching(false)

template.safe = function(cb)
  local ok, res = pcall(cb)
  if not ok then
    ngx.log(ngx.DEBUG, "Portal Renderer: " .. res)
    return nil
  end

  return res
end

template.eval = function(exp)
  return "template.safe(function() return " .. exp .. " end)"
end

template.load = function(path)
  -- look into alternative ways of passing info
  local ctx = ngx.ctx.render_ctx or {}
  local theme = ctx.theme or { name = "" }

  if type(path) == 'table' and path.contents then
    return path.contents
  end

  local template = kong.db.files:select_file_by_theme(path, theme.name)
  if not template then
    return path
  end

  return template.contents
end


local function build_url_obj(route, page, url_map)
  local workspace = workspaces.get_workspace()

  local headmatter = page.headmatter or {}
  if headmatter.private then
    return
  end

  local url_items = {}
  local page_url = workspace_config.build_ws_portal_gui_url(kong.configuration, workspace) .. route
  page_url = pl_stringx.rstrip(page_url, '/')
  url_items["loc"] = page_url

  local updated_at = page.updated_at or page.created_at
  local formated_date = os.date("%Y-%d-%m", updated_at / 1000)
  url_items["lastmod"] = formated_date
  url_map[page_url] = url_items
end


local function build_sitemap_obj()
  local router_info = kong.portal_router.introspect()
  local ws_name = workspaces.get_workspace().name
  local router = router_info.router[ws_name] or {}
  local routes = {}

  for k, v in pairs(router.collection or {}) do
    routes[k] = v
  end

  for k, v in pairs(router.content or {}) do
    routes[k] = v
  end

  for k, v in pairs(router.explicit or {}) do
    routes[k] = v
  end

  local url_map = {}
  local url_list = {}

  for route, page in pairs(routes) do
    build_url_obj(route, page, url_map)
  end

  for key, url_item in pairs(url_map) do
    table.insert(url_list, url_item)
  end

  return url_list
end


local function set_path(path)
  path = pl_stringx.rstrip(path, '/')
  path = pl_stringx.lstrip(path, '/')

  if path == '' or path == '/' then
    path = 'index'
  end

  return path
end


local function set_route_config(path)

  path = pl_stringx.rstrip(path, '/')
  path = pl_stringx.lstrip(path, '/')

  if path[1] ~= "/" then
    path = "/" .. path
  end

  return kong.portal_router.get(path)
end


local function set_asset(ctx)
  local path = ctx.path
  local theme = ctx.theme

  return kong.db.files:select_file_by_theme(path, theme.name)
end


local function get_missing_layout(ctx)
  local theme = ctx.theme

  if file_helpers.is_email_path(ctx.path) then
    return {
      contents = FALLBACK_EMAIL,
      path = "__UNSET"
    }
  end

  return kong.db.files:select_file_by_theme("layouts/system/404.html",
                                                  theme.name)
end


local function set_layout(ctx)
  local theme = ctx.theme
  local path = ctx.layout

  -- Missing
  if not path then
    return get_missing_layout(ctx)
  end

  -- Attempt to load layout with extension
  local layout = kong.db.files:select_file_by_theme('layouts/' .. path .. '.html',
                                                          theme.name)

  -- Attempt loading a layout without extension
  if not layout then
    layout = kong.db.files:select_file_by_theme('layouts/' .. path,
                                                      theme.name)
  end

  -- Could not find layout by path return 404
  if not layout then
    layout = get_missing_layout(ctx)
  end

  return layout
end


local function set_layout_by_permission(route_config, developer, workspace, config, path)
  local updated_path

  if not next(route_config) then
    return LAYOUTS.UNSET
  end

  local router = kong.portal_router
  local db = kong.db

  local redirect = config.redirect
  local unauthenticated_r = redirect and redirect.unauthenticated
  if not unauthenticated_r then
    unauthenticated_r = LAYOUTS.LOGIN
  end

  local unauthorized_r = redirect and redirect.unauthorized
  if not unauthorized_r then
    unauthorized_r = LAYOUTS.UNAUTHORIZED
  end

  local file
  local headmatter = route_config.headmatter or {}
  local workspace = workspaces.get_workspace()
  local portal_auth = workspace_config.retrieve(ws_constants.PORTAL_AUTH,
                                                    workspace)

  local no_auth = portal_auth == nil or portal_auth == ''
  if headmatter.private and no_auth then
    return LAYOUTS.UNSET
  end

  local readable_by = headmatter.readable_by
  local has_permissions = type(readable_by) == "table" and #readable_by > 0
  local auth_required = has_permissions or readable_by == "*"

  -- route requires auth, no developer preset, redirect
  if not next(developer) and auth_required then
    updated_path = "/" .. unauthenticated_r
    file = router.find_highest_priority_file_by_route(db, updated_path)

    -- fallback in the case that unauthenticated content not found
    if not file then
      updated_path =  "/" .. LAYOUTS.LOGIN
      return LAYOUTS.LOGIN, updated_path
    end
  end

  -- route has permissions, developer preset, check permissions
  if not file and has_permissions then
    local ok = permissions.can_read(developer, workspace.name,
                                         route_config.path)

    -- permissions check failed, redirect
    if not ok then
      updated_path = "/" .. unauthorized_r
      file = router.find_highest_priority_file_by_route(db, updated_path)

      -- fallback in the case that unauthorized content not found
      if not file then
        updated_path =  "/" .. LAYOUTS.UNAUTHORIZED
        return LAYOUTS.UNAUTHORIZED, updated_path
      end
    end
  end

  if not file then
    return route_config.layout
  end

  local parsed_file = file_helpers.parse_content(file)
  if not parsed_file then
    return LAYOUTS.UNSET
  end

  return parsed_file.layout, updated_path
end


local function set_portal_config()
  local file = kong.db.files:select_portal_config()
  if not file then
    return { theme = "default" }
  end

  local contents = yaml_load(file.contents)
  if not contents then
    return { theme = "default" }
  end

  if not contents["theme"] then
    contents["theme"] = "default"
  end

  if not contents["config"] then
    contents["config"] = {}
  end

  for _, v in ipairs(portal_conf_values) do
    if not contents["config"][v] then
      local ws = workspaces.get_workspace()
      contents["config"][v] = workspace_config.retrieve("portal_" .. v, ws)
    end
  end

  return contents
end


local function set_theme_config(portal_theme_conf)
  local theme_name = portal_theme_conf
  if type(portal_theme_conf) == "table" then
    theme_name = portal_theme_conf.name
  end

  local file = kong.db.files:select_theme_config(theme_name)
  if not file then
    return {
      name = theme_name
    }
  end

  local contents = yaml_load(file.contents)
  if not contents then
    return {
      name = theme_name
    }
  end

  contents.name = theme_name

  if type(portal_theme_conf) == "table" then
    if portal_theme_conf.colors then
      contents.colors = contents.colors or {}
      for k, v in pairs(portal_theme_conf.colors) do
        contents.colors[k] = v
      end
    end

    if portal_theme_conf.fonts then
      contents.fonts = contents.fonts or {}
      for k, v in pairs(portal_theme_conf.fonts) do
        contents.fonts[k] = v
      end
    end
  end

  return contents
end


local function set_render_ctx(self, email_tokens)
  -- 1. Set Portal Config
  -- 2. Set Theme Config
  -- 3. Grab example tokens if email content & editor
  -- 4. Retrieve Initial Route Config
  -- 5. Get Developer
  -- 6. Get layout by permission
  -- 7. Lookup layout

  local workspace = workspaces.get_workspace()
  local portal_config = set_portal_config()
  if not portal_config then
    return false, "could not retrieve portal config"
  end

  if not portal_config.theme then
    portal_config.theme = "default"
  end

  local theme_config = set_theme_config(portal_config.theme)
  if not theme_config then
    return false, "could not retrieve theme config"
  end

  if self.admin and file_helpers.is_email_path(self.path) then
    email_tokens = emails:get_example_email_tokens(self.path)
  end

  local route_config
  if self.is_admin or self.is_email then
    local file = kong.db.files:select_by_path(self.path)
    if not file then
      file = {}
    end

    route_config = file_helpers.parse_content(file, email_tokens)
  end

  if not route_config then
    route_config = set_route_config(self.path)
  end

  if not route_config then
    route_config = {}
  end

  local developer = self.developer or {}
  local preauth_claims = self.preauth_claims or {}
  local path   = set_path(self.path)
  local layout, updated_path = set_layout_by_permission(route_config, developer, workspace, portal_config)
  if updated_path then
    path = set_path(updated_path)
    route_config = set_route_config(updated_path)
  end

  ngx.ctx.render_ctx = {
    route_config         = route_config,
    portal               = portal_config,
    theme                = theme_config,
    developer            = developer,
    layout               = layout,
    path                 = path,
    example_email_tokens = email_tokens,
    preauth_claims       = preauth_claims,
  }
end


local function compile_layout()
  local ctx = ngx.ctx.render_ctx
  local layout = set_layout(ctx)
  if not layout then
    return FALLBACK_404
  end

  local view = template.compile(layout)(handler(template))
  if ctx.example_email_tokens then
    -- redudent replacement for edge case of email tokens
    -- (will need to be escaped) in layouts/partials
    view = emails:replace_tokens(view, ctx.example_email_tokens)
  end

  return view
end


local function compile_asset()
  local ctx = ngx.ctx.render_ctx
  local asset = set_asset(ctx)
  if not asset then
    return
  end

  if string.find(asset.path, 'css', 1, true) then
    return template.compile(asset)(handler(template))
  end

  return asset.contents
end


local function compile_sitemap()
  local xml_urlset = build_sitemap_obj()

  return template.compile(SITEMAP)({ xml_urlset = xml_urlset })
end


return {
  compile_layout = compile_layout,
  compile_sitemap = compile_sitemap,
  compile_asset  = compile_asset,
  set_render_ctx = set_render_ctx,
}
