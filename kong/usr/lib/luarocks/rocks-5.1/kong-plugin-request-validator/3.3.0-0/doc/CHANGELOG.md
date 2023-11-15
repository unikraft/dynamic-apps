# Kong request validator plugin changelog

### Releasing new versions

- update changelog below
- update rockspec version
- update version in `handler.lua`
- commit as `chore(*) release x.y.z`
- tag commit as `x.y.z`
- push commit and tags
- do not upload to luarocks since this is a private repo

For steps 2 - 6 above [this script](https://github.com/Kong/kong-ee/blob/master/scripts/bump-plugin) can be used.

## 1.2.1
- Move draft4 validator module into Kong core and add a compatibility shim for
  locating validator modules (`validators.lua`)

## 1.2.0

- revert the change in parsing multiple values as arrays in version 1.1.3 (FTI-2530)
  headers and query-args as `primitive` are now validated individually when
  duplicates are provided, instead of merging them as an array.
- fix(headers) whitespace around CSV values is now dropped since it is not
  significant according to the RFC (whitespace is optional)
- chore(*) bump openapi3-deserialiser to 2.0.0 to enable the above changes

## 1.1.6

- fix(verbose) when parameters are required, the code path would not add an
  explanation to the error.
- chore(deps) bump deserializer lib, remove workaround
- chore(ci) update platform for newer docker version
- tests(*) add dbless integration testing
- fix(ci) update version matrix, move secrets to GUI
- fix(verbose) add more verbosity to error messages. When parameters fail to
  validate, and verbose errors are requested, a copy of the deserialized value
  is included in the response.

## 1.1.5

- fix(*) BasePlugin inheritance removal (FT-1701)

## 1.1.4

- chore(*) bump lua-resty-ljsonschema from 1.1.1 to 1.1.2 to fix a bug, where a
  property called "id" was mistaken for a schema id

## 1.1.3

- chore(*) bump openapi3-deserialiser to 1.1.0
- tests(request-validator) add tests for header validation
- content-type failures are now reported as such when verbose_response is enabled

## 1.1.2

- chore(*) add copyright
- Bump openapi3-deserializer to 1.0.1
  - This version of the dependency added copyright headers

## 1.1.1

- Bump jsonSchema lib to [1.1.1][1.1.1-changelog]

## 1.1.0 (18-aug-2020)

- Bump jsonSchema lib to [1.1.0][1.1.0-changelog]

## 1.0.0 (15-Jul-2020)

- Bump to 1.0.0; considered production ready, and stable
- Fix: require type in jsonschema for parameters, see [#21][pr-21]

## 0.4.2 (16-may-2020)

- Bump ljsonschema lib to 1.0.0, see [jsonSchema #3][jsonschema-pr-3]

## 0.4.1

- Add configuration to plugin which allow it to return validation error back
  to the client as part of request response

## 0.4.0

- bump lua-resty-jsonschema to fix issue with too many local variables
  being generated

## 0.3.0

- Add parameter validation support
- Add an option to override validation for specific content type

## 0.2.0

- Add support for JSON Schema Draft 4

## 0.1.0

### Added

- Add initial code of the plugin

[jsonschema-pr-3]: https://github.com/Tieske/lua-resty-ljsonschema/pull/3
[pr-21]: https://github.com/Kong/kong-plugin-enterprise-request-validator/pull/21
[1.1.0-changelog]: https://github.com/Tieske/lua-resty-ljsonschema#110-18-aug-2020
[1.1.1-changelog]: https://github.com/Tieske/lua-resty-ljsonschema#111-28-oct-2020
