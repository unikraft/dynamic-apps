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
  baseUrl = "https://beyondcorp.googleapis.com/",
  batchPath = "batch",
  canonicalName = "BeyondCorp",
  description = "Beyondcorp Enterprise provides identity and context aware access controls for enterprise resources and enables zero-trust access. Using the Beyondcorp Enterprise APIs, enterprises can set up multi-cloud and on-prem connectivity solutions.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "beyondcorp:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://beyondcorp.mtls.googleapis.com/",
  name = "beyondcorp",
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
              id = "beyondcorp.projects.locations.get",
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
                ["$ref"] = "GoogleCloudLocationLocation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "beyondcorp.projects.locations.list",
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
                ["$ref"] = "GoogleCloudLocationListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            appConnections = {
              methods = {
                create = {
                  description = "Creates a new AppConnection in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appConnections.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    appConnectionId = {
                      description = "Optional. User-settable AppConnection resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource project name of the AppConnection location using the form: `projects/{project_id}/locations/{location_id}`",
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
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/appConnections",
                  request = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1AppConnection",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single AppConnection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections/{appConnectionsId}",
                  httpMethod = "DELETE",
                  id = "beyondcorp.projects.locations.appConnections.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. BeyondCorp Connector name using the form: `projects/{project_id}/locations/{location_id}/appConnections/{app_connection_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
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
                  description = "Gets details of a single AppConnection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections/{appConnectionsId}",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnections.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. BeyondCorp AppConnection name using the form: `projects/{project_id}/locations/{location_id}/appConnections/{app_connection_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1AppConnection",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections/{appConnectionsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnections.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists AppConnections in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnections.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. A filter specifying constraints of a list operation.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order) for more information.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response's next_page_token to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The next_page_token value returned from a previous ListAppConnectionsRequest, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the AppConnection location using the form: `projects/{project_id}/locations/{location_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/appConnections",
                  response = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single AppConnection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections/{appConnectionsId}",
                  httpMethod = "PATCH",
                  id = "beyondcorp.projects.locations.appConnections.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "Optional. If set as true, will create the resource if it is not found.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. Unique resource name of the AppConnection. The name is ignored when creating a AppConnection.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields from [BeyondCorp.AppConnection]: * `labels` * `display_name` * `application_endpoint` * `connectors`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1AppConnection",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                resolve = {
                  description = "Resolves AppConnections details for a given AppConnector. An internal method called by a connector to find AppConnections to connect to.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections:resolve",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnections.resolve",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    appConnectorId = {
                      description = "Required. BeyondCorp Connector name of the connector associated with those AppConnections using the form: `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response's next_page_token to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The next_page_token value returned from a previous ResolveAppConnectionsResponse, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the AppConnection location using the form: `projects/{project_id}/locations/{location_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/appConnections:resolve",
                  response = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections/{appConnectionsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appConnections.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnections/{appConnectionsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appConnections.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            appConnectors = {
              methods = {
                create = {
                  description = "Creates a new AppConnector in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appConnectors.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    appConnectorId = {
                      description = "Optional. User-settable AppConnector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource project name of the AppConnector location using the form: `projects/{project_id}/locations/{location_id}`",
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
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/appConnectors",
                  request = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1AppConnector",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single AppConnector.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}",
                  httpMethod = "DELETE",
                  id = "beyondcorp.projects.locations.appConnectors.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. BeyondCorp AppConnector name using the form: `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
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
                  description = "Gets details of a single AppConnector.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnectors.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. BeyondCorp AppConnector name using the form: `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1AppConnector",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnectors.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists AppConnectors in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnectors.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. A filter specifying constraints of a list operation.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order) for more information.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response's next_page_token to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The next_page_token value returned from a previous ListAppConnectorsRequest, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the AppConnector location using the form: `projects/{project_id}/locations/{location_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/appConnectors",
                  response = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single AppConnector.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}",
                  httpMethod = "PATCH",
                  id = "beyondcorp.projects.locations.appConnectors.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Unique resource name of the AppConnector. The name is ignored when creating a AppConnector.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields from [BeyondCorp.AppConnector]: * `labels` * `display_name`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1AppConnector",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                reportStatus = {
                  description = "Report status for a given connector.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}:reportStatus",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appConnectors.reportStatus",
                  parameterOrder = {
                    "appConnector",
                  },
                  parameters = {
                    appConnector = {
                      description = "Required. BeyondCorp Connector name using the form: `projects/{project_id}/locations/{location_id}/connectors/{connector}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+appConnector}:reportStatus",
                  request = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                resolveInstanceConfig = {
                  description = "Gets instance configuration for a given AppConnector. An internal method called by a AppConnector to get its container config.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}:resolveInstanceConfig",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appConnectors.resolveInstanceConfig",
                  parameterOrder = {
                    "appConnector",
                  },
                  parameters = {
                    appConnector = {
                      description = "Required. BeyondCorp AppConnector name using the form: `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+appConnector}:resolveInstanceConfig",
                  response = {
                    ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appConnectors.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appConnectors/{appConnectorsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appConnectors.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appConnectors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            appGateways = {
              methods = {
                create = {
                  description = "Creates a new AppGateway in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appGateways",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appGateways.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    appGatewayId = {
                      description = "Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource project name of the AppGateway location using the form: `projects/{project_id}/locations/{location_id}`",
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
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/appGateways",
                  request = {
                    ["$ref"] = "AppGateway",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single AppGateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appGateways/{appGatewaysId}",
                  httpMethod = "DELETE",
                  id = "beyondcorp.projects.locations.appGateways.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. BeyondCorp AppGateway name using the form: `projects/{project_id}/locations/{location_id}/appGateways/{app_gateway_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
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
                  description = "Gets details of a single AppGateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appGateways/{appGatewaysId}",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appGateways.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. BeyondCorp AppGateway name using the form: `projects/{project_id}/locations/{location_id}/appGateways/{app_gateway_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "AppGateway",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appGateways/{appGatewaysId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appGateways.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/appGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists AppGateways in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appGateways",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.appGateways.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. A filter specifying constraints of a list operation.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order) for more information.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response's next_page_token to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The next_page_token value returned from a previous ListAppGatewaysRequest, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the AppGateway location using the form: `projects/{project_id}/locations/{location_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/appGateways",
                  response = {
                    ["$ref"] = "ListAppGatewaysResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appGateways/{appGatewaysId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appGateways.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/appGateways/{appGatewaysId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.appGateways.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/appGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            clientConnectorServices = {
              methods = {
                create = {
                  description = "Creates a new ClientConnectorService in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.clientConnectorServices.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    clientConnectorServiceId = {
                      description = "Optional. User-settable client connector service resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter. A random system generated name will be assigned if not specified by the user.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Value for parent.",
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
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/clientConnectorServices",
                  request = {
                    ["$ref"] = "ClientConnectorService",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single ClientConnectorService.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices/{clientConnectorServicesId}",
                  httpMethod = "DELETE",
                  id = "beyondcorp.projects.locations.clientConnectorServices.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientConnectorServices/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
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
                  description = "Gets details of a single ClientConnectorService.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices/{clientConnectorServicesId}",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.clientConnectorServices.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientConnectorServices/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ClientConnectorService",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices/{clientConnectorServicesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.clientConnectorServices.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/clientConnectorServices/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists ClientConnectorServices in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.clientConnectorServices.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filtering results.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Hint for how to order the results.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results the server should return.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListClientConnectorServicesRequest.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/clientConnectorServices",
                  response = {
                    ["$ref"] = "ListClientConnectorServicesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single ClientConnectorService.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices/{clientConnectorServicesId}",
                  httpMethod = "PATCH",
                  id = "beyondcorp.projects.locations.clientConnectorServices.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "Optional. If set as true, will create the resource if it is not found.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. Name of resource. The name is ignored during creation.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientConnectorServices/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask is used to specify the fields to be overwritten in the ClientConnectorService resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten. Mutable fields: display_name, ingress.config.destination_routes.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "ClientConnectorService",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices/{clientConnectorServicesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.clientConnectorServices.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientConnectorServices/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientConnectorServices/{clientConnectorServicesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.clientConnectorServices.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientConnectorServices/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            clientGateways = {
              methods = {
                create = {
                  description = "Creates a new ClientGateway in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientGateways",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.clientGateways.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    clientGatewayId = {
                      description = "Optional. User-settable client gateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Value for parent.",
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
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/clientGateways",
                  request = {
                    ["$ref"] = "ClientGateway",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single ClientGateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientGateways/{clientGatewaysId}",
                  httpMethod = "DELETE",
                  id = "beyondcorp.projects.locations.clientGateways.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
                      location = "query",
                      type = "boolean",
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
                  description = "Gets details of a single ClientGateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientGateways/{clientGatewaysId}",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.clientGateways.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ClientGateway",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientGateways/{clientGatewaysId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.clientGateways.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/clientGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists ClientGateways in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientGateways",
                  httpMethod = "GET",
                  id = "beyondcorp.projects.locations.clientGateways.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filtering results.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Hint for how to order the results.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results the server should return.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListClientGatewaysRequest.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/clientGateways",
                  response = {
                    ["$ref"] = "ListClientGatewaysResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientGateways/{clientGatewaysId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.clientGateways.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clientGateways/{clientGatewaysId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "beyondcorp.projects.locations.clientGateways.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clientGateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
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
                  id = "beyondcorp.projects.locations.operations.cancel",
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
                  id = "beyondcorp.projects.locations.operations.delete",
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
                  id = "beyondcorp.projects.locations.operations.get",
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
                  id = "beyondcorp.projects.locations.operations.list",
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
          },
        },
      },
    },
  },
  revision = "20221214",
  rootUrl = "https://beyondcorp.googleapis.com/",
  schemas = {
    AllocatedConnection = {
      description = "Allocated connection of the AppGateway.",
      id = "AllocatedConnection",
      properties = {
        ingressPort = {
          description = "Required. The ingress port of an allocated connection",
          format = "int32",
          type = "integer",
        },
        pscUri = {
          description = "Required. The PSC uri of an allocated connection",
          type = "string",
        },
      },
      type = "object",
    },
    AppGateway = {
      description = "A BeyondCorp AppGateway resource represents a BeyondCorp protected AppGateway to a remote application. It creates all the necessary GCP components needed for creating a BeyondCorp protected AppGateway. Multiple connectors can be authorised for a single AppGateway.",
      id = "AppGateway",
      properties = {
        allocatedConnections = {
          description = "Output only. A list of connections allocated for the Gateway",
          items = {
            ["$ref"] = "AllocatedConnection",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Output only. Timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.",
          type = "string",
        },
        hostType = {
          description = "Required. The type of hosting used by the AppGateway.",
          enum = {
            "HOST_TYPE_UNSPECIFIED",
            "GCP_REGIONAL_MIG",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "AppGateway hosted in a GCP regional managed instance group.",
          },
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata.",
          type = "object",
        },
        name = {
          description = "Required. Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.",
          type = "string",
        },
        state = {
          description = "Output only. The current state of the AppGateway.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "CREATED",
            "UPDATING",
            "DELETING",
            "DOWN",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "AppGateway is being created.",
            "AppGateway has been created.",
            "AppGateway's configuration is being updated.",
            "AppGateway is being deleted.",
            "AppGateway is down and may be restored in the future. This happens when CCFE sends ProjectState = OFF.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Required. The type of network connectivity used by the AppGateway.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TCP_PROXY",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "TCP Proxy based BeyondCorp Connection. API will default to this if unset.",
          },
          type = "string",
        },
        uid = {
          description = "Output only. A unique identifier for the instance generated by the system.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp when the resource was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        uri = {
          description = "Output only. Server-defined URI for this resource.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    AppGatewayOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "AppGatewayOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    ClientConnectorService = {
      description = "Message describing ClientConnectorService object.",
      id = "ClientConnectorService",
      properties = {
        createTime = {
          description = "Output only. [Output only] Create time stamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Optional. User-provided name. The display name should follow certain format. * Must be 6 to 30 characters in length. * Can only contain lowercase letters, numbers, and hyphens. * Must start with a letter.",
          type = "string",
        },
        egress = {
          ["$ref"] = "Egress",
          description = "Required. The details of the egress settings.",
        },
        ingress = {
          ["$ref"] = "Ingress",
          description = "Required. The details of the ingress settings.",
        },
        name = {
          description = "Required. Name of resource. The name is ignored during creation.",
          type = "string",
        },
        state = {
          description = "Output only. The operational state of the ClientConnectorService.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "UPDATING",
            "DELETING",
            "RUNNING",
            "DOWN",
            "ERROR",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "ClientConnectorService is being created.",
            "ClientConnectorService is being updated.",
            "ClientConnectorService is being deleted.",
            "ClientConnectorService is running.",
            "ClientConnectorService is down and may be restored in the future. This happens when CCFE sends ProjectState = OFF.",
            "ClientConnectorService encountered an error and is in an indeterministic state.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. [Output only] Update time stamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ClientConnectorServiceOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "ClientConnectorServiceOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    ClientGateway = {
      description = "Message describing ClientGateway object.",
      id = "ClientGateway",
      properties = {
        clientConnectorService = {
          description = "Output only. The client connector service name that the client gateway is associated to. Client Connector Services, named as follows: `projects/{project_id}/locations/{location_id}/client_connector_services/{client_connector_service_id}`.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. [Output only] Create time stamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Output only. A unique identifier for the instance generated by the system.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Required. name of resource. The name is ignored during creation.",
          type = "string",
        },
        state = {
          description = "Output only. The operational state of the gateway.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "UPDATING",
            "DELETING",
            "RUNNING",
            "DOWN",
            "ERROR",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Gateway is being created.",
            "Gateway is being updated.",
            "Gateway is being deleted.",
            "Gateway is running.",
            "Gateway is down and may be restored in the future. This happens when CCFE sends ProjectState = OFF.",
            "ClientGateway encountered an error and is in indeterministic state.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. [Output only] Update time stamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ClientGatewayOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "ClientGatewayOperationMetadata",
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
    CloudSecurityZerotrustApplinkAppConnectorProtoConnectionConfig = {
      description = "ConnectionConfig represents a Connection Configuration object.",
      id = "CloudSecurityZerotrustApplinkAppConnectorProtoConnectionConfig",
      properties = {
        applicationEndpoint = {
          description = "application_endpoint is the endpoint of the application the form of host:port. For example, \"localhost:80\".",
          type = "string",
        },
        applicationName = {
          description = "application_name represents the given name of the application the connection is connecting with.",
          type = "string",
        },
        gateway = {
          description = "gateway lists all instances running a gateway in GCP. They all connect to a connector on the host.",
          items = {
            ["$ref"] = "CloudSecurityZerotrustApplinkAppConnectorProtoGateway",
          },
          type = "array",
        },
        name = {
          description = "name is the unique ID for each connection. TODO(b/190732451) returns connection name from user-specified name in config. Now, name = ${application_name}:${application_endpoint}",
          type = "string",
        },
        project = {
          description = "project represents the consumer project the connection belongs to.",
          type = "string",
        },
        tunnelsPerGateway = {
          description = "tunnels_per_gateway reflects the number of tunnels between a connector and a gateway.",
          format = "uint32",
          type = "integer",
        },
        userPort = {
          description = "user_port specifies the reserved port on gateways for user connections.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CloudSecurityZerotrustApplinkAppConnectorProtoConnectorDetails = {
      description = "ConnectorDetails reflects the details of a connector.",
      id = "CloudSecurityZerotrustApplinkAppConnectorProtoConnectorDetails",
      properties = {},
      type = "object",
    },
    CloudSecurityZerotrustApplinkAppConnectorProtoGateway = {
      description = "Gateway represents a GCE VM Instance endpoint for use by IAP TCP.",
      id = "CloudSecurityZerotrustApplinkAppConnectorProtoGateway",
      properties = {
        interface = {
          description = "interface specifies the network interface of the gateway to connect to.",
          type = "string",
        },
        name = {
          description = "name is the name of an instance running a gateway. It is the unique ID for a gateway. All gateways under the same connection have the same prefix. It is derived from the gateway URL. For example, name=${instance} assuming a gateway URL. https://www.googleapis.com/compute/${version}/projects/${project}/zones/${zone}/instances/${instance}",
          type = "string",
        },
        port = {
          description = "port specifies the port of the gateway for tunnel connections from the connectors.",
          format = "uint32",
          type = "integer",
        },
        project = {
          description = "project is the tenant project the gateway belongs to. Different from the project in the connection, it is a BeyondCorpAPI internally created project to manage all the gateways. It is sharing the same network with the consumer project user owned. It is derived from the gateway URL. For example, project=${project} assuming a gateway URL. https://www.googleapis.com/compute/${version}/projects/${project}/zones/${zone}/instances/${instance}",
          type = "string",
        },
        selfLink = {
          description = "self_link is the gateway URL in the form https://www.googleapis.com/compute/${version}/projects/${project}/zones/${zone}/instances/${instance}",
          type = "string",
        },
        zone = {
          description = "zone represents the zone the instance belongs. It is derived from the gateway URL. For example, zone=${zone} assuming a gateway URL. https://www.googleapis.com/compute/${version}/projects/${project}/zones/${zone}/instances/${instance}",
          type = "string",
        },
      },
      type = "object",
    },
    CloudSecurityZerotrustApplinkLogagentProtoLogAgentDetails = {
      description = "LogAgentDetails reflects the details of a log agent.",
      id = "CloudSecurityZerotrustApplinkLogagentProtoLogAgentDetails",
      properties = {},
      type = "object",
    },
    Config = {
      description = "The basic ingress config for ClientGateways.",
      id = "Config",
      properties = {
        destinationRoutes = {
          description = "Required. The settings used to configure basic ClientGateways.",
          items = {
            ["$ref"] = "DestinationRoute",
          },
          type = "array",
        },
        transportProtocol = {
          description = "Required. Immutable. The transport protocol used between the client and the server.",
          enum = {
            "TRANSPORT_PROTOCOL_UNSPECIFIED",
            "TCP",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "TCP protocol.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DestinationRoute = {
      description = "The setting used to configure ClientGateways. It is adding routes to the client's routing table after the connection is established.",
      id = "DestinationRoute",
      properties = {
        address = {
          description = "Required. The network address of the subnet for which the packet is routed to the ClientGateway.",
          type = "string",
        },
        netmask = {
          description = "Required. The network mask of the subnet for which the packet is routed to the ClientGateway.",
          type = "string",
        },
      },
      type = "object",
    },
    Egress = {
      description = "The details of the egress info. One of the following options should be set.",
      id = "Egress",
      properties = {
        peeredVpc = {
          ["$ref"] = "PeeredVpc",
          description = "A VPC from the consumer project.",
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
    GoogleCloudBeyondcorpAppconnectionsV1AppConnection = {
      description = "A BeyondCorp AppConnection resource represents a BeyondCorp protected AppConnection to a remote application. It creates all the necessary GCP components needed for creating a BeyondCorp protected AppConnection. Multiple connectors can be authorised for a single AppConnection.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1AppConnection",
      properties = {
        applicationEndpoint = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint",
          description = "Required. Address of the remote application endpoint for the BeyondCorp AppConnection.",
        },
        connectors = {
          description = "Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be associated with this AppConnection.",
          items = {
            type = "string",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. Timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Optional. An arbitrary user-provided name for the AppConnection. Cannot exceed 64 characters.",
          type = "string",
        },
        gateway = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway",
          description = "Optional. Gateway used by the AppConnection.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata.",
          type = "object",
        },
        name = {
          description = "Required. Unique resource name of the AppConnection. The name is ignored when creating a AppConnection.",
          type = "string",
        },
        state = {
          description = "Output only. The current state of the AppConnection.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "CREATED",
            "UPDATING",
            "DELETING",
            "DOWN",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "AppConnection is being created.",
            "AppConnection has been created.",
            "AppConnection's configuration is being updated.",
            "AppConnection is being deleted.",
            "AppConnection is down and may be restored in the future. This happens when CCFE sends ProjectState = OFF.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Required. The type of network connectivity used by the AppConnection.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TCP_PROXY",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "TCP Proxy based BeyondCorp AppConnection. API will default to this if unset.",
          },
          type = "string",
        },
        uid = {
          description = "Output only. A unique identifier for the instance generated by the system.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp when the resource was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint = {
      description = "ApplicationEndpoint represents a remote application endpoint.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint",
      properties = {
        host = {
          description = "Required. Hostname or IP address of the remote application endpoint.",
          type = "string",
        },
        port = {
          description = "Required. Port of the remote application endpoint.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway = {
      description = "Gateway represents a user facing component that serves as an entrance to enable connectivity.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway",
      properties = {
        appGateway = {
          description = "Required. AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`",
          type = "string",
        },
        ingressPort = {
          description = "Output only. Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        l7psc = {
          description = "Output only. L7 private service connection for this resource.",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Required. The type of hosting used by the gateway.",
          enum = {
            "TYPE_UNSPECIFIED",
            "GCP_REGIONAL_MIG",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Gateway hosted in a GCP regional managed instance group.",
          },
          type = "string",
        },
        uri = {
          description = "Output only. Server-defined URI for this resource.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectionsV1AppConnectionOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1AppConnectionOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse = {
      description = "Response message for BeyondCorp.ListAppConnections.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse",
      properties = {
        appConnections = {
          description = "A list of BeyondCorp AppConnections in the project.",
          items = {
            ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1AppConnection",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse = {
      description = "Response message for BeyondCorp.ResolveAppConnections.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse",
      properties = {
        appConnectionDetails = {
          description = "A list of BeyondCorp AppConnections with details in the project.",
          items = {
            ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails = {
      description = "Details of the AppConnection.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails",
      properties = {
        appConnection = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectionsV1AppConnection",
          description = "A BeyondCorp AppConnection in the project.",
        },
        recentMigVms = {
          description = "If type=GCP_REGIONAL_MIG, contains most recent VM instances, like `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone_id}/instances/{instance_id}`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpAppconnectorsV1AppConnector = {
      description = "A BeyondCorp connector resource that represents an application facing component deployed proximal to and with direct access to the application instances. It is used to establish connectivity between the remote enterprise environment and GCP. It initiates connections to the applications and can proxy the data from users over the connection.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1AppConnector",
      properties = {
        createTime = {
          description = "Output only. Timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Optional. An arbitrary user-provided name for the AppConnector. Cannot exceed 64 characters.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata.",
          type = "object",
        },
        name = {
          description = "Required. Unique resource name of the AppConnector. The name is ignored when creating a AppConnector.",
          type = "string",
        },
        principalInfo = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo",
          description = "Required. Principal information about the Identity of the AppConnector.",
        },
        resourceInfo = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo",
          description = "Optional. Resource info of the connector.",
        },
        state = {
          description = "Output only. The current state of the AppConnector.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "CREATED",
            "UPDATING",
            "DELETING",
            "DOWN",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "AppConnector is being created.",
            "AppConnector has been created.",
            "AppConnector's configuration is being updated.",
            "AppConnector is being deleted.",
            "AppConnector is down and may be restored in the future. This happens when CCFE sends ProjectState = OFF.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. A unique identifier for the instance generated by the system.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp when the resource was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig = {
      description = "AppConnectorInstanceConfig defines the instance config of a AppConnector.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig",
      properties = {
        imageConfig = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1ImageConfig",
          description = "ImageConfig defines the GCR images to run for the remote agent's control plane.",
        },
        instanceConfig = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The SLM instance agent configuration.",
          type = "object",
        },
        notificationConfig = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig",
          description = "NotificationConfig defines the notification mechanism that the remote instance should subscribe to in order to receive notification.",
        },
        sequenceNumber = {
          description = "Required. A monotonically increasing number generated and maintained by the API provider. Every time a config changes in the backend, the sequenceNumber should be bumped up to reflect the change.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1AppConnectorOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1AppConnectorOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo = {
      description = "PrincipalInfo represents an Identity oneof.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo",
      properties = {
        serviceAccount = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount",
          description = "A GCP service account.",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount = {
      description = "ServiceAccount represents a GCP service account.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount",
      properties = {
        email = {
          description = "Email address of the service account.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1ContainerHealthDetails = {
      description = "ContainerHealthDetails reflects the health details of a container.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1ContainerHealthDetails",
      properties = {
        currentConfigVersion = {
          description = "The version of the current config.",
          type = "string",
        },
        errorMsg = {
          description = "The latest error message.",
          type = "string",
        },
        expectedConfigVersion = {
          description = "The version of the expected config.",
          type = "string",
        },
        extendedStatus = {
          additionalProperties = {
            type = "string",
          },
          description = "The extended status. Such as ExitCode, StartedAt, FinishedAt, etc.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1ImageConfig = {
      description = "ImageConfig defines the control plane images to run.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1ImageConfig",
      properties = {
        stableImage = {
          description = "The stable image that the remote agent will fallback to if the target image fails. Format would be a gcr image path, e.g.: gcr.io/PROJECT-ID/my-image:tag1",
          type = "string",
        },
        targetImage = {
          description = "The initial image the remote agent will attempt to run for the control plane. Format would be a gcr image path, e.g.: gcr.io/PROJECT-ID/my-image:tag1",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse = {
      description = "Response message for BeyondCorp.ListAppConnectors.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse",
      properties = {
        appConnectors = {
          description = "A list of BeyondCorp AppConnectors in the project.",
          items = {
            ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1AppConnector",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig = {
      description = "NotificationConfig defines the mechanisms to notify instance agent.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig",
      properties = {
        pubsubNotification = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig",
          description = "Cloud Pub/Sub Configuration to receive notifications.",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig = {
      description = "The configuration for Pub/Sub messaging for the AppConnector.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig",
      properties = {
        pubsubSubscription = {
          description = "The Pub/Sub subscription the AppConnector uses to receive notifications.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1RemoteAgentDetails = {
      description = "RemoteAgentDetails reflects the details of a remote agent.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1RemoteAgentDetails",
      properties = {},
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest = {
      description = "Request report the connector status.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest",
      properties = {
        requestId = {
          description = "Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
        resourceInfo = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo",
          description = "Required. Resource info of the connector.",
        },
        validateOnly = {
          description = "Optional. If set, validates request by executing a dry-run which would not alter the resource in any way.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse = {
      description = "Response message for BeyondCorp.ResolveInstanceConfig.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse",
      properties = {
        instanceConfig = {
          ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig",
          description = "AppConnectorInstanceConfig.",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo = {
      description = "ResourceInfo represents the information/status of an app connector resource. Such as: - remote_agent - container - runtime - appgateway - appconnector - appconnection - tunnel - logagent",
      id = "GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo",
      properties = {
        id = {
          description = "Required. Unique Id for the resource.",
          type = "string",
        },
        resource = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Specific details for the resource. This is for internal use only.",
          type = "object",
        },
        status = {
          description = "Overall health status. Overall status is derived based on the status of each sub level resources.",
          enum = {
            "HEALTH_STATUS_UNSPECIFIED",
            "HEALTHY",
            "UNHEALTHY",
            "UNRESPONSIVE",
            "DEGRADED",
          },
          enumDescriptions = {
            "Health status is unknown: not initialized or failed to retrieve.",
            "The resource is healthy.",
            "The resource is unhealthy.",
            "The resource is unresponsive.",
            "Some sub-resources are UNHEALTHY.",
          },
          type = "string",
        },
        sub = {
          description = "List of Info for the sub level resources.",
          items = {
            ["$ref"] = "GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo",
          },
          type = "array",
        },
        time = {
          description = "The timestamp to collect the info. It is suggested to be set by the topmost level resource only.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpAppconnectorsV1alphaContainerHealthDetails = {
      description = "ContainerHealthDetails reflects the health details of a container.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1alphaContainerHealthDetails",
      properties = {
        currentConfigVersion = {
          description = "The version of the current config.",
          type = "string",
        },
        errorMsg = {
          description = "The latest error message.",
          type = "string",
        },
        expectedConfigVersion = {
          description = "The version of the expected config.",
          type = "string",
        },
        extendedStatus = {
          additionalProperties = {
            type = "string",
          },
          description = "The extended status. Such as ExitCode, StartedAt, FinishedAt, etc.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpAppconnectorsV1alphaRemoteAgentDetails = {
      description = "RemoteAgentDetails reflects the details of a remote agent.",
      id = "GoogleCloudBeyondcorpAppconnectorsV1alphaRemoteAgentDetails",
      properties = {},
      type = "object",
    },
    GoogleCloudBeyondcorpAppgatewaysV1alphaAppGatewayOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpAppgatewaysV1alphaAppGatewayOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpClientconnectorservicesV1alphaClientConnectorServiceOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpClientconnectorservicesV1alphaClientConnectorServiceOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpClientgatewaysV1alphaClientGatewayOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpClientgatewaysV1alphaClientGatewayOperationMetadata",
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
    GoogleCloudBeyondcorpConnectionsV1alphaConnectionOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpConnectionsV1alphaConnectionOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpConnectorsV1alphaConnectorOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudBeyondcorpConnectorsV1alphaConnectorOperationMetadata",
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
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
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
    GoogleCloudBeyondcorpConnectorsV1alphaContainerHealthDetails = {
      description = "ContainerHealthDetails reflects the health details of a container.",
      id = "GoogleCloudBeyondcorpConnectorsV1alphaContainerHealthDetails",
      properties = {
        currentConfigVersion = {
          description = "The version of the current config.",
          type = "string",
        },
        errorMsg = {
          description = "The latest error message.",
          type = "string",
        },
        expectedConfigVersion = {
          description = "The version of the expected config.",
          type = "string",
        },
        extendedStatus = {
          additionalProperties = {
            type = "string",
          },
          description = "The extended status. Such as ExitCode, StartedAt, FinishedAt, etc.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudBeyondcorpConnectorsV1alphaRemoteAgentDetails = {
      description = "RemoteAgentDetails reflects the details of a remote agent.",
      id = "GoogleCloudBeyondcorpConnectorsV1alphaRemoteAgentDetails",
      properties = {},
      type = "object",
    },
    GoogleCloudLocationListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "GoogleCloudLocationListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleCloudLocationLocation",
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
    GoogleCloudLocationLocation = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "GoogleCloudLocationLocation",
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
    GoogleIamV1AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "GoogleIamV1AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "GoogleIamV1Binding",
      properties = {
        condition = {
          ["$ref"] = "GoogleTypeExpr",
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
    GoogleIamV1Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "GoogleIamV1Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "GoogleIamV1AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "GoogleIamV1Binding",
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
    GoogleIamV1SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "GoogleIamV1SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "GoogleIamV1Policy",
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
    GoogleIamV1TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsRequest",
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
    GoogleIamV1TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsResponse",
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
    GoogleTypeExpr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "GoogleTypeExpr",
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
    Ingress = {
      description = "Settings of how to connect to the ClientGateway. One of the following options should be set.",
      id = "Ingress",
      properties = {
        config = {
          ["$ref"] = "Config",
          description = "The basic ingress config for ClientGateways.",
        },
      },
      type = "object",
    },
    ListAppGatewaysResponse = {
      description = "Response message for BeyondCorp.ListAppGateways.",
      id = "ListAppGatewaysResponse",
      properties = {
        appGateways = {
          description = "A list of BeyondCorp AppGateways in the project.",
          items = {
            ["$ref"] = "AppGateway",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListClientConnectorServicesResponse = {
      description = "Message for response to listing ClientConnectorServices.",
      id = "ListClientConnectorServicesResponse",
      properties = {
        clientConnectorServices = {
          description = "The list of ClientConnectorService.",
          items = {
            ["$ref"] = "ClientConnectorService",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token identifying a page of results the server should return.",
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
    ListClientGatewaysResponse = {
      description = "Message for response to listing ClientGateways.",
      id = "ListClientGatewaysResponse",
      properties = {
        clientGateways = {
          description = "The list of ClientGateway.",
          items = {
            ["$ref"] = "ClientGateway",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token identifying a page of results the server should return.",
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
    PeeredVpc = {
      description = "The peered VPC owned by the consumer project.",
      id = "PeeredVpc",
      properties = {
        networkVpc = {
          description = "Required. The name of the peered VPC owned by the consumer project.",
          type = "string",
        },
      },
      type = "object",
    },
    Tunnelv1ProtoTunnelerError = {
      description = "TunnelerError is an error proto for errors returned by the connection manager.",
      id = "Tunnelv1ProtoTunnelerError",
      properties = {
        err = {
          description = "Original raw error",
          type = "string",
        },
        retryable = {
          description = "retryable isn't used for now, but we may want to reuse it in the future.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Tunnelv1ProtoTunnelerInfo = {
      description = "TunnelerInfo contains metadata about tunneler launched by connection manager.",
      id = "Tunnelv1ProtoTunnelerInfo",
      properties = {
        backoffRetryCount = {
          description = "backoff_retry_count stores the number of times the tunneler has been retried by tunManager for current backoff sequence. Gets reset to 0 if time difference between 2 consecutive retries exceeds backoffRetryResetTime.",
          format = "uint32",
          type = "integer",
        },
        id = {
          description = "id is the unique id of a tunneler.",
          type = "string",
        },
        latestErr = {
          ["$ref"] = "Tunnelv1ProtoTunnelerError",
          description = "latest_err stores the Error for the latest tunneler failure. Gets reset everytime the tunneler is retried by tunManager.",
        },
        latestRetryTime = {
          description = "latest_retry_time stores the time when the tunneler was last restarted.",
          format = "google-datetime",
          type = "string",
        },
        totalRetryCount = {
          description = "total_retry_count stores the total number of times the tunneler has been retried by tunManager.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "BeyondCorp API",
  version = "v1",
  version_module = true,
}
