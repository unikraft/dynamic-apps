-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local split = require("pl.utils").split
local strip = require("pl.stringx").strip
local array_mt = require("cjson").array_mt


-- turn the result table into an array (for jsonification or json-verification)
local function array(v, err)
  if type(v) == "table" then
    setmetatable(v, array_mt)
  end
  return v, err
end


--[[
input values can have multiple formats:

this function normalizeses their output to a flat
table of strings

"3,4,5",                    { "3","4","5" } }
{"3,4,5","6"},              { "3","4","5","6" }
{"3,4,5","6,7"},            { "3","4","5","6","7" }

Note that input with nested tables are not allowed
i.e. {"3,4", {"5,6"}}
--]]
local function normalize(value, delim)
  delim = delim or ","
  if type(value) == "string" then
    return split(value, delim, true)
  end

  local return_table = {}
  if type(value) == "table" then
    -- inspect values and build new table
    -- with individual analyzable strings
    for _, v in pairs(value) do
      for _, itm in pairs(split(v, delim, true)) do
        table.insert(return_table, itm)
      end
    end
  end
  return return_table
end


-- splits a value by a separator (first occurence) and returns the key and value
local function split_key_value(input, kvp_sep)
  local start = input:find(kvp_sep, 1, true)
  if not start then
    return nil, "bad key-value pair, missing the separator '" .. kvp_sep .. "'"
  end
  return input:sub(1, start-1), input:sub(start+1, -1)
end


local function decode(value, sep, kvp_sep, strip_whitespace)
  local list = split(value, sep, true)
  local result = {}
  if kvp_sep then
    for _, kv in ipairs(list) do
      local key, value = split_key_value(kv, kvp_sep)
      if not key then
        return nil, value
      end
      if strip_whitespace then
        key = strip(key)
        value = strip(value)
      end
      if result[key] then
        return nil, "cannot decode duplicate fields"
      end
      result[key] = value
    end
    return result
  end

  local length = #list/2
  if math.floor(length) ~= length then
    return nil, "expected even number of entries to decode object"
  end
  for i = 1, #list, 2 do
    local key = list[i]
    local value = list[i+1]
    if strip_whitespace then
      key = strip(key)
      value = strip(value)
    end
    if result[key] then
      return nil, "cannot decode duplicate fields"
    end
    result[key] = value
  end
  return result
end


-- ========================================================================
--   SIMPLE
-- ========================================================================
local function simple_primitive(value)
  if type(value) == "table" then
    return nil, "cannot decode duplicate values"
  end

  return value
end


local function simple_array(value, _, _, strip_whitespace)
  local result = array(normalize(value))

  if strip_whitespace then
    for i, val in ipairs(result) do
      result[i] = strip(val)
    end
  end

  return result
end


local function simple_object(value, explode, _, strip_whitespace)
  if type(value) == "table" then
    -- simple-object is headers and url, only headers can have duplicates
    -- and then multiple-headers equal csv-headers, so we can combine them here
    -- into a single CSV value safely
    value = table.concat(value, ",")
  end

  if explode then
    return decode(value, ",", "=", strip_whitespace)
  end
  return decode(value, ",", nil, strip_whitespace)
end


-- ========================================================================
--   LABEL
-- ========================================================================
local function label_primitive(value)
  if value:sub(1,1) ~= "." then
    return nil, "leading '.' missing for label style primitive deserialization"
  end
  return value:sub(2,-1)
end


local function label_array(value, explode)
  if value:sub(1,1) ~= "." then
    return nil, "leading '.' missing for label style array deserialization"
  end
  if explode then
    return array(split(value:sub(2,-1), ".", true))
  else
    return array(split(value:sub(2,-1), ",", true))
  end
end


local function label_object(value, explode)
  if value:sub(1,1) ~= "." then
    return nil, "leading '.' missing for label style object deserialization"
  end
  if explode then
    return decode(value:sub(2,-1), ".", "=")
  end

  return decode(value:sub(2,-1), ",", nil)
end



-- ========================================================================
--   MATRIX
-- ========================================================================
local function matrix_primitive(value)
  if value:sub(1,1) ~= ";" then
    return nil, "leading ';' missing for matrix style primitive deserialization"
  end
  local _, result = split_key_value(value:sub(2,-1), "=")
  return result
end


local function matrix_array(value, explode)
  if value:sub(1,1) ~= ";" then
    return nil, "leading ';' missing for matrix style array deserialization"
  end

  value = value:sub(2,-1)

  if not explode then
    local key, values = split_key_value(value, "=")
    if not key then
      return nil, values
    end
    return array(split(values, ",", true))
  end

  local list = split(value, ";", true)
  for i, kvp in ipairs(list) do
    local k, v = split_key_value(kvp, "=")
    if not k then
      return nil, v
    end
    list[i] = v
  end

  return array(list)
end


local function matrix_object(value, explode)
  if value:sub(1,1) ~= ";" then
    return nil, "leading ';' missing for matrix style object deserialization"
  end
  if explode then
    return decode(value:sub(2,-1), ";", "=")
  end

  local k,v = split_key_value(value:sub(2,-1), "=")
  if not k then
    return k, v
  end

  return decode(v, ",", nil)
end



-- ========================================================================
--   FORM
-- ========================================================================
local function form_primitive(value)
  if type(value) == "table" then
    return nil, "cannot decode duplicate values"
  end

  return value
end


