-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

--- A library of ready-to-use type synonyms to use in schema definitions.
-- @module kong.db.schema.typedefs
local utils = require "kong.tools.utils"
local queue_schema = require "kong.tools.queue_schema"
local openssl_pkey = require "resty.openssl.pkey"
local openssl_x509 = require "resty.openssl.x509"
local Schema = require "kong.db.schema"
local socket_url = require "socket.url"
local constants = require "kong.constants"
local pl_tablex = require("pl.tablex")


local DAO_MAX_TTL = constants.DATABASE.DAO_MAX_TTL
local normalize = require("kong.tools.uri").normalize
local pairs = pairs
local match = string.match
local gsub = string.gsub
local null = ngx.null
local type = type


local function validate_host(host)
  local res, err_or_port = utils.normalize_ip(host)
  if type(err_or_port) == "string" and err_or_port ~= "invalid port number" then
    return nil, "invalid value: " .. host
  end

  if err_or_port == "invalid port number" or type(res.port) == "number" then
    return nil, "must not have a port"
  end

  return true
end


local function validate_host_with_optional_port(host)
  local res, err_or_port = utils.normalize_ip(host)
  return (res and true or nil), err_or_port
end


local function validate_ip(ip)
  if utils.is_valid_ip(ip) then
    return true
  end

  return nil, "not an ip address: " .. ip
end


local function validate_ip_or_cidr(ip_or_cidr)
  if utils.is_valid_ip_or_cidr(ip_or_cidr) then
    return true
  end

  return nil, "invalid ip or cidr range: '" .. ip_or_cidr .. "'"
end


local function validate_ip_or_cidr_v4(ip_or_cidr_v4)
  if utils.is_valid_ip_or_cidr_v4(ip_or_cidr_v4) then
    return true
  end

  return nil, "invalid ipv4 cidr range: '" .. ip_or_cidr_v4 .. "'"
end


local function validate_path(path)
  if not match(path, "^/[%w%.%-%_%~%/%%%:%@" ..
                     "%!%$%&%'%(%)%*%+%,%;%=" .. -- RFC 3986 "sub-delims"
                     "]*$")
  then
    return nil,
           "invalid path: '" .. path ..
           "' (characters outside of the reserved list of RFC 3986 found)",
           "rfc3986"
  end

  do
    -- ensure it is properly percent-encoded
    local raw = gsub(path, "%%%x%x", "___")

    if raw:find("%", nil, true) then
      local err = raw:sub(raw:find("%%.?.?"))
      return nil, "invalid url-encoded value: '" .. err .. "'", "percent"
    end
  end

  return true
end


local function validate_name(name)
  if not match(name, "^[%w%.%-%_~]+$") then
    return nil,
    "invalid value '" .. name ..
      "': it must only contain alphanumeric and '., -, _, ~' characters"
  end

  return true
end


local function validate_utf8_string(str)
  local ok, index = utils.validate_utf8(str)

  if not ok then
    return nil, "invalid utf-8 character sequence detected at position " .. tostring(index)
  end

  return true
end


