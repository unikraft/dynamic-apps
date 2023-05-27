## 2.5.5

- More accurate log message for `payload.iss` verification

## 2.5.4

- Bump `lua-resty-openssl` dependency to `0.8.20`
- Fix an issue where `ecdsa_use_raw` wasn't passed correctly

## 2.5.3

- Bump `lua-resty-openssl` dependency to `0.8.18`
- Explicitly generate `raw` (r, s concatenated) signatures
  when using Elliptic Curve keys.
- Enforce `raw` format for all EC based signatures to comply
  with the RFC https://www.rfc-editor.org/rfc/rfc7518#section-3.4

## 2.5.2

- Bump `lua-resty-openssl` dependency to `0.8.17`

## 2.5.1

- FIPS compliance: removed `lua-resty-nettle` dependency
  in favour of `lua-resty-openssl`

## 2.5.0

- Add support for DistributedClaims (https://openid.net/specs/openid-connect-core-1_0.html#AggregatedDistributedClaims)
- Fix RSA384 b64url[en|de]code the signature

## 2.4.0

- Add support for `RS384` signing and verification and JWKS
  key generation
- Introduce `lua-resty-openssl` dependency

## 2.3.0

- Add deflated payload support to JWS decoding
- Add non-base64 payload support to JWS decoding


## 2.2.0

- Add `token_format` option to `token:request`
- Add `introspection_format` option to `token:introspect`
- Add `revocation_format` option to `token:revoke`


## 2.1.0

- Add support for `Ed448` curve in EdDSA signing and verification and
  JWKS key generation


## 2.0.0

- Bump `lua-resty-nettle` dependency to `~> 2`


## 1.8.3

- Treat JWE tokens as opaque (for now, until JWE support
  actually gets implemented)


## 1.8.2

- Token introspection now checks the status code properly
- More consistent response body checks on HTTP requests
- Fixes some typos


## 1.8.1

- Add copyright to code files (no functional changes)


## 1.8.0

- IMPORTANT: fix a security vulnerability that allowed verification
  of HS-family signatures with an empty/null/nil secret allowing
  anyone to craft valid tokens to pass OpenID Connect and JWT Signer
  signature verification
- Change to disable hs signature verification by default
- Change to use client_secret as a fallback secret for hs signature
  verification only when it is a string and has more than one
  character in it


## 1.7.0

- Add support for passing jwt bearer assertions to token endpoint
  (see: https://tools.ietf.org/html/rfc7523)


## 1.6.0

- Fix a small typo in error message
- Remove azp claims verification on other tokens than the id token
- Add support for alternate issuers for `iss` verification


## 1.5.0

- Add support for `x5t` key lookups
- Add support for same `x5t` but different `alg` lookups


## 1.4.0

- Add support for same `kid` but different `alg` lookups
- Add support for OAuth 2.0 Authorization Server Metadata (rfc8414)


## 1.3.1

- Change `client_secret_jwk` and `private_key_jwt` to not pass the `rfc7521`
  optional `client_id` as it was causing a problem with Okta


## 1.3.0

- Add support for `client_secret_jwt` and `private_key_jwt`
- Make `iss` and `exp` claims on access token validate only when specified


## 1.2.5

- Change `jwks` as there is no need to pass length argument to `ecc.point` or
  `ecc.scalar` functions anymore.


## 1.2.4

- **IMPORTANT** Fix standard claims verification issue where the access token
  was only checked for `iss` and `exp`, but not the other optional checks
- Change `string.sub` to `string.byte` to lessen the garbage generation


## 1.2.3

- Add support for `ES256` signing and key generation
- Add support for `ES384` signing and key generation
- Add support for `ES512` signing and key generation
- Add support for `PS256` signing and key generation
- Add support for `PS384` signing and key generation
- Add support for `PS512` signing and key generation
- Add support for `EdDSA` signing, key generation and verification
- Update `lua-resty-nettle` dependency to `1.0`


## 1.2.2

- Change verification JWT header's `typ` claim by adding support for `at+jwt`
  that for example IdentityServer4 is using by default.


## 1.2.1

- Change issuer verification bit more permissive (e.g. the difference in
  ending slash (present or absent) does not make the verification to fail)


## 1.2.0

- Change issuer to be optional
- Change signature verification to look suitable key by algorithm as well
  in case where key identifier is missing or cannot be found


## v1.1.9

- Fix issue where empty scope lead to parameter verification error


## v1.1.8

- Add support for ignoring access token signature with `ignore_signature`
  option


## v1.1.7

- Add support for `jwksUri` (some providers use non-standard claim)
- Improve token_type detection on non-standard implementation
- Refresh token signature failure is not fatal anymore. It is just
  treated opaque.


## v1.1.6

- Change token verification to check token types when requested


## v1.1.5

- Add support for `http_proxy_authorization` and `https_proxy_authorization`


## v1.1.4

- Add best effort `azp` claim verification


## v1.1.3

- Add support for proxy options
- Add support for keep-alive options
- Change ssl_verify to be more explicit


## v1.1.2

- Add best effort `nbf` claim verification
- Add best effort `iat` claim verification


## v1.1.1

- If token is a `refresh_token` and it is of type `JWE` we don't
  error on it anymore, but treat it more like a `opaque` token
  This might change in a future if this library gains `JWE` support


## v1.1.0

- Added possibility to pass extra introspection request body arguments
- Added possibility to pass extra revocation request body arguments


## v1.0.9

- Fixed base16 decoding to prepend "0" to uneven base16 values


## v1.0.8

- Added support for rsa signing algorithms


## v1.0.7

- Added `token_endpoint_auth_method` which can be used to override any
  defaults or values from discovery documentation
- Added `charset=utf-8` to `Content-Type` headers in request that Kong
  is making


## 1.0.6

- `scope` parameter is not send to authorization or token endpoints when
  there is no scopes defined


## 1.0.5

- `sub` and `aud` claims are not checked anymore in other than id tokens
  by default.
- `keys:rediscover` can now be overridden by a 3rd party function


## 1.0.4

- Function authorization:basic now return as a third parameter the grant
  type if one was found (previously it returned parameter location in
  http request)
- Issuer is not anymore verified on discovery (causes more harm than good)


## 1.0.3

- Add changelog
- Update homepage link in .rockspec
- Update repository link in .rockspec


## 1.0.2

- Fix application/x-www-form-urlencoded detection


## 1.0.1

- Bump lua-resty-nettle to 0.105(fixes hogweed loading)


## 1.0.0

- Initial commit
