## 1.3.1

- Refactored ASN.1 decoder/encoder

## 1.3.0

- Add referenceable attribute to fields that could be stored in vaults

## 1.2.0

- Upgrade to lua_pack 2.0.0
- Encrypt config.ldap_password

## 1.1.0

- added a config `log_search_results` that allows displaying all the LDAP search results received from the LDAP server
- additional debug log statements added for authenticated groups

## 1.0.4

- chore(*) add copyright

## 1.0.3

### Fixed

- Accept AD group names containing spaces

## 1.0.2

- return 500 when error
- respond 401 instead of 403

## 1.0.1

- case sensitive groups

## 1.0.0

### Fixed

- Fix an issue where plugin tries to start a secure connection on an existing
  pooled connection from previous requests

### Added

- ldaps protocol support
- Tests for multiple connection strategies

### Changed

- Change to new dao
- Change to use pdk

## 0.33

### Fixed

- Use Bind authentication to authenticate user instead of password matching
  on Kong side
- Fix issue where username couldn't have space or non-alaphanumeric characters

### Changed

- Drop irrelevant migrations

## 0.32.2

### Added

- Invalidation spec

### Fixed

- Fix issue where a request added a negative cache entry for an incorrect password attempt
- Fix issue where a 500 response would result when long passwords (> 128 chars) were being used

## 0.32.1

### Added

- Add fields
   * `consumer_by` - *optional*, default: { `username`, `custom_id` }
   * `consumer_optional` *optional* , default: `false`
     - By default, the consumer mapping is NOT optional. Set this config to
     `true` when you do not want the plugin to map to a kong consumer.

- Find consumers by `consumer_by` fields and map to ldap-auth user. This will
  set the authenticated consumer so that X-Consumer-{ID, USERNAME, CUSTOM_ID}
  headers are set and consumer functionality is available.

### Fixed

- Fix `require` statements pointing to CE ldap plugin
- Fix usage of LuaJIT ffi; `ffi.load` was being used to access an external
  symbol instead of `ffi.C.`

## 0.32.0

ldap-auth-advanced was forked from Kong CE ldap-auth.

### Added

### Fixed

### Changed

