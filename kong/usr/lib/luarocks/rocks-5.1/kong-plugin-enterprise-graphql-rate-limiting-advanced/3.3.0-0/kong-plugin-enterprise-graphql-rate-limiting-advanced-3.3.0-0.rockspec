package = "kong-plugin-enterprise-graphql-rate-limiting-advanced"
version = "3.3.0-0"
source = {
   url = "git+https://github.com/Kong/kong-plugin-enterprise-gql-rate-limiting.git"
}

description = {
   summary = "Kong rate limiting plugin for GraphQL endpoints.",
   detailed = [[
        Rate limits by assigning costs to queries and limiting
        each window by a maximum cost.
   ]],
   homepage = "https://github.com/Kong/kong-plugin-enterprise-gql-rate-limiting",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.graphql-rate-limiting-advanced.handler"]        = "kong/plugins/graphql-rate-limiting-advanced/handler.lua",
      ["kong.plugins.graphql-rate-limiting-advanced.schema"]         = "kong/plugins/graphql-rate-limiting-advanced/schema.lua",
      ["kong.plugins.graphql-rate-limiting-advanced.cost"]           = "kong/plugins/graphql-rate-limiting-advanced/cost.lua",

      ["kong.plugins.graphql-rate-limiting-advanced.api"]            = "kong/plugins/graphql-rate-limiting-advanced/api.lua",
      ["kong.plugins.graphql-rate-limiting-advanced.daos"]           = "kong/plugins/graphql-rate-limiting-advanced/daos.lua",
      ["kong.plugins.graphql-rate-limiting-advanced.migrations"]     = "kong/plugins/graphql-rate-limiting-advanced/migrations/init.lua",
      ["kong.plugins.graphql-rate-limiting-advanced.migrations.000_base_gql_rate_limiting"]
                                = "kong/plugins/graphql-rate-limiting-advanced/migrations/000_base_gql_rate_limiting.lua"
   }
}
