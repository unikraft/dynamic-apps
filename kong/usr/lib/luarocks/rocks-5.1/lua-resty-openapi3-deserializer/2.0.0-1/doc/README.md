# openapi3-deserializer
Library to deserialize OAS3 type parameters

Specs: https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#parameter-object

Examples: https://swagger.io/docs/specification/serialization/


The library only does deserialization for now, to be able to parse parameters
to validate them.


## Basics

The module returns a single function used for deserialization

```lua
local deserialize = require "resty.openapi3.deserializer"

local p_type = "array"
local p_style = "matrix"
local p_explode = true
local value = ";id=3;id=4;id=5"
local query_args = nil        -- only used for deepObject style
local source = "path"         -- path, header, query, or cookie

local result, err = deserialize(p_style, p_type, p_explode, value, query_args, source)

assert.same( nil, err )
assert.same({ 3, 4, 5 }, result )
```

### Parameter types:

- `primitive`
- `array`
- `object`

_Note_: `p_type` must be a string, but any value passed other than `"object"` or
`"array"` will be substituted for `"primitive"`. This allows for easy integration
with JSON-schema, since you can pass `schema.type` as the value for `p_type`.

### Serialization styles:

- `matrix` (primitive, array, object)
- `label` (primitive, array, object)
- `form` (primitive, array, object)
- `simple` (primitive, array, object)
- `spaceDelimited` (array)
- `pipeDelimited` (array)
- `deepObject` (object)

## Testing

- lint using luacheck
- tests using busted

validate everything by running: `busted && luacheck .`


## Notes on usage and parsing

- errors are only thrown for bad input (eg. non-existing styles/types). Any
  deserialization error is returned as `nil+err`.

- header values parsed as `array` or `object` will be stripped of whitespace,
  since the [RFC](https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.4) states that the whitespace around the CSV value is optional, and
  hence the whitespace is not significant.

- header values and query arguments parsed as `primitive` (so anything else than
  `object` or `array`), will be returned as is. So for headers the whitespace
  will not be stripped, and CSV values will not be split into an array or table.

  This also means that with `primitive` types the value MUST be a string. If it
  is a table because the user provided duplicate headers or query args, then each
  value must be offered for deserialized individually by the user code. Failing
  to do so will result in `nil+err`.

- duplicate header values and query arguments parsed as either `array` or
  `object` will be combined into a single array or object. In those cases the user
  code can simply pass in the OpenResty parsed array for deserialization.
  Note that in case of `object` style, duplicate field names are not allowed and
  will result in returning `nil+err`.

- for an object passed as query parameters, in style `form` with `explode=true`
  the entire query_args table will be the object, instead of a single value
  from that table. You can pass that table
  as the value, and it will be returned without any processing.

- for `deepObject` the signature is different. It is only supported for query
  arguments. It needs the full list of query args, and the name of the
  parameter to be deserialized.

  ```lua
  local result, err = deserialize("deepObject", "object", true, param_name, query_args, "query")
  ```

  This may return `nil, "not found"` if the object does not exist.

## History

Versioning is strictly SemVer based

### 2.0.0 02-Oct-2021

 - revert the header fix in `1.1.0`. For primitive types the values are returned
   as plain string, not as an array. Duplicate values must now be offered
   individually for deserialization in that case.
 - fix: strip whitespace from headers since it is not significant according to
   the RFC

### 1.2.0 22-Sep-2021

 - Feat: return array types with the `cjson.array_mt` metatable for validation and
   JSONification purposes

### 1.1.0 add normalization for decoder

 - Fix: correctly decode and normalize array when multiple headers with
   the same field-name
 - Tests: extend tests for header->primitive, header->array and header->object cases

### 1.0.1 adding copyright header

 - Chore: Add copyright header to files

### 1.0.0 production ready release, 15-Jul-2020

 - Fix: Minor improvement in error messages
 - Fix: if a query argument is parsed as an array, but has a single value, then
   OR would not provide a table, but only a single string value. Which would
   cause a decoded array with a return value of a string.

### 0.1.0 first release, 29-Jul-2019

 - initial release
