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
  baseUrl = "https://networkconnectivity.googleapis.com/",
  batchPath = "batch",
  canonicalName = "networkconnectivity",
  description = "This API enables connectivity with and between Google Cloud resources.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "networkconnectivity:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://networkconnectivity.mtls.googleapis.com/",
  name = "networkconnectivity",
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
              id = "networkconnectivity.projects.locations.get",
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
              id = "networkconnectivity.projects.locations.list",
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
            global = {
              resources = {
                hubs = {
                  methods = {
                    create = {
                      description = "Creates a new Network Connectivity Center hub in the specified project.",
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs",
                      httpMethod = "POST",
                      id = "networkconnectivity.projects.locations.global.hubs.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        hubId = {
                          description = "Required. A unique identifier for the hub.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A unique request ID (optional). If you specify this ID, you can use it in cases when you need to retry your request. When you need to retry, this ID lets the server know that it can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/hubs",
                      request = {
                        ["$ref"] = "Hub",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a Network Connectivity Center hub.",
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs/{hubsId}",
                      httpMethod = "DELETE",
                      id = "networkconnectivity.projects.locations.global.hubs.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the hub to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/hubs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A unique request ID (optional). If you specify this ID, you can use it in cases when you need to retry your request. When you need to retry, this ID lets the server know that it can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets details about a Network Connectivity Center hub.",
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs/{hubsId}",
                      httpMethod = "GET",
                      id = "networkconnectivity.projects.locations.global.hubs.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the hub resource to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/hubs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Hub",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs/{hubsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "networkconnectivity.projects.locations.global.hubs.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/global/hubs/[^/]+$",
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
                      description = "Lists the Network Connectivity Center hubs associated with a given project.",
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs",
                      httpMethod = "GET",
                      id = "networkconnectivity.projects.locations.global.hubs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "An expression that filters the results listed in the response.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Sort the results by a certain order.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of results per page that should be returned.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource's name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/hubs",
                      response = {
                        ["$ref"] = "ListHubsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the description and/or labels of a Network Connectivity Center hub.",
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs/{hubsId}",
                      httpMethod = "PATCH",
                      id = "networkconnectivity.projects.locations.global.hubs.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/hubs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A unique request ID (optional). If you specify this ID, you can use it in cases when you need to retry your request. When you need to retry, this ID lets the server know that it can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        updateMask = {
                          description = "Optional. In the case of an update to an existing hub, field mask is used to specify the fields to be overwritten. The fields specified in the update_mask are relative to the resource, not the full request. A field is overwritten if it is in the mask. If the user does not provide a mask, then all fields are overwritten.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Hub",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs/{hubsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "networkconnectivity.projects.locations.global.hubs.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/hubs/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/hubs/{hubsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "networkconnectivity.projects.locations.global.hubs.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/hubs/[^/]+$",
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
                policyBasedRoutes = {
                  methods = {
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/global/policyBasedRoutes/{policyBasedRoutesId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "networkconnectivity.projects.locations.global.policyBasedRoutes.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/global/policyBasedRoutes/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/policyBasedRoutes/{policyBasedRoutesId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "networkconnectivity.projects.locations.global.policyBasedRoutes.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/policyBasedRoutes/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/policyBasedRoutes/{policyBasedRoutesId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "networkconnectivity.projects.locations.global.policyBasedRoutes.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/policyBasedRoutes/[^/]+$",
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
            internalRanges = {
              methods = {
                create = {
                  description = "Creates a new internal range in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/internalRanges",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.internalRanges.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    internalRangeId = {
                      description = "Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource's name of the internal range.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/internalRanges",
                  request = {
                    ["$ref"] = "InternalRange",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single internal range.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/internalRanges/{internalRangesId}",
                  httpMethod = "DELETE",
                  id = "networkconnectivity.projects.locations.internalRanges.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the internal range to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/internalRanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single internal range.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/internalRanges/{internalRangesId}",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.internalRanges.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the InternalRange to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/internalRanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "InternalRange",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists internal ranges in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/internalRanges",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.internalRanges.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter expression that filters the results listed in the response.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort the results by a certain order.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of results per page that should be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource's name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/internalRanges",
                  response = {
                    ["$ref"] = "ListInternalRangesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single internal range.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/internalRanges/{internalRangesId}",
                  httpMethod = "PATCH",
                  id = "networkconnectivity.projects.locations.internalRanges.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/internalRanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the InternalRange resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "InternalRange",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
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
                  id = "networkconnectivity.projects.locations.operations.cancel",
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
                    ["$ref"] = "GoogleLongrunningCancelOperationRequest",
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
                  id = "networkconnectivity.projects.locations.operations.delete",
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
                  id = "networkconnectivity.projects.locations.operations.get",
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
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.operations.list",
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
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            serviceClasses = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceClasses/{serviceClassesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.serviceClasses.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceClasses/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceClasses/{serviceClassesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.serviceClasses.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceClasses/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceClasses/{serviceClassesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.serviceClasses.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceClasses/[^/]+$",
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
            serviceConnectionMaps = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceConnectionMaps/{serviceConnectionMapsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.serviceConnectionMaps.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceConnectionMaps/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceConnectionMaps/{serviceConnectionMapsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.serviceConnectionMaps.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceConnectionMaps/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceConnectionMaps/{serviceConnectionMapsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.serviceConnectionMaps.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceConnectionMaps/[^/]+$",
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
            serviceConnectionPolicies = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceConnectionPolicies/{serviceConnectionPoliciesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.serviceConnectionPolicies.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceConnectionPolicies/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceConnectionPolicies/{serviceConnectionPoliciesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.serviceConnectionPolicies.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceConnectionPolicies/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceConnectionPolicies/{serviceConnectionPoliciesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.serviceConnectionPolicies.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceConnectionPolicies/[^/]+$",
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
            spokes = {
              methods = {
                create = {
                  description = "Creates a Network Connectivity Center spoke.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.spokes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique request ID (optional). If you specify this ID, you can use it in cases when you need to retry your request. When you need to retry, this ID lets the server know that it can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    spokeId = {
                      description = "Required. Unique id for the spoke to create.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/spokes",
                  request = {
                    ["$ref"] = "Spoke",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a Network Connectivity Center spoke.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes/{spokesId}",
                  httpMethod = "DELETE",
                  id = "networkconnectivity.projects.locations.spokes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the spoke to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/spokes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique request ID (optional). If you specify this ID, you can use it in cases when you need to retry your request. When you need to retry, this ID lets the server know that it can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details about a Network Connectivity Center spoke.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes/{spokesId}",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.spokes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the spoke resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/spokes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Spoke",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes/{spokesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.spokes.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/spokes/[^/]+$",
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
                  description = "Lists the Network Connectivity Center spokes in a specified project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes",
                  httpMethod = "GET",
                  id = "networkconnectivity.projects.locations.spokes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "An expression that filters the results listed in the response.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort the results by a certain order.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of results per page that should be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/spokes",
                  response = {
                    ["$ref"] = "ListSpokesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a Network Connectivity Center spoke.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes/{spokesId}",
                  httpMethod = "PATCH",
                  id = "networkconnectivity.projects.locations.spokes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/spokes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique request ID (optional). If you specify this ID, you can use it in cases when you need to retry your request. When you need to retry, this ID lets the server know that it can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. In the case of an update to an existing spoke, field mask is used to specify the fields to be overwritten. The fields specified in the update_mask are relative to the resource, not the full request. A field is overwritten if it is in the mask. If the user does not provide a mask, then all fields are overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Spoke",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes/{spokesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.spokes.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/spokes/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/spokes/{spokesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkconnectivity.projects.locations.spokes.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/spokes/[^/]+$",
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
  revision = "20230105",
  rootUrl = "https://networkconnectivity.googleapis.com/",
  schemas = {
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
    GoogleLongrunningCancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "GoogleLongrunningCancelOperationRequest",
      properties = {},
      type = "object",
    },
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
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
    GoogleRpcStatus = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpcStatus",
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
    Hub = {
      description = "A Network Connectivity Center hub is a global management resource to which you attach spokes. A single hub can contain spokes from multiple regions. However, if any of a hub's spokes use the site-to-site data transfer feature, the resources associated with those spokes must all be in the same VPC network. Spokes that do not use site-to-site data transfer can be associated with any VPC network in your project.",
      id = "Hub",
      properties = {
        createTime = {
          description = "Output only. The time the hub was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "An optional description of the hub.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).",
          type = "object",
        },
        name = {
          description = "Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`",
          type = "string",
        },
        routingVpcs = {
          description = "The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.",
          items = {
            ["$ref"] = "RoutingVPC",
          },
          type = "array",
        },
        state = {
          description = "Output only. The current lifecycle state of this hub.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "No state information available",
            "The resource's create operation is in progress",
            "The resource is active",
            "The resource's Delete operation is in progress",
            "The resource's Update operation is in progress",
          },
          readOnly = true,
          type = "string",
        },
        uniqueId = {
          description = "Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time the hub was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    InternalRange = {
      description = "The internal range resource for IPAM operations within a VPC network. Used to represent a private address range along with behavioral characterstics of that range (its usage and peering behavior). Networking resources can link to this range if they are created as belonging to it.",
      id = "InternalRange",
      properties = {
        createTime = {
          description = "Time when the internal range was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "A description of this resource.",
          type = "string",
        },
        ipCidrRange = {
          description = "The IP range that this internal range defines.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-defined labels.",
          type = "object",
        },
        name = {
          description = "Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names",
          type = "string",
        },
        network = {
          description = "The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123",
          type = "string",
        },
        overlaps = {
          description = "Optional. Types of resources that are allowed to overlap with the current internal range.",
          items = {
            enum = {
              "OVERLAP_UNSPECIFIED",
              "OVERLAP_ROUTE_RANGE",
            },
            enumDescriptions = {
              "No overlap overrides.",
              "Allow creation of static routes more specific that the current internal range.",
            },
            type = "string",
          },
          type = "array",
        },
        peering = {
          description = "The type of peering set for this internal range.",
          enum = {
            "PEERING_UNSPECIFIED",
            "FOR_SELF",
            "FOR_PEER",
            "NOT_SHARED",
          },
          enumDescriptions = {
            "If Peering is left unspecified in CreateInternalRange or UpdateInternalRange, it will be defaulted to FOR_SELF.",
            "This is the default behavior and represents the case that this internal range is intended to be used in the VPC in which it is created and is accessible from its peers. This implies that peers or peers-of-peers cannot use this range.",
            "This behavior can be set when the internal range is being reserved for usage by peers. This means that no resource within the VPC in which it is being created can use this to associate with a VPC resource, but one of the peers can. This represents donating a range for peers to use.",
            "This behavior can be set when the internal range is being reserved for usage by the VPC in which it is created, but not shared with peers. In a sense, it is local to the VPC. This can be used to create internal ranges for various purposes like HTTP_INTERNAL_LOAD_BALANCER or for Interconnect routes that are not shared with peers. This also implies that peers cannot use this range in a way that is visible to this VPC, but can re-use this range as long as it is NOT_SHARED from the peer VPC, too.",
          },
          type = "string",
        },
        prefixLength = {
          description = "An alternate to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.",
          format = "int32",
          type = "integer",
        },
        targetCidrRange = {
          description = "Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the \"10.0.0.0/8\" address space. This can be used to search in other rfc-1918 address spaces like \"172.16.0.0/12\" and \"192.168.0.0/16\" or non-rfc-1918 address spaces used in the VPC.",
          items = {
            type = "string",
          },
          type = "array",
        },
        updateTime = {
          description = "Time when the internal range was updated.",
          format = "google-datetime",
          type = "string",
        },
        usage = {
          description = "The type of usage set for this InternalRange.",
          enum = {
            "USAGE_UNSPECIFIED",
            "FOR_VPC",
            "EXTERNAL_TO_VPC",
          },
          enumDescriptions = {
            "Unspecified usage is allowed in calls which identify the resource by other fields and do not need Usage set to complete. These are, i.e.: GetInternalRange and DeleteInternalRange. Usage needs to be specified explicitly in CreateInternalRange or UpdateInternalRange calls.",
            "A VPC resource can use the reserved CIDR block by associating it with the internal range resource if usage is set to FOR_VPC.",
            "Ranges created with EXTERNAL_TO_VPC cannot be associated with VPC resources and are meant to block out address ranges for various use cases, like for example, usage on-prem, with dynamic route announcements via interconnect.",
          },
          type = "string",
        },
        users = {
          description = "Output only. The list of resources that refer to this internal range. Resources that use the internal range for their range allocation are referred to as users of the range. Other resources mark themselves as users while doing so by creating a reference to this internal range. Having a user, based on this reference, prevents deletion of the internal range referred to. Can be empty.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    LinkedInterconnectAttachments = {
      description = "A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.",
      id = "LinkedInterconnectAttachments",
      properties = {
        siteToSiteDataTransfer = {
          description = "A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).",
          type = "boolean",
        },
        uris = {
          description = "The URIs of linked interconnect attachment resources",
          items = {
            type = "string",
          },
          type = "array",
        },
        vpcNetwork = {
          description = "Output only. The VPC network where these VLAN attachments are located.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    LinkedRouterApplianceInstances = {
      description = "A collection of router appliance instances. If you configure multiple router appliance instances to receive data from the same set of sites outside of Google Cloud, we recommend that you associate those instances with the same spoke.",
      id = "LinkedRouterApplianceInstances",
      properties = {
        instances = {
          description = "The list of router appliance instances.",
          items = {
            ["$ref"] = "RouterApplianceInstance",
          },
          type = "array",
        },
        siteToSiteDataTransfer = {
          description = "A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).",
          type = "boolean",
        },
        vpcNetwork = {
          description = "Output only. The VPC network where these router appliance instances are located.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    LinkedVpnTunnels = {
      description = "A collection of Cloud VPN tunnel resources. These resources should be redundant HA VPN tunnels that all advertise the same prefixes to Google Cloud. Alternatively, in a passive/active configuration, all tunnels should be capable of advertising the same prefixes.",
      id = "LinkedVpnTunnels",
      properties = {
        siteToSiteDataTransfer = {
          description = "A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).",
          type = "boolean",
        },
        uris = {
          description = "The URIs of linked VPN tunnel resources.",
          items = {
            type = "string",
          },
          type = "array",
        },
        vpcNetwork = {
          description = "Output only. The VPC network where these VPN tunnels are located.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListHubsResponse = {
      description = "Response for HubService.ListHubs method.",
      id = "ListHubsResponse",
      properties = {
        hubs = {
          description = "The requested hubs.",
          items = {
            ["$ref"] = "Hub",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The next pagination token in the List response. It should be used as page_token for the following request. An empty value means no more result.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListInternalRangesResponse = {
      description = "Response for InternalRange.ListInternalRanges",
      id = "ListInternalRangesResponse",
      properties = {
        internalRanges = {
          description = "Internal ranges to be returned.",
          items = {
            ["$ref"] = "InternalRange",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The next pagination token in the List response. It should be used as page_token for the following request. An empty value means no more result.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
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
    ListSpokesResponse = {
      description = "The response for HubService.ListSpokes.",
      id = "ListSpokesResponse",
      properties = {
        nextPageToken = {
          description = "The next pagination token in the List response. It should be used as page_token for the following request. An empty value means no more result.",
          type = "string",
        },
        spokes = {
          description = "The requested spokes.",
          items = {
            ["$ref"] = "Spoke",
          },
          type = "array",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
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
    LocationMetadata = {
      description = "Metadata about locations",
      id = "LocationMetadata",
      properties = {
        locationFeatures = {
          description = "List of supported features",
          items = {
            enum = {
              "LOCATION_FEATURE_UNSPECIFIED",
              "SITE_TO_CLOUD_SPOKES",
              "SITE_TO_SITE_SPOKES",
            },
            enumDescriptions = {
              "No publicly supported feature in this location",
              "Site-to-cloud spokes are supported in this location",
              "Site-to-site spokes are supported in this location",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the operation finished running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        statusMessage = {
          description = "Output only. Human-readable status of the operation, if any.",
          readOnly = true,
          type = "string",
        },
        target = {
          description = "Output only. Server-defined resource path for the target of the operation.",
          readOnly = true,
          type = "string",
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
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
    RouterApplianceInstance = {
      description = "A router appliance instance is a Compute Engine virtual machine (VM) instance that acts as a BGP speaker. A router appliance instance is specified by the URI of the VM and the internal IP address of one of the VM's network interfaces.",
      id = "RouterApplianceInstance",
      properties = {
        ipAddress = {
          description = "The IP address on the VM to use for peering.",
          type = "string",
        },
        virtualMachine = {
          description = "The URI of the VM.",
          type = "string",
        },
      },
      type = "object",
    },
    RoutingVPC = {
      description = "RoutingVPC contains information about the VPC networks associated with the spokes of a Network Connectivity Center hub.",
      id = "RoutingVPC",
      properties = {
        requiredForNewSiteToSiteDataTransferSpokes = {
          description = "Output only. If true, indicates that this VPC network is currently associated with spokes that use the data transfer feature (spokes where the site_to_site_data_transfer field is set to true). If you create new spokes that use data transfer, they must be associated with this VPC network. At most, one VPC network will have this field set to true.",
          readOnly = true,
          type = "boolean",
        },
        uri = {
          description = "The URI of the VPC network.",
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
    Spoke = {
      description = "A Network Connectivity Center spoke represents one or more network connectivity resources. When you create a spoke, you associate it with a hub. You must also identify a value for exactly one of the following fields: * linked_vpn_tunnels * linked_interconnect_attachments * linked_router_appliance_instances",
      id = "Spoke",
      properties = {
        createTime = {
          description = "Output only. The time the spoke was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "An optional description of the spoke.",
          type = "string",
        },
        hub = {
          description = "Immutable. The name of the hub that this spoke is attached to.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).",
          type = "object",
        },
        linkedInterconnectAttachments = {
          ["$ref"] = "LinkedInterconnectAttachments",
          description = "VLAN attachments that are associated with the spoke.",
        },
        linkedRouterApplianceInstances = {
          ["$ref"] = "LinkedRouterApplianceInstances",
          description = "Router appliance instances that are associated with the spoke.",
        },
        linkedVpnTunnels = {
          ["$ref"] = "LinkedVpnTunnels",
          description = "VPN tunnels that are associated with the spoke.",
        },
        name = {
          description = "Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`",
          type = "string",
        },
        state = {
          description = "Output only. The current lifecycle state of this spoke.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "No state information available",
            "The resource's create operation is in progress",
            "The resource is active",
            "The resource's Delete operation is in progress",
            "The resource's Update operation is in progress",
          },
          readOnly = true,
          type = "string",
        },
        uniqueId = {
          description = "Output only. The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different unique_id.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time the spoke was last updated.",
          format = "google-datetime",
          readOnly = true,
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
  title = "Network Connectivity API",
  version = "v1",
  version_module = true,
}
