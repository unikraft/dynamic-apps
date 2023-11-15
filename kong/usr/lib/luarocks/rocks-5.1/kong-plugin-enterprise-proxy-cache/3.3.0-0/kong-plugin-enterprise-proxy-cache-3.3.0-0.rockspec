package = "kong-plugin-enterprise-proxy-cache"
version = "3.3.0-0"

source = {
  url = "git://github.com/Kong/kong-plugin-enterprise-proxy-cache",
  tag = "3.3.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "HTTP Proxy Caching for Kong Enterprise",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.proxy-cache-advanced.handler"]                             = "kong/plugins/proxy-cache-advanced/handler.lua",
    ["kong.plugins.proxy-cache-advanced.cache_key"]                           = "kong/plugins/proxy-cache-advanced/cache_key.lua",
    ["kong.plugins.proxy-cache-advanced.schema"]                              = "kong/plugins/proxy-cache-advanced/schema.lua",
    ["kong.plugins.proxy-cache-advanced.api"]                                 = "kong/plugins/proxy-cache-advanced/api.lua",
    ["kong.plugins.proxy-cache-advanced.strategies"]                          = "kong/plugins/proxy-cache-advanced/strategies/init.lua",
    ["kong.plugins.proxy-cache-advanced.strategies.memory"]                   = "kong/plugins/proxy-cache-advanced/strategies/memory.lua",
    ["kong.plugins.proxy-cache-advanced.strategies.redis"]                    = "kong/plugins/proxy-cache-advanced/strategies/redis.lua",
    ["kong.plugins.proxy-cache-advanced.migrations"]                          = "kong/plugins/proxy-cache-advanced/migrations/init.lua",
    ["kong.plugins.proxy-cache-advanced.migrations.001_035_to_050"]           = "kong/plugins/proxy-cache-advanced/migrations/001_035_to_050.lua",
  }
}
