package = "kong-openid-connect"
version = "2.5.5-1"
source = {
  url = "git://github.com/Kong/kong-openid-connect.git",
  tag = "v2.5.5",
}
description = {
  summary    = "OpenID Connect Library for Kong, and OpenResty",
  detailed   = "kong-openid-connect contains OpenID Connect 1.0 library.",
  homepage   = "https://github.com/Kong/kong-openid-connect",
  maintainer = "Aapo Talvensaari <bungle@konghq.com>",
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.15",
  "lua-resty-openssl >= 0.8.20"
}
build = {
  type = "builtin",
  modules = {
    ["kong.openid-connect"]               = "kong/openid-connect.lua",
    ["kong.openid-connect.array"]         = "kong/openid-connect/array.lua",
    ["kong.openid-connect.authorization"] = "kong/openid-connect/authorization.lua",
    ["kong.openid-connect.client"]        = "kong/openid-connect/client.lua",
    ["kong.openid-connect.codec"]         = "kong/openid-connect/codec.lua",
    ["kong.openid-connect.configuration"] = "kong/openid-connect/configuration.lua",
    ["kong.openid-connect.debug"]         = "kong/openid-connect/debug.lua",
    ["kong.openid-connect.deflate"]       = "kong/openid-connect/deflate.lua",
    ["kong.openid-connect.hash"]          = "kong/openid-connect/hash.lua",
    ["kong.openid-connect.issuer"]        = "kong/openid-connect/issuer.lua",
    ["kong.openid-connect.jwa"]           = "kong/openid-connect/jwa.lua",
    ["kong.openid-connect.jwe"]           = "kong/openid-connect/jwe.lua",
    ["kong.openid-connect.jwks"]          = "kong/openid-connect/jwks.lua",
    ["kong.openid-connect.jws"]           = "kong/openid-connect/jws.lua",
    ["kong.openid-connect.jwt"]           = "kong/openid-connect/jwt.lua",
    ["kong.openid-connect.keys"]          = "kong/openid-connect/keys.lua",
    ["kong.openid-connect.nyi"]           = "kong/openid-connect/nyi.lua",
    ["kong.openid-connect.options"]       = "kong/openid-connect/options.lua",
    ["kong.openid-connect.random"]        = "kong/openid-connect/random.lua",
    ["kong.openid-connect.set"]           = "kong/openid-connect/set.lua",
    ["kong.openid-connect.token"]         = "kong/openid-connect/token.lua",
    ["kong.openid-connect.uri"]           = "kong/openid-connect/uri.lua",
    ["kong.openid-connect.claims"]         = "kong/openid-connect/claims.lua",
    ["kong.openid-connect.validation.jwk"]       = "kong/openid-connect/validation/jwk.lua",
    ["kong.openid-connect.pkey"]                 = "kong/openid-connect/pkey.lua",
  }
}
