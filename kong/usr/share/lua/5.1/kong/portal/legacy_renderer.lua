-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local pl_tablex   = require "pl.tablex"
local pl_stringx   = require "pl.stringx"
local constants    = require "kong.constants"
local workspaces = require "kong.workspaces"
local workspace_config = require "kong.portal.workspace_config"
local ws_constants = constants.WORKSPACE_CONFIG
local endpoints          = require "kong.api.endpoints"


local kong = kong

local no_files_found = {
  name = "unauthenticated/index",
  contents = "<h1>No Files Found</h1>",
  auth = false,
  type = "page"
}

local portal_disabled = {
  name = "unauthenticated/index",
  contents = "<h1>Portal Disabled</h1>",
  auth = false,
  type = "page"
}

local function build_url_obj(page, path, url_map)
  local workspace = workspaces.get_workspace()
  local url_items = {}

  local page_url = workspace_config.build_ws_portal_gui_url(kong.configuration, workspace) .. '/' .. path
  page_url = pl_stringx.rstrip(page_url, '/')
  url_items["loc"] = page_url

  local updated_at = page.updated_at or page.created_at
  local formated_date = os.date("%Y-%d-%m", updated_at / 1000)
  url_items["lastmod"] = formated_date

  if not url_map[page_url] then
    url_map[page_url] = url_items
  end
end


local function build_url_set_by_type(page, specs, url_map)
  local pagename = pl_stringx.replace(page.name, 'unauthenticated/', '')
  local path

  if pl_stringx.endswith(pagename, 'loader') then
    for idx, spec in ipairs(specs) do
      local specname = pl_stringx.replace(spec.name, 'unauthenticated/', '')
      path = pl_stringx.replace(pagename, 'loader', '')
      path = path .. specname
      build_url_obj(spec, path, url_map)
    end
    return
  end

  if pl_stringx.endswith(pagename, 'index') then
    path = pl_stringx.replace(pagename, 'index', '')
    build_url_obj(page, path, url_map)
    return
  end

  path = pagename
  build_url_obj(page, path, url_map)
end


local function build_xml_template(pages, specs)
  local url_map = {}
  local url_list = {}

  for idx, page in ipairs(pages) do
    build_url_set_by_type(page, specs, url_map)
  end

  for key, url_item in pairs(url_map) do
    table.insert(url_list, url_item)
  end

  return url_list
end


local function find_next_partial(page)
  local partial_match = string.match(page, '{{>.-}}')

  if not partial_match then
    partial_match = string.match(page, '{{#>.-}}')
  end

  return partial_match
end


local function parse_partial_name(partial)
  local _, name, _ = string.match(partial, '({{>)%s*(.*)%s*(}})')

  if not name then
    _, name, _ = string.match(partial, '({{#>)%s*(.*)%s*(}})')
  end

  local split_name = pl_stringx.split(name, ' ')[1]

  return split_name
end


local function replace_partial_in_page(page, partial, match)
  return pl_stringx.replace(page, match, partial)
end


