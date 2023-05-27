# lua-resty-gcp

GCP SDK libary for OpenResty.

## Status

This library is under early development. New releases may contain breaking changes
until further notice.


## Pre-requisites


## Installation

Installation is easiest using LuaRocks in the local folder

```
luarocks make
```

## Testing

The test will go through:
1. Test if GCP services imported
2. Test getting Access Token (Will need to set environment variable GCP_SERVICE_ACCOUNT)
3. Test using GCP services (Will need to change thew service and param in spec/01-test_spec.lua)

```
busted
```

## Using the SDK

This is an example. This creates a Secret Manager client and retrieves the secret versions:

``` lua

local base64 = require "base64"
local GCP = require "resty.gcp"
local AccessToken = require "resty.gcp.request.credentials.accesstoken"
local gcp = GCP()
local gcpToken = AccessToken()

local params = {
    projectsId = "kong-supersecret-project",
    secretsId = "kong-secret-cmek",
    versionsId = 1
}

local response = gcp.secretmanager_v1.versions.access(gcpToken, params)

print("The secret is: " .. base64.decode(response.payload.data))

```

## TLS and certificate failures

The http client defaults to tls name verification. For this to work, the CA store must be set.
With OpenResty this is done through the [`lua_ssl_trusted_certificate`](https://github.com/openresty/lua-nginx-module#lua_ssl_trusted_certificate)
directive. However; the compatibility module used, [`lua-resty-luasocket`](https://github.com/Tieske/lua-resty-luasocket), cannot automatically
read that setting, hence you have to set it manually, see [the docs](https://tieske.github.io/lua-resty-luasocket/modules/resty.luasocket.html#get_luasec_defaults).

## Development

### Updating the API Definitions

Use the `update-api-defs` file in the `scripts` directory to update all API
definitions:

```
$ ./scripts/update-api-defs
```

Take special care to note and investigate any failures logged by this script
(i.e. download failures) before commiting the changes.

### Adding/Removing Source Files

Use the `update-rockspec` script to write the updated module list to the
rockspec file if files are added or removed during development.

```
$ ./scripts/update-rockspec
```

### Releasing New Versions

Before releasing a new version, please make sure the API Definitions and rockspec files are up-to-date.

As an example, let's assuming that we are releasing 0.1.0.

1. Change the filename of the rockspec to the new version: `lua-resty-gcp-0.1.0-1.rockspec`;
2. Then change the version in rockspec file to `0.1.0-1`, and source.tag to `0.1.0`;
3. Create new tag with command: `git tag 0.1.0`, and push that tag with `git push --tags`;
4. Create new release for github with the new tag, and make sure the change is included in the description;
5. Upload the rock to with Luarocks: `luarocks upload lua-resty-gcp-0.1.0-1.rockspec`.
