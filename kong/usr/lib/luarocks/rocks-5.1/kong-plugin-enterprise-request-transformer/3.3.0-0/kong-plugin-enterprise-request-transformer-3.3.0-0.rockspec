package = "kong-plugin-enterprise-request-transformer"
version = "3.3.0-0"

source = {
  url = "https://github.com/Kong/kong-plugin-enterprise-request-transformer",
  tag = "3.3.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "Kong Enterprise Request Transformer",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.request-transformer-advanced.migrations.cassandra"] = "kong/plugins/request-transformer-advanced/migrations/cassandra.lua",
    ["kong.plugins.request-transformer-advanced.migrations.postgres"] = "kong/plugins/request-transformer-advanced/migrations/postgres.lua",
    ["kong.plugins.request-transformer-advanced.migrations.common"] = "kong/plugins/request-transformer-advanced/migrations/common.lua",
    ["kong.plugins.request-transformer-advanced.migrations.enterprise"] = "kong/plugins/request-transformer-advanced/migrations/enterprise/init.lua",
    ["kong.plugins.request-transformer-advanced.migrations.enterprise.001_1500_to_2100"] = "kong/plugins/request-transformer-advanced/migrations/enterprise/001_1500_to_2100.lua",
    ["kong.plugins.request-transformer-advanced.handler"] = "kong/plugins/request-transformer-advanced/handler.lua",
    ["kong.plugins.request-transformer-advanced.access"] = "kong/plugins/request-transformer-advanced/access.lua",
    ["kong.plugins.request-transformer-advanced.schema"] = "kong/plugins/request-transformer-advanced/schema.lua",
  }
}
