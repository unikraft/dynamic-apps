-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local cjson   = require "cjson"
local pl_stringx  = require "pl.stringx"
local workspaces  = require "kong.workspaces"
local ee          = require "kong.enterprise_edition"
local legacy_renderer = require "kong.portal.legacy_renderer"
local constants       = require "kong.constants"
local typedefs        = require "kong.db.schema.typedefs"


local kong = kong
local _M = {}
local config = kong.configuration
local unescape_uri = ngx.unescape_uri


-- TDX-1822
local function validate_workspace_name(workspace_name)
  local name_ok = typedefs.utf8_name.custom_validator(workspace_name)
  if not name_ok then
    ngx.log(ngx.INFO, "request contains invalid workspace name: '", workspace_name, "'")
    return kong.response.exit(404, constants.PORTAL_RENDERER.FALLBACK_404)
  end
end


local function send_workspace_not_found_error(err)
  local err_msg = 'failed to retrieve workspace for the request (reason: ' .. err .. ')'
  ngx.log(ngx.ERR, err_msg)
  kong.response.exit(500, { message = "An unexpected error occurred"})
end


function _M.prepare_index(self)
  local page, partials, spec = legacy_renderer.compile_assets(self)
  self.page = cjson.encode(page)
  self.spec = cjson.encode(spec)
  self.partials = cjson.encode(partials)
  self.configs = ee.prepare_portal(self, config)
end


function _M.prepare_sitemap(self)
  local pages = legacy_renderer.compile_sitemap(self)
  self.xml_urlset = pages
end


function _M.set_workspace_by_subdomain(self)
  self.workspaces = {}

  local host = self.req.parsed_url.host
  if host == config.portal_gui_host then
    send_workspace_not_found_error('no subdomain set in url')
  end

  local split_host = pl_stringx.split(self.req.parsed_url.host, '.')
  if not split_host[2] then
    send_workspace_not_found_error('no subdomain set in url')
  end

  local ws_name = split_host[1]

  -- TDX-1822
  validate_workspace_name(ws_name)

  local workspace, err = kong.db.workspaces:select_by_name(ws_name)
  if err then
    ngx.log(ngx.ERR, err)
    return kong.response.exit(500, { message = "An unexpected error occurred" })
  end

  if not workspace then
    send_workspace_not_found_error(
                            'workspace "' .. ws_name .. '" could not be found')
  end

  self.workspaces = { workspace }
end


function _M.set_workspace_by_path(self)
  local workspace_name = workspaces.DEFAULT_WORKSPACE
  if self.params.workspace_name then
    workspace_name = unescape_uri(self.params.workspace_name)
  end

  validate_workspace_name(workspace_name)

  local workspace, err = kong.db.workspaces:select_by_name(workspace_name)

  -- In this error handler, the db query has exploded somehow
  if err then
    ngx.log(ngx.ERR, err)
    return kong.response.exit(500, { message = "An unexpected error occurred" })
  end

  if workspace and self.params.workspace_name and workspace.name == workspace_name then
    -- strip workspace from path if not default
    self.path = self.path:sub(# ("/" .. workspace_name) + 1)
  end

  -- unable to find workspace associated with workspace_name, fallback to default
  if not workspace then
    workspace, err = kong.db.workspaces:select_by_name(workspaces.DEFAULT_WORKSPACE)
    if err then
      ngx.log(ngx.ERR, err)
      return kong.response.exit(500, { message = "An unexpected error occurred" })
    end

    -- yikes, can't fetch default, eject
    if not workspace then
      send_workspace_not_found_error(
                            'workspace "' .. workspaces.DEFAULT_WORKSPACE .. '" could not be found')
    end
  end

  self.workspaces = { workspace }
end


return _M
