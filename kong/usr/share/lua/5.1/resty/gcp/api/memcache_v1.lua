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
  baseUrl = "https://memcache.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Memorystore for Memcached",
  description = "Google Cloud Memorystore for Memcached API is used for creating and managing Memcached instances in GCP.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/memorystore/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "memcache:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://memcache.mtls.googleapis.com/",
  name = "memcache",
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
              id = "memcache.projects.locations.get",
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
              id = "memcache.projects.locations.list",
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
            instances = {
              methods = {
                applyParameters = {
                  description = "`ApplyParameters` restarts the set of specified nodes in order to update them to the current set of parameters for the Memcached Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:applyParameters",
                  httpMethod = "POST",
                  id = "memcache.projects.locations.instances.applyParameters",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the Memcached instance for which parameter group updates should be applied.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:applyParameters",
                  request = {
                    ["$ref"] = "ApplyParametersRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a new Instance in a given location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "POST",
                  id = "memcache.projects.locations.instances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    instanceId = {
                      description = "Required. The logical name of the Memcached instance in the user project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the user project / location. If any of the above are not met, the API raises an invalid argument error.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` where `location_id` refers to a GCP region",
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
                  description = "Deletes a single Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "DELETE",
                  id = "memcache.projects.locations.instances.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Memcached instance resource name in the format: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region",
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
                  id = "memcache.projects.locations.instances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Memcached instance resource name in the format: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region",
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
                  description = "Lists Instances in a given location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "GET",
                  id = "memcache.projects.locations.instances.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter. For example, exclude all Memcached instances with name as my-instance by specifying `\"name != my-instance\"`.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort results. Supported values are \"name\", \"name desc\" or \"\" (unsorted).",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardless of the `page_size` value, the response may include a partial list and a caller should only rely on response's `next_page_token` to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The `next_page_token` value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` where `location_id` refers to a GCP region",
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
                  description = "Updates an existing Instance in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "PATCH",
                  id = "memcache.projects.locations.instances.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update. * `displayName`",
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
                rescheduleMaintenance = {
                  description = "Reschedules upcoming maintenance event.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:rescheduleMaintenance",
                  httpMethod = "POST",
                  id = "memcache.projects.locations.instances.rescheduleMaintenance",
                  parameterOrder = {
                    "instance",
                  },
                  parameters = {
                    instance = {
                      description = "Required. Memcache instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` where `location_id` refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+instance}:rescheduleMaintenance",
                  request = {
                    ["$ref"] = "RescheduleMaintenanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateParameters = {
                  description = "Updates the defined Memcached parameters for an existing instance. This method only stages the parameters, it must be followed by `ApplyParameters` to apply the parameters to nodes of the Memcached instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:updateParameters",
                  httpMethod = "PATCH",
                  id = "memcache.projects.locations.instances.updateParameters",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the Memcached instance for which the parameters should be updated.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:updateParameters",
                  request = {
                    ["$ref"] = "UpdateParametersRequest",
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
                  id = "memcache.projects.locations.operations.cancel",
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
                  id = "memcache.projects.locations.operations.delete",
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
                  id = "memcache.projects.locations.operations.get",
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
                  id = "memcache.projects.locations.operations.list",
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
  rootUrl = "https://memcache.googleapis.com/",
  schemas = {
    ApplyParametersRequest = {
      description = "Request for ApplyParameters.",
      id = "ApplyParametersRequest",
      properties = {
        applyAll = {
          description = "Whether to apply instance-level parameter group to all nodes. If set to true, users are restricted from specifying individual nodes, and `ApplyParameters` updates all nodes within the instance.",
          type = "boolean",
        },
        nodeIds = {
          description = "Nodes to which the instance-level parameter group is applied.",
          items = {
            type = "string",
          },
          type = "array",
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
    GoogleCloudMemcacheV1LocationMetadata = {
      description = "Metadata for the given google.cloud.location.Location.",
      id = "GoogleCloudMemcacheV1LocationMetadata",
      properties = {
        availableZones = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudMemcacheV1ZoneMetadata",
          },
          description = "Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by GCE. These keys can be specified in the `zones` field when creating a Memcached instance.",
          readOnly = true,
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudMemcacheV1MaintenancePolicy = {
      description = "Maintenance policy per instance.",
      id = "GoogleCloudMemcacheV1MaintenancePolicy",
      properties = {
        createTime = {
          description = "Output only. The time when the policy was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the policy was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        weeklyMaintenanceWindow = {
          description = "Required. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_maintenance_windows is expected to be one.",
          items = {
            ["$ref"] = "WeeklyMaintenanceWindow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMemcacheV1OperationMetadata = {
      description = "Represents the metadata of a long-running operation.",
      id = "GoogleCloudMemcacheV1OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        cancelRequested = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        createTime = {
          description = "Output only. Time when the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. Time when the operation finished running.",
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
    GoogleCloudMemcacheV1ZoneMetadata = {
      id = "GoogleCloudMemcacheV1ZoneMetadata",
      properties = {},
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
      description = "A Memorystore for Memcached instance",
      id = "Instance",
      properties = {
        authorizedNetwork = {
          description = "The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. If left unspecified, the `default` network will be used.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        discoveryEndpoint = {
          description = "Output only. Endpoint for the Discovery API.",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.",
          type = "string",
        },
        instanceMessages = {
          description = "List of messages that describe the current state of the Memcached instance.",
          items = {
            ["$ref"] = "InstanceMessage",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources",
          type = "object",
        },
        maintenancePolicy = {
          ["$ref"] = "GoogleCloudMemcacheV1MaintenancePolicy",
          description = "The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.",
        },
        maintenanceSchedule = {
          ["$ref"] = "MaintenanceSchedule",
          description = "Output only. Published maintenance schedule.",
          readOnly = true,
        },
        memcacheFullVersion = {
          description = "Output only. The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be \"memcached-1.5.16\".",
          readOnly = true,
          type = "string",
        },
        memcacheNodes = {
          description = "Output only. List of Memcached nodes. Refer to Node message for more details.",
          items = {
            ["$ref"] = "Node",
          },
          readOnly = true,
          type = "array",
        },
        memcacheVersion = {
          description = "The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.",
          enum = {
            "MEMCACHE_VERSION_UNSPECIFIED",
            "MEMCACHE_1_5",
          },
          enumDescriptions = {
            "",
            "Memcached 1.5 version.",
          },
          type = "string",
        },
        name = {
          description = "Required. Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.",
          type = "string",
        },
        nodeConfig = {
          ["$ref"] = "NodeConfig",
          description = "Required. Configuration for Memcached nodes.",
        },
        nodeCount = {
          description = "Required. Number of nodes in the Memcached instance.",
          format = "int32",
          type = "integer",
        },
        parameters = {
          ["$ref"] = "MemcacheParameters",
          description = "User defined parameters to apply to the memcached process on each node.",
        },
        state = {
          description = "Output only. The state of this Memcached instance.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "UPDATING",
            "DELETING",
            "PERFORMING_MAINTENANCE",
          },
          enumDescriptions = {
            "State not set.",
            "Memcached instance is being created.",
            "Memcached instance has been created and ready to be used.",
            "Memcached instance is updating configuration such as maintenance policy and schedule.",
            "Memcached instance is being deleted.",
            "Memcached instance is going through maintenance, e.g. data plane rollout.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time the instance was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        zones = {
          description = "Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InstanceMessage = {
      id = "InstanceMessage",
      properties = {
        code = {
          description = "A code that correspond to one type of user-facing message.",
          enum = {
            "CODE_UNSPECIFIED",
            "ZONE_DISTRIBUTION_UNBALANCED",
          },
          enumDescriptions = {
            "Message Code not set.",
            "Memcached nodes are distributed unevenly.",
          },
          type = "string",
        },
        message = {
          description = "Message on memcached instance which will be exposed to users.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "Response for ListInstances.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "A list of Memcached instances in the project in the specified location, or across all locations. If the `location_id` in the parent field of the request is \"-\", all regions available to the project are queried, and the results aggregated.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
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
      description = "Metadata for the given google.cloud.location.Location.",
      id = "LocationMetadata",
      properties = {
        availableZones = {
          additionalProperties = {
            ["$ref"] = "ZoneMetadata",
          },
          description = "Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by GCE. These keys can be specified in the `zones` field when creating a Memcached instance.",
          readOnly = true,
          type = "object",
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
    MaintenanceSchedule = {
      description = "Upcoming maintenance schedule.",
      id = "MaintenanceSchedule",
      properties = {
        endTime = {
          description = "Output only. The end time of any upcoming scheduled maintenance for this instance.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        scheduleDeadlineTime = {
          description = "Output only. The deadline that the maintenance schedule start time can not go beyond, including reschedule.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. The start time of any upcoming scheduled maintenance for this instance.",
          format = "google-datetime",
          readOnly = true,
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
    MemcacheParameters = {
      id = "MemcacheParameters",
      properties = {
        id = {
          description = "Output only. The unique ID associated with this set of parameters. Users can use this id to determine if the parameters associated with the instance differ from the parameters associated with the nodes. A discrepancy between parameter ids can inform users that they may need to take action to apply parameters on nodes.",
          readOnly = true,
          type = "string",
        },
        params = {
          additionalProperties = {
            type = "string",
          },
          description = "User defined set of parameters to use in the memcached process.",
          type = "object",
        },
      },
      type = "object",
    },
    Node = {
      id = "Node",
      properties = {
        host = {
          description = "Output only. Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.",
          readOnly = true,
          type = "string",
        },
        nodeId = {
          description = "Output only. Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.",
          readOnly = true,
          type = "string",
        },
        parameters = {
          ["$ref"] = "MemcacheParameters",
          description = "User defined parameters currently applied to the node.",
        },
        port = {
          description = "Output only. The port number of the Memcached server on this node.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        state = {
          description = "Output only. Current state of the Memcached node.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "Node state is not set.",
            "Node is being created.",
            "Node has been created and ready to be used.",
            "Node is being deleted.",
            "Node is being updated.",
          },
          readOnly = true,
          type = "string",
        },
        zone = {
          description = "Output only. Location (GCP Zone) for the Memcached node.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    NodeConfig = {
      description = "Configuration for a Memcached Node.",
      id = "NodeConfig",
      properties = {
        cpuCount = {
          description = "Required. Number of cpus per Memcached node.",
          format = "int32",
          type = "integer",
        },
        memorySizeMb = {
          description = "Required. Memory size in MiB for each Memcached node.",
          format = "int32",
          type = "integer",
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
      description = "Represents the metadata of a long-running operation.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        cancelRequested = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        createTime = {
          description = "Output only. Time when the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. Time when the operation finished running.",
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
    RescheduleMaintenanceRequest = {
      description = "Request for RescheduleMaintenance.",
      id = "RescheduleMaintenanceRequest",
      properties = {
        rescheduleType = {
          description = "Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time as well.",
          enum = {
            "RESCHEDULE_TYPE_UNSPECIFIED",
            "IMMEDIATE",
            "NEXT_AVAILABLE_WINDOW",
            "SPECIFIC_TIME",
          },
          enumDescriptions = {
            "Not set.",
            "If the user wants to schedule the maintenance to happen now.",
            "If the user wants to use the existing maintenance policy to find the next available window.",
            "If the user wants to reschedule the maintenance to a specific time.",
          },
          type = "string",
        },
        scheduleTime = {
          description = "Timestamp when the maintenance shall be rescheduled to if reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
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
    UpdateParametersRequest = {
      description = "Request for UpdateParameters.",
      id = "UpdateParametersRequest",
      properties = {
        parameters = {
          ["$ref"] = "MemcacheParameters",
          description = "The parameters to apply to the instance.",
        },
        updateMask = {
          description = "Required. Mask of fields to update.",
          format = "google-fieldmask",
          type = "string",
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
    WeeklyMaintenanceWindow = {
      description = "Time window specified for weekly operations.",
      id = "WeeklyMaintenanceWindow",
      properties = {
        day = {
          description = "Required. Allows to define schedule that runs specified day of the week.",
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
          description = "Required. Duration of the time window.",
          format = "google-duration",
          type = "string",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "Required. Start time of the window in UTC.",
        },
      },
      type = "object",
    },
    ZoneMetadata = {
      id = "ZoneMetadata",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Memorystore for Memcached API",
  version = "v1",
  version_module = true,
}
