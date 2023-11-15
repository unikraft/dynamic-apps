## 0.6.0

- Added a new configuration `canary_by_header_name` that allows clients
  to pick whether they want to use the original or the canary upstream

## 0.5.0

- tests(*) remove credentials from travis.yaml
- chore(ci) update platform, newer docker engine
- docs(readme) link to kong-ee and docs website
- tests(*) add dbless integration testing
- feat(hashing) added option to hash on header (falls back on IP, and
  then random)
- chore(*) remove obsolete package script
- tests(*) travis docker hub transition

## 0.4.4

- fix(*) BasePlugin inheritance removal (FT-1701)

## 0.4.3

- chore(*) add copyright

## 0.4.2

- Use allow / deny for consumer restriction

## 0.4.1

- Remove run_on

## 0.4 13-May-2019

### Changed

- Change schema to a new DAO format
- Use pdk

## 0.3.0 30-Nov-2018

### Added

- Add a new configuration `config.upstream_fallback` which causes the plugin to
not apply the canary upstream if it's marked as unhealthy by Kong's
healthchecker

## 0.2.1 26-Jul-2018

### Fixed

- Fixed `type` attribute for port configuration setting

## 0.2.0 1-Jun-2018

### Added

- Added restriction options to be able to select consumers instead
  of having random consumers.
- Added the port parameter to be able to be set a new port for the alternate
  upstream.

## 0.1.0

### Added

- First commit for Kong plugin to handle Canary release of Kong APIs
  to new upstream host or URIs.

