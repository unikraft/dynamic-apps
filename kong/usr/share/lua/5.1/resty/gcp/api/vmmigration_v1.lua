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
  baseUrl = "https://vmmigration.googleapis.com/",
  batchPath = "batch",
  canonicalName = "VM Migration Service",
  description = "Use the Migrate to Virtual Machines API to programmatically migrate workloads. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/migrate/virtual-machines",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "vmmigration:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://vmmigration.mtls.googleapis.com/",
  name = "vmmigration",
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
              id = "vmmigration.projects.locations.get",
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
              id = "vmmigration.projects.locations.list",
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
            groups = {
              methods = {
                addGroupMigration = {
                  description = "Adds a MigratingVm to a Group.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/groups/{groupsId}:addGroupMigration",
                  httpMethod = "POST",
                  id = "vmmigration.projects.locations.groups.addGroupMigration",
                  parameterOrder = {
                    "group",
                  },
                  parameters = {
                    group = {
                      description = "Required. The full path name of the Group to add to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/groups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+group}:addGroupMigration",
                  request = {
                    ["$ref"] = "AddGroupMigrationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a new Group in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/groups",
                  httpMethod = "POST",
                  id = "vmmigration.projects.locations.groups.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    groupId = {
                      description = "Required. The group identifier.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The Group's parent.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/groups",
                  request = {
                    ["$ref"] = "Group",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Group.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/groups/{groupsId}",
                  httpMethod = "DELETE",
                  id = "vmmigration.projects.locations.groups.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Group name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/groups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
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
                  description = "Gets details of a single Group.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/groups/{groupsId}",
                  httpMethod = "GET",
                  id = "vmmigration.projects.locations.groups.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The group name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/groups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Group",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Groups in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/groups",
                  httpMethod = "GET",
                  id = "vmmigration.projects.locations.groups.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. The filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. the order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of groups to return. The service may return fewer than this value. If unspecified, at most 500 groups will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Required. A page token, received from a previous `ListGroups` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListGroups` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of groups.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/groups",
                  response = {
                    ["$ref"] = "ListGroupsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single Group.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/groups/{groupsId}",
                  httpMethod = "PATCH",
                  id = "vmmigration.projects.locations.groups.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The Group name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/groups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Field mask is used to specify the fields to be overwritten in the Group resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Group",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                removeGroupMigration = {
                  description = "Removes a MigratingVm from a Group.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/groups/{groupsId}:removeGroupMigration",
                  httpMethod = "POST",
                  id = "vmmigration.projects.locations.groups.removeGroupMigration",
                  parameterOrder = {
                    "group",
                  },
                  parameters = {
                    group = {
                      description = "Required. The name of the Group.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/groups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+group}:removeGroupMigration",
                  request = {
                    ["$ref"] = "RemoveGroupMigrationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
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
                  id = "vmmigration.projects.locations.operations.cancel",
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
                  id = "vmmigration.projects.locations.operations.delete",
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
                  id = "vmmigration.projects.locations.operations.get",
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
                  id = "vmmigration.projects.locations.operations.list",
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
            sources = {
              methods = {
                create = {
                  description = "Creates a new Source in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources",
                  httpMethod = "POST",
                  id = "vmmigration.projects.locations.sources.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The Source's parent.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    sourceId = {
                      description = "Required. The source identifier.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/sources",
                  request = {
                    ["$ref"] = "Source",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Source.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}",
                  httpMethod = "DELETE",
                  id = "vmmigration.projects.locations.sources.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Source name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
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
                fetchInventory = {
                  description = "List remote source's inventory of VMs. The remote source is the onprem vCenter (remote in the sense it's not in Compute Engine). The inventory describes the list of existing VMs in that source. Note that this operation lists the VMs on the remote source, as opposed to listing the MigratingVms resources in the vmmigration service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}:fetchInventory",
                  httpMethod = "GET",
                  id = "vmmigration.projects.locations.sources.fetchInventory",
                  parameterOrder = {
                    "source",
                  },
                  parameters = {
                    forceRefresh = {
                      description = "If this flag is set to true, the source will be queried instead of using cached results. Using this flag will make the call slower.",
                      location = "query",
                      type = "boolean",
                    },
                    pageSize = {
                      description = "The maximum number of VMs to return. The service may return fewer than this value. For AWS source: If unspecified, at most 500 VMs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000. For VMWare source: If unspecified, all VMs will be returned. There is no limit for maximum value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `FetchInventory` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `FetchInventory` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    source = {
                      description = "Required. The name of the Source.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+source}:fetchInventory",
                  response = {
                    ["$ref"] = "FetchInventoryResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single Source.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}",
                  httpMethod = "GET",
                  id = "vmmigration.projects.locations.sources.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The Source name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Source",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Sources in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources",
                  httpMethod = "GET",
                  id = "vmmigration.projects.locations.sources.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. The filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. the order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of sources to return. The service may return fewer than this value. If unspecified, at most 500 sources will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Required. A page token, received from a previous `ListSources` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListSources` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of sources.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/sources",
                  response = {
                    ["$ref"] = "ListSourcesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single Source.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}",
                  httpMethod = "PATCH",
                  id = "vmmigration.projects.locations.sources.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The Source name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Field mask is used to specify the fields to be overwritten in the Source resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Source",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                datacenterConnectors = {
                  methods = {
                    create = {
                      description = "Creates a new DatacenterConnector in a given Source.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/datacenterConnectors",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.datacenterConnectors.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        datacenterConnectorId = {
                          description = "Required. The datacenterConnector identifier.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The DatacenterConnector's parent. Required. The Source in where the new DatacenterConnector will be created. For example: `projects/my-project/locations/us-central1/sources/my-source`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/datacenterConnectors",
                      request = {
                        ["$ref"] = "DatacenterConnector",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a single DatacenterConnector.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/datacenterConnectors/{datacenterConnectorsId}",
                      httpMethod = "DELETE",
                      id = "vmmigration.projects.locations.sources.datacenterConnectors.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The DatacenterConnector name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/datacenterConnectors/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
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
                      description = "Gets details of a single DatacenterConnector.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/datacenterConnectors/{datacenterConnectorsId}",
                      httpMethod = "GET",
                      id = "vmmigration.projects.locations.sources.datacenterConnectors.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the DatacenterConnector.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/datacenterConnectors/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "DatacenterConnector",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists DatacenterConnectors in a given Source.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/datacenterConnectors",
                      httpMethod = "GET",
                      id = "vmmigration.projects.locations.sources.datacenterConnectors.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. The filter request.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. the order by fields for the result.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of connectors to return. The service may return fewer than this value. If unspecified, at most 500 sources will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Required. A page token, received from a previous `ListDatacenterConnectors` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListDatacenterConnectors` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of connectors.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/datacenterConnectors",
                      response = {
                        ["$ref"] = "ListDatacenterConnectorsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    upgradeAppliance = {
                      description = "Upgrades the appliance relate to this DatacenterConnector to the in-place updateable version.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/datacenterConnectors/{datacenterConnectorsId}:upgradeAppliance",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.datacenterConnectors.upgradeAppliance",
                      parameterOrder = {
                        "datacenterConnector",
                      },
                      parameters = {
                        datacenterConnector = {
                          description = "Required. The DatacenterConnector name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/datacenterConnectors/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+datacenterConnector}:upgradeAppliance",
                      request = {
                        ["$ref"] = "UpgradeApplianceRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                migratingVms = {
                  methods = {
                    create = {
                      description = "Creates a new MigratingVm in a given Source.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.migratingVms.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        migratingVmId = {
                          description = "Required. The migratingVm identifier.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The MigratingVm's parent.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/migratingVms",
                      request = {
                        ["$ref"] = "MigratingVm",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a single MigratingVm.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}",
                      httpMethod = "DELETE",
                      id = "vmmigration.projects.locations.sources.migratingVms.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the MigratingVm.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
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
                    finalizeMigration = {
                      description = "Marks a migration as completed, deleting migration resources that are no longer being used. Only applicable after cutover is done.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}:finalizeMigration",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.migratingVms.finalizeMigration",
                      parameterOrder = {
                        "migratingVm",
                      },
                      parameters = {
                        migratingVm = {
                          description = "Required. The name of the MigratingVm.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+migratingVm}:finalizeMigration",
                      request = {
                        ["$ref"] = "FinalizeMigrationRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets details of a single MigratingVm.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}",
                      httpMethod = "GET",
                      id = "vmmigration.projects.locations.sources.migratingVms.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the MigratingVm.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. The level of details of the migrating VM.",
                          enum = {
                            "MIGRATING_VM_VIEW_UNSPECIFIED",
                            "MIGRATING_VM_VIEW_BASIC",
                            "MIGRATING_VM_VIEW_FULL",
                          },
                          enumDescriptions = {
                            "View is unspecified. The API will fallback to the default value.",
                            "Get the migrating VM basic details. The basic details do not include the recent clone jobs and recent cutover jobs lists.",
                            "Include everything.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "MigratingVm",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists MigratingVms in a given Source.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms",
                      httpMethod = "GET",
                      id = "vmmigration.projects.locations.sources.migratingVms.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. The filter request.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. the order by fields for the result.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of migrating VMs to return. The service may return fewer than this value. If unspecified, at most 500 migrating VMs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Required. A page token, received from a previous `ListMigratingVms` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListMigratingVms` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent, which owns this collection of MigratingVms.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. The level of details of each migrating VM.",
                          enum = {
                            "MIGRATING_VM_VIEW_UNSPECIFIED",
                            "MIGRATING_VM_VIEW_BASIC",
                            "MIGRATING_VM_VIEW_FULL",
                          },
                          enumDescriptions = {
                            "View is unspecified. The API will fallback to the default value.",
                            "Get the migrating VM basic details. The basic details do not include the recent clone jobs and recent cutover jobs lists.",
                            "Include everything.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/migratingVms",
                      response = {
                        ["$ref"] = "ListMigratingVmsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the parameters of a single MigratingVm.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}",
                      httpMethod = "PATCH",
                      id = "vmmigration.projects.locations.sources.migratingVms.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The identifier of the MigratingVm.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        updateMask = {
                          description = "Field mask is used to specify the fields to be overwritten in the MigratingVm resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "MigratingVm",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    pauseMigration = {
                      description = "Pauses a migration for a VM. If cycle tasks are running they will be cancelled, preserving source task data. Further replication cycles will not be triggered while the VM is paused.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}:pauseMigration",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.migratingVms.pauseMigration",
                      parameterOrder = {
                        "migratingVm",
                      },
                      parameters = {
                        migratingVm = {
                          description = "Required. The name of the MigratingVm.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+migratingVm}:pauseMigration",
                      request = {
                        ["$ref"] = "PauseMigrationRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    resumeMigration = {
                      description = "Resumes a migration for a VM. When called on a paused migration, will start the process of uploading data and creating snapshots; when called on a completed cut-over migration, will update the migration to active state and start the process of uploading data and creating snapshots.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}:resumeMigration",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.migratingVms.resumeMigration",
                      parameterOrder = {
                        "migratingVm",
                      },
                      parameters = {
                        migratingVm = {
                          description = "Required. The name of the MigratingVm.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+migratingVm}:resumeMigration",
                      request = {
                        ["$ref"] = "ResumeMigrationRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    startMigration = {
                      description = "Starts migration for a VM. Starts the process of uploading data and creating snapshots, in replication cycles scheduled by the policy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}:startMigration",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.migratingVms.startMigration",
                      parameterOrder = {
                        "migratingVm",
                      },
                      parameters = {
                        migratingVm = {
                          description = "Required. The name of the MigratingVm.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+migratingVm}:startMigration",
                      request = {
                        ["$ref"] = "StartMigrationRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    cloneJobs = {
                      methods = {
                        cancel = {
                          description = "Initiates the cancellation of a running clone job.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cloneJobs/{cloneJobsId}:cancel",
                          httpMethod = "POST",
                          id = "vmmigration.projects.locations.sources.migratingVms.cloneJobs.cancel",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The clone job id",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+/cloneJobs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:cancel",
                          request = {
                            ["$ref"] = "CancelCloneJobRequest",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        create = {
                          description = "Initiates a Clone of a specific migrating VM.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cloneJobs",
                          httpMethod = "POST",
                          id = "vmmigration.projects.locations.sources.migratingVms.cloneJobs.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            cloneJobId = {
                              description = "Required. The clone job identifier.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Clone's parent.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            requestId = {
                              description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/cloneJobs",
                          request = {
                            ["$ref"] = "CloneJob",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Gets details of a single CloneJob.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cloneJobs/{cloneJobsId}",
                          httpMethod = "GET",
                          id = "vmmigration.projects.locations.sources.migratingVms.cloneJobs.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the CloneJob.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+/cloneJobs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "CloneJob",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists CloneJobs of a given migrating VM.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cloneJobs",
                          httpMethod = "GET",
                          id = "vmmigration.projects.locations.sources.migratingVms.cloneJobs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. The filter request.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. the order by fields for the result.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The maximum number of clone jobs to return. The service may return fewer than this value. If unspecified, at most 500 clone jobs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Required. A page token, received from a previous `ListCloneJobs` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListCloneJobs` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of source VMs.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/cloneJobs",
                          response = {
                            ["$ref"] = "ListCloneJobsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    cutoverJobs = {
                      methods = {
                        cancel = {
                          description = "Initiates the cancellation of a running cutover job.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cutoverJobs/{cutoverJobsId}:cancel",
                          httpMethod = "POST",
                          id = "vmmigration.projects.locations.sources.migratingVms.cutoverJobs.cancel",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The cutover job id",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+/cutoverJobs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:cancel",
                          request = {
                            ["$ref"] = "CancelCutoverJobRequest",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        create = {
                          description = "Initiates a Cutover of a specific migrating VM. The returned LRO is completed when the cutover job resource is created and the job is initiated.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cutoverJobs",
                          httpMethod = "POST",
                          id = "vmmigration.projects.locations.sources.migratingVms.cutoverJobs.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            cutoverJobId = {
                              description = "Required. The cutover job identifier.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Cutover's parent.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            requestId = {
                              description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/cutoverJobs",
                          request = {
                            ["$ref"] = "CutoverJob",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Gets details of a single CutoverJob.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cutoverJobs/{cutoverJobsId}",
                          httpMethod = "GET",
                          id = "vmmigration.projects.locations.sources.migratingVms.cutoverJobs.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the CutoverJob.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+/cutoverJobs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "CutoverJob",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists CutoverJobs of a given migrating VM.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/cutoverJobs",
                          httpMethod = "GET",
                          id = "vmmigration.projects.locations.sources.migratingVms.cutoverJobs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. The filter request.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. the order by fields for the result.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The maximum number of cutover jobs to return. The service may return fewer than this value. If unspecified, at most 500 cutover jobs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Required. A page token, received from a previous `ListCutoverJobs` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListCutoverJobs` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of migrating VMs.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/cutoverJobs",
                          response = {
                            ["$ref"] = "ListCutoverJobsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    replicationCycles = {
                      methods = {
                        get = {
                          description = "Gets details of a single ReplicationCycle.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/replicationCycles/{replicationCyclesId}",
                          httpMethod = "GET",
                          id = "vmmigration.projects.locations.sources.migratingVms.replicationCycles.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the ReplicationCycle.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+/replicationCycles/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "ReplicationCycle",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists ReplicationCycles in a given MigratingVM.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/migratingVms/{migratingVmsId}/replicationCycles",
                          httpMethod = "GET",
                          id = "vmmigration.projects.locations.sources.migratingVms.replicationCycles.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. The filter request.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. the order by fields for the result.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The maximum number of replication cycles to return. The service may return fewer than this value. If unspecified, at most 100 migrating VMs will be returned. The maximum value is 100; values above 100 will be coerced to 100.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Required. A page token, received from a previous `ListReplicationCycles` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListReplicationCycles` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent, which owns this collection of ReplicationCycles.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/migratingVms/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/replicationCycles",
                          response = {
                            ["$ref"] = "ListReplicationCyclesResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                utilizationReports = {
                  methods = {
                    create = {
                      description = "Creates a new UtilizationReport.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/utilizationReports",
                      httpMethod = "POST",
                      id = "vmmigration.projects.locations.sources.utilizationReports.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The Utilization Report's parent.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        utilizationReportId = {
                          description = "Required. The ID to use for the report, which will become the final component of the reports's resource name. This value maximum length is 63 characters, and valid characters are /a-z-/. It must start with an english letter and must not end with a hyphen.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/utilizationReports",
                      request = {
                        ["$ref"] = "UtilizationReport",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a single Utilization Report.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/utilizationReports/{utilizationReportsId}",
                      httpMethod = "DELETE",
                      id = "vmmigration.projects.locations.sources.utilizationReports.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The Utilization Report name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/utilizationReports/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
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
                      description = "Gets a single Utilization Report.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/utilizationReports/{utilizationReportsId}",
                      httpMethod = "GET",
                      id = "vmmigration.projects.locations.sources.utilizationReports.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The Utilization Report name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+/utilizationReports/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. The level of details of the report. Defaults to FULL",
                          enum = {
                            "UTILIZATION_REPORT_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The default / unset value. The API will default to FULL on single report request and BASIC for multiple reports request.",
                            "Get the report metadata, without the list of VMs and their utilization info.",
                            "Include everything.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "UtilizationReport",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists Utilization Reports of the given Source.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/sources/{sourcesId}/utilizationReports",
                      httpMethod = "GET",
                      id = "vmmigration.projects.locations.sources.utilizationReports.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. The filter request.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. the order by fields for the result.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of reports to return. The service may return fewer than this value. If unspecified, at most 500 reports will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Required. A page token, received from a previous `ListUtilizationReports` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListUtilizationReports` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The Utilization Reports parent.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/sources/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. The level of details of each report. Defaults to BASIC.",
                          enum = {
                            "UTILIZATION_REPORT_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The default / unset value. The API will default to FULL on single report request and BASIC for multiple reports request.",
                            "Get the report metadata, without the list of VMs and their utilization info.",
                            "Include everything.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/utilizationReports",
                      response = {
                        ["$ref"] = "ListUtilizationReportsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            targetProjects = {
              methods = {
                create = {
                  description = "Creates a new TargetProject in a given project. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targetProjects",
                  httpMethod = "POST",
                  id = "vmmigration.projects.locations.targetProjects.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The TargetProject's parent.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    targetProjectId = {
                      description = "Required. The target_project identifier.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/targetProjects",
                  request = {
                    ["$ref"] = "TargetProject",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targetProjects/{targetProjectsId}",
                  httpMethod = "DELETE",
                  id = "vmmigration.projects.locations.targetProjects.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The TargetProject name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targetProjects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
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
                  description = "Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targetProjects/{targetProjectsId}",
                  httpMethod = "GET",
                  id = "vmmigration.projects.locations.targetProjects.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The TargetProject name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targetProjects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "TargetProject",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists TargetProjects in a given project. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targetProjects",
                  httpMethod = "GET",
                  id = "vmmigration.projects.locations.targetProjects.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. The filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. the order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of targets to return. The service may return fewer than this value. If unspecified, at most 500 targets will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Required. A page token, received from a previous `ListTargets` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListTargets` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of targets.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/targetProjects",
                  response = {
                    ["$ref"] = "ListTargetProjectsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targetProjects/{targetProjectsId}",
                  httpMethod = "PATCH",
                  id = "vmmigration.projects.locations.targetProjects.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The name of the target project.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targetProjects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Field mask is used to specify the fields to be overwritten in the TargetProject resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "TargetProject",
                  },
                  response = {
                    ["$ref"] = "Operation",
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
  rootUrl = "https://vmmigration.googleapis.com/",
  schemas = {
    AccessKeyCredentials = {
      description = "Message describing AWS Credentials using access key id and secret.",
      id = "AccessKeyCredentials",
      properties = {
        accessKeyId = {
          description = "AWS access key ID.",
          type = "string",
        },
        secretAccessKey = {
          description = "Input only. AWS secret access key.",
          type = "string",
        },
      },
      type = "object",
    },
    AdaptingOSStep = {
      description = "AdaptingOSStep contains specific step details.",
      id = "AdaptingOSStep",
      properties = {},
      type = "object",
    },
    AddGroupMigrationRequest = {
      description = "Request message for 'AddGroupMigration' request.",
      id = "AddGroupMigrationRequest",
      properties = {
        migratingVm = {
          description = "The full path name of the MigratingVm to add.",
          type = "string",
        },
      },
      type = "object",
    },
    ApplianceVersion = {
      description = "Describes an appliance version.",
      id = "ApplianceVersion",
      properties = {
        critical = {
          description = "Determine whether it's critical to upgrade the appliance to this version.",
          type = "boolean",
        },
        releaseNotesUri = {
          description = "Link to a page that contains the version release notes.",
          type = "string",
        },
        uri = {
          description = "A link for downloading the version.",
          type = "string",
        },
        version = {
          description = "The appliance version.",
          type = "string",
        },
      },
      type = "object",
    },
    AppliedLicense = {
      description = "AppliedLicense holds the license data returned by adaptation module report.",
      id = "AppliedLicense",
      properties = {
        osLicense = {
          description = "The OS license returned from the adaptation module's report.",
          type = "string",
        },
        type = {
          description = "The license type that was used in OS adaptation.",
          enum = {
            "TYPE_UNSPECIFIED",
            "NONE",
            "PAYG",
            "BYOL",
          },
          enumDescriptions = {
            "Unspecified license for the OS.",
            "No license available for the OS.",
            "The license type is Pay As You Go license type.",
            "The license type is Bring Your Own License type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AvailableUpdates = {
      description = "Holds informatiom about the available versions for upgrade.",
      id = "AvailableUpdates",
      properties = {
        inPlaceUpdate = {
          ["$ref"] = "ApplianceVersion",
          description = "The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.",
        },
        newDeployableAppliance = {
          ["$ref"] = "ApplianceVersion",
          description = "The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.",
        },
      },
      type = "object",
    },
    AwsSecurityGroup = {
      description = "AwsSecurityGroup describes a security group of an AWS VM.",
      id = "AwsSecurityGroup",
      properties = {
        id = {
          description = "The AWS security group id.",
          type = "string",
        },
        name = {
          description = "The AWS security group name.",
          type = "string",
        },
      },
      type = "object",
    },
    AwsSourceDetails = {
      description = "AwsSourceDetails message describes a specific source details for the AWS source type.",
      id = "AwsSourceDetails",
      properties = {
        accessKeyCreds = {
          ["$ref"] = "AccessKeyCredentials",
          description = "AWS Credentials using access key id and secret.",
        },
        awsRegion = {
          description = "Immutable. The AWS region that the source VMs will be migrated from.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. Provides details on the state of the Source in case of an error.",
          readOnly = true,
        },
        inventorySecurityGroupNames = {
          description = "AWS security group names to limit the scope of the source inventory.",
          items = {
            type = "string",
          },
          type = "array",
        },
        inventoryTagList = {
          description = "AWS resource tags to limit the scope of the source inventory.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
        migrationResourcesUserTags = {
          additionalProperties = {
            type = "string",
          },
          description = "User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.",
          type = "object",
        },
        publicIp = {
          description = "Output only. The source's public IP. All communication initiated by this source will originate from this IP.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. State of the source as determined by the health check.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "FAILED",
            "ACTIVE",
          },
          enumDescriptions = {
            "The state is unknown. This is used for API compatibility only and is not used by the system.",
            "The state was not sampled by the health checks yet.",
            "The source is available but might not be usable yet due to invalid credentials or another reason. The error message will contain further details.",
            "The source exists and its credentials were verified.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    AwsSourceVmDetails = {
      description = "Represent the source AWS VM details.",
      id = "AwsSourceVmDetails",
      properties = {
        committedStorageBytes = {
          description = "The total size of the disks being migrated in bytes.",
          format = "int64",
          type = "string",
        },
        firmware = {
          description = "The firmware type of the source VM.",
          enum = {
            "FIRMWARE_UNSPECIFIED",
            "EFI",
            "BIOS",
          },
          enumDescriptions = {
            "The firmware is unknown.",
            "The firmware is EFI.",
            "The firmware is BIOS.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AwsVmDetails = {
      description = "AwsVmDetails describes a VM in AWS.",
      id = "AwsVmDetails",
      properties = {
        architecture = {
          description = "The CPU architecture.",
          enum = {
            "VM_ARCHITECTURE_UNSPECIFIED",
            "I386",
            "X86_64",
            "ARM64",
            "X86_64_MAC",
          },
          enumDescriptions = {
            "The architecture is unknown.",
            "The architecture is I386.",
            "The architecture is X86_64.",
            "The architecture is ARM64.",
            "The architecture is X86_64_MAC.",
          },
          type = "string",
        },
        bootOption = {
          description = "The VM Boot Option.",
          enum = {
            "BOOT_OPTION_UNSPECIFIED",
            "EFI",
            "BIOS",
          },
          enumDescriptions = {
            "The boot option is unknown.",
            "The boot option is UEFI.",
            "The boot option is LEGACY-BIOS.",
          },
          type = "string",
        },
        committedStorageMb = {
          description = "The total size of the storage allocated to the VM in MB.",
          format = "int64",
          type = "string",
        },
        cpuCount = {
          description = "The number of cpus the VM has.",
          format = "int32",
          type = "integer",
        },
        diskCount = {
          description = "The number of disks the VM has.",
          format = "int32",
          type = "integer",
        },
        displayName = {
          description = "The display name of the VM. Note that this value is not necessarily unique.",
          type = "string",
        },
        instanceType = {
          description = "The instance type of the VM.",
          type = "string",
        },
        memoryMb = {
          description = "The memory size of the VM in MB.",
          format = "int32",
          type = "integer",
        },
        osDescription = {
          description = "The VM's OS.",
          type = "string",
        },
        powerState = {
          description = "Output only. The power state of the VM at the moment list was taken.",
          enum = {
            "POWER_STATE_UNSPECIFIED",
            "ON",
            "OFF",
            "SUSPENDED",
            "PENDING",
          },
          enumDescriptions = {
            "Power state is not specified.",
            "The VM is turned on.",
            "The VM is turned off.",
            "The VM is suspended. This is similar to hibernation or sleep mode.",
            "The VM is starting.",
          },
          readOnly = true,
          type = "string",
        },
        securityGroups = {
          description = "The security groups the VM belongs to.",
          items = {
            ["$ref"] = "AwsSecurityGroup",
          },
          type = "array",
        },
        sourceDescription = {
          description = "The descriptive name of the AWS's source this VM is connected to.",
          type = "string",
        },
        sourceId = {
          description = "The id of the AWS's source this VM is connected to.",
          type = "string",
        },
        tags = {
          additionalProperties = {
            type = "string",
          },
          description = "The tags of the VM.",
          type = "object",
        },
        virtualizationType = {
          description = "The virtualization type.",
          enum = {
            "VM_VIRTUALIZATION_TYPE_UNSPECIFIED",
            "HVM",
            "PARAVIRTUAL",
          },
          enumDescriptions = {
            "The virtualization type is unknown.",
            "The virtualziation type is HVM.",
            "The virtualziation type is PARAVIRTUAL.",
          },
          type = "string",
        },
        vmId = {
          description = "The VM ID in AWS.",
          type = "string",
        },
        vpcId = {
          description = "The VPC ID the VM belongs to.",
          type = "string",
        },
        zone = {
          description = "The AWS zone of the VM.",
          type = "string",
        },
      },
      type = "object",
    },
    AwsVmsDetails = {
      description = "AWSVmsDetails describes VMs in AWS.",
      id = "AwsVmsDetails",
      properties = {
        details = {
          description = "The details of the AWS VMs.",
          items = {
            ["$ref"] = "AwsVmDetails",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CancelCloneJobRequest = {
      description = "Request message for 'CancelCloneJob' request.",
      id = "CancelCloneJobRequest",
      properties = {},
      type = "object",
    },
    CancelCutoverJobRequest = {
      description = "Request message for 'CancelCutoverJob' request.",
      id = "CancelCutoverJobRequest",
      properties = {},
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    CloneJob = {
      description = "CloneJob describes the process of creating a clone of a MigratingVM to the requested target based on the latest successful uploaded snapshots. While the migration cycles of a MigratingVm take place, it is possible to verify the uploaded VM can be started in the cloud, by creating a clone. The clone can be created without any downtime, and it is created using the latest snapshots which are already in the cloud. The cloneJob is only responsible for its work, not its products, which means once it is finished, it will never touch the instance it created. It will only delete it in case of the CloneJob being cancelled or upon failure to clone.",
      id = "CloneJob",
      properties = {
        computeEngineTargetDetails = {
          ["$ref"] = "ComputeEngineTargetDetails",
          description = "Output only. Details of the target VM in Compute Engine.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time the clone job was created (as an API call, not when it was actually created in the target).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the clone job was ended.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. Provides details for the errors that led to the Clone Job's state.",
          readOnly = true,
        },
        name = {
          description = "Output only. The name of the clone.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. State of the clone job.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "ACTIVE",
            "FAILED",
            "SUCCEEDED",
            "CANCELLED",
            "CANCELLING",
            "ADAPTING_OS",
          },
          enumDescriptions = {
            "The state is unknown. This is used for API compatibility only and is not used by the system.",
            "The clone job has not yet started.",
            "The clone job is active and running.",
            "The clone job finished with errors.",
            "The clone job finished successfully.",
            "The clone job was cancelled.",
            "The clone job is being cancelled.",
            "OS adaptation is running as part of the clone job to generate license.",
          },
          readOnly = true,
          type = "string",
        },
        stateTime = {
          description = "Output only. The time the state was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        steps = {
          description = "Output only. The clone steps list representing its progress.",
          items = {
            ["$ref"] = "CloneStep",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    CloneStep = {
      description = "CloneStep holds information about the clone step progress.",
      id = "CloneStep",
      properties = {
        adaptingOs = {
          ["$ref"] = "AdaptingOSStep",
          description = "Adapting OS step.",
        },
        endTime = {
          description = "The time the step has ended.",
          format = "google-datetime",
          type = "string",
        },
        instantiatingMigratedVm = {
          ["$ref"] = "InstantiatingMigratedVMStep",
          description = "Instantiating migrated VM step.",
        },
        preparingVmDisks = {
          ["$ref"] = "PreparingVMDisksStep",
          description = "Preparing VM disks step.",
        },
        startTime = {
          description = "The time the step has started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ComputeEngineTargetDefaults = {
      description = "ComputeEngineTargetDefaults is a collection of details for creating a VM in a target Compute Engine project.",
      id = "ComputeEngineTargetDefaults",
      properties = {
        additionalLicenses = {
          description = "Additional licenses to assign to the VM.",
          items = {
            type = "string",
          },
          type = "array",
        },
        appliedLicense = {
          ["$ref"] = "AppliedLicense",
          description = "Output only. The OS license returned from the adaptation module report.",
          readOnly = true,
        },
        bootOption = {
          description = "Output only. The VM Boot Option, as set in the source vm.",
          enum = {
            "COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED",
            "COMPUTE_ENGINE_BOOT_OPTION_EFI",
            "COMPUTE_ENGINE_BOOT_OPTION_BIOS",
          },
          enumDescriptions = {
            "The boot option is unknown.",
            "The boot option is EFI.",
            "The boot option is BIOS.",
          },
          readOnly = true,
          type = "string",
        },
        computeScheduling = {
          ["$ref"] = "ComputeScheduling",
          description = "Compute instance scheduling information (if empty default is used).",
        },
        diskType = {
          description = "The disk type to use in the VM.",
          enum = {
            "COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED",
            "COMPUTE_ENGINE_DISK_TYPE_STANDARD",
            "COMPUTE_ENGINE_DISK_TYPE_SSD",
            "COMPUTE_ENGINE_DISK_TYPE_BALANCED",
          },
          enumDescriptions = {
            "An unspecified disk type. Will be used as STANDARD.",
            "A Standard disk type.",
            "SSD hard disk type.",
            "An alternative to SSD persistent disks that balance performance and cost.",
          },
          type = "string",
        },
        hostname = {
          description = "The hostname to assign to the VM.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of labels to associate with the VM.",
          type = "object",
        },
        licenseType = {
          description = "The license type to use in OS adaptation.",
          enum = {
            "COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT",
            "COMPUTE_ENGINE_LICENSE_TYPE_PAYG",
            "COMPUTE_ENGINE_LICENSE_TYPE_BYOL",
          },
          enumDescriptions = {
            "The license type is the default for the OS.",
            "The license type is Pay As You Go license type.",
            "The license type is Bring Your Own License type.",
          },
          type = "string",
        },
        machineType = {
          description = "The machine type to create the VM with.",
          type = "string",
        },
        machineTypeSeries = {
          description = "The machine type series to create the VM with.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "The metadata key/value pairs to assign to the VM.",
          type = "object",
        },
        networkInterfaces = {
          description = "List of NICs connected to this VM.",
          items = {
            ["$ref"] = "NetworkInterface",
          },
          type = "array",
        },
        networkTags = {
          description = "A map of network tags to associate with the VM.",
          items = {
            type = "string",
          },
          type = "array",
        },
        secureBoot = {
          description = "Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.",
          type = "boolean",
        },
        serviceAccount = {
          description = "The service account to associate the VM with.",
          type = "string",
        },
        targetProject = {
          description = "The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.",
          type = "string",
        },
        vmName = {
          description = "The name of the VM to create.",
          type = "string",
        },
        zone = {
          description = "The zone in which to create the VM.",
          type = "string",
        },
      },
      type = "object",
    },
    ComputeEngineTargetDetails = {
      description = "ComputeEngineTargetDetails is a collection of details for creating a VM in a target Compute Engine project.",
      id = "ComputeEngineTargetDetails",
      properties = {
        additionalLicenses = {
          description = "Additional licenses to assign to the VM.",
          items = {
            type = "string",
          },
          type = "array",
        },
        appliedLicense = {
          ["$ref"] = "AppliedLicense",
          description = "The OS license returned from the adaptation module report.",
        },
        bootOption = {
          description = "The VM Boot Option, as set in the source vm.",
          enum = {
            "COMPUTE_ENGINE_BOOT_OPTION_UNSPECIFIED",
            "COMPUTE_ENGINE_BOOT_OPTION_EFI",
            "COMPUTE_ENGINE_BOOT_OPTION_BIOS",
          },
          enumDescriptions = {
            "The boot option is unknown.",
            "The boot option is EFI.",
            "The boot option is BIOS.",
          },
          type = "string",
        },
        computeScheduling = {
          ["$ref"] = "ComputeScheduling",
          description = "Compute instance scheduling information (if empty default is used).",
        },
        diskType = {
          description = "The disk type to use in the VM.",
          enum = {
            "COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED",
            "COMPUTE_ENGINE_DISK_TYPE_STANDARD",
            "COMPUTE_ENGINE_DISK_TYPE_SSD",
            "COMPUTE_ENGINE_DISK_TYPE_BALANCED",
          },
          enumDescriptions = {
            "An unspecified disk type. Will be used as STANDARD.",
            "A Standard disk type.",
            "SSD hard disk type.",
            "An alternative to SSD persistent disks that balance performance and cost.",
          },
          type = "string",
        },
        hostname = {
          description = "The hostname to assign to the VM.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of labels to associate with the VM.",
          type = "object",
        },
        licenseType = {
          description = "The license type to use in OS adaptation.",
          enum = {
            "COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT",
            "COMPUTE_ENGINE_LICENSE_TYPE_PAYG",
            "COMPUTE_ENGINE_LICENSE_TYPE_BYOL",
          },
          enumDescriptions = {
            "The license type is the default for the OS.",
            "The license type is Pay As You Go license type.",
            "The license type is Bring Your Own License type.",
          },
          type = "string",
        },
        machineType = {
          description = "The machine type to create the VM with.",
          type = "string",
        },
        machineTypeSeries = {
          description = "The machine type series to create the VM with.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "The metadata key/value pairs to assign to the VM.",
          type = "object",
        },
        networkInterfaces = {
          description = "List of NICs connected to this VM.",
          items = {
            ["$ref"] = "NetworkInterface",
          },
          type = "array",
        },
        networkTags = {
          description = "A map of network tags to associate with the VM.",
          items = {
            type = "string",
          },
          type = "array",
        },
        project = {
          description = "The Google Cloud target project ID or project name.",
          type = "string",
        },
        secureBoot = {
          description = "Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.",
          type = "boolean",
        },
        serviceAccount = {
          description = "The service account to associate the VM with.",
          type = "string",
        },
        vmName = {
          description = "The name of the VM to create.",
          type = "string",
        },
        zone = {
          description = "The zone in which to create the VM.",
          type = "string",
        },
      },
      type = "object",
    },
    ComputeScheduling = {
      description = "Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.",
      id = "ComputeScheduling",
      properties = {
        minNodeCpus = {
          description = "The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.",
          format = "int32",
          type = "integer",
        },
        nodeAffinities = {
          description = "A set of node affinity and anti-affinity configurations for sole tenant nodes.",
          items = {
            ["$ref"] = "SchedulingNodeAffinity",
          },
          type = "array",
        },
        onHostMaintenance = {
          description = "How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.",
          enum = {
            "ON_HOST_MAINTENANCE_UNSPECIFIED",
            "TERMINATE",
            "MIGRATE",
          },
          enumDescriptions = {
            "An unknown, unexpected behavior.",
            "Terminate the instance when the host machine undergoes maintenance.",
            "Migrate the instance when the host machine undergoes maintenance.",
          },
          type = "string",
        },
        restartType = {
          description = "Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.",
          enum = {
            "RESTART_TYPE_UNSPECIFIED",
            "AUTOMATIC_RESTART",
            "NO_AUTOMATIC_RESTART",
          },
          enumDescriptions = {
            "Unspecified behavior. This will use the default.",
            "The Instance should be automatically restarted whenever it is terminated by Compute Engine.",
            "The Instance isn't automatically restarted whenever it is terminated by Compute Engine.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CutoverJob = {
      description = "CutoverJob message describes a cutover of a migrating VM. The CutoverJob is the operation of shutting down the VM, creating a snapshot and clonning the VM using the replicated snapshot.",
      id = "CutoverJob",
      properties = {
        computeEngineTargetDetails = {
          ["$ref"] = "ComputeEngineTargetDetails",
          description = "Output only. Details of the target VM in Compute Engine.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time the cutover job was created (as an API call, not when it was actually created in the target).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the cutover job had finished.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. Provides details for the errors that led to the Cutover Job's state.",
          readOnly = true,
        },
        name = {
          description = "Output only. The name of the cutover job.",
          readOnly = true,
          type = "string",
        },
        progressPercent = {
          description = "Output only. The current progress in percentage of the cutover job.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        state = {
          description = "Output only. State of the cutover job.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "FAILED",
            "SUCCEEDED",
            "CANCELLED",
            "CANCELLING",
            "ACTIVE",
            "ADAPTING_OS",
          },
          enumDescriptions = {
            "The state is unknown. This is used for API compatibility only and is not used by the system.",
            "The cutover job has not yet started.",
            "The cutover job finished with errors.",
            "The cutover job finished successfully.",
            "The cutover job was cancelled.",
            "The cutover job is being cancelled.",
            "The cutover job is active and running.",
            "OS adaptation is running as part of the cutover job to generate license.",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. A message providing possible extra details about the current state.",
          readOnly = true,
          type = "string",
        },
        stateTime = {
          description = "Output only. The time the state was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        steps = {
          description = "Output only. The cutover steps list representing its progress.",
          items = {
            ["$ref"] = "CutoverStep",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    CutoverStep = {
      description = "CutoverStep holds information about the cutover step progress.",
      id = "CutoverStep",
      properties = {
        endTime = {
          description = "The time the step has ended.",
          format = "google-datetime",
          type = "string",
        },
        finalSync = {
          ["$ref"] = "ReplicationCycle",
          description = "Final sync step.",
        },
        instantiatingMigratedVm = {
          ["$ref"] = "InstantiatingMigratedVMStep",
          description = "Instantiating migrated VM step.",
        },
        preparingVmDisks = {
          ["$ref"] = "PreparingVMDisksStep",
          description = "Preparing VM disks step.",
        },
        previousReplicationCycle = {
          ["$ref"] = "ReplicationCycle",
          description = "A replication cycle prior cutover step.",
        },
        shuttingDownSourceVm = {
          ["$ref"] = "ShuttingDownSourceVMStep",
          description = "Shutting down VM step.",
        },
        startTime = {
          description = "The time the step has started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CycleStep = {
      description = "CycleStep holds information about a step progress.",
      id = "CycleStep",
      properties = {
        endTime = {
          description = "The time the cycle step has ended.",
          format = "google-datetime",
          type = "string",
        },
        initializingReplication = {
          ["$ref"] = "InitializingReplicationStep",
          description = "Initializing replication step.",
        },
        postProcessing = {
          ["$ref"] = "PostProcessingStep",
          description = "Post processing step.",
        },
        replicating = {
          ["$ref"] = "ReplicatingStep",
          description = "Replicating step.",
        },
        startTime = {
          description = "The time the cycle step has started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    DatacenterConnector = {
      description = "DatacenterConnector message describes a connector between the Source and Google Cloud, which is installed on a vmware datacenter (an OVA vm installed by the user) to connect the Datacenter to Google Cloud and support vm migration data transfer.",
      id = "DatacenterConnector",
      properties = {
        applianceInfrastructureVersion = {
          description = "Output only. Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.",
          readOnly = true,
          type = "string",
        },
        applianceSoftwareVersion = {
          description = "Output only. Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.",
          readOnly = true,
          type = "string",
        },
        availableVersions = {
          ["$ref"] = "AvailableUpdates",
          description = "Output only. The available versions for updating this appliance.",
          readOnly = true,
        },
        bucket = {
          description = "Output only. The communication channel between the datacenter connector and Google Cloud.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time the connector was created (as an API call, not when it was actually installed).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. Provides details on the state of the Datacenter Connector in case of an error.",
          readOnly = true,
        },
        name = {
          description = "Output only. The connector's name.",
          readOnly = true,
          type = "string",
        },
        registrationId = {
          description = "Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.",
          type = "string",
        },
        serviceAccount = {
          description = "The service account to use in the connector when communicating with the cloud.",
          type = "string",
        },
        state = {
          description = "Output only. State of the DatacenterConnector, as determined by the health checks.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "OFFLINE",
            "FAILED",
            "ACTIVE",
          },
          enumDescriptions = {
            "The state is unknown. This is used for API compatibility only and is not used by the system.",
            "The state was not sampled by the health checks yet.",
            "The source was sampled by health checks and is not available.",
            "The source is available but might not be usable yet due to unvalidated credentials or another reason. The credentials referred to are the ones to the Source. The error message will contain further details.",
            "The source exists and its credentials were verified.",
          },
          readOnly = true,
          type = "string",
        },
        stateTime = {
          description = "Output only. The time the state was last set.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last time the connector was updated with an API call.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        upgradeStatus = {
          ["$ref"] = "UpgradeStatus",
          description = "Output only. The status of the current / last upgradeAppliance operation.",
          readOnly = true,
        },
        version = {
          description = "The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.",
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
    FetchInventoryResponse = {
      description = "Response message for fetchInventory.",
      id = "FetchInventoryResponse",
      properties = {
        awsVms = {
          ["$ref"] = "AwsVmsDetails",
          description = "The description of the VMs in a Source of type AWS.",
        },
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the source was last queried (if the result is from the cache).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vmwareVms = {
          ["$ref"] = "VmwareVmsDetails",
          description = "The description of the VMs in a Source of type Vmware.",
        },
      },
      type = "object",
    },
    FinalizeMigrationRequest = {
      description = "Request message for 'FinalizeMigration' request.",
      id = "FinalizeMigrationRequest",
      properties = {},
      type = "object",
    },
    Group = {
      description = "Describes message for 'Group' resource. The Group is a collections of several MigratingVms.",
      id = "Group",
      properties = {
        createTime = {
          description = "Output only. The create time timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "User-provided description of the group.",
          type = "string",
        },
        displayName = {
          description = "Display name is a user defined name for this group which can be updated.",
          type = "string",
        },
        name = {
          description = "Output only. The Group name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The update time timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    InitializingReplicationStep = {
      description = "InitializingReplicationStep contains specific step details.",
      id = "InitializingReplicationStep",
      properties = {},
      type = "object",
    },
    InstantiatingMigratedVMStep = {
      description = "InstantiatingMigratedVMStep contains specific step details.",
      id = "InstantiatingMigratedVMStep",
      properties = {},
      type = "object",
    },
    Link = {
      description = "Describes a URL link.",
      id = "Link",
      properties = {
        description = {
          description = "Describes what the link offers.",
          type = "string",
        },
        url = {
          description = "The URL of the link.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCloneJobsResponse = {
      description = "Response message for 'ListCloneJobs' request.",
      id = "ListCloneJobsResponse",
      properties = {
        cloneJobs = {
          description = "Output only. The list of clone jobs response.",
          items = {
            ["$ref"] = "CloneJob",
          },
          readOnly = true,
          type = "array",
        },
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListCutoverJobsResponse = {
      description = "Response message for 'ListCutoverJobs' request.",
      id = "ListCutoverJobsResponse",
      properties = {
        cutoverJobs = {
          description = "Output only. The list of cutover jobs response.",
          items = {
            ["$ref"] = "CutoverJob",
          },
          readOnly = true,
          type = "array",
        },
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListDatacenterConnectorsResponse = {
      description = "Response message for 'ListDatacenterConnectors' request.",
      id = "ListDatacenterConnectorsResponse",
      properties = {
        datacenterConnectors = {
          description = "Output only. The list of sources response.",
          items = {
            ["$ref"] = "DatacenterConnector",
          },
          readOnly = true,
          type = "array",
        },
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListGroupsResponse = {
      description = "Response message for 'ListGroups' request.",
      id = "ListGroupsResponse",
      properties = {
        groups = {
          description = "Output only. The list of groups response.",
          items = {
            ["$ref"] = "Group",
          },
          readOnly = true,
          type = "array",
        },
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
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
    ListMigratingVmsResponse = {
      description = "Response message for 'ListMigratingVms' request.",
      id = "ListMigratingVmsResponse",
      properties = {
        migratingVms = {
          description = "Output only. The list of Migrating VMs response.",
          items = {
            ["$ref"] = "MigratingVm",
          },
          readOnly = true,
          type = "array",
        },
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
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
    ListReplicationCyclesResponse = {
      description = "Response message for 'ListReplicationCycles' request.",
      id = "ListReplicationCyclesResponse",
      properties = {
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        replicationCycles = {
          description = "Output only. The list of replication cycles response.",
          items = {
            ["$ref"] = "ReplicationCycle",
          },
          readOnly = true,
          type = "array",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListSourcesResponse = {
      description = "Response message for 'ListSources' request.",
      id = "ListSourcesResponse",
      properties = {
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        sources = {
          description = "Output only. The list of sources response.",
          items = {
            ["$ref"] = "Source",
          },
          readOnly = true,
          type = "array",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListTargetProjectsResponse = {
      description = "Response message for 'ListTargetProjects' call.",
      id = "ListTargetProjectsResponse",
      properties = {
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        targetProjects = {
          description = "Output only. The list of target response.",
          items = {
            ["$ref"] = "TargetProject",
          },
          readOnly = true,
          type = "array",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListUtilizationReportsResponse = {
      description = "Response message for 'ListUtilizationReports' request.",
      id = "ListUtilizationReportsResponse",
      properties = {
        nextPageToken = {
          description = "Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          readOnly = true,
          type = "string",
        },
        unreachable = {
          description = "Output only. Locations that could not be reached.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        utilizationReports = {
          description = "Output only. The list of reports.",
          items = {
            ["$ref"] = "UtilizationReport",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    LocalizedMessage = {
      description = "Provides a localized error message that is safe to return to the user which can be attached to an RPC error.",
      id = "LocalizedMessage",
      properties = {
        locale = {
          description = "The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: \"en-US\", \"fr-CH\", \"es-MX\"",
          type = "string",
        },
        message = {
          description = "The localized error message in the above locale.",
          type = "string",
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
    MigratingVm = {
      description = "MigratingVm describes the VM that will be migrated from a Source environment and its replication state.",
      id = "MigratingVm",
      properties = {
        awsSourceVmDetails = {
          ["$ref"] = "AwsSourceVmDetails",
          description = "Output only. Details of the VM from an AWS source.",
          readOnly = true,
        },
        computeEngineTargetDefaults = {
          ["$ref"] = "ComputeEngineTargetDefaults",
          description = "Details of the target VM in Compute Engine.",
        },
        createTime = {
          description = "Output only. The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        currentSyncInfo = {
          ["$ref"] = "ReplicationCycle",
          description = "Output only. The percentage progress of the current running replication cycle.",
          readOnly = true,
        },
        description = {
          description = "The description attached to the migrating VM by the user.",
          type = "string",
        },
        displayName = {
          description = "The display name attached to the MigratingVm by the user.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. Provides details on the state of the Migrating VM in case of an error in replication.",
          readOnly = true,
        },
        group = {
          description = "Output only. The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels of the migrating VM.",
          type = "object",
        },
        lastSync = {
          ["$ref"] = "ReplicationSync",
          description = "Output only. The most updated snapshot created time in the source that finished replication.",
          readOnly = true,
        },
        name = {
          description = "Output only. The identifier of the MigratingVm.",
          readOnly = true,
          type = "string",
        },
        policy = {
          ["$ref"] = "SchedulePolicy",
          description = "The replication schedule policy.",
        },
        recentCloneJobs = {
          description = "Output only. The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the \"view\" parameter of the Get/List request.",
          items = {
            ["$ref"] = "CloneJob",
          },
          readOnly = true,
          type = "array",
        },
        recentCutoverJobs = {
          description = "Output only. The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the \"view\" parameter of the Get/List request.",
          items = {
            ["$ref"] = "CutoverJob",
          },
          readOnly = true,
          type = "array",
        },
        sourceVmId = {
          description = "The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.",
          type = "string",
        },
        state = {
          description = "Output only. State of the MigratingVm.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "READY",
            "FIRST_SYNC",
            "ACTIVE",
            "CUTTING_OVER",
            "CUTOVER",
            "FINAL_SYNC",
            "PAUSED",
            "FINALIZING",
            "FINALIZED",
            "ERROR",
          },
          enumDescriptions = {
            "The state was not sampled by the health checks yet.",
            "The VM in the source is being verified.",
            "The source VM was verified, and it's ready to start replication.",
            "Migration is going through the first sync cycle.",
            "The replication is active, and it's running or scheduled to run.",
            "The source VM is being turned off, and a final replication is currently running.",
            "The source VM was stopped and replicated. The replication is currently paused.",
            "A cutover job is active and replication cycle is running the final sync.",
            "The replication was paused by the user and no cycles are scheduled to run.",
            "The migrating VM is being finalized and migration resources are being removed.",
            "The replication process is done. The migrating VM is finalized and no longer consumes billable resources.",
            "The replication process encountered an unrecoverable error and was aborted.",
          },
          readOnly = true,
          type = "string",
        },
        stateTime = {
          description = "Output only. The last time the migrating VM state was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last time the migrating VM resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MigrationError = {
      description = "Represents migration resource error information that can be used with google.rpc.Status message. MigrationError is used to present the user with error information in migration operations.",
      id = "MigrationError",
      properties = {
        actionItem = {
          ["$ref"] = "LocalizedMessage",
          description = "Output only. Suggested action for solving the error.",
          readOnly = true,
        },
        code = {
          description = "Output only. The error code.",
          enum = {
            "ERROR_CODE_UNSPECIFIED",
            "UNKNOWN_ERROR",
            "SOURCE_VALIDATION_ERROR",
            "SOURCE_REPLICATION_ERROR",
            "TARGET_REPLICATION_ERROR",
            "OS_ADAPTATION_ERROR",
            "CLONE_ERROR",
            "CUTOVER_ERROR",
            "UTILIZATION_REPORT_ERROR",
            "APPLIANCE_UPGRADE_ERROR",
          },
          enumDescriptions = {
            "Default value. This value is not used.",
            "Migrate for Compute encountered an unknown error.",
            "Migrate for Compute encountered an error while validating replication source health.",
            "Migrate for Compute encountered an error during source data operation.",
            "Migrate for Compute encountered an error during target data operation.",
            "Migrate for Compute encountered an error during OS adaptation.",
            "Migrate for Compute encountered an error in clone operation.",
            "Migrate for Compute encountered an error in cutover operation.",
            "Migrate for Compute encountered an error during utilization report creation.",
            "Migrate for Compute encountered an error during appliance upgrade.",
          },
          readOnly = true,
          type = "string",
        },
        errorMessage = {
          ["$ref"] = "LocalizedMessage",
          description = "Output only. The localized error message.",
          readOnly = true,
        },
        errorTime = {
          description = "Output only. The time the error occurred.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        helpLinks = {
          description = "Output only. URL(s) pointing to additional information on handling the current error.",
          items = {
            ["$ref"] = "Link",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    NetworkInterface = {
      description = "NetworkInterface represents a NIC of a VM.",
      id = "NetworkInterface",
      properties = {
        externalIp = {
          description = "The external IP to define in the NIC.",
          type = "string",
        },
        internalIp = {
          description = "The internal IP to define in the NIC. The formats accepted are: `ephemeral` \\ ipv4 address \\ a named address resource full path.",
          type = "string",
        },
        network = {
          description = "The network to connect the NIC to.",
          type = "string",
        },
        subnetwork = {
          description = "The subnetwork to connect the NIC to.",
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
    PauseMigrationRequest = {
      description = "Request message for 'PauseMigration' request.",
      id = "PauseMigrationRequest",
      properties = {},
      type = "object",
    },
    PostProcessingStep = {
      description = "PostProcessingStep contains specific step details.",
      id = "PostProcessingStep",
      properties = {},
      type = "object",
    },
    PreparingVMDisksStep = {
      description = "PreparingVMDisksStep contains specific step details.",
      id = "PreparingVMDisksStep",
      properties = {},
      type = "object",
    },
    RemoveGroupMigrationRequest = {
      description = "Request message for 'RemoveMigration' request.",
      id = "RemoveGroupMigrationRequest",
      properties = {
        migratingVm = {
          description = "The MigratingVm to remove.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplicatingStep = {
      description = "ReplicatingStep contains specific step details.",
      id = "ReplicatingStep",
      properties = {
        lastThirtyMinutesAverageBytesPerSecond = {
          description = "The source disks replication rate for the last 30 minutes in bytes per second.",
          format = "int64",
          type = "string",
        },
        lastTwoMinutesAverageBytesPerSecond = {
          description = "The source disks replication rate for the last 2 minutes in bytes per second.",
          format = "int64",
          type = "string",
        },
        replicatedBytes = {
          description = "Replicated bytes in the step.",
          format = "int64",
          type = "string",
        },
        totalBytes = {
          description = "Total bytes to be handled in the step.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ReplicationCycle = {
      description = "ReplicationCycle contains information about the current replication cycle status.",
      id = "ReplicationCycle",
      properties = {
        cycleNumber = {
          description = "The cycle's ordinal number.",
          format = "int32",
          type = "integer",
        },
        endTime = {
          description = "The time the replication cycle has ended.",
          format = "google-datetime",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Provides details on the state of the cycle in case of an error.",
        },
        name = {
          description = "The identifier of the ReplicationCycle.",
          type = "string",
        },
        progressPercent = {
          description = "The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "The time the replication cycle has started.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "State of the ReplicationCycle.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "PAUSED",
            "FAILED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "The state is unknown. This is used for API compatibility only and is not used by the system.",
            "The replication cycle is running.",
            "The replication cycle is paused.",
            "The replication cycle finished with errors.",
            "The replication cycle finished successfully.",
          },
          type = "string",
        },
        steps = {
          description = "The cycle's steps list representing its progress.",
          items = {
            ["$ref"] = "CycleStep",
          },
          type = "array",
        },
        totalPauseDuration = {
          description = "The accumulated duration the replication cycle was paused.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    ReplicationSync = {
      description = "ReplicationSync contain information about the last replica sync to the cloud.",
      id = "ReplicationSync",
      properties = {
        lastSyncTime = {
          description = "The most updated snapshot created time in the source that finished replication.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ResumeMigrationRequest = {
      description = "Request message for 'ResumeMigration' request.",
      id = "ResumeMigrationRequest",
      properties = {},
      type = "object",
    },
    SchedulePolicy = {
      description = "A policy for scheduling replications.",
      id = "SchedulePolicy",
      properties = {
        idleDuration = {
          description = "The idle duration between replication stages.",
          format = "google-duration",
          type = "string",
        },
        skipOsAdaptation = {
          description = "A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SchedulingNodeAffinity = {
      description = "Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled. Based on https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling",
      id = "SchedulingNodeAffinity",
      properties = {
        key = {
          description = "The label key of Node resource to reference.",
          type = "string",
        },
        operator = {
          description = "The operator to use for the node resources specified in the `values` parameter.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "IN",
            "NOT_IN",
          },
          enumDescriptions = {
            "An unknown, unexpected behavior.",
            "The node resource group should be in these resources affinity.",
            "The node resource group should not be in these resources affinity.",
          },
          type = "string",
        },
        values = {
          description = "Corresponds to the label values of Node resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShuttingDownSourceVMStep = {
      description = "ShuttingDownSourceVMStep contains specific step details.",
      id = "ShuttingDownSourceVMStep",
      properties = {},
      type = "object",
    },
    Source = {
      description = "Source message describes a specific vm migration Source resource. It contains the source environment information.",
      id = "Source",
      properties = {
        aws = {
          ["$ref"] = "AwsSourceDetails",
          description = "AWS type source details.",
        },
        createTime = {
          description = "Output only. The create time timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "User-provided description of the source.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels of the source.",
          type = "object",
        },
        name = {
          description = "Output only. The Source name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The update time timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vmware = {
          ["$ref"] = "VmwareSourceDetails",
          description = "Vmware type source details.",
        },
      },
      type = "object",
    },
    StartMigrationRequest = {
      description = "Request message for 'StartMigrationRequest' request.",
      id = "StartMigrationRequest",
      properties = {},
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
    Tag = {
      description = "Tag is an AWS tag representation.",
      id = "Tag",
      properties = {
        key = {
          description = "Key of tag.",
          type = "string",
        },
        value = {
          description = "Value of tag.",
          type = "string",
        },
      },
      type = "object",
    },
    TargetProject = {
      description = "TargetProject message represents a target Compute Engine project for a migration or a clone.",
      id = "TargetProject",
      properties = {
        createTime = {
          description = "Output only. The time this target project resource was created (not related to when the Compute Engine project it points to was created).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The target project's description.",
          type = "string",
        },
        name = {
          description = "Output only. The name of the target project.",
          readOnly = true,
          type = "string",
        },
        project = {
          description = "The target project ID (number) or project name.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The last time the target project resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeApplianceRequest = {
      description = "Request message for 'UpgradeAppliance' request.",
      id = "UpgradeApplianceRequest",
      properties = {
        requestId = {
          description = "A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeStatus = {
      description = "UpgradeStatus contains information about upgradeAppliance operation.",
      id = "UpgradeStatus",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "Provides details on the state of the upgrade operation in case of an error.",
        },
        previousVersion = {
          description = "The version from which we upgraded.",
          type = "string",
        },
        startTime = {
          description = "The time the operation was started.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The state of the upgradeAppliance operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "FAILED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "The state was not sampled by the health checks yet.",
            "The upgrade has started.",
            "The upgrade failed.",
            "The upgrade finished successfully.",
          },
          type = "string",
        },
        version = {
          description = "The version to upgrade to.",
          type = "string",
        },
      },
      type = "object",
    },
    UtilizationReport = {
      description = "Utilization report details the utilization (CPU, memory, etc.) of selected source VMs.",
      id = "UtilizationReport",
      properties = {
        createTime = {
          description = "Output only. The time the report was created (this refers to the time of the request, not the time the report creation completed).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The report display name, as assigned by the user.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. Provides details on the state of the report in case of an error.",
          readOnly = true,
        },
        frameEndTime = {
          description = "Output only. The point in time when the time frame ends. Notice that the time frame is counted backwards. For instance if the \"frame_end_time\" value is 2021/01/20 and the time frame is WEEK then the report covers the week between 2021/01/20 and 2021/01/14.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The report unique name.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Current state of the report.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "The state is unknown. This value is not in use.",
            "The report is in the making.",
            "Report creation completed successfully.",
            "Report creation failed.",
          },
          readOnly = true,
          type = "string",
        },
        stateTime = {
          description = "Output only. The time the state was last set.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        timeFrame = {
          description = "Time frame of the report.",
          enum = {
            "TIME_FRAME_UNSPECIFIED",
            "WEEK",
            "MONTH",
            "YEAR",
          },
          enumDescriptions = {
            "The time frame was not specified and will default to WEEK.",
            "One week.",
            "One month.",
            "One year.",
          },
          type = "string",
        },
        vmCount = {
          description = "Output only. Total number of VMs included in the report.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        vms = {
          description = "List of utilization information per VM. When sent as part of the request, the \"vm_id\" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.",
          items = {
            ["$ref"] = "VmUtilizationInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VmUtilizationInfo = {
      description = "Utilization information of a single VM.",
      id = "VmUtilizationInfo",
      properties = {
        utilization = {
          ["$ref"] = "VmUtilizationMetrics",
          description = "Utilization metrics for this VM.",
        },
        vmId = {
          description = "The VM's ID in the source.",
          type = "string",
        },
        vmwareVmDetails = {
          ["$ref"] = "VmwareVmDetails",
          description = "The description of the VM in a Source of type Vmware.",
        },
      },
      type = "object",
    },
    VmUtilizationMetrics = {
      description = "Utilization metrics values for a single VM.",
      id = "VmUtilizationMetrics",
      properties = {
        cpuAveragePercent = {
          description = "Average CPU usage, percent.",
          format = "int32",
          type = "integer",
        },
        cpuMaxPercent = {
          description = "Max CPU usage, percent.",
          format = "int32",
          type = "integer",
        },
        diskIoRateAverageKbps = {
          description = "Average disk IO rate, in kilobytes per second.",
          format = "int64",
          type = "string",
        },
        diskIoRateMaxKbps = {
          description = "Max disk IO rate, in kilobytes per second.",
          format = "int64",
          type = "string",
        },
        memoryAveragePercent = {
          description = "Average memory usage, percent.",
          format = "int32",
          type = "integer",
        },
        memoryMaxPercent = {
          description = "Max memory usage, percent.",
          format = "int32",
          type = "integer",
        },
        networkThroughputAverageKbps = {
          description = "Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.",
          format = "int64",
          type = "string",
        },
        networkThroughputMaxKbps = {
          description = "Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    VmwareSourceDetails = {
      description = "VmwareSourceDetails message describes a specific source details for the vmware source type.",
      id = "VmwareSourceDetails",
      properties = {
        password = {
          description = "Input only. The credentials password. This is write only and can not be read in a GET operation.",
          type = "string",
        },
        thumbprint = {
          description = "The thumbprint representing the certificate for the vcenter.",
          type = "string",
        },
        username = {
          description = "The credentials username.",
          type = "string",
        },
        vcenterIp = {
          description = "The ip address of the vcenter this Source represents.",
          type = "string",
        },
      },
      type = "object",
    },
    VmwareVmDetails = {
      description = "VmwareVmDetails describes a VM in vCenter.",
      id = "VmwareVmDetails",
      properties = {
        bootOption = {
          description = "Output only. The VM Boot Option.",
          enum = {
            "BOOT_OPTION_UNSPECIFIED",
            "EFI",
            "BIOS",
          },
          enumDescriptions = {
            "The boot option is unknown.",
            "The boot option is EFI.",
            "The boot option is BIOS.",
          },
          readOnly = true,
          type = "string",
        },
        committedStorageMb = {
          description = "The total size of the storage allocated to the VM in MB.",
          format = "int64",
          type = "string",
        },
        cpuCount = {
          description = "The number of cpus in the VM.",
          format = "int32",
          type = "integer",
        },
        datacenterDescription = {
          description = "The descriptive name of the vCenter's datacenter this VM is contained in.",
          type = "string",
        },
        datacenterId = {
          description = "The id of the vCenter's datacenter this VM is contained in.",
          type = "string",
        },
        diskCount = {
          description = "The number of disks the VM has.",
          format = "int32",
          type = "integer",
        },
        displayName = {
          description = "The display name of the VM. Note that this is not necessarily unique.",
          type = "string",
        },
        guestDescription = {
          description = "The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of strings this might hold.",
          type = "string",
        },
        memoryMb = {
          description = "The size of the memory of the VM in MB.",
          format = "int32",
          type = "integer",
        },
        powerState = {
          description = "The power state of the VM at the moment list was taken.",
          enum = {
            "POWER_STATE_UNSPECIFIED",
            "ON",
            "OFF",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Power state is not specified.",
            "The VM is turned ON.",
            "The VM is turned OFF.",
            "The VM is suspended. This is similar to hibernation or sleep mode.",
          },
          type = "string",
        },
        uuid = {
          description = "The unique identifier of the VM in vCenter.",
          type = "string",
        },
        vmId = {
          description = "The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.",
          type = "string",
        },
      },
      type = "object",
    },
    VmwareVmsDetails = {
      description = "VmwareVmsDetails describes VMs in vCenter.",
      id = "VmwareVmsDetails",
      properties = {
        details = {
          description = "The details of the vmware VMs.",
          items = {
            ["$ref"] = "VmwareVmDetails",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "VM Migration API",
  version = "v1",
  version_module = true,
}
