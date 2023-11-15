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
  baseUrl = "https://file.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Filestore",
  description = "The Cloud Filestore API is used for creating and managing cloud file servers.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/filestore/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "file:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://file.mtls.googleapis.com/",
  name = "file",
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
              id = "file.projects.locations.get",
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
              id = "file.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                includeUnrevealedLocations = {
                  description = "If true, the returned list will include locations which are not yet revealed.",
                  location = "query",
                  type = "boolean",
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
            backups = {
              methods = {
                create = {
                  description = "Creates a backup.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backups",
                  httpMethod = "POST",
                  id = "file.projects.locations.backups.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    backupId = {
                      description = "Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The backup's project and location, in the format `projects/{project_number}/locations/{location}`. In Filestore, backup locations map to Google Cloud regions, for example **us-west1**.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/backups",
                  request = {
                    ["$ref"] = "Backup",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a backup.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backups/{backupsId}",
                  httpMethod = "DELETE",
                  id = "file.projects.locations.backups.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The backup resource name, in the format `projects/{project_number}/locations/{location}/backups/{backup_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backups/[^/]+$",
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
                  description = "Gets the details of a specific backup.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backups/{backupsId}",
                  httpMethod = "GET",
                  id = "file.projects.locations.backups.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The backup resource name, in the format `projects/{project_number}/locations/{location}/backups/{backup_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Backup",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all backups in a project for either a specified location or for all locations.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backups",
                  httpMethod = "GET",
                  id = "file.projects.locations.backups.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort results. Supported values are \"name\", \"name desc\" or \"\" (unsorted).",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value to use if there are additional results to retrieve for this list request.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location for which to retrieve backup information, in the format `projects/{project_number}/locations/{location}`. In Filestore, backup locations map to Google Cloud regions, for example **us-west1**. To retrieve backup information for all locations, use \"-\" for the `{location}` value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/backups",
                  response = {
                    ["$ref"] = "ListBackupsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the settings of a specific backup.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backups/{backupsId}",
                  httpMethod = "PATCH",
                  id = "file.projects.locations.backups.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update. At least one path must be supplied in this field.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Backup",
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
            instances = {
              methods = {
                create = {
                  description = "Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "POST",
                  id = "file.projects.locations.instances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    instanceId = {
                      description = "Required. The name of the instance to create. The name must be unique for the specified project and location.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The instance's project and location, in the format `projects/{project_id}/locations/{location}`. In Filestore, locations map to Google Cloud zones, for example **us-west1-b**.",
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
                  description = "Deletes an instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "DELETE",
                  id = "file.projects.locations.instances.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "If set to true, all snapshots of the instance will also be deleted. (Otherwise, the request will only work if the instance has no snapshots.)",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The instance resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_id}`",
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
                  description = "Gets the details of a specific instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "GET",
                  id = "file.projects.locations.instances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The instance resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_id}`.",
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
                list = {
                  description = "Lists all instances in a project for either a specified location or for all locations.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "GET",
                  id = "file.projects.locations.instances.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort results. Supported values are \"name\", \"name desc\" or \"\" (unsorted).",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value to use if there are additional results to retrieve for this list request.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location for which to retrieve instance information, in the format `projects/{project_id}/locations/{location}`. In Cloud Filestore, locations map to Google Cloud zones, for example **us-west1-b**. To retrieve instance information for all locations, use \"-\" for the `{location}` value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
                  response = {
                    ["$ref"] = "ListInstancesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the settings of a specific instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "PATCH",
                  id = "file.projects.locations.instances.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields: * \"description\" * \"file_shares\" * \"labels\"",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
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
                restore = {
                  description = "Restores an existing instance's file share from a backup. The capacity of the instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:restore",
                  httpMethod = "POST",
                  id = "file.projects.locations.instances.restore",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:restore",
                  request = {
                    ["$ref"] = "RestoreInstanceRequest",
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
                snapshots = {
                  methods = {
                    create = {
                      description = "Creates a snapshot.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/snapshots",
                      httpMethod = "POST",
                      id = "file.projects.locations.instances.snapshots.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The Filestore Instance to create the snapshots of, in the format `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        snapshotId = {
                          description = "Required. The ID to use for the snapshot. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/snapshots",
                      request = {
                        ["$ref"] = "Snapshot",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a snapshot.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/snapshots/{snapshotsId}",
                      httpMethod = "DELETE",
                      id = "file.projects.locations.instances.snapshots.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The snapshot resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_id}/snapshots/{snapshot_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/snapshots/[^/]+$",
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
                      description = "Gets the details of a specific snapshot.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/snapshots/{snapshotsId}",
                      httpMethod = "GET",
                      id = "file.projects.locations.instances.snapshots.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The snapshot resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_id}/snapshots/{snapshot_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/snapshots/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Snapshot",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all snapshots in a project for either a specified location or for all locations.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/snapshots",
                      httpMethod = "GET",
                      id = "file.projects.locations.instances.snapshots.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "List filter.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Sort results. Supported values are \"name\", \"name desc\" or \"\" (unsorted).",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of items to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value to use if there are additional results to retrieve for this list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The instance for which to retrieve snapshot information, in the format `projects/{project_id}/locations/{location}/instances/{instance_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/snapshots",
                      response = {
                        ["$ref"] = "ListSnapshotsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the settings of a specific snapshot.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/snapshots/{snapshotsId}",
                      httpMethod = "PATCH",
                      id = "file.projects.locations.instances.snapshots.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/snapshots/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update. At least one path must be supplied in this field.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Snapshot",
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
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "file.projects.locations.operations.cancel",
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
                  id = "file.projects.locations.operations.delete",
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
                  id = "file.projects.locations.operations.get",
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
                  id = "file.projects.locations.operations.list",
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
          },
        },
      },
    },
  },
  revision = "20230103",
  rootUrl = "https://file.googleapis.com/",
  schemas = {
    Backup = {
      description = "A Filestore backup.",
      id = "Backup",
      properties = {
        capacityGb = {
          description = "Output only. Capacity of the source file share when the backup was created.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time when the backup was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.",
          type = "string",
        },
        downloadBytes = {
          description = "Output only. Amount of bytes that will be downloaded if the backup is restored. This may be different than storage bytes, since sequential backups of the same disk will share storage.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Resource labels to represent user provided metadata.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.",
          readOnly = true,
          type = "string",
        },
        satisfiesPzs = {
          description = "Output only. Reserved for future use.",
          readOnly = true,
          type = "boolean",
        },
        sourceFileShare = {
          description = "Name of the file share in the source Filestore instance that the backup is created from.",
          type = "string",
        },
        sourceInstance = {
          description = "The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.",
          type = "string",
        },
        sourceInstanceTier = {
          description = "Output only. The service tier of the source Filestore instance that this backup is created from.",
          enum = {
            "TIER_UNSPECIFIED",
            "STANDARD",
            "PREMIUM",
            "BASIC_HDD",
            "BASIC_SSD",
            "HIGH_SCALE_SSD",
            "ENTERPRISE",
          },
          enumDescriptions = {
            "Not set.",
            "STANDARD tier. BASIC_HDD is the preferred term for this tier.",
            "PREMIUM tier. BASIC_SSD is the preferred term for this tier.",
            "BASIC instances offer a maximum capacity of 63.9 TB. BASIC_HDD is an alias for STANDARD Tier, offering economical performance backed by HDD.",
            "BASIC instances offer a maximum capacity of 63.9 TB. BASIC_SSD is an alias for PREMIUM Tier, and offers improved performance backed by SSD.",
            "HIGH_SCALE instances offer expanded capacity and performance scaling capabilities.",
            "ENTERPRISE instances offer the features and availability needed for mission-critical workloads.",
          },
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The backup state.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "FINALIZING",
            "READY",
            "DELETING",
          },
          enumDescriptions = {
            "State not set.",
            "Backup is being created.",
            "Backup has been taken and the operation is being finalized. At this point, changes to the file share will not be reflected in the backup.",
            "Backup is available for use.",
            "Backup is being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        storageBytes = {
          description = "Output only. The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.",
          format = "int64",
          readOnly = true,
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
    DailyCycle = {
      description = "Time window specified for daily operations.",
      id = "DailyCycle",
      properties = {
        duration = {
          description = "Output only. Duration of the time window, set by service producer.",
          format = "google-duration",
          type = "string",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "Time within the day to start the operations.",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "Date",
      properties = {
        day = {
          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DenyMaintenancePeriod = {
      description = "DenyMaintenancePeriod definition. Maintenance is forbidden within the deny period. The start_date must be less than the end_date.",
      id = "DenyMaintenancePeriod",
      properties = {
        endDate = {
          ["$ref"] = "Date",
          description = "Deny period end date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be before the end.",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "Deny period start date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be the same or after the start.",
        },
        time = {
          ["$ref"] = "TimeOfDay",
          description = "Time in UTC when the Blackout period starts on start_date and ends on end_date. This can be: * Full time. * All zeros for 00:00:00 UTC",
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
    FileShareConfig = {
      description = "File share configuration for the instance.",
      id = "FileShareConfig",
      properties = {
        capacityGb = {
          description = "File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "The name of the file share (must be 16 characters or less).",
          type = "string",
        },
        nfsExportOptions = {
          description = "Nfs Export Options. There is a limit of 10 export options per file share.",
          items = {
            ["$ref"] = "NfsExportOptions",
          },
          type = "array",
        },
        sourceBackup = {
          description = "The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1Instance = {
      id = "GoogleCloudSaasacceleratorManagementProvidersV1Instance",
      properties = {
        consumerDefinedName = {
          description = "consumer_defined_name is the name that is set by the consumer. On the other hand Name field represents system-assigned id of an instance so consumers are not necessarily aware of it. consumer_defined_name is used for notification/UI purposes for consumer to recognize their instances.",
          type = "string",
        },
        createTime = {
          description = "Output only. Timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        instanceType = {
          description = "Optional. The instance_type of this instance of format: projects/{project_number}/locations/{location_id}/instanceTypes/{instance_type_id}. Instance Type represents a high-level tier or SKU of the service that this instance belong to. When enabled(eg: Maintenance Rollout), Rollout uses 'instance_type' along with 'software_versions' to determine whether instance needs an update or not.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.",
          type = "object",
        },
        maintenancePolicyNames = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Deprecated. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the referenced policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go/cloud-saas-mw-ug.",
          type = "object",
        },
        maintenanceSchedules = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule",
          },
          description = "The MaintenanceSchedule contains the scheduling information of published maintenance schedule with same key as software_versions.",
          type = "object",
        },
        maintenanceSettings = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings",
          description = "Optional. The MaintenanceSettings associated with instance.",
        },
        name = {
          description = "Unique name of the resource. It uses the form: `projects/{project_number}/locations/{location_id}/instances/{instance_id}` Note: This name is passed, stored and logged across the rollout system. So use of consumer project_id or any other consumer PII in the name is strongly discouraged for wipeout (go/wipeout) compliance. See go/elysium/project_ids#storage-guidance for more details.",
          type = "string",
        },
        notificationParameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter",
          },
          description = "Optional. notification_parameter are information that service producers may like to include that is not relevant to Rollout. This parameter will only be passed to Gamma and Cloud Logging for notification/logging purpose.",
          type = "object",
        },
        producerMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Custom string attributes used primarily to expose producer-specific information in monitoring dashboards. See go/get-instance-metadata.",
          readOnly = true,
          type = "object",
        },
        provisionedResources = {
          description = "Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. See go/get-instance-metadata.",
          items = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource",
          },
          readOnly = true,
          type = "array",
        },
        slmInstanceTemplate = {
          description = "Link to the SLM instance template. Only populated when updating SLM instances via SSA's Actuation service adaptor. Service producers with custom control plane (e.g. Cloud SQL) doesn't need to populate this field. Instead they should use software_versions.",
          type = "string",
        },
        sloMetadata = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata",
          description = "Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform. See go/cloud-ssa-standard-slo for feature description.",
          readOnly = true,
        },
        softwareVersions = {
          additionalProperties = {
            type = "string",
          },
          description = "Software versions that are used to deploy this instance. This can be mutated by rollout services.",
          type = "object",
        },
        state = {
          description = "Output only. Current lifecycle state of the resource (e.g. if it's being created or ready to use).",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "UPDATING",
            "REPAIRING",
            "DELETING",
            "ERROR",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Instance is being created.",
            "Instance has been created and is ready to use.",
            "Instance is being updated.",
            "Instance is unheathy and under repair.",
            "Instance is being deleted.",
            "Instance encountered an error and is in indeterministic state.",
          },
          readOnly = true,
          type = "string",
        },
        tenantProjectId = {
          description = "Output only. ID of the associated GCP tenant project. See go/get-instance-metadata.",
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
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule = {
      description = "Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule",
      properties = {
        canReschedule = {
          description = "This field is deprecated, and will be always set to true since reschedule can happen multiple times now. This field should not be removed until all service producers remove this for their customers.",
          type = "boolean",
        },
        endTime = {
          description = "The scheduled end time for the maintenance.",
          format = "google-datetime",
          type = "string",
        },
        rolloutManagementPolicy = {
          description = "The rollout management policy this maintenance schedule is associated with. When doing reschedule update request, the reschedule should be against this given policy.",
          type = "string",
        },
        scheduleDeadlineTime = {
          description = "schedule_deadline_time is the time deadline any schedule start time cannot go beyond, including reschedule. It's normally the initial schedule start time plus maintenance window length (1 day or 1 week). Maintenance cannot be scheduled to start beyond this deadline.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The scheduled start time for the maintenance.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings = {
      description = "Maintenance settings associated with instance. Allows service producers and end users to assign settings that controls maintenance on this instance.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings",
      properties = {
        exclude = {
          description = "Optional. Exclude instance from maintenance. When true, rollout service will not attempt maintenance on the instance. Rollout service will include the instance in reported rollout progress as not attempted.",
          type = "boolean",
        },
        isRollback = {
          description = "Optional. If the update call is triggered from rollback, set the value as true.",
          type = "boolean",
        },
        maintenancePolicies = {
          additionalProperties = {
            ["$ref"] = "MaintenancePolicy",
          },
          description = "Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the embedded policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go/cloud-saas-mw-ug. If only the name is needed, then only populate MaintenancePolicy.name.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata = {
      description = "Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata",
      properties = {
        location = {
          description = "The location of the node, if different from instance location.",
          type = "string",
        },
        nodeId = {
          description = "The id of the node. This should be equal to SaasInstanceNode.node_id.",
          type = "string",
        },
        perSliEligibility = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility",
          description = "If present, this will override eligibility for the node coming from instance or exclusions for specified SLIs.",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter = {
      description = "Contains notification related data.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter",
      properties = {
        values = {
          description = "Optional. Array of string values. e.g. instance's replica information.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility = {
      description = "PerSliSloEligibility is a mapping from an SLI name to eligibility.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility",
      properties = {
        eligibilities = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility",
          },
          description = "An entry in the eligibilities map specifies an eligibility for a particular SLI for the given instance. The SLI key in the name must be a valid SLI name specified in the Eligibility Exporter binary flags otherwise an error will be emitted by Eligibility Exporter and the oncaller will be alerted. If an SLI has been defined in the binary flags but the eligibilities map does not contain it, the corresponding SLI time series will not be emitted by the Eligibility Exporter. This ensures a smooth rollout and compatibility between the data produced by different versions of the Eligibility Exporters. If eligibilities map contains a key for an SLI which has not been declared in the binary flags, there will be an error message emitted in the Eligibility Exporter log and the metric for the SLI in question will not be emitted.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource = {
      description = "Describes provisioned dataplane resources.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource",
      properties = {
        resourceType = {
          description = "Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provider's VM). For GCP compute resources use singular form of the names listed in GCP compute API documentation (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with 'compute-', for example: 'compute-instance', 'compute-disk', 'compute-autoscaler'.",
          type = "string",
        },
        resourceUrl = {
          description = "URL identifying the resource, e.g. \"https://www.googleapis.com/compute/v1/projects/...)\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility = {
      description = "SloEligibility is a tuple containing eligibility value: true if an instance is eligible for SLO calculation or false if it should be excluded from all SLO-related calculations along with a user-defined reason.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility",
      properties = {
        eligible = {
          description = "Whether an instance is eligible or ineligible.",
          type = "boolean",
        },
        reason = {
          description = "User-defined reason for the current value of instance eligibility. Usually, this can be directly mapped to the internal state. An empty reason is allowed.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata = {
      description = "SloMetadata contains resources required for proper SLO classification of the instance.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata",
      properties = {
        nodes = {
          description = "Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This field allows such producers to publish per-node SLO meta data, which will be consumed by SSA Eligibility Exporter and published in the form of per node metric to Monarch.",
          items = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata",
          },
          type = "array",
        },
        perSliEligibility = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility",
          description = "Optional. Multiple per-instance SLI eligibilities which apply for individual SLIs.",
        },
        tier = {
          description = "Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers specified in the service SLO configuration. Field is mandatory and must not be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    Instance = {
      description = "A Filestore instance.",
      id = "Instance",
      properties = {
        createTime = {
          description = "Output only. The time when the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The description of the instance (2048 characters or less).",
          type = "string",
        },
        etag = {
          description = "Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.",
          type = "string",
        },
        fileShares = {
          description = "File system shares on the instance. For this version, only a single file share is supported.",
          items = {
            ["$ref"] = "FileShareConfig",
          },
          type = "array",
        },
        kmsKeyName = {
          description = "KMS key name used for data encryption.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Resource labels to represent user provided metadata.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.",
          readOnly = true,
          type = "string",
        },
        networks = {
          description = "VPC networks to which the instance is connected. For this version, only a single network is supported.",
          items = {
            ["$ref"] = "NetworkConfig",
          },
          type = "array",
        },
        satisfiesPzs = {
          description = "Output only. Reserved for future use.",
          readOnly = true,
          type = "boolean",
        },
        state = {
          description = "Output only. The instance state.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "REPAIRING",
            "DELETING",
            "ERROR",
            "RESTORING",
            "SUSPENDED",
            "SUSPENDING",
            "RESUMING",
          },
          enumDescriptions = {
            "State not set.",
            "The instance is being created.",
            "The instance is available for use.",
            "Work is being done on the instance. You can get further details from the `statusMessage` field of the `Instance` resource.",
            "The instance is shutting down.",
            "The instance is experiencing an issue and might be unusable. You can get further details from the `statusMessage` field of the `Instance` resource.",
            "The instance is restoring a backup to an existing file share and may be unusable during this time.",
            "The instance is suspended. You can get further details from the `suspension_reasons` field of the `Instance` resource.",
            "The instance is in the process of becoming suspended.",
            "The instance is in the process of becoming active.",
          },
          readOnly = true,
          type = "string",
        },
        statusMessage = {
          description = "Output only. Additional information about the instance state, if available.",
          readOnly = true,
          type = "string",
        },
        suspensionReasons = {
          description = "Output only. Field indicates all the reasons the instance is in \"SUSPENDED\" state.",
          items = {
            enum = {
              "SUSPENSION_REASON_UNSPECIFIED",
              "KMS_KEY_ISSUE",
            },
            enumDescriptions = {
              "Not set.",
              "The KMS key used by the instance is either revoked or denied access to.",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        tier = {
          description = "The service tier of the instance.",
          enum = {
            "TIER_UNSPECIFIED",
            "STANDARD",
            "PREMIUM",
            "BASIC_HDD",
            "BASIC_SSD",
            "HIGH_SCALE_SSD",
            "ENTERPRISE",
          },
          enumDescriptions = {
            "Not set.",
            "STANDARD tier. BASIC_HDD is the preferred term for this tier.",
            "PREMIUM tier. BASIC_SSD is the preferred term for this tier.",
            "BASIC instances offer a maximum capacity of 63.9 TB. BASIC_HDD is an alias for STANDARD Tier, offering economical performance backed by HDD.",
            "BASIC instances offer a maximum capacity of 63.9 TB. BASIC_SSD is an alias for PREMIUM Tier, and offers improved performance backed by SSD.",
            "HIGH_SCALE instances offer expanded capacity and performance scaling capabilities.",
            "ENTERPRISE instances offer the features and availability needed for mission-critical workloads.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListBackupsResponse = {
      description = "ListBackupsResponse is the result of ListBackupsRequest.",
      id = "ListBackupsResponse",
      properties = {
        backups = {
          description = "A list of backups in the project for the specified location. If the `{location}` value in the request is \"-\", the response contains a list of backups from all locations. If any location is unreachable, the response will only return backups in reachable locations and the \"unreachable\" field will be populated with a list of unreachable locations.",
          items = {
            ["$ref"] = "Backup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token you can use to retrieve the next page of results. Not returned if there are no more results in the list.",
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
    ListInstancesResponse = {
      description = "ListInstancesResponse is the result of ListInstancesRequest.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "A list of instances in the project for the specified location. If the `{location}` value in the request is \"-\", the response contains a list of instances from all locations. If any location is unreachable, the response will only return instances in reachable locations and the \"unreachable\" field will be populated with a list of unreachable locations.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token you can use to retrieve the next page of results. Not returned if there are no more results in the list.",
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
    ListSnapshotsResponse = {
      description = "ListSnapshotsResponse is the result of ListSnapshotsRequest.",
      id = "ListSnapshotsResponse",
      properties = {
        nextPageToken = {
          description = "The token you can use to retrieve the next page of results. Not returned if there are no more results in the list.",
          type = "string",
        },
        snapshots = {
          description = "A list of snapshots in the project for the specified instance.",
          items = {
            ["$ref"] = "Snapshot",
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
    MaintenancePolicy = {
      description = "LINT.IfChange Defines policies to service maintenance events.",
      id = "MaintenancePolicy",
      properties = {
        createTime = {
          description = "Output only. The time when the resource was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.",
          type = "object",
        },
        name = {
          description = "Required. MaintenancePolicy name using the form: `projects/{project_id}/locations/{location_id}/maintenancePolicies/{maintenance_policy_id}` where {project_id} refers to a GCP consumer project ID, {location_id} refers to a GCP region/zone, {maintenance_policy_id} must be 1-63 characters long and match the regular expression `[a-z0-9]([-a-z0-9]*[a-z0-9])?`.",
          type = "string",
        },
        state = {
          description = "Optional. The state of the policy.",
          enum = {
            "STATE_UNSPECIFIED",
            "READY",
            "DELETING",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Resource is ready to be used.",
            "Resource is being deleted. It can no longer be attached to instances.",
          },
          type = "string",
        },
        updatePolicy = {
          ["$ref"] = "UpdatePolicy",
          description = "Maintenance policy applicable to instance update.",
        },
        updateTime = {
          description = "Output only. The time when the resource was updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    MaintenanceWindow = {
      description = "MaintenanceWindow definition.",
      id = "MaintenanceWindow",
      properties = {
        dailyCycle = {
          ["$ref"] = "DailyCycle",
          description = "Daily cycle.",
        },
        weeklyCycle = {
          ["$ref"] = "WeeklyCycle",
          description = "Weekly cycle.",
        },
      },
      type = "object",
    },
    NetworkConfig = {
      description = "Network configuration for the instance.",
      id = "NetworkConfig",
      properties = {
        connectMode = {
          description = "The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.",
          enum = {
            "CONNECT_MODE_UNSPECIFIED",
            "DIRECT_PEERING",
            "PRIVATE_SERVICE_ACCESS",
          },
          enumDescriptions = {
            "Not set.",
            "Connect via direct peering to the Filestore service.",
            "Connect to your Filestore instance using Private Service Access. Private services access provides an IP address range for multiple Google Cloud services, including Filestore.",
          },
          type = "string",
        },
        ipAddresses = {
          description = "Output only. IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or IPv6 addresses in the format `{block1}:{block2}:{block3}:{block4}:{block5}:{block6}:{block7}:{block8}`.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        modes = {
          description = "Internet protocol versions for which the instance has IP addresses assigned. For this version, only MODE_IPV4 is supported.",
          items = {
            enum = {
              "ADDRESS_MODE_UNSPECIFIED",
              "MODE_IPV4",
            },
            enumDescriptions = {
              "Internet protocol not set.",
              "Use the IPv4 internet protocol.",
            },
            type = "string",
          },
          type = "array",
        },
        network = {
          description = "The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected.",
          type = "string",
        },
        reservedIpRange = {
          description = "Optional, reserved_ip_range can have one of the following two types of values. * CIDR range value when using DIRECT_PEERING connect mode. * [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address) when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an allocated IP address range is specified, it must be one of the ranges associated with the private service access connection. When specified as a direct CIDR value, it must be a /29 CIDR block for Basic tier, a /24 CIDR block for High Scale tier, or a /26 CIDR block for Enterprise tier in one of the [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/) that identifies the range of IP addresses reserved for this instance. For example, 10.0.0.0/29, 192.168.0.0/24 or 192.168.0.0/26, respectively. The range you specify can't overlap with either existing subnets or assigned IP address ranges for other Filestore instances in the selected VPC network.",
          type = "string",
        },
      },
      type = "object",
    },
    NfsExportOptions = {
      description = "NFS export options specifications.",
      id = "NfsExportOptions",
      properties = {
        accessMode = {
          description = "Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.",
          enum = {
            "ACCESS_MODE_UNSPECIFIED",
            "READ_ONLY",
            "READ_WRITE",
          },
          enumDescriptions = {
            "AccessMode not set.",
            "The client can only read the file share.",
            "The client can read and write the file share (default).",
          },
          type = "string",
        },
        anonGid = {
          description = "An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.",
          format = "int64",
          type = "string",
        },
        anonUid = {
          description = "An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.",
          format = "int64",
          type = "string",
        },
        ipRanges = {
          description = "List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        squashMode = {
          description = "Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.",
          enum = {
            "SQUASH_MODE_UNSPECIFIED",
            "NO_ROOT_SQUASH",
            "ROOT_SQUASH",
          },
          enumDescriptions = {
            "SquashMode not set.",
            "The Root user has root access to the file share (default).",
            "The Root user has squashed access to the anonymous uid/gid.",
          },
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
        cancelRequested = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
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
        statusDetail = {
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
    RestoreInstanceRequest = {
      description = "RestoreInstanceRequest restores an existing instance's file share from a backup.",
      id = "RestoreInstanceRequest",
      properties = {
        fileShare = {
          description = "Required. Name of the file share in the Filestore instance that the backup is being restored to.",
          type = "string",
        },
        sourceBackup = {
          description = "The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    Schedule = {
      description = "Configure the schedule.",
      id = "Schedule",
      properties = {
        day = {
          description = "Allows to define schedule that runs specified day of the week.",
          enum = {
            "DAY_OF_WEEK_UNSPECIFIED",
            "MONDAY",
            "TUESDAY",
            "WEDNESDAY",
            "THURSDAY",
            "FRIDAY",
            "SATURDAY",
            "SUNDAY",
          },
          enumDescriptions = {
            "The day of the week is unspecified.",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday",
          },
          type = "string",
        },
        duration = {
          description = "Output only. Duration of the time window, set by service producer.",
          format = "google-duration",
          type = "string",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "Time within the window to start the operations.",
        },
      },
      type = "object",
    },
    Snapshot = {
      description = "A Filestore snapshot.",
      id = "Snapshot",
      properties = {
        createTime = {
          description = "Output only. The time when the snapshot was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.",
          type = "string",
        },
        filesystemUsedBytes = {
          description = "Output only. The amount of bytes needed to allocate a full copy of the snapshot content",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Resource labels to represent user provided metadata.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The snapshot state.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "DELETING",
          },
          enumDescriptions = {
            "State not set.",
            "Snapshot is being created.",
            "Snapshot is available for use.",
            "Snapshot is being deleted.",
          },
          readOnly = true,
          type = "string",
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
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UpdatePolicy = {
      description = "Maintenance policy applicable to instance updates.",
      id = "UpdatePolicy",
      properties = {
        channel = {
          description = "Optional. Relative scheduling channel applied to resource.",
          enum = {
            "UPDATE_CHANNEL_UNSPECIFIED",
            "EARLIER",
            "LATER",
            "WEEK1",
            "WEEK2",
            "WEEK5",
          },
          enumDescriptions = {
            "Unspecified channel.",
            "Early channel within a customer project.",
            "Later channel within a customer project.",
            "! ! The follow channels can ONLY be used if you adopt the new MW system! ! ! NOTE: all WEEK channels are assumed to be under a weekly window. ! There is currently no dedicated channel definitions for Daily windows. ! If you use Daily window, the system will assume a 1d (24Hours) advanced ! notification period b/w EARLY and LATER. ! We may consider support more flexible daily channel specifications in ! the future. WEEK1 == EARLIER with minimum 7d advanced notification. {7d, 14d} The system will treat them equally and will use WEEK1 whenever it can. New customers are encouraged to use this channel annotation.",
            "WEEK2 == LATER with minimum 14d advanced notification {14d, 21d}.",
            "WEEK5 == 40d support. minimum 35d advanced notification {35d, 42d}.",
          },
          type = "string",
        },
        denyMaintenancePeriods = {
          description = "Deny Maintenance Period that is applied to resource to indicate when maintenance is forbidden. User can specify zero or more non-overlapping deny periods. Maximum number of deny_maintenance_periods expected is one.",
          items = {
            ["$ref"] = "DenyMaintenancePeriod",
          },
          type = "array",
        },
        window = {
          ["$ref"] = "MaintenanceWindow",
          description = "Optional. Maintenance window that is applied to resources covered by this policy.",
        },
      },
      type = "object",
    },
    WeeklyCycle = {
      description = "Time window specified for weekly operations.",
      id = "WeeklyCycle",
      properties = {
        schedule = {
          description = "User can specify multiple windows in a week. Minimum of 1 window.",
          items = {
            ["$ref"] = "Schedule",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Filestore API",
  version = "v1",
  version_module = true,
}
