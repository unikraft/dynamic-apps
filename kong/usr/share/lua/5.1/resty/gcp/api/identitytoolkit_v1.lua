return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/firebase"] = {
          description = "View and administer all your Firebase data and settings",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://identitytoolkit.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Identity Toolkit",
  description = "The Google Identity Toolkit API lets you use open standards to verify a user's identity.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/identity-platform",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "identitytoolkit:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://identitytoolkit.mtls.googleapis.com/",
  name = "identitytoolkit",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    ["$.xgafv"] = {
      description = "V1 error format.",
      enum = {
        "1",
        "2",
      },
      enumDescriptions = {
        "v1 error format",
        "v2 error format",
      },
      location = "query",
      type = "string",
    },
    access_token = {
      description = "OAuth access token.",
      location = "query",
      type = "string",
    },
    alt = {
      default = "json",
      description = "Data format for response.",
      enum = {
        "json",
        "media",
        "proto",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
        "Media download with context-dependent Content-Type",
        "Responses with Content-Type of application/x-protobuf",
      },
      location = "query",
      type = "string",
    },
    callback = {
      description = "JSONP",
      location = "query",
      type = "string",
    },
    fields = {
      description = "Selector specifying which fields to include in a partial response.",
      location = "query",
      type = "string",
    },
    key = {
      description = "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.",
      location = "query",
      type = "string",
    },
    oauth_token = {
      description = "OAuth 2.0 token for the current user.",
      location = "query",
      type = "string",
    },
    prettyPrint = {
      default = "true",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    uploadType = {
      description = "Legacy upload protocol for media (e.g. \"media\", \"multipart\").",
      location = "query",
      type = "string",
    },
    upload_protocol = {
      description = "Upload protocol for media (e.g. \"raw\", \"multipart\").",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    accounts = {
      methods = {
        createAuthUri = {
          description = "If an email identifier is specified, checks and returns if any user account is registered with the email. If there is a registered account, fetches all providers associated with the account's email. If the provider ID of an Identity Provider (IdP) is specified, creates an authorization URI for the IdP. The user can be directed to this URI to sign in with the IdP. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:createAuthUri",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.createAuthUri",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:createAuthUri",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1CreateAuthUriRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1CreateAuthUriResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a user's account.",
          flatPath = "v1/accounts:delete",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.delete",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:delete",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1DeleteAccountRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1DeleteAccountResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        issueSamlResponse = {
          description = "Experimental",
          flatPath = "v1/accounts:issueSamlResponse",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.issueSamlResponse",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:issueSamlResponse",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        lookup = {
          description = "Gets account information for all matched accounts. For an end user request, retrieves the account of the end user. For an admin request with Google OAuth 2.0 credential, retrieves one or multiple account(s) with matching criteria.",
          flatPath = "v1/accounts:lookup",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.lookup",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:lookup",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1GetAccountInfoRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1GetAccountInfoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        resetPassword = {
          description = "Resets the password of an account either using an out-of-band code generated by sendOobCode or by specifying the email and password of the account to be modified. Can also check the purpose of an out-of-band code without consuming it.",
          flatPath = "v1/accounts:resetPassword",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.resetPassword",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:resetPassword",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1ResetPasswordRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1ResetPasswordResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        sendOobCode = {
          description = "Sends an out-of-band confirmation code for an account. Requests from a authenticated request can optionally return a link including the OOB code instead of sending it.",
          flatPath = "v1/accounts:sendOobCode",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.sendOobCode",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:sendOobCode",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1GetOobCodeRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1GetOobCodeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        sendVerificationCode = {
          description = "Sends a SMS verification code for phone number sign-in. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:sendVerificationCode",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.sendVerificationCode",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:sendVerificationCode",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signInWithCustomToken = {
          description = "Signs in or signs up a user by exchanging a custom Auth token. Upon a successful sign-in or sign-up, a new Identity Platform ID token and refresh token are issued for the user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:signInWithCustomToken",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.signInWithCustomToken",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:signInWithCustomToken",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signInWithEmailLink = {
          description = "Signs in or signs up a user with a out-of-band code from an email link. If a user does not exist with the given email address, a user record will be created. If the sign-in succeeds, an Identity Platform ID and refresh token are issued for the authenticated user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:signInWithEmailLink",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.signInWithEmailLink",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:signInWithEmailLink",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signInWithGameCenter = {
          description = "Signs in or signs up a user with iOS Game Center credentials. If the sign-in succeeds, a new Identity Platform ID token and refresh token are issued for the authenticated user. The bundle ID is required in the request header as `x-ios-bundle-identifier`. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:signInWithGameCenter",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.signInWithGameCenter",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:signInWithGameCenter",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signInWithIdp = {
          description = "Signs in or signs up a user using credentials from an Identity Provider (IdP). This is done by manually providing an IdP credential, or by providing the authorization response obtained via the authorization request from CreateAuthUri. If the sign-in succeeds, a new Identity Platform ID token and refresh token are issued for the authenticated user. A new Identity Platform user account will be created if the user has not previously signed in to the IdP with the same account. In addition, when the \"One account per email address\" setting is enabled, there should not be an existing Identity Platform user account with the same email address for a new user account to be created. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:signInWithIdp",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.signInWithIdp",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:signInWithIdp",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithIdpRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithIdpResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signInWithPassword = {
          description = "Signs in a user with email and password. If the sign-in succeeds, a new Identity Platform ID token and refresh token are issued for the authenticated user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:signInWithPassword",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.signInWithPassword",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:signInWithPassword",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signInWithPhoneNumber = {
          description = "Completes a phone number authentication attempt. If a user already exists with the given phone number, an ID token is minted for that user. Otherwise, a new user is created and associated with the phone number. This method may also be used to link a phone number to an existing user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:signInWithPhoneNumber",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.signInWithPhoneNumber",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:signInWithPhoneNumber",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        signUp = {
          description = "Signs up a new email and password user or anonymous user, or upgrades an anonymous user to email and password. For an admin request with a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control), creates a new anonymous, email and password, or phone number user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:signUp",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.signUp",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:signUp",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignUpRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignUpResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        update = {
          description = "Updates account-related information for the specified user by setting specific fields or applying action codes. Requests from administrators and end users are supported.",
          flatPath = "v1/accounts:update",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.update",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:update",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SetAccountInfoRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SetAccountInfoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        verifyIosClient = {
          description = "Verifies an iOS client is a real iOS device. If the request is valid, a receipt will be sent in the response and a secret will be sent via Apple Push Notification Service. The client should send both of them back to certain Identity Platform APIs in a later call (for example, /accounts:sendVerificationCode), in order to verify the client. The bundle ID is required in the request header as `x-ios-bundle-identifier`. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/accounts:verifyIosClient",
          httpMethod = "POST",
          id = "identitytoolkit.accounts.verifyIosClient",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts:verifyIosClient",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1VerifyIosClientRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1VerifyIosClientResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      methods = {
        accounts = {
          description = "Signs up a new email and password user or anonymous user, or upgrades an anonymous user to email and password. For an admin request with a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control), creates a new anonymous, email and password, or phone number user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
          flatPath = "v1/projects/{projectsId}/accounts",
          httpMethod = "POST",
          id = "identitytoolkit.projects.accounts",
          parameterOrder = {
            "targetProjectId",
          },
          parameters = {
            targetProjectId = {
              description = "The project ID of the project which the user should belong to. Specifying this field requires a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control). If this is not set, the target project is inferred from the scope associated to the Bearer access token.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{+targetProjectId}/accounts",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignUpRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SignUpResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        createSessionCookie = {
          description = "Creates a session cookie for the given Identity Platform ID token. The session cookie is used by the client to preserve the user's login state.",
          flatPath = "v1/projects/{projectsId}:createSessionCookie",
          httpMethod = "POST",
          id = "identitytoolkit.projects.createSessionCookie",
          parameterOrder = {
            "targetProjectId",
          },
          parameters = {
            targetProjectId = {
              description = "The ID of the project that the account belongs to.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{+targetProjectId}:createSessionCookie",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        queryAccounts = {
          description = "Looks up user accounts within a project or a tenant based on conditions in the request.",
          flatPath = "v1/projects/{projectsId}:queryAccounts",
          httpMethod = "POST",
          id = "identitytoolkit.projects.queryAccounts",
          parameterOrder = {
            "targetProjectId",
          },
          parameters = {
            targetProjectId = {
              description = "The ID of the project to which the result is scoped.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{+targetProjectId}:queryAccounts",
          request = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1QueryUserInfoRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1QueryUserInfoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/firebase",
          },
        },
      },
      resources = {
        accounts = {
          methods = {
            batchCreate = {
              description = "Uploads multiple accounts into the Google Cloud project. If there is a problem uploading one or more of the accounts, the rest will be uploaded, and a list of the errors will be returned. To use this method requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
              flatPath = "v1/projects/{projectsId}/accounts:batchCreate",
              httpMethod = "POST",
              id = "identitytoolkit.projects.accounts.batchCreate",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                targetProjectId = {
                  description = "The Project ID of the Identity Platform project which the account belongs to.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:batchCreate",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1UploadAccountRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1UploadAccountResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            batchDelete = {
              description = "Batch deletes multiple accounts. For accounts that fail to be deleted, error info is contained in the response. The method ignores accounts that do not exist or are duplicated in the request. This method requires a Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control).",
              flatPath = "v1/projects/{projectsId}/accounts:batchDelete",
              httpMethod = "POST",
              id = "identitytoolkit.projects.accounts.batchDelete",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                targetProjectId = {
                  description = "If `tenant_id` is specified, the ID of the Google Cloud project that the Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud project that accounts belong to.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:batchDelete",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            batchGet = {
              description = "Download account information for all accounts on the project in a paginated manner. To use this method requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).. Furthermore, additional permissions are needed to get password hash, password salt, and password version from accounts; otherwise these fields are redacted.",
              flatPath = "v1/projects/{projectsId}/accounts:batchGet",
              httpMethod = "GET",
              id = "identitytoolkit.projects.accounts.batchGet",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                delegatedProjectNumber = {
                  format = "int64",
                  location = "query",
                  type = "string",
                },
                maxResults = {
                  description = "The maximum number of results to return. Must be at least 1 and no greater than 1000. By default, it is 20.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                nextPageToken = {
                  description = "The pagination token from the response of a previous request.",
                  location = "query",
                  type = "string",
                },
                targetProjectId = {
                  description = "If `tenant_id` is specified, the ID of the Google Cloud project that the Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud project that the accounts belong to.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
                tenantId = {
                  description = "The ID of the Identity Platform tenant the accounts belongs to. If not specified, accounts on the Identity Platform project are returned.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:batchGet",
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1DownloadAccountResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            delete = {
              description = "Deletes a user's account.",
              flatPath = "v1/projects/{projectsId}/accounts:delete",
              httpMethod = "POST",
              id = "identitytoolkit.projects.accounts.delete",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                targetProjectId = {
                  description = "The ID of the project which the account belongs to. Should only be specified in authenticated requests that specify local_id of an account.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:delete",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1DeleteAccountRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1DeleteAccountResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            lookup = {
              description = "Gets account information for all matched accounts. For an end user request, retrieves the account of the end user. For an admin request with Google OAuth 2.0 credential, retrieves one or multiple account(s) with matching criteria.",
              flatPath = "v1/projects/{projectsId}/accounts:lookup",
              httpMethod = "POST",
              id = "identitytoolkit.projects.accounts.lookup",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                targetProjectId = {
                  description = "The ID of the Google Cloud project that the account or the Identity Platform tenant specified by `tenant_id` belongs to. Should only be specified by authenticated requests bearing a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:lookup",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1GetAccountInfoRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1GetAccountInfoResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            query = {
              description = "Looks up user accounts within a project or a tenant based on conditions in the request.",
              flatPath = "v1/projects/{projectsId}/accounts:query",
              httpMethod = "POST",
              id = "identitytoolkit.projects.accounts.query",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                targetProjectId = {
                  description = "The ID of the project to which the result is scoped.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:query",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1QueryUserInfoRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1QueryUserInfoResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            sendOobCode = {
              description = "Sends an out-of-band confirmation code for an account. Requests from a authenticated request can optionally return a link including the OOB code instead of sending it.",
              flatPath = "v1/projects/{projectsId}/accounts:sendOobCode",
              httpMethod = "POST",
              id = "identitytoolkit.projects.accounts.sendOobCode",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                targetProjectId = {
                  description = "The Project ID of the Identity Platform project which the account belongs to. To specify this field, it requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:sendOobCode",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1GetOobCodeRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1GetOobCodeResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            update = {
              description = "Updates account-related information for the specified user by setting specific fields or applying action codes. Requests from administrators and end users are supported.",
              flatPath = "v1/projects/{projectsId}/accounts:update",
              httpMethod = "POST",
              id = "identitytoolkit.projects.accounts.update",
              parameterOrder = {
                "targetProjectId",
              },
              parameters = {
                targetProjectId = {
                  description = "The project ID for the project that the account belongs to. Specifying this field requires Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control). Requests from end users should pass an Identity Platform ID token instead.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/accounts:update",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1SetAccountInfoRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1SetAccountInfoResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        tenants = {
          methods = {
            accounts = {
              description = "Signs up a new email and password user or anonymous user, or upgrades an anonymous user to email and password. For an admin request with a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control), creates a new anonymous, email and password, or phone number user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is required in the request in order to identify the Google Cloud project.",
              flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts",
              httpMethod = "POST",
              id = "identitytoolkit.projects.tenants.accounts",
              parameterOrder = {
                "targetProjectId",
                "tenantId",
              },
              parameters = {
                targetProjectId = {
                  description = "The project ID of the project which the user should belong to. Specifying this field requires a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control). If this is not set, the target project is inferred from the scope associated to the Bearer access token.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
                tenantId = {
                  description = "The ID of the Identity Platform tenant to create a user under. If not set, the user will be created under the default Identity Platform project.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1SignUpRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1SignUpResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            createSessionCookie = {
              description = "Creates a session cookie for the given Identity Platform ID token. The session cookie is used by the client to preserve the user's login state.",
              flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}:createSessionCookie",
              httpMethod = "POST",
              id = "identitytoolkit.projects.tenants.createSessionCookie",
              parameterOrder = {
                "targetProjectId",
                "tenantId",
              },
              parameters = {
                targetProjectId = {
                  description = "The ID of the project that the account belongs to.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
                tenantId = {
                  description = "The tenant ID of the Identity Platform tenant the account belongs to.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}:createSessionCookie",
              request = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            accounts = {
              methods = {
                batchCreate = {
                  description = "Uploads multiple accounts into the Google Cloud project. If there is a problem uploading one or more of the accounts, the rest will be uploaded, and a list of the errors will be returned. To use this method requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:batchCreate",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.accounts.batchCreate",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    targetProjectId = {
                      description = "The Project ID of the Identity Platform project which the account belongs to.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "The ID of the Identity Platform tenant the account belongs to.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:batchCreate",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1UploadAccountRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1UploadAccountResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                batchDelete = {
                  description = "Batch deletes multiple accounts. For accounts that fail to be deleted, error info is contained in the response. The method ignores accounts that do not exist or are duplicated in the request. This method requires a Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control).",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:batchDelete",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.accounts.batchDelete",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    targetProjectId = {
                      description = "If `tenant_id` is specified, the ID of the Google Cloud project that the Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud project that accounts belong to.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "If the accounts belong to an Identity Platform tenant, the ID of the tenant. If the accounts belong to an default Identity Platform project, the field is not needed.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:batchDelete",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                batchGet = {
                  description = "Download account information for all accounts on the project in a paginated manner. To use this method requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).. Furthermore, additional permissions are needed to get password hash, password salt, and password version from accounts; otherwise these fields are redacted.",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:batchGet",
                  httpMethod = "GET",
                  id = "identitytoolkit.projects.tenants.accounts.batchGet",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    delegatedProjectNumber = {
                      format = "int64",
                      location = "query",
                      type = "string",
                    },
                    maxResults = {
                      description = "The maximum number of results to return. Must be at least 1 and no greater than 1000. By default, it is 20.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    nextPageToken = {
                      description = "The pagination token from the response of a previous request.",
                      location = "query",
                      type = "string",
                    },
                    targetProjectId = {
                      description = "If `tenant_id` is specified, the ID of the Google Cloud project that the Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud project that the accounts belong to.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "The ID of the Identity Platform tenant the accounts belongs to. If not specified, accounts on the Identity Platform project are returned.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:batchGet",
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1DownloadAccountResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                delete = {
                  description = "Deletes a user's account.",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:delete",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.accounts.delete",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    targetProjectId = {
                      description = "The ID of the project which the account belongs to. Should only be specified in authenticated requests that specify local_id of an account.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "The ID of the tenant that the account belongs to, if applicable. Only require to be specified for authenticated requests bearing a Google OAuth 2.0 credential that specify local_id of an account that belongs to an Identity Platform tenant.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:delete",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1DeleteAccountRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1DeleteAccountResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                lookup = {
                  description = "Gets account information for all matched accounts. For an end user request, retrieves the account of the end user. For an admin request with Google OAuth 2.0 credential, retrieves one or multiple account(s) with matching criteria.",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:lookup",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.accounts.lookup",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    targetProjectId = {
                      description = "The ID of the Google Cloud project that the account or the Identity Platform tenant specified by `tenant_id` belongs to. Should only be specified by authenticated requests bearing a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "The ID of the tenant that the account belongs to. Should only be specified by authenticated requests from a developer.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:lookup",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1GetAccountInfoRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1GetAccountInfoResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                query = {
                  description = "Looks up user accounts within a project or a tenant based on conditions in the request.",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:query",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.accounts.query",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    targetProjectId = {
                      description = "The ID of the project to which the result is scoped.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "The ID of the tenant to which the result is scoped.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:query",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1QueryUserInfoRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1QueryUserInfoResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/firebase",
                  },
                },
                sendOobCode = {
                  description = "Sends an out-of-band confirmation code for an account. Requests from a authenticated request can optionally return a link including the OOB code instead of sending it.",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:sendOobCode",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.accounts.sendOobCode",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    targetProjectId = {
                      description = "The Project ID of the Identity Platform project which the account belongs to. To specify this field, it requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "The tenant ID of the Identity Platform tenant the account belongs to.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:sendOobCode",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1GetOobCodeRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1GetOobCodeResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates account-related information for the specified user by setting specific fields or applying action codes. Requests from administrators and end users are supported.",
                  flatPath = "v1/projects/{projectsId}/tenants/{tenantsId}/accounts:update",
                  httpMethod = "POST",
                  id = "identitytoolkit.projects.tenants.accounts.update",
                  parameterOrder = {
                    "targetProjectId",
                    "tenantId",
                  },
                  parameters = {
                    targetProjectId = {
                      description = "The project ID for the project that the account belongs to. Specifying this field requires Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control). Requests from end users should pass an Identity Platform ID token instead.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tenantId = {
                      description = "The tenant ID of the Identity Platform tenant that the account belongs to. Requests from end users should pass an Identity Platform ID token rather than setting this field.",
                      location = "path",
                      pattern = "^[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:update",
                  request = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1SetAccountInfoRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudIdentitytoolkitV1SetAccountInfoResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
      },
    },
    v1 = {
      methods = {
        getProjects = {
          description = "Gets a project's public Identity Toolkit configuration. (Legacy) This method also supports authenticated calls from a developer to retrieve non-public configuration.",
          flatPath = "v1/projects",
          httpMethod = "GET",
          id = "identitytoolkit.getProjects",
          parameterOrder = {},
          parameters = {
            androidPackageName = {
              description = "Android package name to check against the real android package name. If this field is provided, and sha1_cert_hash is not provided, the action will throw an error if this does not match the real android package name.",
              location = "query",
              type = "string",
            },
            clientId = {
              description = "The RP OAuth client ID. If set, a check will be performed to ensure that the OAuth client is valid for the retrieved project and the request rejected with a client error if not valid.",
              location = "query",
              type = "string",
            },
            delegatedProjectNumber = {
              description = "Project Number of the delegated project request. This field should only be used as part of the Firebase V1 migration.",
              format = "int64",
              location = "query",
              type = "string",
            },
            firebaseAppId = {
              description = "The Firebase app ID, for applications that use Firebase. This can be found in the Firebase console for your project. If set, a check will be performed to ensure that the app ID is valid for the retrieved project. If not valid, the request will be rejected with a client error.",
              location = "query",
              type = "string",
            },
            iosBundleId = {
              description = "iOS bundle id to check against the real ios bundle id. If this field is provided, the action will throw an error if this does not match the real iOS bundle id.",
              location = "query",
              type = "string",
            },
            projectNumber = {
              description = "Project number of the configuration to retrieve. This field is deprecated and should not be used by new integrations.",
              format = "int64",
              location = "query",
              type = "string",
            },
            returnDynamicLink = {
              description = "Whether dynamic link should be returned.",
              location = "query",
              type = "boolean",
            },
            sha1Cert = {
              description = "SHA-1 Android application cert hash. If set, a check will be performed to ensure that the cert hash is valid for the retrieved project and android_package_name.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/projects",
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1GetProjectConfigResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getPublicKeys = {
          description = "Retrieves public keys of the legacy Identity Toolkit token signer to enable third parties to verify the legacy ID token. For now the X509 pem cert is the only format supported.",
          flatPath = "v1/publicKeys",
          httpMethod = "GET",
          id = "identitytoolkit.getPublicKeys",
          parameterOrder = {},
          parameters = {},
          path = "v1/publicKeys",
          response = {
            additionalProperties = {
              description = "Properties of the object.",
              type = "any",
            },
            type = "object",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getRecaptchaParams = {
          description = "Gets parameters needed for generating a reCAPTCHA challenge.",
          flatPath = "v1/recaptchaParams",
          httpMethod = "GET",
          id = "identitytoolkit.getRecaptchaParams",
          parameterOrder = {},
          parameters = {},
          path = "v1/recaptchaParams",
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getSessionCookiePublicKeys = {
          description = "Retrieves the set of public keys of the session cookie JSON Web Token (JWT) signer that can be used to validate the session cookie created through createSessionCookie.",
          flatPath = "v1/sessionCookiePublicKeys",
          httpMethod = "GET",
          id = "identitytoolkit.getSessionCookiePublicKeys",
          parameterOrder = {},
          parameters = {},
          path = "v1/sessionCookiePublicKeys",
          response = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse",
          },
        },
      },
    },
  },
  revision = "20230107",
  rootUrl = "https://identitytoolkit.googleapis.com/",
  schemas = {
    GoogleCloudIdentitytoolkitV1Argon2Parameters = {
      description = "The parameters for Argon2 hashing algorithm.",
      id = "GoogleCloudIdentitytoolkitV1Argon2Parameters",
      properties = {
        associatedData = {
          description = "The additional associated data, if provided, is appended to the hash value to provide an additional layer of security. A base64-encoded string if specified via JSON.",
          format = "byte",
          type = "string",
        },
        hashLengthBytes = {
          description = "Required. The desired hash length in bytes. Minimum is 4 and maximum is 1024.",
          format = "int32",
          type = "integer",
        },
        hashType = {
          description = "Required. Must not be HASH_TYPE_UNSPECIFIED.",
          enum = {
            "HASH_TYPE_UNSPECIFIED",
            "ARGON2_D",
            "ARGON2_ID",
            "ARGON2_I",
          },
          enumDescriptions = {
            "The hash type is not specified.",
            "An Argon2 variant, Argon2d.",
            "An Argon2 variant, Argonid. Recommended.",
            "An Argon2 variant, Argon2i.",
          },
          type = "string",
        },
        iterations = {
          description = "Required. The number of iterations to perform. Minimum is 1, maximum is 16.",
          format = "int32",
          type = "integer",
        },
        memoryCostKib = {
          description = "Required. The memory cost in kibibytes. Maximum is 32768.",
          format = "int32",
          type = "integer",
        },
        parallelism = {
          description = "Required. The degree of parallelism, also called threads or lanes. Minimum is 1, maximum is 16.",
          format = "int32",
          type = "integer",
        },
        version = {
          description = "The version of the Argon2 algorithm. This defaults to VERSION_13 if not specified.",
          enum = {
            "VERSION_UNSPECIFIED",
            "VERSION_10",
            "VERSION_13",
          },
          enumDescriptions = {
            "The version is not specified.",
            "The previous version, 0x10.",
            "The current version, 0x13. The default value for version.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1AutoRetrievalInfo = {
      description = "The information required to auto-retrieve an SMS.",
      id = "GoogleCloudIdentitytoolkitV1AutoRetrievalInfo",
      properties = {
        appSignatureHash = {
          description = "The Android app's signature hash for Google Play Service's SMS Retriever API.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest = {
      description = "Request message for BatchDeleteAccounts.",
      id = "GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest",
      properties = {
        force = {
          description = "Whether to force deleting accounts that are not in disabled state. If false, only disabled accounts will be deleted, and accounts that are not disabled will be added to the `errors`.",
          type = "boolean",
        },
        localIds = {
          description = "Required. List of user IDs to be deleted.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tenantId = {
          description = "If the accounts belong to an Identity Platform tenant, the ID of the tenant. If the accounts belong to an default Identity Platform project, the field is not needed.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse = {
      description = "Response message to BatchDeleteAccounts.",
      id = "GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse",
      properties = {
        errors = {
          description = "Detailed error info for accounts that cannot be deleted.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo = {
      description = "Error info for account failed to be deleted.",
      id = "GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo",
      properties = {
        index = {
          description = "The index of the errored item in the original local_ids field.",
          format = "int32",
          type = "integer",
        },
        localId = {
          description = "The corresponding user ID.",
          type = "string",
        },
        message = {
          description = "Detailed error message.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1CreateAuthUriRequest = {
      description = "Request message for CreateAuthUri.",
      id = "GoogleCloudIdentitytoolkitV1CreateAuthUriRequest",
      properties = {
        appId = {
          type = "string",
        },
        authFlowType = {
          description = "Used for the Google provider. The type of the authentication flow to be used. If present, this should be `CODE_FLOW` to specify the authorization code flow. Otherwise, the default ID Token flow will be used.",
          type = "string",
        },
        context = {
          description = "An opaque string used to maintain contextual information between the authentication request and the callback from the IdP.",
          type = "string",
        },
        continueUri = {
          description = "A valid URL for the IdP to redirect the user back to. The URL cannot contain fragments or the reserved `state` query parameter.",
          type = "string",
        },
        customParameter = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional customized query parameters to be added to the authorization URI. The following parameters are reserved and cannot be added: `client_id`, `response_type`, `scope`, `redirect_uri`, `state`. For the Microsoft provider, the Azure AD tenant to sign-in to can be specified in the `tenant` custom parameter.",
          type = "object",
        },
        hostedDomain = {
          description = "Used for the Google provider. The G Suite hosted domain of the user in order to restrict sign-in to users at that domain.",
          type = "string",
        },
        identifier = {
          description = "The email identifier of the user account to fetch associated providers for. At least one of the fields `identifier` and `provider_id` must be set. The length of the email address should be less than 256 characters and in the format of `name@domain.tld`. The email address should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.",
          type = "string",
        },
        oauthConsumerKey = {
          type = "string",
        },
        oauthScope = {
          description = "Additional space-delimited OAuth 2.0 scopes specifying the scope of the authentication request with the IdP. Used for OAuth 2.0 IdPs. For the Google provider, the authorization code flow will be used if this field is set.",
          type = "string",
        },
        openidRealm = {
          type = "string",
        },
        otaApp = {
          type = "string",
        },
        providerId = {
          description = "The provider ID of the IdP for the user to sign in with. This should be a provider ID enabled for sign-in, which is either from the list of [default supported IdPs](https://cloud.google.com/identity-platform/docs/reference/rest/v2/defaultSupportedIdps/list), or of the format `oidc.*` or `saml.*`. Some examples are `google.com`, `facebook.com`, `oidc.testapp`, and `saml.testapp`. At least one of the fields `identifier` and `provider_id` must be set.",
          type = "string",
        },
        sessionId = {
          description = "A session ID that can be verified against in SignInWithIdp to prevent session fixation attacks. If absent, a random string will be generated and returned as the session ID.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant to create an authorization URI or lookup an email identifier for. If not set, the operation will be performed in the default Identity Platform instance in the project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1CreateAuthUriResponse = {
      description = "Response message for CreateAuthUri.",
      id = "GoogleCloudIdentitytoolkitV1CreateAuthUriResponse",
      properties = {
        allProviders = {
          items = {
            type = "string",
          },
          type = "array",
        },
        authUri = {
          description = "The authorization URI for the requested provider. Present only when a provider ID is set in the request.",
          type = "string",
        },
        captchaRequired = {
          description = "Whether a CAPTCHA is needed because there have been too many failed login attempts by the user. Present only when a registered email identifier is set in the request.",
          type = "boolean",
        },
        forExistingProvider = {
          description = "Whether the user has previously signed in with the provider ID in the request. Present only when a registered email identifier is set in the request.",
          type = "boolean",
        },
        kind = {
          type = "string",
        },
        providerId = {
          description = "The provider ID from the request, if provided.",
          type = "string",
        },
        registered = {
          description = "Whether the email identifier represents an existing account. Present only when an email identifier is set in the request.",
          type = "boolean",
        },
        sessionId = {
          description = "The session ID from the request, or a random string generated by CreateAuthUri if absent. It is used to prevent session fixation attacks.",
          type = "string",
        },
        signinMethods = {
          description = "The list of sign-in methods that the user has previously used. Each element is one of `password`, `emailLink`, or the provider ID of an IdP. Present only when a registered email identifier is set in the request.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest = {
      description = "Request message for CreateSessionCookie.",
      id = "GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest",
      properties = {
        idToken = {
          description = "Required. A valid Identity Platform ID token.",
          type = "string",
        },
        tenantId = {
          description = "The tenant ID of the Identity Platform tenant the account belongs to.",
          type = "string",
        },
        validDuration = {
          description = "The number of seconds until the session cookie expires. Specify a duration in seconds, between five minutes and fourteen days, inclusively.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse = {
      description = "Response message for CreateSessionCookie.",
      id = "GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse",
      properties = {
        sessionCookie = {
          description = "The session cookie that has been created from the Identity Platform ID token specified in the request. It is in the form of a JSON Web Token (JWT). Always present.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1DeleteAccountRequest = {
      description = "Request message for DeleteAccount.",
      id = "GoogleCloudIdentitytoolkitV1DeleteAccountRequest",
      properties = {
        delegatedProjectNumber = {
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "The Identity Platform ID token of the account to delete. Require to be specified for requests from end users that lack Google OAuth 2.0 credential. Authenticated requests bearing a Google OAuth2 credential with proper permissions may pass local_id to specify the account to delete alternatively.",
          type = "string",
        },
        localId = {
          description = "The ID of user account to delete. Specifying this field requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control). Requests from users lacking the credential should pass an ID token instead.",
          type = "string",
        },
        targetProjectId = {
          description = "The ID of the project which the account belongs to. Should only be specified in authenticated requests that specify local_id of an account.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the tenant that the account belongs to, if applicable. Only require to be specified for authenticated requests bearing a Google OAuth 2.0 credential that specify local_id of an account that belongs to an Identity Platform tenant.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1DeleteAccountResponse = {
      description = "Response message for DeleteAccount.",
      id = "GoogleCloudIdentitytoolkitV1DeleteAccountResponse",
      properties = {
        kind = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1DownloadAccountResponse = {
      description = "Response message for DownloadAccount.",
      id = "GoogleCloudIdentitytoolkitV1DownloadAccountResponse",
      properties = {
        kind = {
          type = "string",
        },
        nextPageToken = {
          description = "If there are more accounts to be downloaded, a token that can be passed back to DownloadAccount to get more accounts. Otherwise, this is blank.",
          type = "string",
        },
        users = {
          description = "All accounts belonging to the project/tenant limited by max_results in the request.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1UserInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1EmailTemplate = {
      description = "Email template",
      id = "GoogleCloudIdentitytoolkitV1EmailTemplate",
      properties = {
        body = {
          description = "Email body",
          type = "string",
        },
        customized = {
          description = "Whether the body or subject of the email is customized.",
          type = "boolean",
        },
        disabled = {
          description = "Whether the template is disabled. If true, a default template will be used.",
          type = "boolean",
        },
        format = {
          description = "Email body format",
          enum = {
            "EMAIL_BODY_FORMAT_UNSPECIFIED",
            "PLAINTEXT",
            "HTML",
          },
          enumDescriptions = {
            "Default value. Do not use.",
            "Email body is in plain text format.",
            "Email body is in HTML format.",
          },
          type = "string",
        },
        from = {
          description = "From address of the email",
          type = "string",
        },
        fromDisplayName = {
          description = "From display name",
          type = "string",
        },
        fromLocalPart = {
          description = "Local part of From address",
          type = "string",
        },
        locale = {
          description = "Value is in III language code format (e.g. \"zh-CN\", \"es\"). Both '-' and '_' separators are accepted.",
          type = "string",
        },
        replyTo = {
          description = "Reply-to address",
          type = "string",
        },
        subject = {
          description = "Subject of the email",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1ErrorInfo = {
      description = "Error information explaining why an account cannot be uploaded. batch upload.",
      id = "GoogleCloudIdentitytoolkitV1ErrorInfo",
      properties = {
        index = {
          description = "The index of the item, range is [0, request.size - 1]",
          format = "int32",
          type = "integer",
        },
        message = {
          description = "Detailed error message",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1FederatedUserIdentifier = {
      description = "Federated user identifier at an Identity Provider.",
      id = "GoogleCloudIdentitytoolkitV1FederatedUserIdentifier",
      properties = {
        providerId = {
          description = "The ID of supported identity providers. This should be a provider ID enabled for sign-in, which is either from the list of [default supported IdPs](https://cloud.google.com/identity-platform/docs/reference/rest/v2/defaultSupportedIdps/list), or of the format `oidc.*` or `saml.*`. Some examples are `google.com`, `facebook.com`, `oidc.testapp`, and `saml.testapp`.",
          type = "string",
        },
        rawId = {
          description = "The user ID of the account at the third-party Identity Provider specified by `provider_id`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1GetAccountInfoRequest = {
      description = "Request message for GetAccountInfo.",
      id = "GoogleCloudIdentitytoolkitV1GetAccountInfoRequest",
      properties = {
        delegatedProjectNumber = {
          format = "int64",
          type = "string",
        },
        email = {
          description = "The email address of one or more accounts to fetch. The length of email should be less than 256 characters and in the format of `name@domain.tld`. The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. Should only be specified by authenticated requests from a developer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        federatedUserId = {
          description = "The federated user identifier of one or more accounts to fetch. Should only be specified by authenticated requests bearing a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1FederatedUserIdentifier",
          },
          type = "array",
        },
        idToken = {
          description = "The Identity Platform ID token of the account to fetch. Require to be specified for requests from end users.",
          type = "string",
        },
        initialEmail = {
          description = "The initial email of one or more accounts to fetch. The length of email should be less than 256 characters and in the format of `name@domain.tld`. The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. Should only be specified by authenticated requests from a developer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        localId = {
          description = "The ID of one or more accounts to fetch. Should only be specified by authenticated requests bearing a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          items = {
            type = "string",
          },
          type = "array",
        },
        phoneNumber = {
          description = "The phone number of one or more accounts to fetch. Should only be specified by authenticated requests from a developer and should be in E.164 format, for example, +15555555555.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetProjectId = {
          description = "The ID of the Google Cloud project that the account or the Identity Platform tenant specified by `tenant_id` belongs to. Should only be specified by authenticated requests bearing a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          type = "string",
        },
        tenantId = {
          description = "The ID of the tenant that the account belongs to. Should only be specified by authenticated requests from a developer.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1GetAccountInfoResponse = {
      description = "Response message for GetAccountInfo.",
      id = "GoogleCloudIdentitytoolkitV1GetAccountInfoResponse",
      properties = {
        kind = {
          type = "string",
        },
        users = {
          description = "The information of specific user account(s) matching the parameters in the request.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1UserInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1GetOobCodeRequest = {
      description = "Request message for GetOobCode.",
      id = "GoogleCloudIdentitytoolkitV1GetOobCodeRequest",
      properties = {
        androidInstallApp = {
          description = "If an associated android app can handle the OOB code, whether or not to install the android app on the device where the link is opened if the app is not already installed.",
          type = "boolean",
        },
        androidMinimumVersion = {
          description = "If an associated android app can handle the OOB code, the minimum version of the app. If the version on the device is lower than this version then the user is taken to Google Play Store to upgrade the app.",
          type = "string",
        },
        androidPackageName = {
          description = "If an associated android app can handle the OOB code, the Android package name of the android app that will handle the callback when this OOB code is used. This will allow the correct app to open if it is already installed, or allow Google Play Store to open to the correct app if it is not yet installed.",
          type = "string",
        },
        canHandleCodeInApp = {
          description = "When set to true, the OOB code link will be be sent as a Universal Link or an Android App Link and will be opened by the corresponding app if installed. If not set, or set to false, the OOB code will be sent to the web widget first and then on continue will redirect to the app if installed.",
          type = "boolean",
        },
        captchaResp = {
          description = "For a PASSWORD_RESET request, a reCaptcha response is required when the system detects possible abuse activity. In those cases, this is the response from the reCaptcha challenge used to verify the caller.",
          type = "string",
        },
        challenge = {
          type = "string",
        },
        continueUrl = {
          description = "The Url to continue after user clicks the link sent in email. This is the url that will allow the web widget to handle the OOB code.",
          type = "string",
        },
        dynamicLinkDomain = {
          description = "In order to ensure that the url used can be easily opened up in iOS or android, we create a [Firebase Dynamic Link](https://firebase.google.com/docs/dynamic-links). Most Identity Platform projects will only have one Dynamic Link domain enabled, and can leave this field blank. This field contains a specified Dynamic Link domain for projects that have multiple enabled.",
          type = "string",
        },
        email = {
          description = "The account's email address to send the OOB code to, and generally the email address of the account that needs to be updated. Required for PASSWORD_RESET, EMAIL_SIGNIN, and VERIFY_EMAIL. Only required for VERIFY_AND_CHANGE_EMAIL requests when return_oob_link is set to true. In this case, it is the original email of the user.",
          type = "string",
        },
        iOSAppStoreId = {
          description = "If an associated iOS app can handle the OOB code, the App Store id of this app. This will allow App Store to open to the correct app if the app is not yet installed.",
          type = "string",
        },
        iOSBundleId = {
          description = "If an associated iOS app can handle the OOB code, the iOS bundle id of this app. This will allow the correct app to open if it is already installed.",
          type = "string",
        },
        idToken = {
          description = "An ID token for the account. It is required for VERIFY_AND_CHANGE_EMAIL and VERIFY_EMAIL requests unless return_oob_link is set to true.",
          type = "string",
        },
        newEmail = {
          description = "The email address the account is being updated to. Required only for VERIFY_AND_CHANGE_EMAIL requests.",
          type = "string",
        },
        requestType = {
          description = "Required. The type of out-of-band (OOB) code to send. Depending on this value, other fields in this request will be required and/or have different meanings. There are 4 different OOB codes that can be sent: * PASSWORD_RESET * EMAIL_SIGNIN * VERIFY_EMAIL * VERIFY_AND_CHANGE_EMAIL",
          enum = {
            "OOB_REQ_TYPE_UNSPECIFIED",
            "PASSWORD_RESET",
            "OLD_EMAIL_AGREE",
            "NEW_EMAIL_ACCEPT",
            "VERIFY_EMAIL",
            "RECOVER_EMAIL",
            "EMAIL_SIGNIN",
            "VERIFY_AND_CHANGE_EMAIL",
            "REVERT_SECOND_FACTOR_ADDITION",
          },
          enumDescriptions = {
            "Oob code type is not specified.",
            "reset password",
            "",
            "",
            "verify the account's email address by sending an email",
            "",
            "sign in with email only",
            "This flow sends an email to the specified new email, and when applied by clicking the link in the email changes the account's email to the new email. Used when the account must have verified email at all times, such as MFA accounts.",
            "",
          },
          type = "string",
        },
        returnOobLink = {
          description = "Whether the confirmation link containing the OOB code should be returned in the response (no email is sent). Used when a developer wants to construct the email template and send it on their own. By default this is false; to specify this field, and to set it to true, it requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control)",
          type = "boolean",
        },
        targetProjectId = {
          description = "The Project ID of the Identity Platform project which the account belongs to. To specify this field, it requires a Google OAuth 2.0 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          type = "string",
        },
        tenantId = {
          description = "The tenant ID of the Identity Platform tenant the account belongs to.",
          type = "string",
        },
        userIp = {
          description = "The IP address of the caller. Required only for PASSWORD_RESET requests.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1GetOobCodeResponse = {
      description = "Response message for GetOobCode.",
      id = "GoogleCloudIdentitytoolkitV1GetOobCodeResponse",
      properties = {
        email = {
          description = "If return_oob_link is false in the request, the email address the verification was sent to.",
          type = "string",
        },
        kind = {
          type = "string",
        },
        oobCode = {
          description = "If return_oob_link is true in the request, the OOB code to send.",
          type = "string",
        },
        oobLink = {
          description = "If return_oob_link is true in the request, the OOB link to be sent to the user. This returns the constructed link including [Firebase Dynamic Link](https://firebase.google.com/docs/dynamic-links) related parameters.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1GetProjectConfigResponse = {
      description = "Response message for GetProjectConfig.",
      id = "GoogleCloudIdentitytoolkitV1GetProjectConfigResponse",
      properties = {
        allowPasswordUser = {
          description = "Whether to allow password account sign up. This field is only returned for authenticated calls from a developer.",
          type = "boolean",
        },
        apiKey = {
          description = "Google Cloud API key. This field is only returned for authenticated calls from a developer.",
          type = "string",
        },
        authorizedDomains = {
          description = "Authorized domains for widget redirect.",
          items = {
            type = "string",
          },
          type = "array",
        },
        changeEmailTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1EmailTemplate",
          description = "Email template for change email. This field is only returned for authenticated calls from a developer.",
        },
        dynamicLinksDomain = {
          description = "The Firebase Dynamic Links domain used to construct links for redirects to native apps.",
          type = "string",
        },
        enableAnonymousUser = {
          description = "Whether anonymous user is enabled. This field is only returned for authenticated calls from a developer.",
          type = "boolean",
        },
        idpConfig = {
          description = "OAuth2 provider config. This field is only returned for authenticated calls from a developer.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1IdpConfig",
          },
          type = "array",
        },
        legacyResetPasswordTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1EmailTemplate",
          description = "Reset password email template for legacy Firebase V1 app. This field is only returned for authenticated calls from a developer.",
        },
        projectId = {
          description = "The project id of the retrieved configuration.",
          type = "string",
        },
        resetPasswordTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1EmailTemplate",
          description = "Email template for reset password. This field is only returned for authenticated calls from a developer.",
        },
        revertSecondFactorAdditionTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1EmailTemplate",
          description = "Email template for reverting second factor additions. This field is only returned for authenticated calls from a developer.",
        },
        useEmailSending = {
          description = "Whether to use email sending. This field is only returned for authenticated calls from a developer.",
          type = "boolean",
        },
        verifyEmailTemplate = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1EmailTemplate",
          description = "Email template for verify email. This field is only returned for authenticated calls from a developer.",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse = {
      description = "Response message for GetRecaptchaParam.",
      id = "GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse",
      properties = {
        kind = {
          type = "string",
        },
        recaptchaSiteKey = {
          description = "The reCAPTCHA v2 site key used to invoke the reCAPTCHA service. Always present.",
          type = "string",
        },
        recaptchaStoken = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse = {
      description = "Response message for GetSessionCookiePublicKeys.",
      id = "GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse",
      properties = {
        keys = {
          description = "Public keys of the session cookie signer, formatted as [JSON Web Keys (JWK)](https://tools.ietf.org/html/rfc7517).",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1OpenIdConnectKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1IdpConfig = {
      description = "Config of an identity provider.",
      id = "GoogleCloudIdentitytoolkitV1IdpConfig",
      properties = {
        clientId = {
          description = "OAuth2 client ID.",
          type = "string",
        },
        enabled = {
          description = "True if allows the user to sign in with the provider.",
          type = "boolean",
        },
        experimentPercent = {
          description = "Percent of users who will be prompted/redirected federated login for this IdP",
          format = "int32",
          type = "integer",
        },
        provider = {
          description = "Name of the identity provider.",
          enum = {
            "PROVIDER_UNSPECIFIED",
            "MSLIVE",
            "GOOGLE",
            "FACEBOOK",
            "PAYPAL",
            "TWITTER",
            "YAHOO",
            "AOL",
            "GITHUB",
            "GOOGLE_PLAY_GAMES",
            "LINKEDIN",
            "IOS_GAME_CENTER",
          },
          enumDescriptions = {
            "",
            "Microsoft Live as identity provider.",
            "Google as identity provider.",
            "Facebook as identity provider.",
            "PayPal as identity provider.",
            "Twitter as identity provider.",
            "Yahoo as identity provider.",
            "AOL as identity provider.",
            "GitHub as identity provider.",
            "Google Play Games as identity provider.",
            "LinkedIn as identity provider.",
            "iOS Game Center as identity provider.",
          },
          type = "string",
        },
        secret = {
          description = "OAuth2 client secret.",
          type = "string",
        },
        whitelistedAudiences = {
          description = "Whitelisted client IDs for audience check.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest = {
      description = "Request message for IssueSamlResponse.",
      id = "GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest",
      properties = {
        idToken = {
          description = "The Identity Platform ID token. It will be verified and then converted to a new SAMLResponse.",
          type = "string",
        },
        rpId = {
          description = "Relying Party identifier, which is the audience of issued SAMLResponse.",
          type = "string",
        },
        samlAppEntityId = {
          description = "SAML app entity id specified in Google Admin Console for each app. If developers want to redirect to a third-party app rather than a G Suite app, they'll probably they need this. When it's used, we'll return a RelayState. This includes a SAMLRequest, which can be used to trigger a SP-initiated SAML flow to redirect to the real app.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse = {
      description = "Response for IssueSamlResponse request.",
      id = "GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse",
      properties = {
        acsEndpoint = {
          description = "The ACS endpoint which consumes the returned SAMLResponse.",
          type = "string",
        },
        email = {
          description = "Email of the user.",
          type = "string",
        },
        firstName = {
          description = "First name of the user.",
          type = "string",
        },
        isNewUser = {
          description = "Whether the logged in user was created by this request.",
          type = "boolean",
        },
        lastName = {
          description = "Last name of the user.",
          type = "string",
        },
        relayState = {
          description = "Generated RelayState.",
          type = "string",
        },
        samlResponse = {
          description = "Signed SAMLResponse created for the Relying Party.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1MfaEnrollment = {
      description = "Information on which multi-factor authentication (MFA) providers are enabled for an account.",
      id = "GoogleCloudIdentitytoolkitV1MfaEnrollment",
      properties = {
        displayName = {
          description = "Display name for this mfa option e.g. \"corp cell phone\".",
          type = "string",
        },
        enrolledAt = {
          description = "Timestamp when the account enrolled this second factor.",
          format = "google-datetime",
          type = "string",
        },
        mfaEnrollmentId = {
          description = "ID of this MFA option.",
          type = "string",
        },
        phoneInfo = {
          description = "Normally this will show the phone number associated with this enrollment. In some situations, such as after a first factor sign in, it will only show the obfuscated version of the associated phone number.",
          type = "string",
        },
        unobfuscatedPhoneInfo = {
          description = "Output only. Unobfuscated phone_info.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1MfaFactor = {
      id = "GoogleCloudIdentitytoolkitV1MfaFactor",
      properties = {
        displayName = {
          description = "Display name for this mfa option e.g. \"corp cell phone\".",
          type = "string",
        },
        phoneInfo = {
          description = "Phone number to receive OTP for MFA.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1MfaInfo = {
      description = "Multi-factor authentication related information.",
      id = "GoogleCloudIdentitytoolkitV1MfaInfo",
      properties = {
        enrollments = {
          description = "The second factors the user has enrolled.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaEnrollment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1OpenIdConnectKey = {
      description = "Represents a public key of the session cookie signer, formatted as a [JSON Web Key (JWK)](https://tools.ietf.org/html/rfc7517).",
      id = "GoogleCloudIdentitytoolkitV1OpenIdConnectKey",
      properties = {
        alg = {
          description = "Signature algorithm.",
          type = "string",
        },
        e = {
          description = "Exponent for the RSA public key, it is represented as the base64url encoding of the value's big endian representation.",
          type = "string",
        },
        kid = {
          description = "Unique string to identify this key.",
          type = "string",
        },
        kty = {
          description = "Key type.",
          type = "string",
        },
        n = {
          description = "Modulus for the RSA public key, it is represented as the base64url encoding of the value's big endian representation.",
          type = "string",
        },
        use = {
          description = "Key use.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1ProviderUserInfo = {
      description = "Information about the user as provided by various Identity Providers.",
      id = "GoogleCloudIdentitytoolkitV1ProviderUserInfo",
      properties = {
        displayName = {
          description = "The user's display name at the Identity Provider.",
          type = "string",
        },
        email = {
          description = "The user's email address at the Identity Provider.",
          type = "string",
        },
        federatedId = {
          description = "The user's identifier at the Identity Provider.",
          type = "string",
        },
        phoneNumber = {
          description = "The user's phone number at the Identity Provider.",
          type = "string",
        },
        photoUrl = {
          description = "The user's profile photo URL at the Identity Provider.",
          type = "string",
        },
        providerId = {
          description = "The ID of the Identity Provider.",
          type = "string",
        },
        rawId = {
          description = "The user's raw identifier directly returned from Identity Provider.",
          type = "string",
        },
        screenName = {
          description = "The user's screen_name at Twitter or login name at GitHub.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1QueryUserInfoRequest = {
      description = "Request message for QueryUserInfo.",
      id = "GoogleCloudIdentitytoolkitV1QueryUserInfoRequest",
      properties = {
        expression = {
          description = "Query conditions used to filter results. If more than one is passed, only the first SqlExpression is evaluated.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1SqlExpression",
          },
          type = "array",
        },
        limit = {
          description = "The maximum number of accounts to return with an upper limit of __500__. Defaults to _500_. Only valid when `return_user_info` is set to `true`.",
          format = "int64",
          type = "string",
        },
        offset = {
          description = "The number of accounts to skip from the beginning of matching records. Only valid when `return_user_info` is set to `true`.",
          format = "int64",
          type = "string",
        },
        order = {
          description = "The order for sorting query result. Defaults to __ascending__ order. Only valid when `return_user_info` is set to `true`.",
          enum = {
            "ORDER_UNSPECIFIED",
            "ASC",
            "DESC",
          },
          enumDescriptions = {
            "Order is not specified.",
            "Sort on ascending order.",
            "Sort on descending order.",
          },
          type = "string",
        },
        returnUserInfo = {
          description = "If `true`, this request will return the accounts matching the query. If `false`, only the __count__ of accounts matching the query will be returned. Defaults to `true`.",
          type = "boolean",
        },
        sortBy = {
          description = "The field to use for sorting user accounts. Defaults to `USER_ID`. Note: when `phone_number` is specified in `expression`, the result ignores the sorting. Only valid when `return_user_info` is set to `true`.",
          enum = {
            "SORT_BY_FIELD_UNSPECIFIED",
            "USER_ID",
            "NAME",
            "CREATED_AT",
            "LAST_LOGIN_AT",
            "USER_EMAIL",
          },
          enumDescriptions = {
            "Sort field is not specified.",
            "Sort result by userId.",
            "Sort result by name.",
            "Sort result by createdAt.",
            "Sort result by lastLoginAt.",
            "Sort result by userEmail.",
          },
          type = "string",
        },
        tenantId = {
          description = "The ID of the tenant to which the result is scoped.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1QueryUserInfoResponse = {
      description = "Response message for QueryUserInfo.",
      id = "GoogleCloudIdentitytoolkitV1QueryUserInfoResponse",
      properties = {
        recordsCount = {
          description = "If `return_user_info` in the request is true, this is the number of returned accounts in this message. Otherwise, this is the total number of accounts matching the query.",
          format = "int64",
          type = "string",
        },
        userInfo = {
          description = "If `return_user_info` in the request is true, this is the accounts matching the query.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1UserInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1ResetPasswordRequest = {
      description = "Request message for ResetPassword.",
      id = "GoogleCloudIdentitytoolkitV1ResetPasswordRequest",
      properties = {
        email = {
          description = "The email of the account to be modified. Specify this and the old password in order to change an account's password without using an out-of-band code.",
          type = "string",
        },
        newPassword = {
          description = "The new password to be set for this account. Specifying this field will result in a change to the account and consume the out-of-band code if one was specified and it was of type PASSWORD_RESET.",
          type = "string",
        },
        oldPassword = {
          description = "The current password of the account to be modified. Specify this and email to change an account's password without using an out-of-band code.",
          type = "string",
        },
        oobCode = {
          description = "An out-of-band (OOB) code generated by GetOobCode request. Specify only this parameter (or only this parameter and a tenant ID) to get the out-of-band code's type in the response without mutating the account's state. Only a PASSWORD_RESET out-of-band code can be consumed via this method.",
          type = "string",
        },
        tenantId = {
          description = "The tenant ID of the Identity Platform tenant the account belongs to.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1ResetPasswordResponse = {
      description = "Response message for ResetPassword.",
      id = "GoogleCloudIdentitytoolkitV1ResetPasswordResponse",
      properties = {
        email = {
          description = "The email associated with the out-of-band code that was used.",
          type = "string",
        },
        kind = {
          type = "string",
        },
        mfaInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaEnrollment",
        },
        newEmail = {
          type = "string",
        },
        requestType = {
          enum = {
            "OOB_REQ_TYPE_UNSPECIFIED",
            "PASSWORD_RESET",
            "OLD_EMAIL_AGREE",
            "NEW_EMAIL_ACCEPT",
            "VERIFY_EMAIL",
            "RECOVER_EMAIL",
            "EMAIL_SIGNIN",
            "VERIFY_AND_CHANGE_EMAIL",
            "REVERT_SECOND_FACTOR_ADDITION",
          },
          enumDescriptions = {
            "Oob code type is not specified.",
            "reset password",
            "",
            "",
            "verify the account's email address by sending an email",
            "",
            "sign in with email only",
            "This flow sends an email to the specified new email, and when applied by clicking the link in the email changes the account's email to the new email. Used when the account must have verified email at all times, such as MFA accounts.",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest = {
      description = "Request message for SendVerificationCode. At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or `safety_net_token` must be specified to verify the verification code is being sent on behalf of a real app and not an emulator.",
      id = "GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest",
      properties = {
        autoRetrievalInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1AutoRetrievalInfo",
          description = "Android only. Used by Google Play Services to identify the app for auto-retrieval.",
        },
        iosReceipt = {
          description = "Receipt of successful iOS app token validation. At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or `safety_net_token` must be specified to verify the verification code is being sent on behalf of a real app and not an emulator. This should come from the response of verifyIosClient. If present, the caller should also provide the `ios_secret`, as well as a bundle ID in the `x-ios-bundle-identifier` header, which must match the bundle ID from the verifyIosClient request.",
          type = "string",
        },
        iosSecret = {
          description = "Secret delivered to iOS app as a push notification. Should be passed with an `ios_receipt` as well as the `x-ios-bundle-identifier` header.",
          type = "string",
        },
        phoneNumber = {
          description = "The phone number to send the verification code to in E.164 format.",
          type = "string",
        },
        recaptchaToken = {
          description = "Recaptcha token for app verification. At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or `safety_net_token` must be specified to verify the verification code is being sent on behalf of a real app and not an emulator. The recaptcha should be generated by calling getRecaptchaParams and the recaptcha token will be generated on user completion of the recaptcha challenge.",
          type = "string",
        },
        safetyNetToken = {
          description = "Android only. Used to assert application identity in place of a recaptcha token. At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or `safety_net_token` must be specified to verify the verification code is being sent on behalf of a real app and not an emulator. A SafetyNet Token can be generated via the [SafetyNet Android Attestation API](https://developer.android.com/training/safetynet/attestation.html), with the Base64 encoding of the `phone_number` field as the nonce.",
          type = "string",
        },
        tenantId = {
          description = "Tenant ID of the Identity Platform tenant the user is signing in to.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse = {
      description = "Response message for SendVerificationCode.",
      id = "GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse",
      properties = {
        sessionInfo = {
          description = "Encrypted session information. This can be used in signInWithPhoneNumber to authenticate the phone number.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SetAccountInfoRequest = {
      description = "Request message for SetAccountInfo.",
      id = "GoogleCloudIdentitytoolkitV1SetAccountInfoRequest",
      properties = {
        captchaChallenge = {
          type = "string",
        },
        captchaResponse = {
          description = "The response from reCaptcha challenge. This is required when the system detects possible abuse activities.",
          type = "string",
        },
        createdAt = {
          description = "The timestamp in milliseconds when the account was created.",
          format = "int64",
          type = "string",
        },
        customAttributes = {
          description = "JSON formatted custom attributes to be stored in the Identity Platform ID token. Specifying this field requires a Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control).",
          type = "string",
        },
        delegatedProjectNumber = {
          format = "int64",
          type = "string",
        },
        deleteAttribute = {
          description = "The account's attributes to be deleted.",
          items = {
            enum = {
              "USER_ATTRIBUTE_NAME_UNSPECIFIED",
              "EMAIL",
              "DISPLAY_NAME",
              "PROVIDER",
              "PHOTO_URL",
              "PASSWORD",
              "RAW_USER_INFO",
            },
            enumDescriptions = {
              "User attribute name is not specified.",
              "User attribute key name is email.",
              "User attribute key name is displayName.",
              "User attribute key name is provider.",
              "User attribute key name is photoURL.",
              "User attribute key name is password.",
              "User attribute key name is rawUserInfo.",
            },
            type = "string",
          },
          type = "array",
        },
        deleteProvider = {
          description = "The Identity Providers to unlink from the user's account.",
          items = {
            type = "string",
          },
          type = "array",
        },
        disableUser = {
          description = "If true, marks the account as disabled, meaning the user will no longer be able to sign-in.",
          type = "boolean",
        },
        displayName = {
          description = "The user's new display name to be updated in the account's attributes. The length of the display name must be less than or equal to 256 characters.",
          type = "string",
        },
        email = {
          description = "The user's new email to be updated in the account's attributes. The length of email should be less than 256 characters and in the format of `name@domain.tld`. The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.",
          type = "string",
        },
        emailVerified = {
          description = "Whether the user's email has been verified. Specifying this field requires a Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control).",
          type = "boolean",
        },
        idToken = {
          description = "A valid Identity Platform ID token. Required when attempting to change user-related information.",
          type = "string",
        },
        instanceId = {
          type = "string",
        },
        lastLoginAt = {
          description = "The timestamp in milliseconds when the account last logged in.",
          format = "int64",
          type = "string",
        },
        linkProviderUserInfo = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1ProviderUserInfo",
          description = "The provider to be linked to the user's account. Specifying this field requires a Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control).",
        },
        localId = {
          description = "The ID of the user. Specifying this field requires a Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control). For requests from end-users, an ID token should be passed instead.",
          type = "string",
        },
        mfa = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaInfo",
          description = "The multi-factor authentication related information to be set on the user's account. This will overwrite any previous multi-factor related information on the account. Specifying this field requires a Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control).",
        },
        oobCode = {
          description = "The out-of-band code to be applied on the user's account. The following out-of-band code types are supported: * VERIFY_EMAIL * RECOVER_EMAIL * REVERT_SECOND_FACTOR_ADDITION * VERIFY_AND_CHANGE_EMAIL",
          type = "string",
        },
        password = {
          description = "The user's new password to be updated in the account's attributes. The password must be at least 6 characters long.",
          type = "string",
        },
        phoneNumber = {
          description = "The phone number to be updated in the account's attributes.",
          type = "string",
        },
        photoUrl = {
          description = "The user's new photo URL for the account's profile photo to be updated in the account's attributes. The length of the URL must be less than or equal to 2048 characters.",
          type = "string",
        },
        provider = {
          description = "The Identity Providers that the account should be associated with.",
          items = {
            type = "string",
          },
          type = "array",
        },
        returnSecureToken = {
          description = "Whether or not to return an ID and refresh token. Should always be true.",
          type = "boolean",
        },
        targetProjectId = {
          description = "The project ID for the project that the account belongs to. Specifying this field requires Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.com/identity-platform/docs/access-control). Requests from end users should pass an Identity Platform ID token instead.",
          type = "string",
        },
        tenantId = {
          description = "The tenant ID of the Identity Platform tenant that the account belongs to. Requests from end users should pass an Identity Platform ID token rather than setting this field.",
          type = "string",
        },
        upgradeToFederatedLogin = {
          description = "Whether the account should be restricted to only using federated login.",
          type = "boolean",
        },
        validSince = {
          description = "Specifies the minimum timestamp in seconds for an Identity Platform ID token to be considered valid.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SetAccountInfoResponse = {
      description = "Response message for SetAccountInfo",
      id = "GoogleCloudIdentitytoolkitV1SetAccountInfoResponse",
      properties = {
        displayName = {
          description = "The account's display name.",
          type = "string",
        },
        email = {
          description = "The account's email address.",
          type = "string",
        },
        emailVerified = {
          description = "Whether the account's email has been verified.",
          type = "boolean",
        },
        expiresIn = {
          description = "The number of seconds until the Identity Platform ID token expires.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "An Identity Platform ID token for the account. This is used for legacy user sign up.",
          type = "string",
        },
        kind = {
          type = "string",
        },
        localId = {
          description = "The ID of the authenticated user.",
          type = "string",
        },
        newEmail = {
          description = "The new email that has been set on the user's account attributes.",
          type = "string",
        },
        passwordHash = {
          description = "Deprecated. No actual password hash is currently returned.",
          type = "string",
        },
        photoUrl = {
          description = "The user's photo URL for the account's profile photo.",
          type = "string",
        },
        providerUserInfo = {
          description = "The linked Identity Providers on the account.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1ProviderUserInfo",
          },
          type = "array",
        },
        refreshToken = {
          description = "A refresh token for the account. This is used for legacy user sign up.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest = {
      description = "Request message for SignInWithCustomToken.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest",
      properties = {
        delegatedProjectNumber = {
          format = "int64",
          type = "string",
        },
        instanceId = {
          type = "string",
        },
        returnSecureToken = {
          description = "Should always be true.",
          type = "boolean",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to. If present, the ID should match the tenant_id in the token.",
          type = "string",
        },
        token = {
          description = "Required. The custom Auth token asserted by the developer. The token should be a [JSON Web Token (JWT)](https://tools.ietf.org/html/rfc7519) that includes the claims listed in the [API reference](https://cloud.google.com/identity-platform/docs/reference/rest/client/) under the \"Custom Token Claims\" section.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse = {
      description = "Response message for SignInWithCustomToken.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse",
      properties = {
        expiresIn = {
          description = "The number of seconds until the ID token expires.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "An Identity Platform ID token for the authenticated user.",
          type = "string",
        },
        isNewUser = {
          description = "Whether the authenticated user was created by this request.",
          type = "boolean",
        },
        kind = {
          type = "string",
        },
        refreshToken = {
          description = "An Identity Platform refresh token for the authenticated user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest = {
      description = "Request message for SignInWithEmailLink",
      id = "GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest",
      properties = {
        email = {
          description = "Required. The email address the sign-in link was sent to. The length of email should be less than 256 characters and in the format of `name@domain.tld`. The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.",
          type = "string",
        },
        idToken = {
          description = "A valid ID token for an Identity Platform account. If passed, this request will link the email address to the user represented by this ID token and enable sign-in with email link on the account for the future.",
          type = "string",
        },
        oobCode = {
          description = "Required. The out-of-band code from the email link.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to. If not set, the user will sign in to the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse = {
      description = "Response message for SignInWithEmailLink.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse",
      properties = {
        email = {
          description = "The email the user signed in with. Always present in the response.",
          type = "string",
        },
        expiresIn = {
          description = "The number of seconds until the ID token expires.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "An Identity Platform ID token for the authenticated user.",
          type = "string",
        },
        isNewUser = {
          description = "Whether the authenticated user was created by this request.",
          type = "boolean",
        },
        kind = {
          type = "string",
        },
        localId = {
          description = "The ID of the authenticated user. Always present in the response.",
          type = "string",
        },
        mfaInfo = {
          description = "Info on which multi-factor authentication providers are enabled. Present if the user needs to complete the sign-in using multi-factor authentication.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaEnrollment",
          },
          type = "array",
        },
        mfaPendingCredential = {
          description = "An opaque string that functions as proof that the user has successfully passed the first factor check.",
          type = "string",
        },
        refreshToken = {
          description = "Refresh token for the authenticated user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest = {
      description = "Request message for SignInWithGameCenter",
      id = "GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest",
      properties = {
        displayName = {
          description = "The user's Game Center display name.",
          type = "string",
        },
        idToken = {
          description = "A valid ID token for an Identity Platform account. If present, this request will link the Game Center player ID to the account represented by this ID token.",
          type = "string",
        },
        playerId = {
          description = "Required. The user's Game Center player ID.",
          type = "string",
        },
        publicKeyUrl = {
          description = "Required. The URL to fetch the Apple public key in order to verify the given signature is signed by Apple.",
          type = "string",
        },
        salt = {
          description = "Required. A random string used to generate the given signature.",
          type = "string",
        },
        signature = {
          description = "Required. The verification signature data generated by Apple.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to.",
          type = "string",
        },
        timestamp = {
          description = "Required. The time when the signature was created by Apple, in milliseconds since the epoch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse = {
      description = "Response message for SignInWithGameCenter",
      id = "GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse",
      properties = {
        displayName = {
          description = "Display name of the authenticated user.",
          type = "string",
        },
        expiresIn = {
          description = "The number of seconds until the ID token expires.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "An Identity Platform ID token for the authenticated user.",
          type = "string",
        },
        isNewUser = {
          description = "Whether the logged in user was created by this request.",
          type = "boolean",
        },
        localId = {
          description = "The ID of the authenticated user. Always present in the response.",
          type = "string",
        },
        playerId = {
          description = "The user's Game Center player ID.",
          type = "string",
        },
        refreshToken = {
          description = "An Identity Platform refresh token for the authenticated user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithIdpRequest = {
      description = "Request message for SignInWithIdp.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithIdpRequest",
      properties = {
        autoCreate = {
          type = "boolean",
        },
        delegatedProjectNumber = {
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "A valid Identity Platform ID token. If passed, the user's account at the IdP will be linked to the account represented by this ID token.",
          type = "string",
        },
        pendingIdToken = {
          type = "string",
        },
        pendingToken = {
          description = "An opaque string from a previous SignInWithIdp response. If set, it can be used to repeat the sign-in operation from the previous SignInWithIdp operation.",
          type = "string",
        },
        postBody = {
          description = "If the user is signing in with an authorization response obtained via a previous CreateAuthUri authorization request, this is the body of the HTTP POST callback from the IdP, if present. Otherwise, if the user is signing in with a manually provided IdP credential, this should be a URL-encoded form that contains the credential (e.g. an ID token or access token for OAuth 2.0 IdPs) and the provider ID of the IdP that issued the credential. For example, if the user is signing in to the Google provider using a Google ID token, this should be set to `id_token=[GOOGLE_ID_TOKEN]&providerId=google.com`, where `[GOOGLE_ID_TOKEN]` should be replaced with the Google ID token. If the user is signing in to the Facebook provider using a Facebook authentication token, this should be set to `id_token=[FACEBOOK_AUTHENTICATION_TOKEN]&providerId=facebook.com&nonce= [NONCE]`, where `[FACEBOOK_AUTHENTICATION_TOKEN]` should be replaced with the Facebook authentication token. Nonce is required for validating the token. The request will fail if no nonce is provided. If the user is signing in to the Facebook provider using a Facebook access token, this should be set to `access_token=[FACEBOOK_ACCESS_TOKEN]&providerId=facebook.com`, where `[FACEBOOK_ACCESS_TOKEN]` should be replaced with the Facebook access token. If the user is signing in to the Twitter provider using a Twitter OAuth 1.0 credential, this should be set to `access_token=[TWITTER_ACCESS_TOKEN]&oauth_token_secret=[TWITTER_TOKEN_SECRET]&providerId=twitter.com`, where `[TWITTER_ACCESS_TOKEN]` and `[TWITTER_TOKEN_SECRET]` should be replaced with the Twitter OAuth access token and Twitter OAuth token secret respectively.",
          type = "string",
        },
        requestUri = {
          description = "Required. The URL to which the IdP redirects the user back. This can be set to `http://localhost` if the user is signing in with a manually provided IdP credential.",
          type = "string",
        },
        returnIdpCredential = {
          description = "Whether or not to return OAuth credentials from the IdP on the following errors: `FEDERATED_USER_ID_ALREADY_LINKED` and `EMAIL_EXISTS`.",
          type = "boolean",
        },
        returnRefreshToken = {
          description = "Whether or not to return the OAuth refresh token from the IdP, if available.",
          type = "boolean",
        },
        returnSecureToken = {
          description = "Should always be true.",
          type = "boolean",
        },
        sessionId = {
          description = "The session ID returned from a previous CreateAuthUri call. This field is verified against that session ID to prevent session fixation attacks. Required if the user is signing in with an authorization response from a previous CreateAuthUri authorization request.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to. If not set, the user will sign in to the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithIdpResponse = {
      description = "Response message for SignInWithIdp.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithIdpResponse",
      properties = {
        context = {
          description = "The opaque string set in CreateAuthUri that is used to maintain contextual information between the authentication request and the callback from the IdP.",
          type = "string",
        },
        dateOfBirth = {
          description = "The date of birth for the user's account at the IdP.",
          type = "string",
        },
        displayName = {
          description = "The display name for the user's account at the IdP.",
          type = "string",
        },
        email = {
          description = "The email address of the user's account at the IdP.",
          type = "string",
        },
        emailRecycled = {
          description = "Whether or not there is an existing Identity Platform user account with the same email address but linked to a different account at the same IdP. Only present if the \"One account per email address\" setting is enabled and the email address at the IdP is verified.",
          type = "boolean",
        },
        emailVerified = {
          description = "Whether the user account's email address is verified.",
          type = "boolean",
        },
        errorMessage = {
          description = "The error message returned if `return_idp_credential` is set to `true` and either the `FEDERATED_USER_ID_ALREADY_LINKED` or `EMAIL_EXISTS` error is encountered. This field's value is either `FEDERATED_USER_ID_ALREADY_LINKED` or `EMAIL_EXISTS`.",
          type = "string",
        },
        expiresIn = {
          description = "The number of seconds until the Identity Platform ID token expires.",
          format = "int64",
          type = "string",
        },
        federatedId = {
          description = "The user's account ID at the IdP. Always present in the response.",
          type = "string",
        },
        firstName = {
          description = "The first name for the user's account at the IdP.",
          type = "string",
        },
        fullName = {
          description = "The full name for the user's account at the IdP.",
          type = "string",
        },
        idToken = {
          description = "An Identity Platform ID token for the authenticated user.",
          type = "string",
        },
        inputEmail = {
          type = "string",
        },
        isNewUser = {
          description = "Whether or not a new Identity Platform account was created for the authenticated user.",
          type = "boolean",
        },
        kind = {
          type = "string",
        },
        language = {
          description = "The language preference for the user's account at the IdP.",
          type = "string",
        },
        lastName = {
          description = "The last name for the user's account at the IdP.",
          type = "string",
        },
        localId = {
          description = "The ID of the authenticated Identity Platform user. Always present in the response.",
          type = "string",
        },
        mfaInfo = {
          description = "Info on which multi-factor authentication providers are enabled for the account. Present if the user needs to complete the sign-in using multi-factor authentication.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaEnrollment",
          },
          type = "array",
        },
        mfaPendingCredential = {
          description = "An opaque string that functions as proof that the user has successfully passed the first factor authentication.",
          type = "string",
        },
        needConfirmation = {
          description = "Whether or not there is an existing Identity Platform user account with the same email address as the current account signed in at the IdP, and the account's email addresss is not verified at the IdP. The user will need to sign in to the existing Identity Platform account and then link the current credential from the IdP to it. Only present if the \"One account per email address\" setting is enabled.",
          type = "boolean",
        },
        needEmail = {
          type = "boolean",
        },
        nickName = {
          description = "The nickname for the user's account at the IdP.",
          type = "string",
        },
        oauthAccessToken = {
          description = "The OAuth access token from the IdP, if available.",
          type = "string",
        },
        oauthAuthorizationCode = {
          description = "The OAuth 2.0 authorization code, if available. Only present for the Google provider.",
          type = "string",
        },
        oauthExpireIn = {
          description = "The number of seconds until the OAuth access token from the IdP expires.",
          format = "int32",
          type = "integer",
        },
        oauthIdToken = {
          description = "The OpenID Connect ID token from the IdP, if available.",
          type = "string",
        },
        oauthRefreshToken = {
          description = "The OAuth 2.0 refresh token from the IdP, if available and `return_refresh_token` is set to `true`.",
          type = "string",
        },
        oauthTokenSecret = {
          description = "The OAuth 1.0 token secret from the IdP, if available. Only present for the Twitter provider.",
          type = "string",
        },
        originalEmail = {
          description = "The main (top-level) email address of the user's Identity Platform account, if different from the email address at the IdP. Only present if the \"One account per email address\" setting is enabled.",
          type = "string",
        },
        pendingToken = {
          description = "An opaque string that can be used as a credential from the IdP the user is signing into. The pending token obtained here can be set in a future SignInWithIdp request to sign the same user in with the IdP again.",
          type = "string",
        },
        photoUrl = {
          description = "The URL of the user's profile picture at the IdP.",
          type = "string",
        },
        providerId = {
          description = "The provider ID of the IdP that the user is signing in to. Always present in the response.",
          type = "string",
        },
        rawUserInfo = {
          description = "The stringified JSON response containing all the data corresponding to the user's account at the IdP.",
          type = "string",
        },
        refreshToken = {
          description = "An Identity Platform refresh token for the authenticated user.",
          type = "string",
        },
        screenName = {
          description = "The screen name for the user's account at the Twitter IdP or the login name for the user's account at the GitHub IdP.",
          type = "string",
        },
        tenantId = {
          description = "The value of the `tenant_id` field in the request.",
          type = "string",
        },
        timeZone = {
          description = "The time zone for the user's account at the IdP.",
          type = "string",
        },
        verifiedProvider = {
          description = "A list of provider IDs that the user can sign in to in order to resolve a `need_confirmation` error. Only present if `need_confirmation` is set to `true`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest = {
      description = "Request message for SignInWithPassword.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest",
      properties = {
        captchaChallenge = {
          type = "string",
        },
        captchaResponse = {
          description = "The reCAPTCHA token provided by the reCAPTCHA client-side integration. reCAPTCHA Enterprise uses it for risk assessment. Required when reCAPTCHA Enterprise is enabled.",
          type = "string",
        },
        delegatedProjectNumber = {
          format = "int64",
          type = "string",
        },
        email = {
          description = "Required. The email the user is signing in with. The length of email should be less than 256 characters and in the format of `name@domain.tld`. The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production.",
          type = "string",
        },
        idToken = {
          type = "string",
        },
        instanceId = {
          type = "string",
        },
        password = {
          description = "Required. The password the user provides to sign in to the account.",
          type = "string",
        },
        pendingIdToken = {
          type = "string",
        },
        returnSecureToken = {
          description = "Should always be true.",
          type = "boolean",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to. If not set, the user will sign in to the default Identity Platform instance in the project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse = {
      description = "Response message for SignInWithPassword.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse",
      properties = {
        displayName = {
          description = "The user's display name stored in the account's attributes.",
          type = "string",
        },
        email = {
          description = "The email of the authenticated user. Always present in the response.",
          type = "string",
        },
        expiresIn = {
          description = "The number of seconds until the Identity Platform ID token expires.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "An Identity Platform ID token for the authenticated user.",
          type = "string",
        },
        kind = {
          type = "string",
        },
        localId = {
          description = "The ID of the authenticated user. Always present in the response.",
          type = "string",
        },
        mfaInfo = {
          description = "Info on which multi-factor authentication providers are enabled for the account. Present if the user needs to complete the sign-in using multi-factor authentication.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaEnrollment",
          },
          type = "array",
        },
        mfaPendingCredential = {
          description = "An opaque string that functions as proof that the user has successfully passed the first factor authentication.",
          type = "string",
        },
        oauthAccessToken = {
          description = "The OAuth2 access token.",
          type = "string",
        },
        oauthAuthorizationCode = {
          type = "string",
        },
        oauthExpireIn = {
          description = "The access token expiration time in seconds.",
          format = "int32",
          type = "integer",
        },
        profilePicture = {
          description = "The user's profile picture stored in the account's attributes.",
          type = "string",
        },
        refreshToken = {
          description = "An Identity Platform refresh token for the authenticated user.",
          type = "string",
        },
        registered = {
          description = "Whether the email is for an existing account. Always true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest = {
      description = "Request message for SignInWithPhoneNumber.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest",
      properties = {
        code = {
          description = "User-entered verification code from an SMS sent to the user's phone.",
          type = "string",
        },
        idToken = {
          description = "A valid ID token for an Identity Platform account. If passed, this request will link the phone number to the user represented by this ID token if the phone number is not in use, or will reauthenticate the user if the phone number is already linked to the user.",
          type = "string",
        },
        operation = {
          enum = {
            "VERIFY_OP_UNSPECIFIED",
            "SIGN_UP_OR_IN",
            "REAUTH",
            "UPDATE",
            "LINK",
          },
          enumDescriptions = {
            "Operation is not specified.",
            "Verify operation is to sign up/sign in.",
            "Verify operation is to reauth.",
            "Verify operation is to update.",
            "Verify operation is to link.",
          },
          type = "string",
        },
        phoneNumber = {
          description = "The user's phone number to sign in with. This is necessary in the case of uing a temporary proof, in which case it must match the phone number that was authenticated in the request that generated the temporary proof. This field is ignored if a session info is passed.",
          type = "string",
        },
        sessionInfo = {
          description = "Encrypted session information from the response of sendVerificationCode. In the case of authenticating with an SMS code this must be specified, but in the case of using a temporary proof it can be unspecified.",
          type = "string",
        },
        temporaryProof = {
          description = "A proof of the phone number verification, provided from a previous signInWithPhoneNumber request. If this is passed, the caller must also pass in the phone_number field the phone number that was verified in the previous request.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the user is signing in to. If not set, the user will sign in to the default Identity Platform project.",
          type = "string",
        },
        verificationProof = {
          description = "Do not use.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse = {
      description = "Response message for SignInWithPhoneNumber.",
      id = "GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse",
      properties = {
        expiresIn = {
          description = "The number of seconds until the ID token expires.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "Identity Platform ID token for the authenticated user.",
          type = "string",
        },
        isNewUser = {
          description = "Whether the authenticated user was created by this request.",
          type = "boolean",
        },
        localId = {
          description = "The id of the authenticated user. Present in the case of a successful authentication. In the case when the phone could be verified but the account operation could not be performed, a temporary proof will be returned instead.",
          type = "string",
        },
        phoneNumber = {
          description = "Phone number of the authenticated user. Always present in the response.",
          type = "string",
        },
        refreshToken = {
          description = "Refresh token for the authenticated user.",
          type = "string",
        },
        temporaryProof = {
          description = "A proof of the phone number verification, provided if a phone authentication is successful but the user operation fails. This happens when the request tries to link a phone number to a user with an ID token or reauthenticate with an ID token but the phone number is linked to a different user.",
          type = "string",
        },
        temporaryProofExpiresIn = {
          description = "The number of seconds until the temporary proof expires.",
          format = "int64",
          type = "string",
        },
        verificationProof = {
          description = "Do not use.",
          type = "string",
        },
        verificationProofExpiresIn = {
          description = "Do not use.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignUpRequest = {
      description = "Request message for SignUp.",
      id = "GoogleCloudIdentitytoolkitV1SignUpRequest",
      properties = {
        captchaChallenge = {
          type = "string",
        },
        captchaResponse = {
          description = "The reCAPTCHA token provided by the reCAPTCHA client-side integration. reCAPTCHA Enterprise uses it for assessment. Required when reCAPTCHA enterprise is enabled.",
          type = "string",
        },
        disabled = {
          description = "Whether the user will be disabled upon creation. Disabled accounts are inaccessible except for requests bearing a Google OAuth2 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          type = "boolean",
        },
        displayName = {
          description = "The display name of the user to be created.",
          type = "string",
        },
        email = {
          description = "The email to assign to the created user. The length of the email should be less than 256 characters and in the format of `name@domain.tld`. The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec production. An anonymous user will be created if not provided.",
          type = "string",
        },
        emailVerified = {
          description = "Whether the user's email is verified. Specifying this field requires a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          type = "boolean",
        },
        idToken = {
          description = "A valid ID token for an Identity Platform user. If set, this request will link the authentication credential to the user represented by this ID token. For a non-admin request, both the `email` and `password` fields must be set. For an admin request, `local_id` must not be set.",
          type = "string",
        },
        instanceId = {
          type = "string",
        },
        localId = {
          description = "The ID of the user to create. The ID must be unique within the project that the user is being created under. Specifying this field requires a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          type = "string",
        },
        mfaInfo = {
          description = "The multi-factor authentication providers for the user to create.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaFactor",
          },
          type = "array",
        },
        password = {
          description = "The password to assign to the created user. The password must be be at least 6 characters long. If set, the `email` field must also be set.",
          type = "string",
        },
        phoneNumber = {
          description = "The phone number of the user to create. Specifying this field requires a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          type = "string",
        },
        photoUrl = {
          description = "The profile photo url of the user to create.",
          type = "string",
        },
        targetProjectId = {
          description = "The project ID of the project which the user should belong to. Specifying this field requires a Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/identity-platform/docs/access-control). If this is not set, the target project is inferred from the scope associated to the Bearer access token.",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant to create a user under. If not set, the user will be created under the default Identity Platform project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SignUpResponse = {
      description = "Response message for SignUp.",
      id = "GoogleCloudIdentitytoolkitV1SignUpResponse",
      properties = {
        displayName = {
          description = "The created user's display name.",
          type = "string",
        },
        email = {
          description = "The created user's email.",
          type = "string",
        },
        expiresIn = {
          description = "The number of seconds until the ID token expires.",
          format = "int64",
          type = "string",
        },
        idToken = {
          description = "An Identity Platform ID token for the created user. This field is only set for non-admin requests.",
          type = "string",
        },
        kind = {
          type = "string",
        },
        localId = {
          description = "The ID of the created user. Always present in the response.",
          type = "string",
        },
        refreshToken = {
          description = "An Identity Platform refresh token for the created user. This field is only set for non-admin requests.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1SqlExpression = {
      description = "Query conditions used to filter results.",
      id = "GoogleCloudIdentitytoolkitV1SqlExpression",
      properties = {
        email = {
          description = "A case insensitive string that the account's email should match. Only one of `email`, `phone_number`, or `user_id` should be specified in a SqlExpression. If more than one is specified, only the first (in that order) will be applied.",
          type = "string",
        },
        phoneNumber = {
          description = "A string that the account's phone number should match. Only one of `email`, `phone_number`, or `user_id` should be specified in a SqlExpression. If more than one is specified, only the first (in that order) will be applied.",
          type = "string",
        },
        userId = {
          description = "A string that the account's local ID should match. Only one of `email`, `phone_number`, or `user_id` should be specified in a SqlExpression If more than one is specified, only the first (in that order) will be applied.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1UploadAccountRequest = {
      description = "Request message for UploadAccount.",
      id = "GoogleCloudIdentitytoolkitV1UploadAccountRequest",
      properties = {
        allowOverwrite = {
          description = "Whether to overwrite an existing account in Identity Platform with a matching `local_id` in the request. If true, the existing account will be overwritten. If false, an error will be returned.",
          type = "boolean",
        },
        argon2Parameters = {
          ["$ref"] = "GoogleCloudIdentitytoolkitV1Argon2Parameters",
          description = "The parameters for Argon2 hashing algorithm.",
        },
        blockSize = {
          description = "The block size parameter used by the STANDARD_SCRYPT hashing function. This parameter, along with parallelization and cpu_mem_cost help tune the resources needed to hash a password, and should be tuned as processor speeds and memory technologies advance.",
          format = "int32",
          type = "integer",
        },
        cpuMemCost = {
          description = "The CPU memory cost parameter to be used by the STANDARD_SCRYPT hashing function. This parameter, along with block_size and cpu_mem_cost help tune the resources needed to hash a password, and should be tuned as processor speeds and memory technologies advance.",
          format = "int32",
          type = "integer",
        },
        delegatedProjectNumber = {
          format = "int64",
          type = "string",
        },
        dkLen = {
          description = "The desired key length for the STANDARD_SCRYPT hashing function. Must be at least 1.",
          format = "int32",
          type = "integer",
        },
        hashAlgorithm = {
          description = "Required. The hashing function used to hash the account passwords. Must be one of the following: * HMAC_SHA256 * HMAC_SHA1 * HMAC_MD5 * SCRYPT * PBKDF_SHA1 * MD5 * HMAC_SHA512 * SHA1 * BCRYPT * PBKDF2_SHA256 * SHA256 * SHA512 * STANDARD_SCRYPT * ARGON2",
          type = "string",
        },
        memoryCost = {
          description = "Memory cost for hash calculation. Only required when the hashing function is SCRYPT.",
          format = "int32",
          type = "integer",
        },
        parallelization = {
          description = "The parallelization cost parameter to be used by the STANDARD_SCRYPT hashing function. This parameter, along with block_size and cpu_mem_cost help tune the resources needed to hash a password, and should be tuned as processor speeds and memory technologies advance.",
          format = "int32",
          type = "integer",
        },
        passwordHashOrder = {
          description = "Password and salt order when verify password.",
          enum = {
            "UNSPECIFIED_ORDER",
            "SALT_AND_PASSWORD",
            "PASSWORD_AND_SALT",
          },
          enumDescriptions = {
            "The order is not specified.",
            "The order is salt first, and then password.",
            "The order is password first, and then salt.",
          },
          type = "string",
        },
        rounds = {
          description = "The number of rounds used for hash calculation. Only required for the following hashing functions: * MD5 * SHA1 * SHA256 * SHA512 * PBKDF_SHA1 * PBKDF2_SHA256 * SCRYPT",
          format = "int32",
          type = "integer",
        },
        saltSeparator = {
          description = "One or more bytes to be inserted between the salt and plain text password. For stronger security, this should be a single non-printable character.",
          format = "byte",
          type = "string",
        },
        sanityCheck = {
          description = "If true, the service will do the following list of checks before an account is uploaded: * Duplicate emails * Duplicate federated IDs * Federated ID provider validation If the duplication exists within the list of accounts to be uploaded, it will prevent the entire list from being uploaded. If the email or federated ID is a duplicate of a user already within the project/tenant, the account will not be uploaded, but the rest of the accounts will be unaffected. If false, these checks will be skipped.",
          type = "boolean",
        },
        signerKey = {
          description = "The signer key used to hash the password. Required for the following hashing functions: * SCRYPT, * HMAC_MD5, * HMAC_SHA1, * HMAC_SHA256, * HMAC_SHA512",
          format = "byte",
          type = "string",
        },
        tenantId = {
          description = "The ID of the Identity Platform tenant the account belongs to.",
          type = "string",
        },
        users = {
          description = "A list of accounts to upload. `local_id` is required for each user; everything else is optional.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1UserInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1UploadAccountResponse = {
      description = "Response message for UploadAccount.",
      id = "GoogleCloudIdentitytoolkitV1UploadAccountResponse",
      properties = {
        error = {
          description = "Detailed error info for accounts that cannot be uploaded.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1ErrorInfo",
          },
          type = "array",
        },
        kind = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1UserInfo = {
      description = "An Identity Platform account's information.",
      id = "GoogleCloudIdentitytoolkitV1UserInfo",
      properties = {
        createdAt = {
          description = "The time, in milliseconds from epoch, when the account was created.",
          format = "int64",
          type = "string",
        },
        customAttributes = {
          description = "Custom claims to be added to any ID tokens minted for the account. Should be at most 1,000 characters in length and in valid JSON format.",
          type = "string",
        },
        customAuth = {
          description = "Output only. Whether this account has been authenticated using SignInWithCustomToken.",
          readOnly = true,
          type = "boolean",
        },
        dateOfBirth = {
          description = "Output only. The date of birth set for the account. This account attribute is not used by Identity Platform. It is available for informational purposes only.",
          readOnly = true,
          type = "string",
        },
        disabled = {
          description = "Whether the account is disabled. Disabled accounts are inaccessible except for requests bearing a Google OAuth2 credential with proper permissions.",
          type = "boolean",
        },
        displayName = {
          description = "The display name of the account. This account attribute is not used by Identity Platform. It is available for informational purposes only.",
          type = "string",
        },
        email = {
          description = "The account's email address. The length of the email should be less than 256 characters and in the format of `name@domain.tld`. The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec.",
          type = "string",
        },
        emailLinkSignin = {
          description = "Output only. Whether the account can authenticate with email link.",
          readOnly = true,
          type = "boolean",
        },
        emailVerified = {
          description = "Whether the account's email address has been verified.",
          type = "boolean",
        },
        initialEmail = {
          description = "The first email address associated with this account. The account's initial email cannot be changed once set and is used to recover access to this account if lost via the RECOVER_EMAIL flow in GetOobCode. Should match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec.",
          type = "string",
        },
        language = {
          description = "Output only. The language preference of the account. This account attribute is not used by Identity Platform. It is available for informational purposes only.",
          readOnly = true,
          type = "string",
        },
        lastLoginAt = {
          description = "The last time, in milliseconds from epoch, this account was logged into.",
          format = "int64",
          type = "string",
        },
        lastRefreshAt = {
          description = "Timestamp when an ID token was last minted for this account.",
          format = "google-datetime",
          type = "string",
        },
        localId = {
          description = "Immutable. The unique ID of the account.",
          type = "string",
        },
        mfaInfo = {
          description = "Information on which multi-factor authentication providers are enabled for this account.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1MfaEnrollment",
          },
          type = "array",
        },
        passwordHash = {
          description = "The account's hashed password. Only accessible by requests bearing a Google OAuth2 credential with proper [permissions](https://cloud.google.com/identity-platform/docs/access-control).",
          format = "byte",
          type = "string",
        },
        passwordUpdatedAt = {
          description = "The timestamp, in milliseconds from the epoch of 1970-01-01T00:00:00Z, when the account's password was last updated.",
          format = "double",
          type = "number",
        },
        phoneNumber = {
          description = "The account's phone number.",
          type = "string",
        },
        photoUrl = {
          description = "The URL of the account's profile photo. This account attribute is not used by Identity Platform. It is available for informational purposes only.",
          type = "string",
        },
        providerUserInfo = {
          description = "Information about the user as provided by various Identity Providers.",
          items = {
            ["$ref"] = "GoogleCloudIdentitytoolkitV1ProviderUserInfo",
          },
          type = "array",
        },
        rawPassword = {
          description = "Input only. Plain text password used to update a account's password. This field is only ever used as input in a request. Identity Platform uses cryptographically secure hashing when managing passwords and will never store or transmit a user's password in plain text.",
          type = "string",
        },
        salt = {
          description = "The account's password salt. Only accessible by requests bearing a Google OAuth2 credential with proper permissions.",
          format = "byte",
          type = "string",
        },
        screenName = {
          description = "Output only. This account's screen name at Twitter or login name at GitHub.",
          readOnly = true,
          type = "string",
        },
        tenantId = {
          description = "ID of the tenant this account belongs to. Only set if this account belongs to a tenant.",
          type = "string",
        },
        timeZone = {
          description = "Output only. The time zone preference of the account. This account attribute is not used by Identity Platform. It is available for informational purposes only.",
          readOnly = true,
          type = "string",
        },
        validSince = {
          description = "Oldest timestamp, in seconds since epoch, that an ID token should be considered valid. All ID tokens issued before this time are considered invalid.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "The version of the account's password. Only accessible by requests bearing a Google OAuth2 credential with proper permissions.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1VerifyIosClientRequest = {
      description = "Request message for VerifyIosClient",
      id = "GoogleCloudIdentitytoolkitV1VerifyIosClientRequest",
      properties = {
        appToken = {
          description = "A device token that the iOS client gets after registering to APNs (Apple Push Notification service).",
          type = "string",
        },
        isSandbox = {
          description = "Whether the app token is in the iOS sandbox. If false, the app token is in the production environment.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudIdentitytoolkitV1VerifyIosClientResponse = {
      description = "Response message for VerifyIosClient.",
      id = "GoogleCloudIdentitytoolkitV1VerifyIosClientResponse",
      properties = {
        receipt = {
          description = "Receipt of successful app token validation.",
          type = "string",
        },
        suggestedTimeout = {
          description = "Suggested time that the client should wait in seconds for delivery of the push notification.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Identity Toolkit API",
  version = "v1",
  version_module = true,
}
