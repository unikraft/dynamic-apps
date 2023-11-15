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
  baseUrl = "https://apigeeregistry.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Apigee Registry",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/apigee/docs/api-hub/what-is-api-hub",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "apigeeregistry:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://apigeeregistry.mtls.googleapis.com/",
  name = "apigeeregistry",
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
              id = "apigeeregistry.projects.locations.get",
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
              id = "apigeeregistry.projects.locations.list",
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
          resources = {
            apis = {
              methods = {
                create = {
                  description = "Creates a specified API.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.apis.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    apiId = {
                      description = "Required. The ID to use for the API, which will become the final component of the API's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of APIs. Format: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apis",
                  request = {
                    ["$ref"] = "Api",
                  },
                  response = {
                    ["$ref"] = "Api",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Removes a specified API and all of the resources that it owns.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}",
                  httpMethod = "DELETE",
                  id = "apigeeregistry.projects.locations.apis.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no child resources.)",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the API to delete. Format: `projects/*/locations/*/apis/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
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
                  description = "Returns a specified API.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.apis.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the API to retrieve. Format: `projects/*/locations/*/apis/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Api",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.apis.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
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
                  description = "Returns matching APIs.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.apis.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of APIs to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListApis` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListApis` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of APIs. Format: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apis",
                  response = {
                    ["$ref"] = "ListApisResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Used to modify a specified API.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}",
                  httpMethod = "PATCH",
                  id = "apigeeregistry.projects.locations.apis.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "If set to true, and the API is not found, a new API will be created. In this situation, `update_mask` is ignored.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set to default values are ignored). If an asterisk \"*\" is specified, all fields are updated, including fields that are unspecified/default in the request.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Api",
                  },
                  response = {
                    ["$ref"] = "Api",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.apis.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.apis.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
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
                artifacts = {
                  methods = {
                    create = {
                      description = "Creates a specified artifact.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.artifacts.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        artifactId = {
                          description = "Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/artifacts",
                      request = {
                        ["$ref"] = "Artifact",
                      },
                      response = {
                        ["$ref"] = "Artifact",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Removes a specified artifact.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts/{artifactsId}",
                      httpMethod = "DELETE",
                      id = "apigeeregistry.projects.locations.apis.artifacts.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the artifact to delete. Format: `{parent}/artifacts/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/artifacts/[^/]+$",
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
                      description = "Returns a specified artifact.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts/{artifactsId}",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.artifacts.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/artifacts/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Artifact",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getContents = {
                      description = "Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts/{artifactsId}:getContents",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.artifacts.getContents",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/artifacts/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:getContents",
                      response = {
                        ["$ref"] = "HttpBody",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts/{artifactsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.artifacts.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/artifacts/[^/]+$",
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
                      description = "Returns matching artifacts.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.artifacts.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields except contents.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListArtifacts` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/artifacts",
                      response = {
                        ["$ref"] = "ListArtifactsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    replaceArtifact = {
                      description = "Used to replace a specified artifact.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts/{artifactsId}",
                      httpMethod = "PUT",
                      id = "apigeeregistry.projects.locations.apis.artifacts.replaceArtifact",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Resource name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/artifacts/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Artifact",
                      },
                      response = {
                        ["$ref"] = "Artifact",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts/{artifactsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.artifacts.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/artifacts/[^/]+$",
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
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/artifacts/{artifactsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.artifacts.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/artifacts/[^/]+$",
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
                },
                deployments = {
                  methods = {
                    create = {
                      description = "Creates a specified deployment.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.deployments.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        apiDeploymentId = {
                          description = "Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of deployments. Format: `projects/*/locations/*/apis/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/deployments",
                      request = {
                        ["$ref"] = "ApiDeployment",
                      },
                      response = {
                        ["$ref"] = "ApiDeployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Removes a specified deployment, all revisions, and all child resources (e.g., artifacts).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}",
                      httpMethod = "DELETE",
                      id = "apigeeregistry.projects.locations.apis.deployments.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        force = {
                          description = "If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no child resources.)",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. The name of the deployment to delete. Format: `projects/*/locations/*/apis/*/deployments/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
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
                    deleteRevision = {
                      description = "Deletes a revision of a deployment.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}:deleteRevision",
                      httpMethod = "DELETE",
                      id = "apigeeregistry.projects.locations.apis.deployments.deleteRevision",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the deployment revision to be deleted, with a revision ID explicitly included. Example: `projects/sample/locations/global/apis/petstore/deployments/prod@c7cfa2a8`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:deleteRevision",
                      response = {
                        ["$ref"] = "ApiDeployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns a specified deployment.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.deployments.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the deployment to retrieve. Format: `projects/*/locations/*/apis/*/deployments/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ApiDeployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.deployments.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
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
                      description = "Returns matching deployments.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.deployments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of deployments to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListApiDeployments` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListApiDeployments` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of deployments. Format: `projects/*/locations/*/apis/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/deployments",
                      response = {
                        ["$ref"] = "ListApiDeploymentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    listRevisions = {
                      description = "Lists all revisions of a deployment. Revisions are returned in descending order of revision creation time.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}:listRevisions",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.deployments.listRevisions",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the deployment to list revisions for.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of revisions to return per page.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The page token, received from a previous ListApiDeploymentRevisions call. Provide this to retrieve the subsequent page.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:listRevisions",
                      response = {
                        ["$ref"] = "ListApiDeploymentRevisionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Used to modify a specified deployment.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}",
                      httpMethod = "PATCH",
                      id = "apigeeregistry.projects.locations.apis.deployments.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        allowMissing = {
                          description = "If set to true, and the deployment is not found, a new deployment will be created. In this situation, `update_mask` is ignored.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Resource name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set to default values are ignored). If an asterisk \"*\" is specified, all fields are updated, including fields that are unspecified/default in the request.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "ApiDeployment",
                      },
                      response = {
                        ["$ref"] = "ApiDeployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    rollback = {
                      description = "Sets the current revision to a specified prior revision. Note that this creates a new revision with a new revision ID.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}:rollback",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.deployments.rollback",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The deployment being rolled back.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:rollback",
                      request = {
                        ["$ref"] = "RollbackApiDeploymentRequest",
                      },
                      response = {
                        ["$ref"] = "ApiDeployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.deployments.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
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
                    tagRevision = {
                      description = "Adds a tag to a specified revision of a deployment.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}:tagRevision",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.deployments.tagRevision",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the deployment to be tagged, including the revision ID.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:tagRevision",
                      request = {
                        ["$ref"] = "TagApiDeploymentRevisionRequest",
                      },
                      response = {
                        ["$ref"] = "ApiDeployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.deployments.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
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
                    artifacts = {
                      methods = {
                        create = {
                          description = "Creates a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}/artifacts",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.deployments.artifacts.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            artifactId = {
                              description = "Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/artifacts",
                          request = {
                            ["$ref"] = "Artifact",
                          },
                          response = {
                            ["$ref"] = "Artifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Removes a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}/artifacts/{artifactsId}",
                          httpMethod = "DELETE",
                          id = "apigeeregistry.projects.locations.apis.deployments.artifacts.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the artifact to delete. Format: `{parent}/artifacts/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+/artifacts/[^/]+$",
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
                          description = "Returns a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}/artifacts/{artifactsId}",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.deployments.artifacts.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+/artifacts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Artifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getContents = {
                          description = "Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}/artifacts/{artifactsId}:getContents",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.deployments.artifacts.getContents",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+/artifacts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:getContents",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Returns matching artifacts.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}/artifacts",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.deployments.artifacts.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields except contents.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListArtifacts` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/artifacts",
                          response = {
                            ["$ref"] = "ListArtifactsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        replaceArtifact = {
                          description = "Used to replace a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/deployments/{deploymentsId}/artifacts/{artifactsId}",
                          httpMethod = "PUT",
                          id = "apigeeregistry.projects.locations.apis.deployments.artifacts.replaceArtifact",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Resource name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/deployments/[^/]+/artifacts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "Artifact",
                          },
                          response = {
                            ["$ref"] = "Artifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                versions = {
                  methods = {
                    create = {
                      description = "Creates a specified version.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.versions.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        apiVersionId = {
                          description = "Required. The ID to use for the version, which will become the final component of the version's resource name. This value should be 1-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of versions. Format: `projects/*/locations/*/apis/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/versions",
                      request = {
                        ["$ref"] = "ApiVersion",
                      },
                      response = {
                        ["$ref"] = "ApiVersion",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Removes a specified version and all of the resources that it owns.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}",
                      httpMethod = "DELETE",
                      id = "apigeeregistry.projects.locations.apis.versions.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        force = {
                          description = "If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no child resources.)",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. The name of the version to delete. Format: `projects/*/locations/*/apis/*/versions/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
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
                      description = "Returns a specified version.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.versions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the version to retrieve. Format: `projects/*/locations/*/apis/*/versions/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ApiVersion",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.versions.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
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
                      description = "Returns matching versions.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions",
                      httpMethod = "GET",
                      id = "apigeeregistry.projects.locations.apis.versions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of versions to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListApiVersions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListApiVersions` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of versions. Format: `projects/*/locations/*/apis/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/versions",
                      response = {
                        ["$ref"] = "ListApiVersionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Used to modify a specified version.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}",
                      httpMethod = "PATCH",
                      id = "apigeeregistry.projects.locations.apis.versions.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        allowMissing = {
                          description = "If set to true, and the version is not found, a new version will be created. In this situation, `update_mask` is ignored.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Resource name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set to default values are ignored). If an asterisk \"*\" is specified, all fields are updated, including fields that are unspecified/default in the request.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "ApiVersion",
                      },
                      response = {
                        ["$ref"] = "ApiVersion",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.versions.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
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
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "apigeeregistry.projects.locations.apis.versions.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
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
                    artifacts = {
                      methods = {
                        create = {
                          description = "Creates a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            artifactId = {
                              description = "Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/artifacts",
                          request = {
                            ["$ref"] = "Artifact",
                          },
                          response = {
                            ["$ref"] = "Artifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Removes a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts/{artifactsId}",
                          httpMethod = "DELETE",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the artifact to delete. Format: `{parent}/artifacts/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/artifacts/[^/]+$",
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
                          description = "Returns a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts/{artifactsId}",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/artifacts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Artifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getContents = {
                          description = "Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts/{artifactsId}:getContents",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.getContents",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/artifacts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:getContents",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getIamPolicy = {
                          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts/{artifactsId}:getIamPolicy",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.getIamPolicy",
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
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/artifacts/[^/]+$",
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
                          description = "Returns matching artifacts.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields except contents.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListArtifacts` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/artifacts",
                          response = {
                            ["$ref"] = "ListArtifactsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        replaceArtifact = {
                          description = "Used to replace a specified artifact.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts/{artifactsId}",
                          httpMethod = "PUT",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.replaceArtifact",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Resource name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/artifacts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "Artifact",
                          },
                          response = {
                            ["$ref"] = "Artifact",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        setIamPolicy = {
                          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts/{artifactsId}:setIamPolicy",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.setIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/artifacts/[^/]+$",
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
                          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/artifacts/{artifactsId}:testIamPermissions",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.artifacts.testIamPermissions",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/artifacts/[^/]+$",
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
                    },
                    specs = {
                      methods = {
                        create = {
                          description = "Creates a specified spec.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            apiSpecId = {
                              description = "Required. The ID to use for the spec, which will become the final component of the spec's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of specs. Format: `projects/*/locations/*/apis/*/versions/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/specs",
                          request = {
                            ["$ref"] = "ApiSpec",
                          },
                          response = {
                            ["$ref"] = "ApiSpec",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Removes a specified spec, all revisions, and all child resources (e.g., artifacts).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}",
                          httpMethod = "DELETE",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            force = {
                              description = "If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no child resources.)",
                              location = "query",
                              type = "boolean",
                            },
                            name = {
                              description = "Required. The name of the spec to delete. Format: `projects/*/locations/*/apis/*/versions/*/specs/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
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
                        deleteRevision = {
                          description = "Deletes a revision of a spec.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:deleteRevision",
                          httpMethod = "DELETE",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.deleteRevision",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the spec revision to be deleted, with a revision ID explicitly included. Example: `projects/sample/locations/global/apis/petstore/versions/1.0.0/specs/openapi.yaml@c7cfa2a8`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:deleteRevision",
                          response = {
                            ["$ref"] = "ApiSpec",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Returns a specified spec.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the spec to retrieve. Format: `projects/*/locations/*/apis/*/versions/*/specs/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "ApiSpec",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getContents = {
                          description = "Returns the contents of a specified spec. If specs are stored with GZip compression, the default behavior is to return the spec uncompressed (the mime_type response field indicates the exact format returned).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:getContents",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.getContents",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the spec whose contents should be retrieved. Format: `projects/*/locations/*/apis/*/versions/*/specs/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:getContents",
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getIamPolicy = {
                          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:getIamPolicy",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.getIamPolicy",
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
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
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
                          description = "Returns matching specs.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields except contents.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of specs to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A page token, received from a previous `ListApiSpecs` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListApiSpecs` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of specs. Format: `projects/*/locations/*/apis/*/versions/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/specs",
                          response = {
                            ["$ref"] = "ListApiSpecsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        listRevisions = {
                          description = "Lists all revisions of a spec. Revisions are returned in descending order of revision creation time.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:listRevisions",
                          httpMethod = "GET",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.listRevisions",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the spec to list revisions for.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of revisions to return per page.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The page token, received from a previous ListApiSpecRevisions call. Provide this to retrieve the subsequent page.",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:listRevisions",
                          response = {
                            ["$ref"] = "ListApiSpecRevisionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Used to modify a specified spec.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}",
                          httpMethod = "PATCH",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            allowMissing = {
                              description = "If set to true, and the spec is not found, a new spec will be created. In this situation, `update_mask` is ignored.",
                              location = "query",
                              type = "boolean",
                            },
                            name = {
                              description = "Resource name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set to default values are ignored). If an asterisk \"*\" is specified, all fields are updated, including fields that are unspecified/default in the request.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "ApiSpec",
                          },
                          response = {
                            ["$ref"] = "ApiSpec",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        rollback = {
                          description = "Sets the current revision to a specified prior revision. Note that this creates a new revision with a new revision ID.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:rollback",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.rollback",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The spec being rolled back.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:rollback",
                          request = {
                            ["$ref"] = "RollbackApiSpecRequest",
                          },
                          response = {
                            ["$ref"] = "ApiSpec",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        setIamPolicy = {
                          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:setIamPolicy",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.setIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
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
                        tagRevision = {
                          description = "Adds a tag to a specified revision of a spec.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:tagRevision",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.tagRevision",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the spec to be tagged, including the revision ID.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:tagRevision",
                          request = {
                            ["$ref"] = "TagApiSpecRevisionRequest",
                          },
                          response = {
                            ["$ref"] = "ApiSpec",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        testIamPermissions = {
                          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}:testIamPermissions",
                          httpMethod = "POST",
                          id = "apigeeregistry.projects.locations.apis.versions.specs.testIamPermissions",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
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
                        artifacts = {
                          methods = {
                            create = {
                              description = "Creates a specified artifact.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts",
                              httpMethod = "POST",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.create",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                artifactId = {
                                  description = "Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                                  location = "query",
                                  type = "string",
                                },
                                parent = {
                                  description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/artifacts",
                              request = {
                                ["$ref"] = "Artifact",
                              },
                              response = {
                                ["$ref"] = "Artifact",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            delete = {
                              description = "Removes a specified artifact.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts/{artifactsId}",
                              httpMethod = "DELETE",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.delete",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The name of the artifact to delete. Format: `{parent}/artifacts/*`",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+/artifacts/[^/]+$",
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
                              description = "Returns a specified artifact.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts/{artifactsId}",
                              httpMethod = "GET",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.get",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*`",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+/artifacts/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}",
                              response = {
                                ["$ref"] = "Artifact",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            getContents = {
                              description = "Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts/{artifactsId}:getContents",
                              httpMethod = "GET",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.getContents",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*`",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+/artifacts/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}:getContents",
                              response = {
                                ["$ref"] = "HttpBody",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            getIamPolicy = {
                              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts/{artifactsId}:getIamPolicy",
                              httpMethod = "GET",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.getIamPolicy",
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
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+/artifacts/[^/]+$",
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
                              description = "Returns matching artifacts.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts",
                              httpMethod = "GET",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.list",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                filter = {
                                  description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields except contents.",
                                  location = "query",
                                  type = "string",
                                },
                                orderBy = {
                                  description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                                  location = "query",
                                  type = "string",
                                },
                                pageSize = {
                                  description = "The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                                  format = "int32",
                                  location = "query",
                                  type = "integer",
                                },
                                pageToken = {
                                  description = "A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListArtifacts` must match the call that provided the page token.",
                                  location = "query",
                                  type = "string",
                                },
                                parent = {
                                  description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/artifacts",
                              response = {
                                ["$ref"] = "ListArtifactsResponse",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            replaceArtifact = {
                              description = "Used to replace a specified artifact.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts/{artifactsId}",
                              httpMethod = "PUT",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.replaceArtifact",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Resource name.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+/artifacts/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}",
                              request = {
                                ["$ref"] = "Artifact",
                              },
                              response = {
                                ["$ref"] = "Artifact",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            setIamPolicy = {
                              description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts/{artifactsId}:setIamPolicy",
                              httpMethod = "POST",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.setIamPolicy",
                              parameterOrder = {
                                "resource",
                              },
                              parameters = {
                                resource = {
                                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+/artifacts/[^/]+$",
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
                              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/apis/{apisId}/versions/{versionsId}/specs/{specsId}/artifacts/{artifactsId}:testIamPermissions",
                              httpMethod = "POST",
                              id = "apigeeregistry.projects.locations.apis.versions.specs.artifacts.testIamPermissions",
                              parameterOrder = {
                                "resource",
                              },
                              parameters = {
                                resource = {
                                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/apis/[^/]+/versions/[^/]+/specs/[^/]+/artifacts/[^/]+$",
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
                        },
                      },
                    },
                  },
                },
              },
            },
            artifacts = {
              methods = {
                create = {
                  description = "Creates a specified artifact.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.artifacts.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    artifactId = {
                      description = "Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/artifacts",
                  request = {
                    ["$ref"] = "Artifact",
                  },
                  response = {
                    ["$ref"] = "Artifact",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Removes a specified artifact.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts/{artifactsId}",
                  httpMethod = "DELETE",
                  id = "apigeeregistry.projects.locations.artifacts.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the artifact to delete. Format: `{parent}/artifacts/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/artifacts/[^/]+$",
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
                  description = "Returns a specified artifact.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts/{artifactsId}",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.artifacts.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/artifacts/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Artifact",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getContents = {
                  description = "Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts/{artifactsId}:getContents",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.artifacts.getContents",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/artifacts/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:getContents",
                  response = {
                    ["$ref"] = "HttpBody",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts/{artifactsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.artifacts.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/artifacts/[^/]+$",
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
                  description = "Returns matching artifacts.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.artifacts.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all message fields except contents.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "A comma-separated list of fields, e.g. \"foo,bar\" Fields can be sorted in descending order using the \"desc\" identifier, e.g. \"foo desc,bar\"",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 values will be returned. The maximum is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListArtifacts` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of artifacts. Format: `{parent}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/artifacts",
                  response = {
                    ["$ref"] = "ListArtifactsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                replaceArtifact = {
                  description = "Used to replace a specified artifact.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts/{artifactsId}",
                  httpMethod = "PUT",
                  id = "apigeeregistry.projects.locations.artifacts.replaceArtifact",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/artifacts/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Artifact",
                  },
                  response = {
                    ["$ref"] = "Artifact",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts/{artifactsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.artifacts.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/artifacts/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/artifacts/{artifactsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.artifacts.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/artifacts/[^/]+$",
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
            },
            instances = {
              methods = {
                create = {
                  description = "Provisions instance resources for the Registry.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.instances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    instanceId = {
                      description = "Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource of the Instance, of the form: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
                  request = {
                    ["$ref"] = "Instance",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the Registry instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "DELETE",
                  id = "apigeeregistry.projects.locations.instances.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the Instance to delete. Format: `projects/*/locations/*/instances/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.instances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the Instance to retrieve. Format: `projects/*/locations/*/instances/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Instance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.instances.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.instances.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.instances.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "apigeeregistry.projects.locations.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
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
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            runtime = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtime:getIamPolicy",
                  httpMethod = "GET",
                  id = "apigeeregistry.projects.locations.runtime.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/runtime$",
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
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtime:setIamPolicy",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.runtime.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtime$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtime:testIamPermissions",
                  httpMethod = "POST",
                  id = "apigeeregistry.projects.locations.runtime.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtime$",
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
            },
          },
        },
      },
    },
  },
  revision = "20221026",
  rootUrl = "https://apigeeregistry.googleapis.com/",
  schemas = {
    Api = {
      description = "A top-level description of an API. Produced by producers and are commitments to provide services.",
      id = "Api",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.",
          type = "object",
        },
        availability = {
          description = "A user-definable description of the availability of this service. Format: free-form, but we expect single words that describe availability, e.g., \"NONE\", \"TESTING\", \"PREVIEW\", \"GENERAL\", \"DEPRECATED\", \"SHUTDOWN\".",
          type = "string",
        },
        createTime = {
          description = "Output only. Creation timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A detailed description.",
          type = "string",
        },
        displayName = {
          description = "Human-meaningful name.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores, and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.",
          type = "object",
        },
        name = {
          description = "Resource name.",
          type = "string",
        },
        recommendedDeployment = {
          description = "The recommended deployment of the API. Format: `projects/{project}/locations/{location}/apis/{api}/deployments/{deployment}`",
          type = "string",
        },
        recommendedVersion = {
          description = "The recommended version of the API. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}`",
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ApiDeployment = {
      description = "Describes a service running at particular address that provides a particular version of an API. ApiDeployments have revisions which correspond to different configurations of a single deployment in time. Revision identifiers should be updated whenever the served API spec or endpoint address changes.",
      id = "ApiDeployment",
      properties = {
        accessGuidance = {
          description = "Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.",
          type = "string",
        },
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.",
          type = "object",
        },
        apiSpecRevision = {
          description = "The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `apis/{api}/deployments/{deployment}`",
          type = "string",
        },
        createTime = {
          description = "Output only. Creation timestamp; when the deployment resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A detailed description.",
          type = "string",
        },
        displayName = {
          description = "Human-meaningful name.",
          type = "string",
        },
        endpointUri = {
          description = "The address where the deployment is serving. Changes to this value will update the revision.",
          type = "string",
        },
        externalChannelUri = {
          description = "The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.",
          type = "string",
        },
        intendedAudience = {
          description = "Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.",
          type = "object",
        },
        name = {
          description = "Resource name.",
          type = "string",
        },
        revisionCreateTime = {
          description = "Output only. Revision creation timestamp; when the represented revision was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. Immutable. The revision ID of the deployment. A new revision is committed whenever the deployment contents are changed. The format is an 8-character hexadecimal string.",
          readOnly = true,
          type = "string",
        },
        revisionUpdateTime = {
          description = "Output only. Last update timestamp: when the represented revision was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ApiSpec = {
      description = "Describes a version of an API in a structured way. ApiSpecs provide formal descriptions that consumers can use to use a version. ApiSpec resources are intended to be fully-resolved descriptions of an ApiVersion. When specs consist of multiple files, these should be bundled together (e.g., in a zip archive) and stored as a unit. Multiple specs can exist to provide representations in different API description formats. Synchronization of these representations would be provided by tooling and background services.",
      id = "ApiSpec",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.",
          type = "object",
        },
        contents = {
          description = "Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.",
          format = "byte",
          type = "string",
        },
        createTime = {
          description = "Output only. Creation timestamp; when the spec resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A detailed description.",
          type = "string",
        },
        filename = {
          description = "A possibly-hierarchical name used to refer to the spec from other specs.",
          type = "string",
        },
        hash = {
          description = "Output only. A SHA-256 hash of the spec's contents. If the spec is gzipped, this is the hash of the uncompressed spec.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.",
          type = "object",
        },
        mimeType = {
          description = "A style (format) descriptor for this spec that is specified as a Media Type (https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with \"+gzip\").",
          type = "string",
        },
        name = {
          description = "Resource name.",
          type = "string",
        },
        revisionCreateTime = {
          description = "Output only. Revision creation timestamp; when the represented revision was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. Immutable. The revision ID of the spec. A new revision is committed whenever the spec contents are changed. The format is an 8-character hexadecimal string.",
          readOnly = true,
          type = "string",
        },
        revisionUpdateTime = {
          description = "Output only. Last update timestamp: when the represented revision was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        sizeBytes = {
          description = "Output only. The size of the spec file in bytes. If the spec is gzipped, this is the size of the uncompressed spec.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        sourceUri = {
          description = "The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.",
          type = "string",
        },
      },
      type = "object",
    },
    ApiVersion = {
      description = "Describes a particular version of an API. ApiVersions are what consumers actually use.",
      id = "ApiVersion",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.",
          type = "object",
        },
        createTime = {
          description = "Output only. Creation timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A detailed description.",
          type = "string",
        },
        displayName = {
          description = "Human-meaningful name.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.",
          type = "object",
        },
        name = {
          description = "Resource name.",
          type = "string",
        },
        state = {
          description = "A user-definable description of the lifecycle phase of this API version. Format: free-form, but we expect single words that describe API maturity, e.g., \"CONCEPT\", \"DESIGN\", \"DEVELOPMENT\", \"STAGING\", \"PRODUCTION\", \"DEPRECATED\", \"RETIRED\".",
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Artifact = {
      description = "Artifacts of resources. Artifacts are unique (single-value) per resource and are used to store metadata that is too large or numerous to be stored directly on the resource. Since artifacts are stored separately from parent resources, they should generally be used for metadata that is needed infrequently, i.e., not for display in primary views of the resource but perhaps displayed or downloaded upon request. The `ListArtifacts` method allows artifacts to be quickly enumerated and checked for presence without downloading their (potentially-large) contents.",
      id = "Artifact",
      properties = {
        contents = {
          description = "Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.",
          format = "byte",
          type = "string",
        },
        createTime = {
          description = "Output only. Creation timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        hash = {
          description = "Output only. A SHA-256 hash of the artifact's contents. If the artifact is gzipped, this is the hash of the uncompressed artifact.",
          readOnly = true,
          type = "string",
        },
        mimeType = {
          description = "A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible \"schema\" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with \"+gzip\").",
          type = "string",
        },
        name = {
          description = "Resource name.",
          type = "string",
        },
        sizeBytes = {
          description = "Output only. The size of the artifact in bytes. If the artifact is gzipped, this is the size of the uncompressed artifact.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        updateTime = {
          description = "Output only. Last update timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
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
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    Config = {
      description = "Available configurations to provision an Instance.",
      id = "Config",
      properties = {
        cmekKeyName = {
          description = "Required. The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.",
          type = "string",
        },
        location = {
          description = "Output only. The GCP location where the Instance resides.",
          readOnly = true,
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
    HttpBody = {
      description = "Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.",
      id = "HttpBody",
      properties = {
        contentType = {
          description = "The HTTP Content-Type header value specifying the content type of the body.",
          type = "string",
        },
        data = {
          description = "The HTTP request/response body as raw binary.",
          format = "byte",
          type = "string",
        },
        extensions = {
          description = "Application specific response metadata. Must be set in the first response for streaming APIs.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Instance = {
      description = "An Instance represents the instance resources of the Registry. Currently, only one instance is allowed for each project.",
      id = "Instance",
      properties = {
        config = {
          ["$ref"] = "Config",
          description = "Required. Config of the Instance.",
        },
        createTime = {
          description = "Output only. Creation timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.",
          type = "string",
        },
        state = {
          description = "Output only. The current state of the Instance.",
          enum = {
            "STATE_UNSPECIFIED",
            "INACTIVE",
            "CREATING",
            "ACTIVE",
            "UPDATING",
            "DELETING",
            "FAILED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "The Instance has not been initialized or has been deleted.",
            "The Instance is being created.",
            "The Instance has been created and is ready for use.",
            "The Instance is being updated.",
            "The Instance is being deleted.",
            "The Instance encountered an error during a state change.",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. Extra information of Instance.State if the state is `FAILED`.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListApiDeploymentRevisionsResponse = {
      description = "Response message for ListApiDeploymentRevisionsResponse.",
      id = "ListApiDeploymentRevisionsResponse",
      properties = {
        apiDeployments = {
          description = "The revisions of the deployment.",
          items = {
            ["$ref"] = "ApiDeployment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListApiDeploymentsResponse = {
      description = "Response message for ListApiDeployments.",
      id = "ListApiDeploymentsResponse",
      properties = {
        apiDeployments = {
          description = "The deployments from the specified publisher.",
          items = {
            ["$ref"] = "ApiDeployment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListApiSpecRevisionsResponse = {
      description = "Response message for ListApiSpecRevisionsResponse.",
      id = "ListApiSpecRevisionsResponse",
      properties = {
        apiSpecs = {
          description = "The revisions of the spec.",
          items = {
            ["$ref"] = "ApiSpec",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListApiSpecsResponse = {
      description = "Response message for ListApiSpecs.",
      id = "ListApiSpecsResponse",
      properties = {
        apiSpecs = {
          description = "The specs from the specified publisher.",
          items = {
            ["$ref"] = "ApiSpec",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListApiVersionsResponse = {
      description = "Response message for ListApiVersions.",
      id = "ListApiVersionsResponse",
      properties = {
        apiVersions = {
          description = "The versions from the specified publisher.",
          items = {
            ["$ref"] = "ApiVersion",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListApisResponse = {
      description = "Response message for ListApis.",
      id = "ListApisResponse",
      properties = {
        apis = {
          description = "The APIs from the specified publisher.",
          items = {
            ["$ref"] = "Api",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListArtifactsResponse = {
      description = "Response message for ListArtifacts.",
      id = "ListArtifactsResponse",
      properties = {
        artifacts = {
          description = "The artifacts from the specified publisher.",
          items = {
            ["$ref"] = "Artifact",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
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
    ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
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
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.",
          type = "object",
        },
        name = {
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.",
          type = "object",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "API version used to start the operation.",
          type = "string",
        },
        cancellationRequested = {
          description = "Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          type = "boolean",
        },
        createTime = {
          description = "The time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time the operation finished running.",
          format = "google-datetime",
          type = "string",
        },
        statusMessage = {
          description = "Human-readable status of the operation, if any.",
          type = "string",
        },
        target = {
          description = "Server-defined resource path for the target of the operation.",
          type = "string",
        },
        verb = {
          description = "Name of the verb executed by the operation.",
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
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
    RollbackApiDeploymentRequest = {
      description = "Request message for RollbackApiDeployment.",
      id = "RollbackApiDeploymentRequest",
      properties = {
        revisionId = {
          description = "Required. The revision ID to roll back to. It must be a revision of the same deployment. Example: `c7cfa2a8`",
          type = "string",
        },
      },
      type = "object",
    },
    RollbackApiSpecRequest = {
      description = "Request message for RollbackApiSpec.",
      id = "RollbackApiSpecRequest",
      properties = {
        revisionId = {
          description = "Required. The revision ID to roll back to. It must be a revision of the same spec. Example: `c7cfa2a8`",
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
      },
      type = "object",
    },
    Status = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "Status",
      properties = {
        code = {
          description = "The status code, which should be an enum value of google.rpc.Code.",
          format = "int32",
          type = "integer",
        },
        details = {
          description = "A list of messages that carry the error details. There is a common set of message types for APIs to use.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        message = {
          description = "A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.",
          type = "string",
        },
      },
      type = "object",
    },
    TagApiDeploymentRevisionRequest = {
      description = "Request message for TagApiDeploymentRevision.",
      id = "TagApiDeploymentRevisionRequest",
      properties = {
        tag = {
          description = "Required. The tag to apply. The tag should be at most 40 characters, and match `a-z{3,39}`.",
          type = "string",
        },
      },
      type = "object",
    },
    TagApiSpecRevisionRequest = {
      description = "Request message for TagApiSpecRevision.",
      id = "TagApiSpecRevisionRequest",
      properties = {
        tag = {
          description = "Required. The tag to apply. The tag should be at most 40 characters, and match `a-z{3,39}`.",
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
  },
  servicePath = "",
  title = "Apigee Registry API",
  version = "v1",
  version_module = true,
}
