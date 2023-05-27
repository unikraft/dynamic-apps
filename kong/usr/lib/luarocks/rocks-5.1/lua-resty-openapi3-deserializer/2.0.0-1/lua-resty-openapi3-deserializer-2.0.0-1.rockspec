local package_name = "lua-resty-openapi3-deserializer"
local package_version = "2.0.0"
local rockspec_revision = "1"
local github_account_name = "Kong"
local github_repo_name = "openapi3-deserializer"
local git_checkout = package_version == "scm" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout
}

description = {
  summary = "Parameter deserialization according to OpenAPI 3",
  detailed = [[
    Library to deserialize primitives, array and objects in different
    styles from different origins (header, query, path, cookie).
  ]],
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
  license = "closed"
}

dependencies = {
  "penlight > 1.1, < 2.0",
}

build = {
  type = "builtin",
  modules = {
    ["resty.openapi3.deserializer"] = "resty/openapi3/deserializer.lua",
  },
}