local function get_next_route(path, extension)
  local split_path = pl_stringx.split(path, '/')

  if extension ~= '' then
    extension = split_path[#split_path] .. '/' .. extension
  else
    extension = split_path[#split_path]
  end
  table.remove(split_path)
  path = pl_stringx.join('/', split_path)

  return path, extension
end


local function find_file(filename, filetype, is_authenticated)
  if not is_authenticated and not pl_stringx.startswith(filename, "unauthenticated/") then
    filename = 'unauthenticated/' .. filename
  end

  local file = kong.db.files:select_by_path(filename)
  if file and file.auth == is_authenticated and file.type == filetype then
    return file
  end
end


local function find_partial_by_name(partial_name)
  return kong.db.files.db.files:select_by_path(partial_name)
end


local function search_for_page(path, is_authenticated)
  local page = find_file(path, 'page', is_authenticated)

  if not page then
    page = find_file(path .. '/index', 'page', is_authenticated)
  end

  return page
end


local function set_page_if_blacklist_match(path, page)
  local blacklist = { "login", "register", "dashboard", "settings" }

  if pl_tablex.find(blacklist, path) then
    return page
  end

  return nil
end


local function search_for_valid_spec(path, extension, is_authenticated)
  local path, extension = get_next_route(path, extension)
  local spec = nil

  if (is_authenticated) then
    spec = find_file(extension, 'spec', true)
  end

  if not spec then
    spec = find_file(extension, 'spec', false)
  end

  local spec_loader = nil

  if spec and is_authenticated then
    spec_loader = find_file(path .. '/loader', 'page', true)
  end

  if spec and not spec_loader then
    spec_loader = find_file(path .. '/loader', 'page', false)
  end

  local pathname

  if spec and not spec_loader then
    if path == '' then
      pathname = 'loader'
    else
      pathname = path .. '/loader'
    end

    if not spec_loader and is_authenticated then
      spec_loader = find_file(pathname, 'page', true)
    end

    if not spec_loader then
      spec_loader = find_file(pathname, 'page', false)
    end
  end

  if not spec_loader and path ~= '' then
    return search_for_valid_spec(path, extension, is_authenticated)
  end

  return spec_loader, spec
end


local function find_partials_in_page(page, partials)
  local partial_match = find_next_partial(page)

  if not partial_match then
    return partials
  end

  local partial_name = parse_partial_name(partial_match)
  local partial = find_partial_by_name(partial_name)

  if not partial or partials[partial_name] then
    partial = { contents = '' }
    page = replace_partial_in_page(page, partial.contents, partial_match)
    return find_partials_in_page(page, partials)
  end

  partials[partial_name] = partial
  page = replace_partial_in_page(page, partial.contents, partial_match)
  return find_partials_in_page(page, partials)
end


local function retrieve_partials(self, page)
  local partials = {}
  local page = page.contents

  return find_partials_in_page(page, partials)
end


local function retrieve_page_and_spec(self)
  local is_authenticated = self.developer ~= nil
  local workspace = workspaces.get_workspace()

  local portal_enabled = workspace_config.retrieve(ws_constants.PORTAL,
                                                                    workspace)
  if not portal_enabled then
    return portal_disabled
  end

  local portal_auth = workspace_config.retrieve(ws_constants.PORTAL_AUTH,
                                                                    workspace)

  local path = self.path
  local page = nil
  local spec = nil

  local login = find_file('login', 'page', false)
  local not_found = find_file('404', 'page', false)

  path = pl_stringx.replace(path, '/' .. workspace.name .. '/', '')
  path = pl_stringx.replace(path, '/' .. workspace.name, '')
  path = pl_stringx.rstrip(path, '/')
  path = pl_stringx.lstrip(path, '/')

  if path == '' or path == '/' then
    path = 'index'
  end

  if portal_auth == nil or portal_auth == '' then
    page = set_page_if_blacklist_match(path, not_found)
  end

  -- if authenticated, search for valid authenticated page
  if not page and is_authenticated then
    page = search_for_page(path, true)
  end

  -- search for valid page under unauthenticated namespace
  if not page then
    page = search_for_page(path, false)
  end

  if not page then
    page, spec = search_for_valid_spec(path, '', is_authenticated)
  end

  -- if page is not found and user is not authenticated, prompt for login
  if not page and not is_authenticated  then
    page = login
  end

  -- default to 404 if no page is found
  if not page then
    page = not_found
  end

  if not page then
    page = no_files_found
  end

  return page, spec
end


local function compile_assets(self)
  local page, spec = retrieve_page_and_spec(self)
  local partials_dict = retrieve_partials(self, page)
  local partials = {}

  for idx, partial in pairs(partials_dict) do
    table.insert(partials, partial)
  end

  return page, partials, spec
end


local function compile_sitemap(self)
  local is_authenticated = self.developer ~= nil

  local pages = {}
  local specs = {}
  for row, err in kong.db.files:each(nil, { skip_rbac = true }) do
    if err then
      return endpoints.handle_error(err)
    end

    if row.type == "page" and (is_authenticated or row.auth == false) then
      table.insert(pages, row)

    elseif row.type == "spec" and (is_authenticated or row.auth == false) then
      table.insert(specs, row)
    end
  end

  return build_xml_template(pages, specs)
end


return {
  compile_assets = compile_assets,
  compile_sitemap = compile_sitemap,
  -- only exposed for unit testing
  build_url_obj = build_url_obj,
  build_url_set_by_type = build_url_set_by_type,
  build_xml_template = build_xml_template,
  retrieve_page_and_spec = retrieve_page_and_spec,
  retrieve_partials = retrieve_partials,
  find_partials_in_page = find_partials_in_page,
  replace_partial_in_page = replace_partial_in_page,
  search_for_valid_spec = search_for_valid_spec,
  find_partial_by_name = find_partial_by_name,
  search_for_page = search_for_page,
  get_next_route = get_next_route,
  parse_partial_name = parse_partial_name,
  find_next_partial = find_next_partial,
}
