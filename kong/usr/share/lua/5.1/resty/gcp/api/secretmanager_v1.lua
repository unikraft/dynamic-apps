return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://secretmanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Secret Manager",
  description = "Stores sensitive data such as API keys, passwords, and certificates. Provides convenience while improving security. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/secret-manager/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "secretmanager:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://secretmanager.mtls.googleapis.com/",
  name = "secretmanager",
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
    projects = {
      resources = {
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "secretmanager.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "secretmanager.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        secrets = {
          methods = {
            addVersion = {
              description = "Creates a new SecretVersion containing secret data and attaches it to an existing Secret.",
              flatPath = "v1/projects/{projectsId}/secrets/{secretsId}:addVersion",
              httpMethod = "POST",
              id = "secretmanager.projects.secrets.addVersion",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the Secret to associate with the SecretVersion in the format `projects/*/secrets/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/secrets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:addVersion",
              request = {
                ["$ref"] = "AddSecretVersionRequest",
              },
              response = {
                ["$ref"] = "SecretVersion",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a new Secret containing no SecretVersions.",
              flatPath = "v1/projects/{projectsId}/secrets",
              httpMethod = "POST",
              id = "secretmanager.projects.secrets.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the project to associate with the Secret, in the format `projects/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                secretId = {
                  description = "Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/secrets",
              request = {
                ["$ref"] = "Secret",
              },
              response = {
                ["$ref"] = "Secret",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a Secret.",
              flatPath = "v1/projects/{projectsId}/secrets/{secretsId}",
              httpMethod = "DELETE",
              id = "secretmanager.projects.secrets.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                etag = {
                  description = "Optional. Etag of the Secret. The request succeeds if it matches the etag of the currently stored secret object. If the etag is omitted, the request succeeds.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The resource name of the Secret to delete in the format `projects/*/secrets/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/secrets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets metadata for a given Secret.",
              flatPath = "v1/projects/{projectsId}/secrets/{secretsId}",
              httpMethod = "GET",
              id = "secretmanager.projects.secrets.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the Secret, in the format `projects/*/secrets/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/secrets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Secret",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/secrets/{secretsId}:getIamPolicy",
              httpMethod = "GET",
              id = "secretmanager.projects.secrets.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                ["options.requestedPolicyVersion"] = {
                  description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                resource = {
                  description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/secrets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:getIamPolicy",
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists Secrets.",
              flatPath = "v1/projects/{projectsId}/secrets",
              httpMethod = "GET",
              id = "secretmanager.projects.secrets.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all secrets are listed.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number of results to return. If the number is greater than 25000, it is capped at 25000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. Pagination token, returned earlier via ListSecretsResponse.next_page_token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the project associated with the Secrets, in the format `projects/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/secrets",
              response = {
                ["$ref"] = "ListSecretsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates metadata of an existing Secret.",
              flatPath = "v1/projects/{projectsId}/secrets/{secretsId}",
              httpMethod = "PATCH",
              id = "secretmanager.projects.secrets.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. The resource name of the Secret in the format `projects/*/secrets/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/secrets/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Specifies the fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Secret",
              },
              response = {
                ["$ref"] = "Secret",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified secret. Replaces any existing policy. Permissions on SecretVersions are enforced according to the policy set on the associated Secret.",
              flatPath = "v1/projects/{projectsId}/secrets/{secretsId}:setIamPolicy",
              httpMethod = "POST",
              id = "secretmanager.projects.secrets.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/secrets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has for the specified secret. If the secret does not exist, this call returns an empty set of permissions, not a NOT_FOUND error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
              flatPath = "v1/projects/{projectsId}/secrets/{secretsId}:testIamPermissions",
              httpMethod = "POST",
              id = "secretmanager.projects.secrets.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/secrets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "TestIamPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            versions = {
              methods = {
                access = {
                  description = "Accesses a SecretVersion. This call returns the secret data. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.",
                  flatPath = "v1/projects/{projectsId}/secrets/{secretsId}/versions/{versionsId}:access",
                  httpMethod = "GET",
                  id = "secretmanager.projects.secrets.versions.access",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*`. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.",
                      location = "path",
                      pattern = "^projects/[^/]+/secrets/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:access",
                  response = {
                    ["$ref"] = "AccessSecretVersionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                destroy = {
                  description = "Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destroys the secret data.",
                  flatPath = "v1/projects/{projectsId}/secrets/{secretsId}/versions/{versionsId}:destroy",
                  httpMethod = "POST",
                  id = "secretmanager.projects.secrets.versions.destroy",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the SecretVersion to destroy in the format `projects/*/secrets/*/versions/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/secrets/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:destroy",
                  request = {
                    ["$ref"] = "DestroySecretVersionRequest",
                  },
                  response = {
                    ["$ref"] = "SecretVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                disable = {
                  description = "Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED.",
                  flatPath = "v1/projects/{projectsId}/secrets/{secretsId}/versions/{versionsId}:disable",
                  httpMethod = "POST",
                  id = "secretmanager.projects.secrets.versions.disable",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the SecretVersion to disable in the format `projects/*/secrets/*/versions/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/secrets/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:disable",
                  request = {
                    ["$ref"] = "DisableSecretVersionRequest",
                  },
                  response = {
                    ["$ref"] = "SecretVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                enable = {
                  description = "Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.",
                  flatPath = "v1/projects/{projectsId}/secrets/{secretsId}/versions/{versionsId}:enable",
                  httpMethod = "POST",
                  id = "secretmanager.projects.secrets.versions.enable",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the SecretVersion to enable in the format `projects/*/secrets/*/versions/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/secrets/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:enable",
                  request = {
                    ["$ref"] = "EnableSecretVersionRequest",
                  },
                  response = {
                    ["$ref"] = "SecretVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets metadata for a SecretVersion. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.",
                  flatPath = "v1/projects/{projectsId}/secrets/{secretsId}/versions/{versionsId}",
                  httpMethod = "GET",
                  id = "secretmanager.projects.secrets.versions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*`. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.",
                      location = "path",
                      pattern = "^projects/[^/]+/secrets/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "SecretVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists SecretVersions. This call does not return secret data.",
                  flatPath = "v1/projects/{projectsId}/secrets/{secretsId}/versions",
                  httpMethod = "GET",
                  id = "secretmanager.projects.secrets.versions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secret versions matching the filter. If filter is empty, all secret versions are listed.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number of results to return. If the number is greater than 25000, it is capped at 25000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Pagination token, returned earlier via ListSecretVersionsResponse.next_page_token][].",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the Secret associated with the SecretVersions to list, in the format `projects/*/secrets/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/secrets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/versions",
                  response = {
                    ["$ref"] = "ListSecretVersionsResponse",
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
  },
  revision = "20221210",
  rootUrl = "https://secretmanager.googleapis.com/",
  schemas = {
    AccessSecretVersionResponse = {
      description = "Response message for SecretManagerService.AccessSecretVersion.",
      id = "AccessSecretVersionResponse",
      properties = {
        name = {
          description = "The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*`.",
          type = "string",
        },
        payload = {
          ["$ref"] = "SecretPayload",
          description = "Secret payload",
        },
      },
      type = "object",
    },
    AddSecretVersionRequest = {
      description = "Request message for SecretManagerService.AddSecretVersion.",
      id = "AddSecretVersionRequest",
      properties = {
        payload = {
          ["$ref"] = "SecretPayload",
          description = "Required. The secret payload of the SecretVersion.",
        },
      },
      type = "object",
    },
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "AuditLogConfig",
          },
          type = "array",
        },
        service = {
          description = "Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.",
          type = "string",
        },
      },
      type = "object",
    },
    AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "AuditLogConfig",
      properties = {
        exemptedMembers = {
          description = "Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logType = {
          description = "The log type that this config enables.",
          enum = {
            "LOG_TYPE_UNSPECIFIED",
            "ADMIN_READ",
            "DATA_WRITE",
            "DATA_READ",
          },
          enumDescriptions = {
            "Default case. Should never be this.",
            "Admin reads. Example: CloudIAM getIamPolicy",
            "Data writes. Example: CloudSQL Users create",
            "Data reads. Example: CloudSQL Users list",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Automatic = {
      description = "A replication policy that replicates the Secret payload without any restrictions.",
      id = "Automatic",
      properties = {
        customerManagedEncryption = {
          ["$ref"] = "CustomerManagedEncryption",
          description = "Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.",
        },
      },
      type = "object",
    },
    AutomaticStatus = {
      description = "The replication status of a SecretVersion using automatic replication. Only populated if the parent Secret has an automatic replication policy.",
      id = "AutomaticStatus",
      properties = {
        customerManagedEncryption = {
          ["$ref"] = "CustomerManagedEncryptionStatus",
          description = "Output only. The customer-managed encryption status of the SecretVersion. Only populated if customer-managed encryption is used.",
          readOnly = true,
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
          description = "The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:{emailid}`: An email address that represents a specific Google account. For example, `alice@example.com` . * `serviceAccount:{emailid}`: An email address that represents a Google service account. For example, `my-other-app@appspot.gserviceaccount.com`. * `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An identifier for a [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:{emailid}`: An email address that represents a Google group. For example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:{emailid}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:{emailid}` and the undeleted service account retains the role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:{emailid}` and the recovered group retains the role in the binding. * `domain:{domain}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. ",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomerManagedEncryption = {
      description = "Configuration for encrypting secret payloads using customer-managed encryption keys (CMEK).",
      id = "CustomerManagedEncryption",
      properties = {
        kmsKeyName = {
          description = "Required. The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads. For secrets using the UserManaged replication policy type, Cloud KMS CryptoKeys must reside in the same location as the replica location. For secrets using the Automatic replication policy type, Cloud KMS CryptoKeys must reside in `global`. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomerManagedEncryptionStatus = {
      description = "Describes the status of customer-managed encryption.",
      id = "CustomerManagedEncryptionStatus",
      properties = {
        kmsKeyVersionName = {
          description = "Required. The resource name of the Cloud KMS CryptoKeyVersion used to encrypt the secret payload, in the following format: `projects/*/locations/*/keyRings/*/cryptoKeys/*/versions/*`.",
          type = "string",
        },
      },
      type = "object",
    },
    DestroySecretVersionRequest = {
      description = "Request message for SecretManagerService.DestroySecretVersion.",
      id = "DestroySecretVersionRequest",
      properties = {
        etag = {
          description = "Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently stored secret version object. If the etag is omitted, the request succeeds.",
          type = "string",
        },
      },
      type = "object",
    },
    DisableSecretVersionRequest = {
      description = "Request message for SecretManagerService.DisableSecretVersion.",
      id = "DisableSecretVersionRequest",
      properties = {
        etag = {
          description = "Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently stored secret version object. If the etag is omitted, the request succeeds.",
          type = "string",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EnableSecretVersionRequest = {
      description = "Request message for SecretManagerService.EnableSecretVersion.",
      id = "EnableSecretVersionRequest",
      properties = {
        etag = {
          description = "Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently stored secret version object. If the etag is omitted, the request succeeds.",
          type = "string",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "Expr",
      properties = {
        description = {
          description = "Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax.",
          type = "string",
        },
        location = {
          description = "Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
      },
      type = "object",
    },
    ListSecretVersionsResponse = {
      description = "Response message for SecretManagerService.ListSecretVersions.",
      id = "ListSecretVersionsResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass this value in ListSecretVersionsRequest.page_token to retrieve the next page.",
          type = "string",
        },
        totalSize = {
          description = "The total number of SecretVersions but 0 when the ListSecretsRequest.filter field is set.",
          format = "int32",
          type = "integer",
        },
        versions = {
          description = "The list of SecretVersions sorted in reverse by create_time (newest first).",
          items = {
            ["$ref"] = "SecretVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSecretsResponse = {
      description = "Response message for SecretManagerService.ListSecrets.",
      id = "ListSecretsResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass this value in ListSecretsRequest.page_token to retrieve the next page.",
          type = "string",
        },
        secrets = {
          description = "The list of Secrets sorted in reverse by create_time (newest first).",
          items = {
            ["$ref"] = "Secret",
          },
          type = "array",
        },
        totalSize = {
          description = "The total number of Secrets but 0 when the ListSecretsRequest.filter field is set.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Location = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "Location",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: `\"us-east1\"`.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata. For example the available capacity at the given location.",
          type = "object",
        },
        name = {
          description = "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`",
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Replica = {
      description = "Represents a Replica for this Secret.",
      id = "Replica",
      properties = {
        customerManagedEncryption = {
          ["$ref"] = "CustomerManagedEncryption",
          description = "Optional. The customer-managed encryption configuration of the User-Managed Replica. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.",
        },
        location = {
          description = "The canonical IDs of the location to replicate data. For example: `\"us-east1\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplicaStatus = {
      description = "Describes the status of a user-managed replica for the SecretVersion.",
      id = "ReplicaStatus",
      properties = {
        customerManagedEncryption = {
          ["$ref"] = "CustomerManagedEncryptionStatus",
          description = "Output only. The customer-managed encryption status of the SecretVersion. Only populated if customer-managed encryption is used.",
          readOnly = true,
        },
        location = {
          description = "Output only. The canonical ID of the replica location. For example: `\"us-east1\"`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Replication = {
      description = "A policy that defines the replication and encryption configuration of data.",
      id = "Replication",
      properties = {
        automatic = {
          ["$ref"] = "Automatic",
          description = "The Secret will automatically be replicated without any restrictions.",
        },
        userManaged = {
          ["$ref"] = "UserManaged",
          description = "The Secret will only be replicated into the locations specified.",
        },
      },
      type = "object",
    },
    ReplicationStatus = {
      description = "The replication status of a SecretVersion.",
      id = "ReplicationStatus",
      properties = {
        automatic = {
          ["$ref"] = "AutomaticStatus",
          description = "Describes the replication status of a SecretVersion with automatic replication. Only populated if the parent Secret has an automatic replication policy.",
        },
        userManaged = {
          ["$ref"] = "UserManagedStatus",
          description = "Describes the replication status of a SecretVersion with user-managed replication. Only populated if the parent Secret has a user-managed replication policy.",
        },
      },
      type = "object",
    },
    Rotation = {
      description = "The rotation time and period for a Secret. At next_rotation_time, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. Secret.topics must be set to configure rotation.",
      id = "Rotation",
      properties = {
        nextRotationTime = {
          description = "Optional. Timestamp in UTC at which the Secret is scheduled to rotate. Cannot be set to less than 300s (5 min) in the future and at most 3153600000s (100 years). next_rotation_time MUST be set if rotation_period is set.",
          format = "google-datetime",
          type = "string",
        },
        rotationPeriod = {
          description = "Input only. The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years). If rotation_period is set, next_rotation_time must be set. next_rotation_time will be advanced by this period when the service automatically sends rotation notifications.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Secret = {
      description = "A Secret is a logical secret whose value and versions can be accessed. A Secret is made up of zero or more SecretVersions that represent the secret data.",
      id = "Secret",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.",
          type = "object",
        },
        createTime = {
          description = "Output only. The time at which the Secret was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Optional. Etag of the currently stored Secret.",
          type = "string",
        },
        expireTime = {
          description = "Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\\p{Ll}\\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name of the Secret in the format `projects/*/secrets/*`.",
          readOnly = true,
          type = "string",
        },
        replication = {
          ["$ref"] = "Replication",
          description = "Required. Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.",
        },
        rotation = {
          ["$ref"] = "Rotation",
          description = "Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.",
        },
        topics = {
          description = "Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.",
          items = {
            ["$ref"] = "Topic",
          },
          type = "array",
        },
        ttl = {
          description = "Input only. The TTL for the Secret.",
          format = "google-duration",
          type = "string",
        },
        versionAliases = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.",
          type = "object",
        },
      },
      type = "object",
    },
    SecretPayload = {
      description = "A secret payload resource in the Secret Manager API. This contains the sensitive secret payload that is associated with a SecretVersion.",
      id = "SecretPayload",
      properties = {
        data = {
          description = "The secret data. Must be no larger than 64KiB.",
          format = "byte",
          type = "string",
        },
        dataCrc32c = {
          description = "Optional. If specified, SecretManagerService will verify the integrity of the received data on SecretManagerService.AddSecretVersion calls using the crc32c checksum and store it to include in future SecretManagerService.AccessSecretVersion responses. If a checksum is not provided in the SecretManagerService.AddSecretVersion request, the SecretManagerService will generate and store one for you. The CRC32C value is encoded as a Int64 for compatibility, and can be safely downconverted to uint32 in languages that support this type. https://cloud.google.com/apis/design/design_patterns#integer_types",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SecretVersion = {
      description = "A secret version resource in the Secret Manager API.",
      id = "SecretVersion",
      properties = {
        clientSpecifiedPayloadChecksum = {
          description = "Output only. True if payload checksum specified in SecretPayload object has been received by SecretManagerService on SecretManagerService.AddSecretVersion.",
          readOnly = true,
          type = "boolean",
        },
        createTime = {
          description = "Output only. The time at which the SecretVersion was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        destroyTime = {
          description = "Output only. The time this SecretVersion was destroyed. Only present if state is DESTROYED.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. Etag of the currently stored SecretVersion.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*`. SecretVersion IDs in a Secret start at 1 and are incremented for each subsequent version of the secret.",
          readOnly = true,
          type = "string",
        },
        replicationStatus = {
          ["$ref"] = "ReplicationStatus",
          description = "The replication status of the SecretVersion.",
        },
        state = {
          description = "Output only. The current state of the SecretVersion.",
          enum = {
            "STATE_UNSPECIFIED",
            "ENABLED",
            "DISABLED",
            "DESTROYED",
          },
          enumDescriptions = {
            "Not specified. This value is unused and invalid.",
            "The SecretVersion may be accessed.",
            "The SecretVersion may not be accessed, but the secret data is still available and can be placed back into the ENABLED state.",
            "The SecretVersion is destroyed and the secret data is no longer stored. A version may not leave this state once entered.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of `TestPermissionsRequest.permissions` that the caller is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Topic = {
      description = "A Pub/Sub topic which Secret Manager will publish to when control plane events occur on this secret.",
      id = "Topic",
      properties = {
        name = {
          description = "Required. The resource name of the Pub/Sub topic that will be published to, in the following format: `projects/*/topics/*`. For publication to succeed, the Secret Manager P4SA must have `pubsub.publisher` permissions on the topic.",
          type = "string",
        },
      },
      type = "object",
    },
    UserManaged = {
      description = "A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas",
      id = "UserManaged",
      properties = {
        replicas = {
          description = "Required. The list of Replicas for this Secret. Cannot be empty.",
          items = {
            ["$ref"] = "Replica",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UserManagedStatus = {
      description = "The replication status of a SecretVersion using user-managed replication. Only populated if the parent Secret has a user-managed replication policy.",
      id = "UserManagedStatus",
      properties = {
        replicas = {
          description = "Output only. The list of replica statuses for the SecretVersion.",
          items = {
            ["$ref"] = "ReplicaStatus",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Secret Manager API",
  version = "v1",
  version_module = true,
}