local function validate_tag(tag)

  local ok, err = validate_utf8_string(tag)
  if not ok then
    return nil, err
  end

  -- printable ASCII (33-126 except ','(44) and '/'(47),
  -- plus non-ASCII utf8 (128-244)
  if not match(tag, "^[ \033-\043\045\046\048-\126\128-\244]+$") then
    return nil,
    "invalid tag '" .. tag ..
      "': expected printable ascii (except `,` and `/`) or valid utf-8 sequences"
  end

  return true
end


local function validate_utf8_name(name)

  local ok, err = validate_utf8_string(name)
  if not ok then
    return nil, err
  end

  if not match(name, "^[%w%.%-%_~\128-\244]+$") then
    return nil,
    "invalid value '" .. name ..
      "': the only accepted ascii characters are alphanumerics or ., -, _, and ~"
  end

  return true
end


local function validate_sni(host)
  local res, err_or_port = utils.normalize_ip(host)
  if type(err_or_port) == "string" and err_or_port ~= "invalid port number" then
    return nil, "invalid value: " .. host
  end

  if res and res.type ~= "name" then
    return nil, "must not be an IP"
  end

  if err_or_port == "invalid port number" or type(res.port) == "number" then
    return nil, "must not have a port"
  end

  return true
end


local function validate_wildcard_host(host)
  local idx = string.find(host, "*", nil, true)
  if idx then
    if idx ~= 1 and idx ~= #host then
      return nil, "wildcard must be leftmost or rightmost character"
    end

    -- substitute wildcard for upcoming host normalization
    local mock_host, count = string.gsub(host, "%*", "wildcard")
    if count > 1 then
      return nil, "only one wildcard must be specified"
    end

    host = mock_host
  end

  local res, err_or_port = utils.normalize_ip(host)
  if type(err_or_port) == "string" and err_or_port ~= "invalid port number" then
    return nil, "invalid value: " .. host
  end

  if res and res.type ~= "name" then
    return nil, "must not be an IP"
  end

  if err_or_port == "invalid port number" or type(res.port) == "number" then
    return nil, "must not have a port"
  end

  return true
end


local function validate_url(url)
  local parsed_url, err = socket_url.parse(url)

  if not parsed_url then
    return nil, "could not parse url. " .. err
  end

  if not parsed_url.host then
    return nil, "missing host in url"
  end

  if not parsed_url.scheme then
    return nil, "missing scheme in url"
  end

  return true
end


local function validate_certificate(cert)
  local _, err = openssl_x509.new(cert)
  if err then
    return nil, "invalid certificate: " .. err
  end

  return true
end


local function validate_key(key)
  -- requires an unencrypted PEM-encoded key
  local pok, perr, err = pcall(openssl_pkey.new, key, {
    format = "PEM",
    passphrase_cb = function()
      -- throw this error without src line number
      error("key is encrypted", 0)
    end,
  })
  if not pok then
    err = perr
  end
  if err then
    return nil, "invalid key: " .. err
  end

  return true
end


local typedefs = {}


typedefs.http_method = Schema.define {
  type = "string",
  match = "^%u+$",
}


typedefs.protocol = Schema.define {
  type = "string",
  one_of = constants.PROTOCOLS,
}


typedefs.host = Schema.define {
  type = "string",
  custom_validator = validate_host,
}


typedefs.host_with_optional_port = Schema.define {
  type = "string",
  custom_validator = validate_host_with_optional_port,
}


typedefs.wildcard_host = Schema.define {
  type = "string",
  custom_validator = validate_wildcard_host,
}


typedefs.ip = Schema.define {
  type = "string",
  custom_validator = validate_ip,
}

typedefs.ip_or_cidr = Schema.define {
  type = "string",
  custom_validator = validate_ip_or_cidr,
}

-- TODO: this seems to allow ipv4s too, should it?
typedefs.cidr_v4 = Schema.define {
  type = "string",
  custom_validator = validate_ip_or_cidr_v4,
}

-- deprecated alias
typedefs.cidr = typedefs.cidr_v4

typedefs.port = Schema.define {
  type = "integer",
  between = { 0, 65535 }
}


typedefs.path = Schema.define {
  type = "string",
  starts_with = "/",
  match_none = {
    { pattern = "//",
      err = "must not have empty segments"
    },
  },
  custom_validator = validate_path,
}


typedefs.url = Schema.define {
  type = "string",
  custom_validator = validate_url,
}

typedefs.header_name = Schema.define {
  type = "string",
  custom_validator = utils.validate_header_name,
}


typedefs.timeout = Schema.define {
  type = "integer",
  between = { 0, math.pow(2, 31) - 2 },
}


typedefs.uuid = Schema.define {
  type = "string",
  uuid = true,
  auto = true,
}


typedefs.auto_timestamp_s = Schema.define {
  type = "integer",
  timestamp = true,
  auto = true
}


typedefs.auto_timestamp_ms = Schema.define {
  type = "number",
  timestamp = true,
  auto = true
}


typedefs.no_route = Schema.define {
  type = "foreign",
  reference = "routes",
  eq = null,
}


typedefs.no_service = Schema.define {
  type = "foreign",
  reference = "services",
  eq = null,
}


typedefs.no_consumer = Schema.define {
  type = "foreign",
  reference = "consumers",
  eq = null,
}


typedefs.name = Schema.define {
  type = "string",
  unique = true,
  custom_validator = validate_name
}


typedefs.rbac_user_token = Schema.define {
  type = "string",
  unique = true,
  required = true,
  unique_across_ws = true,
  custom_validator = validate_utf8_string
}


typedefs.utf8_name = Schema.define {
  type = "string",
  unique = true,
  custom_validator = validate_utf8_name
}


typedefs.sni = Schema.define {
  type = "string",
  custom_validator = validate_sni,
}


typedefs.certificate = Schema.define {
  type = "string",
  custom_validator = validate_certificate,
}


typedefs.key = Schema.define {
  type = "string",
  custom_validator = validate_key,
}

typedefs.run_on_first = Schema.define {
  type = "string",
  required = false,
  one_of = { "first" },
}

typedefs.tag = Schema.define {
  type = "string",
  required = true,
  custom_validator = validate_tag,
}


typedefs.tags = Schema.define {
  type = "set",
  elements = typedefs.tag,
}

local http_protocols = {}
local http_and_ws_protocols = {}
local ws_protocols = {}

for proto, subsystem in pairs(constants.PROTOCOLS_WITH_SUBSYSTEM) do
  local is_websocket = proto == "ws" or proto == "wss"

  if subsystem == "http" then
    http_and_ws_protocols[#http_and_ws_protocols + 1] = proto

    if is_websocket then
      ws_protocols[#ws_protocols + 1] = proto
    else
      http_protocols[#http_protocols + 1] = proto
    end
  end
end
table.sort(http_protocols)
table.sort(http_and_ws_protocols)
table.sort(ws_protocols)

-- all protocols
typedefs.protocols = Schema.define {
  type = "set",
  required = true,
  default = http_protocols,
  elements = typedefs.protocol,
}

-- all HTTP protocols _excluding_ WebSockets (ws/wss)
typedefs.protocols_http = Schema.define {
  type = "set",
  required = true,
  default = http_protocols,
  elements = { type = "string", one_of = http_protocols },
}

-- all HTTP protocols _including_ WebSockets (ws/wss)
typedefs.protocols_http_and_ws = Schema.define {
  type = "set",
  required = true,
  default = http_and_ws_protocols,
  elements = { type = "string", one_of = http_and_ws_protocols },
}

-- WebSocket protocols only (ws/wss)
typedefs.protocols_ws = Schema.define {
  type = "set",
  required = true,
  default = ws_protocols,
  elements = { type = "string", one_of = ws_protocols },
}


-- routes typedefs
-- common for routes and routes subschemas

local function validate_host_with_wildcards(host)
  local no_wildcards = string.gsub(host, "%*", "abc")
  return typedefs.host_with_optional_port.custom_validator(no_wildcards)
end

local function validate_path_with_regexes(path)

  local ok, err, err_code = typedefs.path.custom_validator(path)

  if err_code == "percent" then
    return ok, err, err_code
  end

  if path:sub(1, 1) ~= "~" then
    -- prefix matching. let's check if it's normalized form
    local normalized = normalize(path, true)
    if path ~= normalized then
      return nil, "non-normalized path, consider use '" .. normalized .. "' instead"
    end

    return true
  end

  path = path:sub(2)

  -- the value will be interpreted as a regex by the router; but is it a
  -- valid one? Let's dry-run it with the same options as our router.
  local _, _, err = ngx.re.find("", path, "aj")
  if err then
    return nil,
           string.format("invalid regex: '%s' (PCRE returned: %s)",
                         path, err)
  end

  return true
end


typedefs.sources = Schema.define {
  type = "set",
  elements = {
    type = "record",
    fields = {
      { ip = typedefs.ip_or_cidr },
      { port = typedefs.port },
    },
    entity_checks = {
      { at_least_one_of = { "ip", "port" } }
    },
  },
}

typedefs.no_sources = Schema.define(typedefs.sources { eq = null })

typedefs.destinations = Schema.define {
  type = "set",
  elements = {
    type = "record",
    fields = {
      { ip = typedefs.ip_or_cidr },
      { port = typedefs.port },
    },
    entity_checks = {
      { at_least_one_of = { "ip", "port" } }
    },
  },
}

typedefs.no_destinations = Schema.define(typedefs.destinations { eq = null })

typedefs.methods = Schema.define {
  type = "set",
  elements = typedefs.http_method,
}

typedefs.no_methods = Schema.define(typedefs.methods { eq = null })

typedefs.hosts = Schema.define {
  type = "array",
  elements = {
    type = "string",
    match_all = {
      {
        pattern = "^[^*]*%*?[^*]*$",
        err = "invalid wildcard: must have at most one wildcard",
      },
    },
    match_any = {
      patterns = { "^%*%.", "%.%*$", "^[^*]*$" },
      err = "invalid wildcard: must be placed at leftmost or rightmost label",
    },
    custom_validator = validate_host_with_wildcards,
  }
}

typedefs.no_hosts = Schema.define(typedefs.hosts { eq = null })

typedefs.router_path = Schema.define {
  type = "string",
  match_any = {
    patterns = {"^/", "^~/"},
    err = "should start with: / (fixed path) or ~/ (regex path)",
  },
  match_none = {
    { pattern = "//",
      err = "must not have empty segments"
    },
  },
  custom_validator = validate_path_with_regexes,
}

typedefs.router_paths = Schema.define {
  type = "array",
  elements = typedefs.router_path
}

typedefs.no_paths = Schema.define(typedefs.router_paths { eq = null })

typedefs.headers = Schema.define {
  type = "map",
  keys = typedefs.header_name,
  values = {
    type = "array",
    elements = {
      type = "string",
    },
  },
}

typedefs.no_headers = Schema.define(typedefs.headers { eq = null } )

typedefs.semantic_version = Schema.define {
  type = "string",
  match_any = {
    patterns = { "^%d+[%.%d]*$", "^%d+[%.%d]*%-?.*$", },
    err = "invalid version number: must be in format of X.Y.Z",
  },
  match_none = {
    {
      pattern = "%.%.",
      err = "must not have empty version segments"
    },
  },
}

local function validate_loaded_plugins(target_plugin)
  -- When a plugin describes a dependecy to another plugin
  -- we should ensure that the dependecy is actually a loaded plugin.
  -- `loaded_plugins` also include custom plugins
  local loaded_plugins = pl_tablex.keys(kong.configuration.loaded_plugins)
  if utils.table_contains(loaded_plugins, target_plugin) then
    return true
  end
  return false, "Expected one of " .. table.concat(loaded_plugins, ", ")
end

local function validate_dependencies(...)
  -- The `plugin` we get in this function is the value of a `before` and
  -- `after` directive. This means we can't maintain a list of plugins that
  -- should be reordered as the `before|after` target can be any plugin.
  -- This acts as a placeholder for a an actual validation function
  return true
end

local function validate_plugins(target_plugin)
  local res, err = validate_loaded_plugins(target_plugin)
  if err or res ~= true then
    return false, err
  end
  local res, err = validate_dependencies(target_plugin)
  if err or res ~= true then
    return false, err
  end
  return true
end

local function validate_jwk(key)
  -- unless it's a reference
  if kong.vault.is_reference(key) then
    return true
  end

  local pk, err = openssl_pkey.new(key, { format = "JWK" })
  if not pk or err then
    return false, "could not load JWK, likely not a valid key"
  end
  return true
end

local function validate_pem_keys(values)
  local public_key = values.public_key
  local private_key = values.private_key

  -- unless it's a vault reference
  if kong.vault.is_reference(private_key) or
     kong.vault.is_reference(public_key) then
    return true
  end

  local pk, err = openssl_pkey.new(public_key, { format = "PEM" })
  if not pk or err then
    return false, "could not load public key"
  end

  local ppk, perr = openssl_pkey.new(private_key, { format = "PEM" })
  if not ppk or perr then
    return false, "could not load private key" .. (perr or "")
  end
  return true
end

local dependency_token = Schema.define {
  type = "string",
  one_of = {"before", "after"}
}

local phases_supporting_reordering = Schema.define {
  type = "string",
  one_of = { "access" }
}

typedefs.plugin_ordering = Schema.define {
  --[[
  The structure looks like this
    ordering:
      dependency_token:
        phases_supporting_reordering:
          - plugin_name_a
          - plugin_name_b
          - ...
  --]]
  type = "map",
  keys = dependency_token,
  values = {
    type = "map",
    keys = phases_supporting_reordering,
    values = {
      type = "array",
      elements = {
        custom_validator = validate_plugins,
        type = "string",
        unique = true
      }
    }
  },
}

typedefs.pem = Schema.define {
  type = "record",
  required = false,
  fields = {
    {
      private_key = {
        type = "string",
        required = false,
        referenceable = true,
        encrypted = true
      },
    },
    {
      public_key = {
        type = "string",
        referenceable = true,
        required = false,
      },
    },
  },
  custom_validator = validate_pem_keys,
}

typedefs.jwk = Schema.define {
  type = "record",
  required = false,
  fields = {
    {
      issuer = {
        type = "string",
        required = false,
      },
    },
    {
      kty = {
        type = "string",
        required = false,
      },
    },
    {
      use = {
        type = "string",
        required = false,
      },
    },
    {
      key_ops = {
        type = "array",
        required = false,
        elements = {
          type = "string",
          required = false,
        }
      },
    },
    {
      alg = {
        type = "string",
        required = false,
      },
    },
    {
      kid = {
        type = "string",
        required = true,
      },
    },
    {
      x5u = {
        type = "string",
        required = false,
      },
    },
    {
      x5c = {
        type = "array",
        required = false,
        elements = {
          type = "string",
          required = false,
        },
      },
    },
    {
      x5t = {
        type = "string",
        required = false,
      },
    },
    {
      ["x5t#S256"] = {
        type = "string",
        required = false,
      },
    },
    {
      k = {
        type = "string",
        required = false,
      },
    },
    {
      x = {
        type = "string",
        required = false,
      },
    },
    {
      y = {
        type = "string",
        required = false,
      },
    },
    {
      crv = {
        type = "string",
        required = false,
      },
    },
    {
      n = {
        type = "string",
        required = false,
      },
    },
    {
      e = {
        type = "string",
        required = false,
      },
    },
    {
      d = {
        type = "string",
        required = false,
      },
    },
    {
      p = {
        type = "string",
        required = false,
      },
    },
    {
      q = {
        type = "string",
        required = false,
      },
    },
    {
      dp = {
        type = "string",
        required = false,
      },
    },
    {
      dq = {
        type = "string",
        required = false,
      },
    },
    {
      qi = {
        type = "string",
        required = false,
      },
    },
    {
      oth = {
        type = "string",
        required = false,
      },
    },
    {
      r = {
        type = "string",
        required = false,
      },
    },
    {
      t = {
        type = "string",
        required = false,
      },
    },
  },
  custom_validator = validate_jwk
}

typedefs.queue = queue_schema

local function validate_lua_expression(expression)
  local sandbox = require "kong.tools.sandbox"
  return sandbox.validate_safe(expression)
end

typedefs.lua_code = Schema.define {
  type = "map",
  keys = { type = "string", len_min = 1, },
  values = { type = "string", len_min = 1, custom_validator = validate_lua_expression },
}

setmetatable(typedefs, {
  __index = function(_, k)
    error("schema typedef error: definition " .. k .. " does not exist", 2)
  end
})


typedefs.ttl = Schema.define {
  type = "number",
  between = { 0, DAO_MAX_TTL },
}

return typedefs