local function form_array(value, explode)

  if explode then
    if type(value) == "string" then
      return array({ value }) -- was parsed by OR as a single value, not a table
    end
    return array(value) -- is already a proper table
  end

  if type(value) == "table" then
    return nil, "cannot decode duplicate values"
  end

  return array(split(value, ",", true))
end


local function form_object(value, explode)
  if explode then
    return value -- is already a proper table
  end

  if type(value) == "table" then
    return nil, "cannot decode duplicate values"
  end

  return decode(value, ",", nil)
end



-- ========================================================================
--   SPACE-DELIMITED
-- ========================================================================
local function spaceDelimited_array(value, explode)

  if explode then
    if type(value) == "string" then
      return array({ value }) -- was parsed by OR as a single value, not a table
    end
    return array(value) -- is already a proper table
  end

  if type(value) == "table" then
    return nil, "cannot decode duplicate values"
  end

  return array(split(value, " ", true))
end



-- ========================================================================
--   PIPE-DELIMITED
-- ========================================================================
local function pipeDelimited_array(value, explode)

  if explode then
    if type(value) == "string" then
      return array({ value }) -- was parsed by OR as a single value, not a table
    end
    return array(value) -- is already a proper table
  end

  if type(value) == "table" then
    return nil, "cannot decode duplicate values"
  end

  return array(split(value, "|", true))
end



-- ========================================================================
--   DEEP-OBJECT
-- ========================================================================
local function deepObject_object(name, explode, query_args)
  if not explode then
    return nil, "cannot decode deepObject with explode=false"
  end

  local start = name .. "["
  local length = #start
  local found
  local result = {}

  for key, value in pairs(query_args) do
    if key:sub(1, length) == start then
      if type(value) == "table" then
        return nil, "cannot decode duplicate values"
      end

      result[ key:sub(length+1, -2) ] = value
      found = true
    end
  end

  if found then
    return result
  end
  return nil, "not found"
end



-- ========================================================================
--   Generic decoder
-- ========================================================================

local STYLES_AND_TYPES_SUPPORTED = {
  matrix         = { primitive = matrix_primitive,
                     array     = matrix_array,
                     object    = matrix_object },
  label          = { primitive = label_primitive,
                     array     = label_array,
                     object    = label_object },
  form           = { primitive = form_primitive,
                     array     = form_array,
                     object    = form_object },
  simple         = { primitive = simple_primitive,
                     array     = simple_array,
                     object    = simple_object },
  spaceDelimited = { array     = spaceDelimited_array },
  pipeDelimited  = { array     = pipeDelimited_array },
  deepObject     = { object    = deepObject_object },
}

setmetatable(STYLES_AND_TYPES_SUPPORTED, {
  __index = function(self, key)
    error(("'%s' is not a known parameter serialization style"):format(tostring(key)), 2)
  end
})

for style, types in pairs(STYLES_AND_TYPES_SUPPORTED) do
  setmetatable(types, {
    __index = function(self, key)
      if not ({ primitive = true, array = true, object = true})[key] then
        error(("invalid type: '%s', valid types are 'primitive', 'array', or 'object'"):format(tostring(key)), 2)
      end

      return  function()
                return nil, ("the type '%s' cannot be used with '%s' serialization style"):format(key, style)
              end

    end
  })
end

-- Type lookup table, array and object remain, everything else becomes "primitive",
-- this allows to pass in the JSONschema `schema.type` field for the proper
-- serialization type
local type_check = {
  array = "array",
  object = "object",
}
setmetatable(type_check, {
  __index = function(self, typ)
    if type(typ) ~= "string" then
      error(("expected type to be a string, got: '%s' (%s)"):format(tostring(typ), type(typ)), 2)
    end
    self[typ] = "primitive"
    return "primitive"
  end,
})

-- Verify the source value, and return the "strip-whitespace" boolean
local source_check = {
  path = false,
  cookie = false,
  query = false,
  header = true,
}
setmetatable(source_check, {
  __index = function(self, source)
    error(("expected source to be a string, one of 'path', 'cookie', 'query'" ..
           ", or 'header', got: '%s' (%s)"):format(tostring(source), type(source)), 3)
  end,
})

-- Module to deserialize parameters.
-- All values returned will be strings (or tables with strings for 'array' and
-- 'object' types). Errors will only be thrown on bad input (eg. non-existing
-- type/style combinations). Deserialization errors will be returned as
-- `nil+err` return values, and can be considered bad input. The one exception
-- is the "deepObject" style, which may return `nil+"not found"` which can be
-- valid input, and might need handling in the users code.
-- @param style a valid OAS 3.0 style
-- @param typ a valid type to decode, either "primitive", "array", or "object". Anything
-- passed, other than "array" or "object", will automatically become "primitive"
-- @param explode whether or not to explode the value
-- @param value the value to deserialize
-- @param query_args the entire query_args table in case of "deepObject" style.
-- In that case the `value` parameter should not be the value, but the `name` of the
-- parameter we want to deserialize. The return value `nil, "not found"` indicates
-- that the parameter was not found.
-- @param source string, source of the data; path, cookie, header, query. This is
-- used to determine if whitespace has to be stripped (in case of headers)
-- @return the value (note that values are always strings!), or `nil+err`
return function(style, typ, explode, value, query_args, source)
  local decoder = STYLES_AND_TYPES_SUPPORTED[style or 0][type_check[typ or 0]]
  if not decoder then
    return nil, ("invalid combination of style '%s' and type '%s'"):format(
                tostring(style), tostring(type))
  end
  return decoder(value, explode, query_args, source_check[source])
end

