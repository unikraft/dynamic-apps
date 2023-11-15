return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/service.management"] = {
          description = "Manage your Google API service configuration",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://servicenetworking.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Service Networking",
  description = "Provides automatic management of network configurations necessary for certain services.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "servicenetworking:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://servicenetworking.mtls.googleapis.com/",
  name = "servicenetworking",
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
    operations = {
      methods = {
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          flatPath = "v1/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "servicenetworking.operations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^operations/.*$",
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
            "https://www.googleapis.com/auth/service.management",
          },
        },
        delete = {
          description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "servicenetworking.operations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be deleted.",
              location = "path",
              pattern = "^operations/.*$",
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
            "https://www.googleapis.com/auth/service.management",
          },
        },
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "servicenetworking.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/[^/]+$",
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
            "https://www.googleapis.com/auth/service.management",
          },
        },
        list = {
          description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
          flatPath = "v1/operations",
          httpMethod = "GET",
          id = "servicenetworking.operations.list",
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
              pattern = "^operations$",
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
          path = "v1/{+name}",
          response = {
            ["$ref"] = "ListOperationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/service.management",
          },
        },
      },
    },
    services = {
      methods = {
        addSubnetwork = {
          description = "For service producers, provisions a new subnet in a peered service's shared VPC network in the requested region and with the requested size that's expressed as a CIDR range (number of leading bits of ipV4 network mask). The method checks against the assigned allocated ranges to find a non-conflicting IP address range. The method will reuse a subnet if subsequent calls contain the same subnet name, region, and prefix length. This method will make producer's tenant project to be a shared VPC service project as needed.",
          flatPath = "v1/services/{servicesId}/{servicesId1}/{servicesId2}:addSubnetwork",
          httpMethod = "POST",
          id = "servicenetworking.services.addSubnetwork",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. A tenant project in the service producer organization, in the following format: services/{service}/{collection-id}/{resource-id}. {collection-id} is the cloud resource collection type that represents the tenant project. Only `projects` are supported. {resource-id} is the tenant project numeric id, such as `123456`. {service} the name of the peering service, such as `service-peering.example.com`. This service must already be enabled in the service consumer's project.",
              location = "path",
              pattern = "^services/[^/]+/[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:addSubnetwork",
          request = {
            ["$ref"] = "AddSubnetworkRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/service.management",
          },
        },
        disableVpcServiceControls = {
          description = "Disables VPC service controls for a connection.",
          flatPath = "v1/services/{servicesId}:disableVpcServiceControls",
          httpMethod = "PATCH",
          id = "servicenetworking.services.disableVpcServiceControls",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
              location = "path",
              pattern = "^services/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:disableVpcServiceControls",
          request = {
            ["$ref"] = "DisableVpcServiceControlsRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/service.management",
          },
        },
        enableVpcServiceControls = {
          description = "Enables VPC service controls for a connection.",
          flatPath = "v1/services/{servicesId}:enableVpcServiceControls",
          httpMethod = "PATCH",
          id = "servicenetworking.services.enableVpcServiceControls",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
              location = "path",
              pattern = "^services/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:enableVpcServiceControls",
          request = {
            ["$ref"] = "EnableVpcServiceControlsRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/service.management",
          },
        },
        searchRange = {
          description = "Service producers can use this method to find a currently unused range within consumer allocated ranges. This returned range is not reserved, and not guaranteed to remain unused. It will validate previously provided allocated ranges, find non-conflicting sub-range of requested size (expressed in number of leading bits of ipv4 network mask, as in CIDR range notation).",
          flatPath = "v1/services/{servicesId}:searchRange",
          httpMethod = "POST",
          id = "servicenetworking.services.searchRange",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. This is in a form services/{service}. {service} the name of the private access management service, for example 'service-peering.example.com'.",
              location = "path",
              pattern = "^services/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:searchRange",
          request = {
            ["$ref"] = "SearchRangeRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/service.management",
          },
        },
        validate = {
          description = "Service producers use this method to validate if the consumer provided network, project and requested range are valid. This allows them to use a fail-fast mechanism for consumer requests, and not have to wait for AddSubnetwork operation completion to determine if user request is invalid.",
          flatPath = "v1/services/{servicesId}:validate",
          httpMethod = "POST",
          id = "servicenetworking.services.validate",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. This is in a form services/{service} where {service} is the name of the private access management service. For example 'service-peering.example.com'.",
              location = "path",
              pattern = "^services/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:validate",
          request = {
            ["$ref"] = "ValidateConsumerConfigRequest",
          },
          response = {
            ["$ref"] = "ValidateConsumerConfigResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/service.management",
          },
        },
      },
      resources = {
        connections = {
          methods = {
            create = {
              description = "Creates a private connection that establishes a VPC Network Peering connection to a VPC network in the service producer's organization. The administrator of the service consumer's VPC network invokes this method. The administrator must assign one or more allocated IP ranges for provisioning subnetworks in the service producer's VPC network. This connection is used for all supported services in the service producer's organization, so it only needs to be invoked once.",
              flatPath = "v1/services/{servicesId}/connections",
              httpMethod = "POST",
              id = "servicenetworking.services.connections.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/connections",
              request = {
                ["$ref"] = "Connection",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
            deleteConnection = {
              description = "Deletes a private service access connection.",
              flatPath = "v1/services/{servicesId}/connections/{connectionsId}",
              httpMethod = "POST",
              id = "servicenetworking.services.connections.deleteConnection",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The private service connection that connects to a service producer organization. The name includes both the private service name and the VPC network peering name in the format of `services/{peering_service_name}/connections/{vpc_peering_name}`. For Google services that support this functionality, this is `services/servicenetworking.googleapis.com/connections/servicenetworking-googleapis-com`.",
                  location = "path",
                  pattern = "^services/[^/]+/connections/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "DeleteConnectionRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
            list = {
              description = "List the private connections that are configured in a service consumer's VPC network.",
              flatPath = "v1/services/{servicesId}/connections",
              httpMethod = "GET",
              id = "servicenetworking.services.connections.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                network = {
                  description = "The name of service consumer's VPC network that's connected with service producer network through a private connection. The network name must be in the following format: `projects/{project}/global/networks/{network}`. {project} is a project number, such as in `12345` that includes the VPC service consumer's VPC network. {network} is the name of the service consumer's VPC network.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`. If you specify `services/-` as the parameter value, all configured peering services are listed.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/connections",
              response = {
                ["$ref"] = "ListConnectionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
            patch = {
              description = "Updates the allocated ranges that are assigned to a connection.",
              flatPath = "v1/services/{servicesId}/connections/{connectionsId}",
              httpMethod = "PATCH",
              id = "servicenetworking.services.connections.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                force = {
                  description = "If a previously defined allocated range is removed, force flag must be set to true.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "The private service connection that connects to a service producer organization. The name includes both the private service name and the VPC network peering name in the format of `services/{peering_service_name}/connections/{vpc_peering_name}`. For Google services that support this functionality, this is `services/servicenetworking.googleapis.com/connections/servicenetworking-googleapis-com`.",
                  location = "path",
                  pattern = "^services/[^/]+/connections/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The update mask. If this is omitted, it defaults to \"*\". You can only update the listed peering ranges.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Connection",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
          },
        },
        dnsRecordSets = {
          methods = {
            add = {
              description = "Service producers can use this method to add DNS record sets to private DNS zones in the shared producer host project.",
              flatPath = "v1/services/{servicesId}/dnsRecordSets:add",
              httpMethod = "POST",
              id = "servicenetworking.services.dnsRecordSets.add",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dnsRecordSets:add",
              request = {
                ["$ref"] = "AddDnsRecordSetRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
            remove = {
              description = "Service producers can use this method to remove DNS record sets from private DNS zones in the shared producer host project.",
              flatPath = "v1/services/{servicesId}/dnsRecordSets:remove",
              httpMethod = "POST",
              id = "servicenetworking.services.dnsRecordSets.remove",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dnsRecordSets:remove",
              request = {
                ["$ref"] = "RemoveDnsRecordSetRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
            update = {
              description = "Service producers can use this method to update DNS record sets from private DNS zones in the shared producer host project.",
              flatPath = "v1/services/{servicesId}/dnsRecordSets:update",
              httpMethod = "POST",
              id = "servicenetworking.services.dnsRecordSets.update",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dnsRecordSets:update",
              request = {
                ["$ref"] = "UpdateDnsRecordSetRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
          },
        },
        dnsZones = {
          methods = {
            add = {
              description = "Service producers can use this method to add private DNS zones in the shared producer host project and matching peering zones in the consumer project.",
              flatPath = "v1/services/{servicesId}/dnsZones:add",
              httpMethod = "POST",
              id = "servicenetworking.services.dnsZones.add",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dnsZones:add",
              request = {
                ["$ref"] = "AddDnsZoneRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
            remove = {
              description = "Service producers can use this method to remove private DNS zones in the shared producer host project and matching peering zones in the consumer project.",
              flatPath = "v1/services/{servicesId}/dnsZones:remove",
              httpMethod = "POST",
              id = "servicenetworking.services.dnsZones.remove",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The service that is managing peering connectivity for a service producer's organization. For Google services that support this functionality, this value is `services/servicenetworking.googleapis.com`.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dnsZones:remove",
              request = {
                ["$ref"] = "RemoveDnsZoneRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
          },
        },
        projects = {
          resources = {
            global = {
              resources = {
                networks = {
                  methods = {
                    get = {
                      description = "Service producers use this method to get the configuration of their connection including the import/export of custom routes and subnetwork routes with public IP.",
                      flatPath = "v1/services/{servicesId}/projects/{projectsId}/global/networks/{networksId}",
                      httpMethod = "GET",
                      id = "servicenetworking.services.projects.global.networks.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        includeUsedIpRanges = {
                          description = "Optional. When true, include the used IP ranges as part of the GetConsumerConfig output. This includes routes created inside the service networking network, consumer network, peers of the consumer network, and reserved ranges inside the service networking network. By default, this is false",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. Name of the consumer config to retrieve in the format: `services/{service}/projects/{project}/global/networks/{network}`. {service} is the peering service that is managing connectivity for the service producer's organization. For Google services that support this functionality, this value is `servicenetworking.googleapis.com`. {project} is a project number e.g. `12345` that contains the service consumer's VPC network. {network} is the name of the service consumer's VPC network.",
                          location = "path",
                          pattern = "^services/[^/]+/projects/[^/]+/global/networks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ConsumerConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/service.management",
                      },
                    },
                    updateConsumerConfig = {
                      description = "Service producers use this method to update the configuration of their connection including the import/export of custom routes and subnetwork routes with public IP.",
                      flatPath = "v1/services/{servicesId}/projects/{projectsId}/global/networks/{networksId}:updateConsumerConfig",
                      httpMethod = "PATCH",
                      id = "servicenetworking.services.projects.global.networks.updateConsumerConfig",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Parent resource identifying the connection for which the consumer config is being updated in the format: `services/{service}/projects/{project}/global/networks/{network}` {service} is the peering service that is managing connectivity for the service producer's organization. For Google services that support this functionality, this value is `servicenetworking.googleapis.com`. {project} is the number of the project that contains the service consumer's VPC network e.g. `12345`. {network} is the name of the service consumer's VPC network.",
                          location = "path",
                          pattern = "^services/[^/]+/projects/[^/]+/global/networks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}:updateConsumerConfig",
                      request = {
                        ["$ref"] = "UpdateConsumerConfigRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/service.management",
                      },
                    },
                  },
                  resources = {
                    peeredDnsDomains = {
                      methods = {
                        create = {
                          description = "Creates a peered DNS domain which sends requests for records in given namespace originating in the service producer VPC network to the consumer VPC network to be resolved.",
                          flatPath = "v1/services/{servicesId}/projects/{projectsId}/global/networks/{networksId}/peeredDnsDomains",
                          httpMethod = "POST",
                          id = "servicenetworking.services.projects.global.networks.peeredDnsDomains.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. Parent resource identifying the connection for which the peered DNS domain will be created in the format: `services/{service}/projects/{project}/global/networks/{network}` {service} is the peering service that is managing connectivity for the service producer's organization. For Google services that support this functionality, this value is `servicenetworking.googleapis.com`. {project} is the number of the project that contains the service consumer's VPC network e.g. `12345`. {network} is the name of the service consumer's VPC network.",
                              location = "path",
                              pattern = "^services/[^/]+/projects/[^/]+/global/networks/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/peeredDnsDomains",
                          request = {
                            ["$ref"] = "PeeredDnsDomain",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/service.management",
                          },
                        },
                        delete = {
                          description = "Deletes a peered DNS domain.",
                          flatPath = "v1/services/{servicesId}/projects/{projectsId}/global/networks/{networksId}/peeredDnsDomains/{peeredDnsDomainsId}",
                          httpMethod = "DELETE",
                          id = "servicenetworking.services.projects.global.networks.peeredDnsDomains.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the peered DNS domain to delete in the format: `services/{service}/projects/{project}/global/networks/{network}/peeredDnsDomains/{name}`. {service} is the peering service that is managing connectivity for the service producer's organization. For Google services that support this functionality, this value is `servicenetworking.googleapis.com`. {project} is the number of the project that contains the service consumer's VPC network e.g. `12345`. {network} is the name of the service consumer's VPC network. {name} is the name of the peered DNS domain.",
                              location = "path",
                              pattern = "^services/[^/]+/projects/[^/]+/global/networks/[^/]+/peeredDnsDomains/[^/]+$",
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
                            "https://www.googleapis.com/auth/service.management",
                          },
                        },
                        list = {
                          description = "Lists peered DNS domains for a connection.",
                          flatPath = "v1/services/{servicesId}/projects/{projectsId}/global/networks/{networksId}/peeredDnsDomains",
                          httpMethod = "GET",
                          id = "servicenetworking.services.projects.global.networks.peeredDnsDomains.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. Parent resource identifying the connection which owns this collection of peered DNS domains in the format: `services/{service}/projects/{project}/global/networks/{network}`. {service} is the peering service that is managing connectivity for the service producer's organization. For Google services that support this functionality, this value is `servicenetworking.googleapis.com`. {project} is a project number e.g. `12345` that contains the service consumer's VPC network. {network} is the name of the service consumer's VPC network.",
                              location = "path",
                              pattern = "^services/[^/]+/projects/[^/]+/global/networks/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/peeredDnsDomains",
                          response = {
                            ["$ref"] = "ListPeeredDnsDomainsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/service.management",
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
        roles = {
          methods = {
            add = {
              description = "Service producers can use this method to add roles in the shared VPC host project. Each role is bound to the provided member. Each role must be selected from within an allowlisted set of roles. Each role is applied at only the granularity specified in the allowlist.",
              flatPath = "v1/services/{servicesId}/roles:add",
              httpMethod = "POST",
              id = "servicenetworking.services.roles.add",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. This is in a form services/{service} where {service} is the name of the private access management service. For example 'service-peering.example.com'.",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/roles:add",
              request = {
                ["$ref"] = "AddRolesRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/service.management",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://servicenetworking.googleapis.com/",
  schemas = {
    AddDnsRecordSetMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by AddDnsRecordSet API",
      id = "AddDnsRecordSetMetadata",
      properties = {},
      type = "object",
    },
    AddDnsRecordSetRequest = {
      description = "Request to add a record set to a private managed DNS zone in the shared producer host project.",
      id = "AddDnsRecordSetRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is the project number, as in '12345' {network} is the network name.",
          type = "string",
        },
        dnsRecordSet = {
          ["$ref"] = "DnsRecordSet",
          description = "Required. The DNS record set to add.",
        },
        zone = {
          description = "Required. The name of the private DNS zone in the shared producer host project to which the record set will be added.",
          type = "string",
        },
      },
      type = "object",
    },
    AddDnsZoneMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by AddDnsZone API",
      id = "AddDnsZoneMetadata",
      properties = {},
      type = "object",
    },
    AddDnsZoneRequest = {
      description = "Request to add a private managed DNS zone in the shared producer host project and a matching DNS peering zone in the consumer project.",
      id = "AddDnsZoneRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is the project number, as in '12345' {network} is the network name.",
          type = "string",
        },
        dnsSuffix = {
          description = "Required. The DNS name suffix for the zones e.g. `example.com`.",
          type = "string",
        },
        name = {
          description = "Required. The name for both the private zone in the shared producer host project and the peering zone in the consumer project. Must be unique within both projects. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.",
          type = "string",
        },
      },
      type = "object",
    },
    AddDnsZoneResponse = {
      description = "Represents managed DNS zones created in the shared producer host and consumer projects.",
      id = "AddDnsZoneResponse",
      properties = {
        consumerPeeringZone = {
          ["$ref"] = "DnsZone",
          description = "The DNS peering zone created in the consumer project.",
        },
        producerPrivateZone = {
          ["$ref"] = "DnsZone",
          description = "The private DNS zone created in the shared producer host project.",
        },
      },
      type = "object",
    },
    AddRolesMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by AddRoles API",
      id = "AddRolesMetadata",
      properties = {},
      type = "object",
    },
    AddRolesRequest = {
      description = "Request for AddRoles to allow Service Producers to add roles in the shared VPC host project for them to use.",
      id = "AddRolesRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is a project number, as in '12345' {network} is a network name.",
          type = "string",
        },
        policyBinding = {
          description = "Required. List of policy bindings to add to shared VPC host project.",
          items = {
            ["$ref"] = "PolicyBinding",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AddRolesResponse = {
      description = "Represents IAM roles added to the shared VPC host project.",
      id = "AddRolesResponse",
      properties = {
        policyBinding = {
          description = "Required. List of policy bindings that were added to the shared VPC host project.",
          items = {
            ["$ref"] = "PolicyBinding",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AddSubnetworkRequest = {
      description = "Request to create a subnetwork in a previously peered service network.",
      id = "AddSubnetworkRequest",
      properties = {
        allowSubnetCidrRoutesOverlap = {
          description = "Optional. Defines the allowSubnetCidrRoutesOverlap field of the subnet, e.g. Available in alpha and beta according to [Compute API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/subnetworks/insert)",
          type = "boolean",
        },
        checkServiceNetworkingUsePermission = {
          description = "Optional. The IAM permission check determines whether the consumer project has 'servicenetworking.services.use' permission or not.",
          type = "boolean",
        },
        computeIdempotencyWindow = {
          description = "Optional. Specifies a custom time bucket for Arcus subnetwork request idempotency. If two equivalent concurrent requests are made, Arcus will know to ignore the request if it has already been completed or is in progress. Only requests with matching compute_idempotency_window have guaranteed idempotency. Changing this time window between requests results in undefined behavior. Zero (or empty) value with custom_compute_idempotency_window=true specifies no idempotency (i.e. no request ID is provided to Arcus). Maximum value of 14 days (enforced by Arcus limit). For more information on how to use, see: go/revisit-sn-idempotency-window",
          format = "google-duration",
          type = "string",
        },
        consumer = {
          description = "Required. A resource that represents the service consumer, such as `projects/123456`. The project number can be different from the value in the consumer network parameter. For example, the network might be part of a Shared VPC network. In those cases, Service Networking validates that this resource belongs to that Shared VPC.",
          type = "string",
        },
        consumerNetwork = {
          description = "Required. The name of the service consumer's VPC network. The network must have an existing private connection that was provisioned through the connections.create method. The name must be in the following format: `projects/{project}/global/networks/{network}`, where {project} is a project number, such as `12345`. {network} is the name of a VPC network in the project.",
          type = "string",
        },
        description = {
          description = "Optional. Description of the subnet.",
          type = "string",
        },
        ipPrefixLength = {
          description = "Required. The prefix length of the subnet's IP address range. Use CIDR range notation, such as `29` to provision a subnet with an `x.x.x.x/29` CIDR range. The IP address range is drawn from a pool of available ranges in the service consumer's allocated range. GCE disallows subnets with prefix_length > 29",
          format = "int32",
          type = "integer",
        },
        outsideAllocationPublicIpRange = {
          description = "Optional. Enable outside allocation using public IP addresses. Any public IP range may be specified. If this field is provided, we will not use customer reserved ranges for this primary IP range.",
          type = "string",
        },
        privateIpv6GoogleAccess = {
          description = "Optional. The private IPv6 google access type for the VMs in this subnet. For information about the access types that can be set using this field, see [subnetwork](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.",
          type = "string",
        },
        purpose = {
          description = "Optional. Defines the purpose field of the subnet, e.g. 'PRIVATE_SERVICE_CONNECT'. For information about the purposes that can be set using this field, see [subnetwork](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.",
          type = "string",
        },
        region = {
          description = "Required. The name of a [region](/compute/docs/regions-zones) for the subnet, such `europe-west1`.",
          type = "string",
        },
        requestedAddress = {
          description = "Optional. The starting address of a range. The address must be a valid IPv4 address in the x.x.x.x format. This value combined with the IP prefix range is the CIDR range for the subnet. The range must be within the allocated range that is assigned to the private connection. If the CIDR range isn't available, the call fails.",
          type = "string",
        },
        requestedRanges = {
          description = "Optional. The name of one or more allocated IP address ranges associated with this private service access connection. If no range names are provided all ranges associated with this connection will be considered. If a CIDR range with the specified IP prefix length is not available within these ranges, the call fails.",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Optional. Defines the role field of the subnet, e.g. 'ACTIVE'. For information about the roles that can be set using this field, see [subnetwork](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.",
          type = "string",
        },
        secondaryIpRangeSpecs = {
          description = "Optional. A list of secondary IP ranges to be created within the new subnetwork.",
          items = {
            ["$ref"] = "SecondaryIpRangeSpec",
          },
          type = "array",
        },
        subnetwork = {
          description = "Required. A name for the new subnet. For information about the naming requirements, see [subnetwork](/compute/docs/reference/rest/v1/subnetworks) in the Compute API documentation.",
          type = "string",
        },
        subnetworkUsers = {
          description = "A list of members that are granted the `roles/servicenetworking.subnetworkAdmin` role on the subnet.",
          items = {
            type = "string",
          },
          type = "array",
        },
        useCustomComputeIdempotencyWindow = {
          description = "Optional. Specifies if Service Networking should use a custom time bucket for Arcus idempotency. If false, Service Networking uses a 300 second (5 minute) Arcus idempotency window. If true, Service Networking uses a custom idempotency window provided by the user in field compute_idempotency_window. For more information on how to use, see: go/revisit-sn-idempotency-window",
          type = "boolean",
        },
      },
      type = "object",
    },
    Api = {
      description = "Api is a light-weight descriptor for an API Interface. Interfaces are also described as \"protocol buffer services\" in some contexts, such as by the \"service\" keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as \"APIs\" in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology.",
      id = "Api",
      properties = {
        methods = {
          description = "The methods of this interface, in unspecified order.",
          items = {
            ["$ref"] = "Method",
          },
          type = "array",
        },
        mixins = {
          description = "Included interfaces. See Mixin.",
          items = {
            ["$ref"] = "Mixin",
          },
          type = "array",
        },
        name = {
          description = "The fully qualified name of this interface, including package name followed by the interface's simple name.",
          type = "string",
        },
        options = {
          description = "Any metadata attached to the interface.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        sourceContext = {
          ["$ref"] = "SourceContext",
          description = "Source context for the protocol buffer service represented by this message.",
        },
        syntax = {
          description = "The source syntax of the service.",
          enum = {
            "SYNTAX_PROTO2",
            "SYNTAX_PROTO3",
          },
          enumDescriptions = {
            "Syntax `proto2`.",
            "Syntax `proto3`.",
          },
          type = "string",
        },
        version = {
          description = "A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces. ",
          type = "string",
        },
      },
      type = "object",
    },
    AuthProvider = {
      description = "Configuration for an authentication provider, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).",
      id = "AuthProvider",
      properties = {
        audiences = {
          description = "The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, JWTs with audiences: - \"https://[service.name]/[google.protobuf.Api.name]\" - \"https://[service.name]/\" will be accepted. For example, if no audiences are in the setting, LibraryService API will accept JWTs with the following audiences: - https://library-example.googleapis.com/google.example.library.v1.LibraryService - https://library-example.googleapis.com/ Example: audiences: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com",
          type = "string",
        },
        authorizationUrl = {
          description = "Redirect URL if JWT token is required but not present or is expired. Implement authorizationUrl of securityDefinitions in OpenAPI spec.",
          type = "string",
        },
        id = {
          description = "The unique identifier of the auth provider. It will be referred to by `AuthRequirement.provider_id`. Example: \"bookstore_auth\".",
          type = "string",
        },
        issuer = {
          description = "Identifies the principal that issued the JWT. See https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1 Usually a URL or an email address. Example: https://securetoken.google.com Example: 1234567-compute@developer.gserviceaccount.com",
          type = "string",
        },
        jwksUri = {
          description = "URL of the provider's public key set to validate signature of the JWT. See [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata). Optional if the key set document: - can be retrieved from [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html) of the issuer. - can be inferred from the email domain of the issuer (e.g. a Google service account). Example: https://www.googleapis.com/oauth2/v1/certs",
          type = "string",
        },
        jwtLocations = {
          description = "Defines the locations to extract the JWT. For now it is only used by the Cloud Endpoints to store the OpenAPI extension [x-google-jwt-locations] (https://cloud.google.com/endpoints/docs/openapi/openapi-extensions#x-google-jwt-locations) JWT locations can be one of HTTP headers, URL query parameters or cookies. The rule is that the first match wins. If not specified, default to use following 3 locations: 1) Authorization: Bearer 2) x-goog-iap-jwt-assertion 3) access_token query parameter Default locations can be specified as followings: jwt_locations: - header: Authorization value_prefix: \"Bearer \" - header: x-goog-iap-jwt-assertion - query: access_token",
          items = {
            ["$ref"] = "JwtLocation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AuthRequirement = {
      description = "User-defined authentication requirements, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).",
      id = "AuthRequirement",
      properties = {
        audiences = {
          description = "NOTE: This will be deprecated soon, once AuthProvider.audiences is implemented and accepted in all the runtime components. The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, only JWTs with audience \"https://Service_name/API_name\" will be accepted. For example, if no audiences are in the setting, LibraryService API will only accept JWTs with the following audience \"https://library-example.googleapis.com/google.example.library.v1.LibraryService\". Example: audiences: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com",
          type = "string",
        },
        providerId = {
          description = "id from authentication provider. Example: provider_id: bookstore_auth",
          type = "string",
        },
      },
      type = "object",
    },
    Authentication = {
      description = "`Authentication` defines the authentication configuration for API methods provided by an API service. Example: name: calendar.googleapis.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: \"*\" requirements: provider_id: google_calendar_auth - selector: google.calendar.Delegate oauth: canonical_scopes: https://www.googleapis.com/auth/calendar.read",
      id = "Authentication",
      properties = {
        providers = {
          description = "Defines a set of authentication providers that a service supports.",
          items = {
            ["$ref"] = "AuthProvider",
          },
          type = "array",
        },
        rules = {
          description = "A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "AuthenticationRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AuthenticationRule = {
      description = "Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It's an error to include more than one kind of credential in a single request. If a method doesn't have any auth requirements, request credentials will be ignored.",
      id = "AuthenticationRule",
      properties = {
        allowWithoutCredential = {
          description = "If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.",
          type = "boolean",
        },
        oauth = {
          ["$ref"] = "OAuthRequirements",
          description = "The requirements for OAuth credentials.",
        },
        requirements = {
          description = "Requirements for additional authentication providers.",
          items = {
            ["$ref"] = "AuthRequirement",
          },
          type = "array",
        },
        selector = {
          description = "Selects the methods to which this rule applies. Refer to selector for syntax details.",
          type = "string",
        },
      },
      type = "object",
    },
    Backend = {
      description = "`Backend` defines the backend configuration for a service.",
      id = "Backend",
      properties = {
        rules = {
          description = "A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "BackendRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BackendRule = {
      description = "A backend rule provides configuration for an individual API element.",
      id = "BackendRule",
      properties = {
        address = {
          description = "The address of the API backend. The scheme is used to determine the backend protocol and security. The following schemes are accepted: SCHEME PROTOCOL SECURITY http:// HTTP None https:// HTTP TLS grpc:// gRPC None grpcs:// gRPC TLS It is recommended to explicitly include a scheme. Leaving out the scheme may cause constrasting behaviors across platforms. If the port is unspecified, the default is: - 80 for schemes without TLS - 443 for schemes with TLS For HTTP backends, use protocol to specify the protocol version.",
          type = "string",
        },
        deadline = {
          description = "The number of seconds to wait for a response from a request. The default varies based on the request protocol and deployment environment.",
          format = "double",
          type = "number",
        },
        disableAuth = {
          description = "When disable_auth is true, a JWT ID token won't be generated and the original \"Authorization\" HTTP header will be preserved. If the header is used to carry the original token and is expected by the backend, this field must be set to true to preserve the header.",
          type = "boolean",
        },
        jwtAudience = {
          description = "The JWT audience is used when generating a JWT ID token for the backend. This ID token will be added in the HTTP \"authorization\" header, and sent to the backend.",
          type = "string",
        },
        minDeadline = {
          description = "Deprecated, do not use.",
          format = "double",
          type = "number",
        },
        operationDeadline = {
          description = "The number of seconds to wait for the completion of a long running operation. The default is no deadline.",
          format = "double",
          type = "number",
        },
        pathTranslation = {
          enum = {
            "PATH_TRANSLATION_UNSPECIFIED",
            "CONSTANT_ADDRESS",
            "APPEND_PATH_TO_ADDRESS",
          },
          enumDescriptions = {
            "",
            "Use the backend address as-is, with no modification to the path. If the URL pattern contains variables, the variable names and values will be appended to the query string. If a query string parameter and a URL pattern variable have the same name, this may result in duplicate keys in the query string. # Examples Given the following operation config: Method path: /api/company/{cid}/user/{uid} Backend address: https://example.cloudfunctions.net/getUser Requests to the following request paths will call the backend at the translated path: Request path: /api/company/widgetworks/user/johndoe Translated: https://example.cloudfunctions.net/getUser?cid=widgetworks&uid=johndoe Request path: /api/company/widgetworks/user/johndoe?timezone=EST Translated: https://example.cloudfunctions.net/getUser?timezone=EST&cid=widgetworks&uid=johndoe",
            "The request path will be appended to the backend address. # Examples Given the following operation config: Method path: /api/company/{cid}/user/{uid} Backend address: https://example.appspot.com Requests to the following request paths will call the backend at the translated path: Request path: /api/company/widgetworks/user/johndoe Translated: https://example.appspot.com/api/company/widgetworks/user/johndoe Request path: /api/company/widgetworks/user/johndoe?timezone=EST Translated: https://example.appspot.com/api/company/widgetworks/user/johndoe?timezone=EST",
          },
          type = "string",
        },
        protocol = {
          description = "The protocol used for sending a request to the backend. The supported values are \"http/1.1\" and \"h2\". The default value is inferred from the scheme in the address field: SCHEME PROTOCOL http:// http/1.1 https:// http/1.1 grpc:// h2 grpcs:// h2 For secure HTTP backends (https://) that support HTTP/2, set this field to \"h2\" for improved performance. Configuring this field to non-default values is only supported for secure HTTP backends. This field will be ignored for all other backends. See https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids for more details on the supported values.",
          type = "string",
        },
        selector = {
          description = "Selects the methods to which this rule applies. Refer to selector for syntax details.",
          type = "string",
        },
      },
      type = "object",
    },
    Billing = {
      description = "Billing related configuration of the service. The following example shows how to configure monitored resources and metrics for billing, `consumer_destinations` is the only supported destination and the monitored resources need at least one label key `cloud.googleapis.com/location` to indicate the location of the billing usage, using different monitored resources between monitoring and billing is recommended so they can be evolved independently: monitored_resources: - type: library.googleapis.com/billing_branch labels: - key: cloud.googleapis.com/location description: | Predefined label to support billing location restriction. - key: city description: | Custom label to define the city where the library branch is located in. - key: name description: Custom label to define the name of the library branch. metrics: - name: library.googleapis.com/book/borrowed_count metric_kind: DELTA value_type: INT64 unit: \"1\" billing: consumer_destinations: - monitored_resource: library.googleapis.com/billing_branch metrics: - library.googleapis.com/book/borrowed_count",
      id = "Billing",
      properties = {
        consumerDestinations = {
          description = "Billing configurations for sending metrics to the consumer project. There can be multiple consumer destinations per service, each one must have a different monitored resource type. A metric can be used in at most one consumer destination.",
          items = {
            ["$ref"] = "BillingDestination",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BillingDestination = {
      description = "Configuration of a specific billing destination (Currently only support bill against consumer project).",
      id = "BillingDestination",
      properties = {
        metrics = {
          description = "Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.",
          items = {
            type = "string",
          },
          type = "array",
        },
        monitoredResource = {
          description = "The monitored resource type. The type must be defined in Service.monitored_resources section.",
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
    ClientLibrarySettings = {
      description = "Details about how and where to publish client libraries.",
      id = "ClientLibrarySettings",
      properties = {
        cppSettings = {
          ["$ref"] = "CppSettings",
          description = "Settings for C++ client libraries.",
        },
        dotnetSettings = {
          ["$ref"] = "DotnetSettings",
          description = "Settings for .NET client libraries.",
        },
        goSettings = {
          ["$ref"] = "GoSettings",
          description = "Settings for Go client libraries.",
        },
        javaSettings = {
          ["$ref"] = "JavaSettings",
          description = "Settings for legacy Java features, supported in the Service YAML.",
        },
        launchStage = {
          description = "Launch stage of this version of the API.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        nodeSettings = {
          ["$ref"] = "NodeSettings",
          description = "Settings for Node client libraries.",
        },
        phpSettings = {
          ["$ref"] = "PhpSettings",
          description = "Settings for PHP client libraries.",
        },
        pythonSettings = {
          ["$ref"] = "PythonSettings",
          description = "Settings for Python client libraries.",
        },
        restNumericEnums = {
          description = "When using transport=rest, the client request will encode enums as numbers rather than strings.",
          type = "boolean",
        },
        rubySettings = {
          ["$ref"] = "RubySettings",
          description = "Settings for Ruby client libraries.",
        },
        version = {
          description = "Version of the API to apply these settings to.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudSQLConfig = {
      description = "Cloud SQL configuration.",
      id = "CloudSQLConfig",
      properties = {
        service = {
          description = "Peering service used for peering with the Cloud SQL project.",
          type = "string",
        },
        umbrellaNetwork = {
          description = "The name of the umbrella network in the Cloud SQL umbrella project.",
          type = "string",
        },
        umbrellaProject = {
          description = "The project number of the Cloud SQL umbrella project.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CommonLanguageSettings = {
      description = "Required information for every language.",
      id = "CommonLanguageSettings",
      properties = {
        destinations = {
          description = "The destination where API teams want this client library to be published.",
          items = {
            enum = {
              "CLIENT_LIBRARY_DESTINATION_UNSPECIFIED",
              "GITHUB",
              "PACKAGE_MANAGER",
            },
            enumDescriptions = {
              "Client libraries will neither be generated nor published to package managers.",
              "Generate the client library in a repo under github.com/googleapis, but don't publish it to package managers.",
              "Publish the library to package managers like nuget.org and npmjs.com.",
            },
            type = "string",
          },
          type = "array",
        },
        referenceDocsUri = {
          description = "Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest",
          type = "string",
        },
      },
      type = "object",
    },
    Connection = {
      description = "Represents a private connection resource. A private connection is implemented as a VPC Network Peering connection between a service producer's VPC network and a service consumer's VPC network.",
      id = "Connection",
      properties = {
        network = {
          description = "The name of service consumer's VPC network that's connected with service producer network, in the following format: `projects/{project}/global/networks/{network}`. `{project}` is a project number, such as in `12345` that includes the VPC service consumer's VPC network. `{network}` is the name of the service consumer's VPC network.",
          type = "string",
        },
        peering = {
          description = "Output only. The name of the VPC Network Peering connection that was created by the service producer.",
          readOnly = true,
          type = "string",
        },
        reservedPeeringRanges = {
          description = "The name of one or more allocated IP address ranges for this service producer of type `PEERING`. Note that invoking CreateConnection method with a different range when connection is already established will not modify already provisioned service producer subnetworks. If CreateConnection method is invoked repeatedly to reconnect when peering connection had been disconnected on the consumer side, leaving this field empty will restore previously allocated IP ranges.",
          items = {
            type = "string",
          },
          type = "array",
        },
        service = {
          description = "Output only. The name of the peering service that's associated with this connection, in the following format: `services/{service name}`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ConsumerConfig = {
      description = "Configuration information for a private service access connection.",
      id = "ConsumerConfig",
      properties = {
        cloudsqlConfigs = {
          description = "Represents one or multiple Cloud SQL configurations.",
          items = {
            ["$ref"] = "CloudSQLConfig",
          },
          type = "array",
        },
        consumerExportCustomRoutes = {
          description = "Export custom routes flag value for peering from consumer to producer.",
          type = "boolean",
        },
        consumerExportSubnetRoutesWithPublicIp = {
          description = "Export subnet routes with public ip flag value for peering from consumer to producer.",
          type = "boolean",
        },
        consumerImportCustomRoutes = {
          description = "Import custom routes flag value for peering from consumer to producer.",
          type = "boolean",
        },
        consumerImportSubnetRoutesWithPublicIp = {
          description = "Import subnet routes with public ip flag value for peering from consumer to producer.",
          type = "boolean",
        },
        producerExportCustomRoutes = {
          description = "Export custom routes flag value for peering from producer to consumer.",
          type = "boolean",
        },
        producerExportSubnetRoutesWithPublicIp = {
          description = "Export subnet routes with public ip flag value for peering from producer to consumer.",
          type = "boolean",
        },
        producerImportCustomRoutes = {
          description = "Import custom routes flag value for peering from producer to consumer.",
          type = "boolean",
        },
        producerImportSubnetRoutesWithPublicIp = {
          description = "Import subnet routes with public ip flag value for peering from producer to consumer.",
          type = "boolean",
        },
        producerNetwork = {
          description = "Output only. The VPC host network that is used to host managed service instances. In the format, projects/{project}/global/networks/{network} where {project} is the project number e.g. '12345' and {network} is the network name.",
          readOnly = true,
          type = "string",
        },
        reservedRanges = {
          description = "Output only. The reserved ranges associated with this private service access connection.",
          items = {
            ["$ref"] = "GoogleCloudServicenetworkingV1ConsumerConfigReservedRange",
          },
          readOnly = true,
          type = "array",
        },
        usedIpRanges = {
          description = "Output only. The IP ranges already in use by consumer or producer",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        vpcScReferenceArchitectureEnabled = {
          description = "Output only. Indicates whether the VPC Service Controls reference architecture is configured for the producer VPC host network.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    ConsumerConfigMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by UpdateConsumerConfig API.",
      id = "ConsumerConfigMetadata",
      properties = {},
      type = "object",
    },
    ConsumerProject = {
      description = "Represents a consumer project.",
      id = "ConsumerProject",
      properties = {
        projectNum = {
          description = "Required. Project number of the consumer that is launching the service instance. It can own the network that is peered with Google or, be a service project in an XPN where the host project has the network.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Context = {
      description = "`Context` defines which contexts an API requests. Example: context: rules: - selector: \"*\" requested: - google.rpc.context.ProjectContext - google.rpc.context.OriginContext The above specifies that all methods in the API request `google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`. Available context types are defined in package `google.rpc.context`. This also provides mechanism to allowlist any protobuf message extension that can be sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format. For example, list any service specific protobuf types that can appear in grpc metadata as follows in your yaml file: Example: context: rules: - selector: \"google.example.library.v1.LibraryService.CreateBook\" allowed_request_extensions: - google.foo.v1.NewExtension allowed_response_extensions: - google.foo.v1.NewExtension You can also specify extension ID instead of fully qualified extension name here.",
      id = "Context",
      properties = {
        rules = {
          description = "A list of RPC context rules that apply to individual API methods. **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "ContextRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContextRule = {
      description = "A context rule provides information about the context for an individual API element.",
      id = "ContextRule",
      properties = {
        allowedRequestExtensions = {
          description = "A list of full type names or extension IDs of extensions allowed in grpc side channel from client to backend.",
          items = {
            type = "string",
          },
          type = "array",
        },
        allowedResponseExtensions = {
          description = "A list of full type names or extension IDs of extensions allowed in grpc side channel from backend to client.",
          items = {
            type = "string",
          },
          type = "array",
        },
        provided = {
          description = "A list of full type names of provided contexts.",
          items = {
            type = "string",
          },
          type = "array",
        },
        requested = {
          description = "A list of full type names of requested contexts.",
          items = {
            type = "string",
          },
          type = "array",
        },
        selector = {
          description = "Selects the methods to which this rule applies. Refer to selector for syntax details.",
          type = "string",
        },
      },
      type = "object",
    },
    Control = {
      description = "Selects and configures the service controller used by the service. Example: control: environment: servicecontrol.googleapis.com",
      id = "Control",
      properties = {
        environment = {
          description = "The service controller environment to use. If empty, no control plane feature (like quota and billing) will be enabled. The recommended value for most services is servicecontrol.googleapis.com",
          type = "string",
        },
      },
      type = "object",
    },
    CppSettings = {
      description = "Settings for C++ client libraries.",
      id = "CppSettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
        },
      },
      type = "object",
    },
    CustomError = {
      description = "Customize service error responses. For example, list any service specific protobuf types that can appear in error detail lists of error responses. Example: custom_error: types: - google.foo.v1.CustomError - google.foo.v1.AnotherError",
      id = "CustomError",
      properties = {
        rules = {
          description = "The list of custom error rules that apply to individual API messages. **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "CustomErrorRule",
          },
          type = "array",
        },
        types = {
          description = "The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomErrorRule = {
      description = "A custom error rule.",
      id = "CustomErrorRule",
      properties = {
        isErrorType = {
          description = "Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.",
          type = "boolean",
        },
        selector = {
          description = "Selects messages to which this rule applies. Refer to selector for syntax details.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomHttpPattern = {
      description = "A custom pattern is used for defining custom HTTP verb.",
      id = "CustomHttpPattern",
      properties = {
        kind = {
          description = "The name of this custom HTTP verb.",
          type = "string",
        },
        path = {
          description = "The path matched by this custom verb.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteConnectionMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by Delete Connection API",
      id = "DeleteConnectionMetadata",
      properties = {},
      type = "object",
    },
    DeleteConnectionRequest = {
      description = "Request to delete a private service access connection. The call will fail if there are any managed service instances using this connection.",
      id = "DeleteConnectionRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is a project number, as in '12345' {network} is a network name.",
          type = "string",
        },
      },
      type = "object",
    },
    DeletePeeredDnsDomainMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by DeletePeeredDnsDomain API.",
      id = "DeletePeeredDnsDomainMetadata",
      properties = {},
      type = "object",
    },
    DisableVpcServiceControlsRequest = {
      description = "Request to disable VPC service controls.",
      id = "DisableVpcServiceControlsRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is a project number, as in '12345' {network} is network name.",
          type = "string",
        },
      },
      type = "object",
    },
    DnsRecordSet = {
      description = "Represents a DNS record set resource.",
      id = "DnsRecordSet",
      properties = {
        data = {
          description = "Required. As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) for examples see https://cloud.google.com/dns/records/json-record.",
          items = {
            type = "string",
          },
          type = "array",
        },
        domain = {
          description = "Required. The DNS or domain name of the record set, e.g. `test.example.com`.",
          type = "string",
        },
        ttl = {
          description = "Required. The period of time for which this RecordSet can be cached by resolvers.",
          format = "google-duration",
          type = "string",
        },
        type = {
          description = "Required. The identifier of a supported record type.",
          type = "string",
        },
      },
      type = "object",
    },
    DnsZone = {
      description = "Represents a DNS zone resource.",
      id = "DnsZone",
      properties = {
        dnsSuffix = {
          description = "The DNS name suffix of this zone e.g. `example.com.`.",
          type = "string",
        },
        name = {
          description = "User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.",
          type = "string",
        },
      },
      type = "object",
    },
    Documentation = {
      description = "`Documentation` provides the information for describing a service. Example: documentation: summary: > The Google Calendar API gives access to most calendar features. pages: - name: Overview content: (== include google/foo/overview.md ==) - name: Tutorial content: (== include google/foo/tutorial.md ==) subpages; - name: Java content: (== include google/foo/tutorial_java.md ==) rules: - selector: google.calendar.Calendar.Get description: > ... - selector: google.calendar.Calendar.Put description: > ... Documentation is provided in markdown syntax. In addition to standard markdown features, definition lists, tables and fenced code blocks are supported. Section headers can be provided and are interpreted relative to the section nesting of the context where a documentation fragment is embedded. Documentation from the IDL is merged with documentation defined via the config at normalization time, where documentation provided by config rules overrides IDL provided. A number of constructs specific to the API platform are supported in documentation text. In order to reference a proto element, the following notation can be used: [fully.qualified.proto.name][] To override the display text used for the link, this can be used: [display text][fully.qualified.proto.name] Text can be excluded from doc using the following notation: (-- internal comment --) A few directives are available in documentation. Note that directives must appear on a single line to be properly identified. The `include` directive includes a markdown file from an external source: (== include path/to/file ==) The `resource_for` directive marks a message to be the resource of a collection in REST view. If it is not specified, tools attempt to infer the resource from the operations in a collection: (== resource_for v1.shelves.books ==) The directive `suppress_warning` does not directly affect documentation and is documented together with service config validation.",
      id = "Documentation",
      properties = {
        documentationRootUrl = {
          description = "The URL to the root of documentation.",
          type = "string",
        },
        overview = {
          description = "Declares a single overview page. For example: documentation: summary: ... overview: (== include overview.md ==) This is a shortcut for the following declaration (using pages style): documentation: summary: ... pages: - name: Overview content: (== include overview.md ==) Note: you cannot specify both `overview` field and `pages` field.",
          type = "string",
        },
        pages = {
          description = "The top level pages for the documentation set.",
          items = {
            ["$ref"] = "Page",
          },
          type = "array",
        },
        rules = {
          description = "A list of documentation rules that apply to individual API elements. **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "DocumentationRule",
          },
          type = "array",
        },
        serviceRootUrl = {
          description = "Specifies the service root url if the default one (the service name from the yaml file) is not suitable. This can be seen in any fully specified service urls as well as sections that show a base that other urls are relative to.",
          type = "string",
        },
        summary = {
          description = "A short description of what the service does. The summary must be plain text. It becomes the overview of the service displayed in Google Cloud Console. NOTE: This field is equivalent to the standard field `description`.",
          type = "string",
        },
      },
      type = "object",
    },
    DocumentationRule = {
      description = "A documentation rule provides information about individual API elements.",
      id = "DocumentationRule",
      properties = {
        deprecationDescription = {
          description = "Deprecation description of the selected element(s). It can be provided if an element is marked as `deprecated`.",
          type = "string",
        },
        description = {
          description = "Description of the selected proto element (e.g. a message, a method, a 'service' definition, or a field). Defaults to leading & trailing comments taken from the proto source definition of the proto element.",
          type = "string",
        },
        selector = {
          description = "The selector is a comma-separated list of patterns for any element such as a method, a field, an enum value. Each pattern is a qualified name of the element which may end in \"*\", indicating a wildcard. Wildcards are only allowed at the end and for a whole component of the qualified name, i.e. \"foo.*\" is ok, but not \"foo.b*\" or \"foo.*.bar\". A wildcard will match one or more components. To specify a default for all applicable elements, the whole pattern \"*\" is used.",
          type = "string",
        },
      },
      type = "object",
    },
    DotnetSettings = {
      description = "Settings for Dotnet client libraries.",
      id = "DotnetSettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
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
    EnableVpcServiceControlsRequest = {
      description = "Request to enable VPC service controls.",
      id = "EnableVpcServiceControlsRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is a project number, as in '12345' {network} is network name.",
          type = "string",
        },
      },
      type = "object",
    },
    Endpoint = {
      description = "`Endpoint` describes a network address of a service that serves a set of APIs. It is commonly known as a service endpoint. A service may expose any number of service endpoints, and all service endpoints share the same service definition, such as quota limits and monitoring metrics. Example: type: google.api.Service name: library-example.googleapis.com endpoints: # Declares network address `https://library-example.googleapis.com` # for service `library-example.googleapis.com`. The `https` scheme # is implicit for all service endpoints. Other schemes may be # supported in the future. - name: library-example.googleapis.com allow_cors: false - name: content-staging-library-example.googleapis.com # Allows HTTP OPTIONS calls to be passed to the API frontend, for it # to decide whether the subsequent cross-origin request is allowed # to proceed. allow_cors: true",
      id = "Endpoint",
      properties = {
        aliases = {
          description = "Unimplemented. Dot not use. DEPRECATED: This field is no longer supported. Instead of using aliases, please specify multiple google.api.Endpoint for each of the intended aliases. Additional names that this endpoint will be hosted on.",
          items = {
            type = "string",
          },
          type = "array",
        },
        allowCors = {
          description = "Allowing [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka cross-domain traffic, would allow the backends served from this endpoint to receive and respond to HTTP OPTIONS requests. The response will be used by the browser to determine whether the subsequent cross-origin request is allowed to proceed.",
          type = "boolean",
        },
        name = {
          description = "The canonical name of this endpoint.",
          type = "string",
        },
        target = {
          description = "The specification of an Internet routable address of API frontend that will handle requests to this [API Endpoint](https://cloud.google.com/apis/design/glossary). It should be either a valid IPv4 address or a fully-qualified domain name. For example, \"8.8.8.8\" or \"myservice.appspot.com\".",
          type = "string",
        },
      },
      type = "object",
    },
    Enum = {
      description = "Enum type definition.",
      id = "Enum",
      properties = {
        enumvalue = {
          description = "Enum value definitions.",
          items = {
            ["$ref"] = "EnumValue",
          },
          type = "array",
        },
        name = {
          description = "Enum type name.",
          type = "string",
        },
        options = {
          description = "Protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        sourceContext = {
          ["$ref"] = "SourceContext",
          description = "The source context.",
        },
        syntax = {
          description = "The source syntax.",
          enum = {
            "SYNTAX_PROTO2",
            "SYNTAX_PROTO3",
          },
          enumDescriptions = {
            "Syntax `proto2`.",
            "Syntax `proto3`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnumValue = {
      description = "Enum value definition.",
      id = "EnumValue",
      properties = {
        name = {
          description = "Enum value name.",
          type = "string",
        },
        number = {
          description = "Enum value number.",
          format = "int32",
          type = "integer",
        },
        options = {
          description = "Protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Field = {
      description = "A single field of a message type.",
      id = "Field",
      properties = {
        cardinality = {
          description = "The field cardinality.",
          enum = {
            "CARDINALITY_UNKNOWN",
            "CARDINALITY_OPTIONAL",
            "CARDINALITY_REQUIRED",
            "CARDINALITY_REPEATED",
          },
          enumDescriptions = {
            "For fields with unknown cardinality.",
            "For optional fields.",
            "For required fields. Proto2 syntax only.",
            "For repeated fields.",
          },
          type = "string",
        },
        defaultValue = {
          description = "The string value of the default value of this field. Proto2 syntax only.",
          type = "string",
        },
        jsonName = {
          description = "The field JSON name.",
          type = "string",
        },
        kind = {
          description = "The field type.",
          enum = {
            "TYPE_UNKNOWN",
            "TYPE_DOUBLE",
            "TYPE_FLOAT",
            "TYPE_INT64",
            "TYPE_UINT64",
            "TYPE_INT32",
            "TYPE_FIXED64",
            "TYPE_FIXED32",
            "TYPE_BOOL",
            "TYPE_STRING",
            "TYPE_GROUP",
            "TYPE_MESSAGE",
            "TYPE_BYTES",
            "TYPE_UINT32",
            "TYPE_ENUM",
            "TYPE_SFIXED32",
            "TYPE_SFIXED64",
            "TYPE_SINT32",
            "TYPE_SINT64",
          },
          enumDescriptions = {
            "Field type unknown.",
            "Field type double.",
            "Field type float.",
            "Field type int64.",
            "Field type uint64.",
            "Field type int32.",
            "Field type fixed64.",
            "Field type fixed32.",
            "Field type bool.",
            "Field type string.",
            "Field type group. Proto2 syntax only, and deprecated.",
            "Field type message.",
            "Field type bytes.",
            "Field type uint32.",
            "Field type enum.",
            "Field type sfixed32.",
            "Field type sfixed64.",
            "Field type sint32.",
            "Field type sint64.",
          },
          type = "string",
        },
        name = {
          description = "The field name.",
          type = "string",
        },
        number = {
          description = "The field number.",
          format = "int32",
          type = "integer",
        },
        oneofIndex = {
          description = "The index of the field type in `Type.oneofs`, for message or enumeration types. The first type has index 1; zero means the type is not in the list.",
          format = "int32",
          type = "integer",
        },
        options = {
          description = "The protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        packed = {
          description = "Whether to use alternative packed wire representation.",
          type = "boolean",
        },
        typeUrl = {
          description = "The field type URL, without the scheme, for message or enumeration types. Example: `\"type.googleapis.com/google.protobuf.Timestamp\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoSettings = {
      description = "Settings for Go client libraries.",
      id = "GoSettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
        },
      },
      type = "object",
    },
    GoogleCloudServicenetworkingV1ConsumerConfigReservedRange = {
      description = "Allocated IP address ranges for this private service access connection.",
      id = "GoogleCloudServicenetworkingV1ConsumerConfigReservedRange",
      properties = {
        address = {
          description = "The starting address of the reserved range. The address must be a valid IPv4 address in the x.x.x.x format. This value combined with the IP prefix length is the CIDR range for the reserved range.",
          type = "string",
        },
        ipPrefixLength = {
          description = "The prefix length of the reserved range.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The name of the reserved range.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudServicenetworkingV1betaConnection = {
      description = "Represents a private connection resource. A private connection is implemented as a VPC Network Peering connection between a service producer's VPC network and a service consumer's VPC network.",
      id = "GoogleCloudServicenetworkingV1betaConnection",
      properties = {
        network = {
          description = "The name of service consumer's VPC network that's connected with service producer network, in the following format: `projects/{project}/global/networks/{network}`. `{project}` is a project number, such as in `12345` that includes the VPC service consumer's VPC network. `{network}` is the name of the service consumer's VPC network.",
          type = "string",
        },
        peering = {
          description = "Output only. The name of the VPC Network Peering connection that was created by the service producer.",
          type = "string",
        },
        reservedPeeringRanges = {
          description = "The name of one or more allocated IP address ranges for this service producer of type `PEERING`. Note that invoking this method with a different range when connection is already established will not modify already provisioned service producer subnetworks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        service = {
          description = "Output only. The name of the peering service that's associated with this connection, in the following format: `services/{service name}`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudServicenetworkingV1betaSubnetwork = {
      description = "Represents a subnet that was created or discovered by a private access management service.",
      id = "GoogleCloudServicenetworkingV1betaSubnetwork",
      properties = {
        ipCidrRange = {
          description = "Subnetwork CIDR range in `10.x.x.x/y` format.",
          type = "string",
        },
        name = {
          description = "Subnetwork name. See https://cloud.google.com/compute/docs/vpc/",
          type = "string",
        },
        network = {
          description = "In the Shared VPC host project, the VPC network that's peered with the consumer network. For example: `projects/1234321/global/networks/host-network`",
          type = "string",
        },
        outsideAllocation = {
          description = "This is a discovered subnet that is not within the current consumer allocated ranges.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Http = {
      description = "Defines the HTTP configuration for an API service. It contains a list of HttpRule, each specifying the mapping of an RPC method to one or more HTTP REST API methods.",
      id = "Http",
      properties = {
        fullyDecodeReservedExpansion = {
          description = "When set to true, URL path parameters will be fully URI-decoded except in cases of single segment matches in reserved expansion, where \"%2F\" will be left encoded. The default behavior is to not decode RFC 6570 reserved characters in multi segment matches.",
          type = "boolean",
        },
        rules = {
          description = "A list of HTTP configuration rules that apply to individual API methods. **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "HttpRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HttpRule = {
      description = "# gRPC Transcoding gRPC Transcoding is a feature for mapping between a gRPC method and one or more HTTP REST endpoints. It allows developers to build a single API service that supports both gRPC APIs and REST APIs. Many systems, including [Google APIs](https://github.com/googleapis/googleapis), [Cloud Endpoints](https://cloud.google.com/endpoints), [gRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway), and [Envoy](https://github.com/envoyproxy/envoy) proxy support this feature and use it for large scale production services. `HttpRule` defines the schema of the gRPC/REST mapping. The mapping specifies how different portions of the gRPC request message are mapped to the URL path, URL query parameters, and HTTP request body. It also controls how the gRPC response message is mapped to the HTTP response body. `HttpRule` is typically specified as an `google.api.http` annotation on the gRPC method. Each mapping specifies a URL path template and an HTTP method. The path template may refer to one or more fields in the gRPC request message, as long as each field is a non-repeated field with a primitive (non-message) type. The path template controls how fields of the request message are mapped to the URL path. Example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get: \"/v1/{name=messages/*}\" }; } } message GetMessageRequest { string name = 1; // Mapped to URL path. } message Message { string text = 1; // The resource content. } This enables an HTTP REST to gRPC mapping as below: HTTP | gRPC -----|----- `GET /v1/messages/123456` | `GetMessage(name: \"messages/123456\")` Any fields in the request message which are not bound by the path template automatically become HTTP query parameters if there is no HTTP request body. For example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get:\"/v1/messages/{message_id}\" }; } } message GetMessageRequest { message SubMessage { string subfield = 1; } string message_id = 1; // Mapped to URL path. int64 revision = 2; // Mapped to URL query parameter `revision`. SubMessage sub = 3; // Mapped to URL query parameter `sub.subfield`. } This enables a HTTP JSON to RPC mapping as below: HTTP | gRPC -----|----- `GET /v1/messages/123456?revision=2&sub.subfield=foo` | `GetMessage(message_id: \"123456\" revision: 2 sub: SubMessage(subfield: \"foo\"))` Note that fields which are mapped to URL query parameters must have a primitive type or a repeated primitive type or a non-repeated message type. In the case of a repeated type, the parameter can be repeated in the URL as `...?param=A&param=B`. In the case of a message type, each field of the message is mapped to a separate parameter, such as `...?foo.a=A&foo.b=B&foo.c=C`. For HTTP methods that allow a request body, the `body` field specifies the mapping. Consider a REST update method on the message resource collection: service Messaging { rpc UpdateMessage(UpdateMessageRequest) returns (Message) { option (google.api.http) = { patch: \"/v1/messages/{message_id}\" body: \"message\" }; } } message UpdateMessageRequest { string message_id = 1; // mapped to the URL Message message = 2; // mapped to the body } The following HTTP JSON to RPC mapping is enabled, where the representation of the JSON in the request body is determined by protos JSON encoding: HTTP | gRPC -----|----- `PATCH /v1/messages/123456 { \"text\": \"Hi!\" }` | `UpdateMessage(message_id: \"123456\" message { text: \"Hi!\" })` The special name `*` can be used in the body mapping to define that every field not bound by the path template should be mapped to the request body. This enables the following alternative definition of the update method: service Messaging { rpc UpdateMessage(Message) returns (Message) { option (google.api.http) = { patch: \"/v1/messages/{message_id}\" body: \"*\" }; } } message Message { string message_id = 1; string text = 2; } The following HTTP JSON to RPC mapping is enabled: HTTP | gRPC -----|----- `PATCH /v1/messages/123456 { \"text\": \"Hi!\" }` | `UpdateMessage(message_id: \"123456\" text: \"Hi!\")` Note that when using `*` in the body mapping, it is not possible to have HTTP parameters, as all fields not bound by the path end in the body. This makes this option more rarely used in practice when defining REST APIs. The common usage of `*` is in custom methods which don't use the URL at all for transferring data. It is possible to define multiple HTTP methods for one RPC by using the `additional_bindings` option. Example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get: \"/v1/messages/{message_id}\" additional_bindings { get: \"/v1/users/{user_id}/messages/{message_id}\" } }; } } message GetMessageRequest { string message_id = 1; string user_id = 2; } This enables the following two alternative HTTP JSON to RPC mappings: HTTP | gRPC -----|----- `GET /v1/messages/123456` | `GetMessage(message_id: \"123456\")` `GET /v1/users/me/messages/123456` | `GetMessage(user_id: \"me\" message_id: \"123456\")` ## Rules for HTTP mapping 1. Leaf request fields (recursive expansion nested messages in the request message) are classified into three categories: - Fields referred by the path template. They are passed via the URL path. - Fields referred by the HttpRule.body. They are passed via the HTTP request body. - All other fields are passed via the URL query parameters, and the parameter name is the field path in the request message. A repeated field can be represented as multiple query parameters under the same name. 2. If HttpRule.body is \"*\", there is no URL query parameter, all fields are passed via URL path and HTTP request body. 3. If HttpRule.body is omitted, there is no HTTP request body, all fields are passed via URL path and URL query parameters. ### Path template syntax Template = \"/\" Segments [ Verb ] ; Segments = Segment { \"/\" Segment } ; Segment = \"*\" | \"**\" | LITERAL | Variable ; Variable = \"{\" FieldPath [ \"=\" Segments ] \"}\" ; FieldPath = IDENT { \".\" IDENT } ; Verb = \":\" LITERAL ; The syntax `*` matches a single URL path segment. The syntax `**` matches zero or more URL path segments, which must be the last part of the URL path except the `Verb`. The syntax `Variable` matches part of the URL path as specified by its template. A variable template must not contain other variables. If a variable matches a single path segment, its template may be omitted, e.g. `{var}` is equivalent to `{var=*}`. The syntax `LITERAL` matches literal text in the URL path. If the `LITERAL` contains any reserved character, such characters should be percent-encoded before the matching. If a variable contains exactly one path segment, such as `\"{var}\"` or `\"{var=*}\"`, when such a variable is expanded into a URL path on the client side, all characters except `[-_.~0-9a-zA-Z]` are percent-encoded. The server side does the reverse decoding. Such variables show up in the [Discovery Document](https://developers.google.com/discovery/v1/reference/apis) as `{var}`. If a variable contains multiple path segments, such as `\"{var=foo/*}\"` or `\"{var=**}\"`, when such a variable is expanded into a URL path on the client side, all characters except `[-_.~/0-9a-zA-Z]` are percent-encoded. The server side does the reverse decoding, except \"%2F\" and \"%2f\" are left unchanged. Such variables show up in the [Discovery Document](https://developers.google.com/discovery/v1/reference/apis) as `{+var}`. ## Using gRPC API Service Configuration gRPC API Service Configuration (service config) is a configuration language for configuring a gRPC service to become a user-facing product. The service config is simply the YAML representation of the `google.api.Service` proto message. As an alternative to annotating your proto file, you can configure gRPC transcoding in your service config YAML files. You do this by specifying a `HttpRule` that maps the gRPC method to a REST endpoint, achieving the same effect as the proto annotation. This can be particularly useful if you have a proto that is reused in multiple services. Note that any transcoding specified in the service config will override any matching transcoding configuration in the proto. Example: http: rules: # Selects a gRPC method and applies HttpRule to it. - selector: example.v1.Messaging.GetMessage get: /v1/messages/{message_id}/{sub.subfield} ## Special notes When gRPC Transcoding is used to map a gRPC to JSON REST endpoints, the proto to JSON conversion must follow the [proto3 specification](https://developers.google.com/protocol-buffers/docs/proto3#json). While the single segment variable follows the semantics of [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String Expansion, the multi segment variable **does not** follow RFC 6570 Section 3.2.3 Reserved Expansion. The reason is that the Reserved Expansion does not expand special characters like `?` and `#`, which would lead to invalid URLs. As the result, gRPC Transcoding uses a custom encoding for multi segment variables. The path variables **must not** refer to any repeated or mapped field, because client libraries are not capable of handling such variable expansion. The path variables **must not** capture the leading \"/\" character. The reason is that the most common use case \"{var}\" does not capture the leading \"/\" character. For consistency, all path variables must share the same behavior. Repeated message fields must not be mapped to URL query parameters, because no client library can support such complicated mapping. If an API needs to use a JSON array for request or response body, it can map the request or response body to a repeated field. However, some gRPC Transcoding implementations may not support this feature.",
      id = "HttpRule",
      properties = {
        additionalBindings = {
          description = "Additional HTTP bindings for the selector. Nested bindings must not contain an `additional_bindings` field themselves (that is, the nesting may only be one level deep).",
          items = {
            ["$ref"] = "HttpRule",
          },
          type = "array",
        },
        body = {
          description = "The name of the request field whose value is mapped to the HTTP request body, or `*` for mapping all request fields not captured by the path pattern to the HTTP body, or omitted for not having any HTTP request body. NOTE: the referred field must be present at the top-level of the request message type.",
          type = "string",
        },
        custom = {
          ["$ref"] = "CustomHttpPattern",
          description = "The custom pattern is used for specifying an HTTP method that is not included in the `pattern` field, such as HEAD, or \"*\" to leave the HTTP method unspecified for this rule. The wild-card rule is useful for services that provide content to Web (HTML) clients.",
        },
        delete = {
          description = "Maps to HTTP DELETE. Used for deleting a resource.",
          type = "string",
        },
        get = {
          description = "Maps to HTTP GET. Used for listing and getting information about resources.",
          type = "string",
        },
        patch = {
          description = "Maps to HTTP PATCH. Used for updating a resource.",
          type = "string",
        },
        post = {
          description = "Maps to HTTP POST. Used for creating a resource or performing an action.",
          type = "string",
        },
        put = {
          description = "Maps to HTTP PUT. Used for replacing a resource.",
          type = "string",
        },
        responseBody = {
          description = "Optional. The name of the response field whose value is mapped to the HTTP response body. When omitted, the entire response message will be used as the HTTP response body. NOTE: The referred field must be present at the top-level of the response message type.",
          type = "string",
        },
        selector = {
          description = "Selects a method to which this rule applies. Refer to selector for syntax details.",
          type = "string",
        },
      },
      type = "object",
    },
    JavaSettings = {
      description = "Settings for Java client libraries.",
      id = "JavaSettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
        },
        libraryPackage = {
          description = "The package name to use in Java. Clobbers the java_package option set in the protobuf. This should be used **only** by APIs who have already set the language_settings.java.package_name\" field in gapic.yaml. API teams should use the protobuf java_package option where possible. Example of a YAML configuration:: publishing: java_settings: library_package: com.google.cloud.pubsub.v1",
          type = "string",
        },
        serviceClassNames = {
          additionalProperties = {
            type = "string",
          },
          description = "Configure the Java class name to use instead of the service's for its corresponding generated GAPIC client. Keys are fully-qualified service names as they appear in the protobuf (including the full the language_settings.java.interface_names\" field in gapic.yaml. API teams should otherwise use the service name as it appears in the protobuf. Example of a YAML configuration:: publishing: java_settings: service_class_names: - google.pubsub.v1.Publisher: TopicAdmin - google.pubsub.v1.Subscriber: SubscriptionAdmin",
          type = "object",
        },
      },
      type = "object",
    },
    JwtLocation = {
      description = "Specifies a location to extract JWT from an API request.",
      id = "JwtLocation",
      properties = {
        cookie = {
          description = "Specifies cookie name to extract JWT token.",
          type = "string",
        },
        header = {
          description = "Specifies HTTP header name to extract JWT token.",
          type = "string",
        },
        query = {
          description = "Specifies URL query parameter name to extract JWT token.",
          type = "string",
        },
        valuePrefix = {
          description = "The value prefix. The value format is \"value_prefix{token}\" Only applies to \"in\" header type. Must be empty for \"in\" query type. If not empty, the header value has to match (case sensitive) this prefix. If not matched, JWT will not be extracted. If matched, JWT will be extracted after the prefix is removed. For example, for \"Authorization: Bearer {JWT}\", value_prefix=\"Bearer \" with a space at the end.",
          type = "string",
        },
      },
      type = "object",
    },
    LabelDescriptor = {
      description = "A description of a label.",
      id = "LabelDescriptor",
      properties = {
        description = {
          description = "A human-readable description for the label.",
          type = "string",
        },
        key = {
          description = "The label key.",
          type = "string",
        },
        valueType = {
          description = "The type of data that can be assigned to the label.",
          enum = {
            "STRING",
            "BOOL",
            "INT64",
          },
          enumDescriptions = {
            "A variable-length string. This is the default.",
            "Boolean; true or false.",
            "A 64-bit signed integer.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListConnectionsResponse = {
      description = "ListConnectionsResponse is the response to list peering states for the given service and consumer project.",
      id = "ListConnectionsResponse",
      properties = {
        connections = {
          description = "The list of Connections.",
          items = {
            ["$ref"] = "Connection",
          },
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
    ListPeeredDnsDomainsResponse = {
      description = "Response to list peered DNS domains for a given connection.",
      id = "ListPeeredDnsDomainsResponse",
      properties = {
        peeredDnsDomains = {
          description = "The list of peered DNS domains.",
          items = {
            ["$ref"] = "PeeredDnsDomain",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LogDescriptor = {
      description = "A description of a log type. Example in YAML format: - name: library.googleapis.com/activity_history description: The history of borrowing and returning library items. display_name: Activity labels: - key: /customer_id description: Identifier of a library customer",
      id = "LogDescriptor",
      properties = {
        description = {
          description = "A human-readable description of this log. This information appears in the documentation and can contain details.",
          type = "string",
        },
        displayName = {
          description = "The human-readable name for this log. This information appears on the user interface and should be concise.",
          type = "string",
        },
        labels = {
          description = "The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        name = {
          description = "The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [/_-.].",
          type = "string",
        },
      },
      type = "object",
    },
    Logging = {
      description = "Logging configuration of the service. The following example shows how to configure logs to be sent to the producer and consumer projects. In the example, the `activity_history` log is sent to both the producer and consumer projects, whereas the `purchase_history` log is only sent to the producer project. monitored_resources: - type: library.googleapis.com/branch labels: - key: /city description: The city where the library branch is located in. - key: /name description: The name of the branch. logs: - name: activity_history labels: - key: /customer_id - name: purchase_history logging: producer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history - purchase_history consumer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history",
      id = "Logging",
      properties = {
        consumerDestinations = {
          description = "Logging configurations for sending logs to the consumer project. There can be multiple consumer destinations, each one must have a different monitored resource type. A log can be used in at most one consumer destination.",
          items = {
            ["$ref"] = "LoggingDestination",
          },
          type = "array",
        },
        producerDestinations = {
          description = "Logging configurations for sending logs to the producer project. There can be multiple producer destinations, each one must have a different monitored resource type. A log can be used in at most one producer destination.",
          items = {
            ["$ref"] = "LoggingDestination",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LoggingDestination = {
      description = "Configuration of a specific logging destination (the producer project or the consumer project).",
      id = "LoggingDestination",
      properties = {
        logs = {
          description = "Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by \"/\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        monitoredResource = {
          description = "The monitored resource type. The type must be defined in the Service.monitored_resources section.",
          type = "string",
        },
      },
      type = "object",
    },
    LongRunning = {
      description = "Describes settings to use when generating API methods that use the long-running operation pattern. All default values below are from those used in the client library generators (e.g. [Java](https://github.com/googleapis/gapic-generator-java/blob/04c2faa191a9b5a10b92392fe8482279c4404803/src/main/java/com/google/api/generator/gapic/composer/common/RetrySettingsComposer.java)).",
      id = "LongRunning",
      properties = {
        initialPollDelay = {
          description = "Initial delay after which the first poll request will be made. Default value: 5 seconds.",
          format = "google-duration",
          type = "string",
        },
        maxPollDelay = {
          description = "Maximum time between two subsequent poll requests. Default value: 45 seconds.",
          format = "google-duration",
          type = "string",
        },
        pollDelayMultiplier = {
          description = "Multiplier to gradually increase delay between subsequent polls until it reaches max_poll_delay. Default value: 1.5.",
          format = "float",
          type = "number",
        },
        totalPollTimeout = {
          description = "Total polling timeout. Default value: 5 minutes.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Method = {
      description = "Method represents a method of an API interface.",
      id = "Method",
      properties = {
        name = {
          description = "The simple name of this method.",
          type = "string",
        },
        options = {
          description = "Any metadata attached to the method.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        requestStreaming = {
          description = "If true, the request is streamed.",
          type = "boolean",
        },
        requestTypeUrl = {
          description = "A URL of the input message type.",
          type = "string",
        },
        responseStreaming = {
          description = "If true, the response is streamed.",
          type = "boolean",
        },
        responseTypeUrl = {
          description = "The URL of the output message type.",
          type = "string",
        },
        syntax = {
          description = "The source syntax of this method.",
          enum = {
            "SYNTAX_PROTO2",
            "SYNTAX_PROTO3",
          },
          enumDescriptions = {
            "Syntax `proto2`.",
            "Syntax `proto3`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MethodSettings = {
      description = "Describes the generator configuration for a method.",
      id = "MethodSettings",
      properties = {
        longRunning = {
          ["$ref"] = "LongRunning",
          description = "Describes settings to use for long-running operations when generating API methods for RPCs. Complements RPCs that use the annotations in google/longrunning/operations.proto. Example of a YAML configuration:: publishing: method_behavior: - selector: CreateAdDomain long_running: initial_poll_delay: seconds: 60 # 1 minute poll_delay_multiplier: 1.5 max_poll_delay: seconds: 360 # 6 minutes total_poll_timeout: seconds: 54000 # 90 minutes",
        },
        selector = {
          description = "The fully qualified name of the method, for which the options below apply. This is used to find the method to apply the options.",
          type = "string",
        },
      },
      type = "object",
    },
    MetricDescriptor = {
      description = "Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable. ",
      id = "MetricDescriptor",
      properties = {
        description = {
          description = "A detailed description of the metric, which can be used in documentation.",
          type = "string",
        },
        displayName = {
          description = "A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \"Request count\". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.",
          type = "string",
        },
        labels = {
          description = "The set of labels that can be used to describe a specific instance of this metric type. For example, the `appengine.googleapis.com/http/server/response_latencies` metric type has a label for the HTTP response code, `response_code`, so you can look at latencies for successful responses or just for responses that failed.",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        launchStage = {
          description = "Optional. The launch stage of the metric definition.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        metadata = {
          ["$ref"] = "MetricDescriptorMetadata",
          description = "Optional. Metadata which can be used to guide usage of the metric.",
        },
        metricKind = {
          description = "Whether the metric records instantaneous values, changes to a value, etc. Some combinations of `metric_kind` and `value_type` might not be supported.",
          enum = {
            "METRIC_KIND_UNSPECIFIED",
            "GAUGE",
            "DELTA",
            "CUMULATIVE",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "An instantaneous measurement of a value.",
            "The change in a value during a time interval.",
            "A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.",
          },
          type = "string",
        },
        monitoredResourceTypes = {
          description = "Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the metric descriptor.",
          type = "string",
        },
        type = {
          description = "The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name `custom.googleapis.com` or `external.googleapis.com`. Metric types should use a natural hierarchical grouping. For example: \"custom.googleapis.com/invoice/paid/amount\" \"external.googleapis.com/prometheus/up\" \"appengine.googleapis.com/http/server/response_latencies\"",
          type = "string",
        },
        unit = {
          description = "The units in which the metric value is reported. It is only applicable if the `value_type` is `INT64`, `DOUBLE`, or `DISTRIBUTION`. The `unit` defines the representation of the stored metric values. Different systems might scale the values to be more easily displayed (so a value of `0.02kBy` _might_ be displayed as `20By`, and a value of `3523kBy` _might_ be displayed as `3.5MBy`). However, if the `unit` is `kBy`, then the value of the metric is always in thousands of bytes, no matter how it might be displayed. If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an `INT64 CUMULATIVE` metric whose `unit` is `s{CPU}` (or equivalently `1s{CPU}` or just `s`). If the job uses 12,005 CPU-seconds, then the value is written as `12005`. Alternatively, if you want a custom metric to record data in a more granular way, you can create a `DOUBLE CUMULATIVE` metric whose `unit` is `ks{CPU}`, and then write the value `12.005` (which is `12005/1000`), or use `Kis{CPU}` and write `11.723` (which is `12005/1024`). The supported units are a subset of [The Unified Code for Units of Measure](https://unitsofmeasure.org/ucum.html) standard: **Basic units (UNIT)** * `bit` bit * `By` byte * `s` second * `min` minute * `h` hour * `d` day * `1` dimensionless **Prefixes (PREFIX)** * `k` kilo (10^3) * `M` mega (10^6) * `G` giga (10^9) * `T` tera (10^12) * `P` peta (10^15) * `E` exa (10^18) * `Z` zetta (10^21) * `Y` yotta (10^24) * `m` milli (10^-3) * `u` micro (10^-6) * `n` nano (10^-9) * `p` pico (10^-12) * `f` femto (10^-15) * `a` atto (10^-18) * `z` zepto (10^-21) * `y` yocto (10^-24) * `Ki` kibi (2^10) * `Mi` mebi (2^20) * `Gi` gibi (2^30) * `Ti` tebi (2^40) * `Pi` pebi (2^50) **Grammar** The grammar also includes these connectors: * `/` division or ratio (as an infix operator). For examples, `kBy/{email}` or `MiBy/10ms` (although you should almost never have `/s` in a metric `unit`; rates should always be computed at query time from the underlying cumulative or delta value). * `.` multiplication or composition (as an infix operator). For examples, `GBy.d` or `k{watt}.h`. The grammar for a unit is as follows: Expression = Component { \".\" Component } { \"/\" Component } ; Component = ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation | \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: * `Annotation` is just a comment if it follows a `UNIT`. If the annotation is used alone, then the unit is equivalent to `1`. For examples, `{request}/s == 1/s`, `By{transmitted}/s == By/s`. * `NAME` is a sequence of non-blank printable ASCII characters not containing `{` or `}`. * `1` represents a unitary [dimensionless unit](https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in `1/s`. It is typically used when none of the basic units are appropriate. For example, \"new users per day\" can be represented as `1/d` or `{new-users}/d` (and a metric value `5` would mean \"5 new users). Alternatively, \"thousands of page views per day\" would be represented as `1000/d` or `k1/d` or `k{page_views}/d` (and a metric value of `5.3` would mean \"5300 page views per day\"). * `%` represents dimensionless value of 1/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a metric value `3` means \"3 percent\"). * `10^2.%` indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value `0.03` means \"3 percent\").",
          type = "string",
        },
        valueType = {
          description = "Whether the measurement is an integer, a floating-point number, etc. Some combinations of `metric_kind` and `value_type` might not be supported.",
          enum = {
            "VALUE_TYPE_UNSPECIFIED",
            "BOOL",
            "INT64",
            "DOUBLE",
            "STRING",
            "DISTRIBUTION",
            "MONEY",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The value is a boolean. This value type can be used only if the metric kind is `GAUGE`.",
            "The value is a signed 64-bit integer.",
            "The value is a double precision floating point number.",
            "The value is a text string. This value type can be used only if the metric kind is `GAUGE`.",
            "The value is a `Distribution`.",
            "The value is money.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MetricDescriptorMetadata = {
      description = "Additional annotations that can be used to guide the usage of a metric.",
      id = "MetricDescriptorMetadata",
      properties = {
        ingestDelay = {
          description = "The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.",
          format = "google-duration",
          type = "string",
        },
        launchStage = {
          description = "Deprecated. Must use the MetricDescriptor.launch_stage instead.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        samplePeriod = {
          description = "The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    MetricRule = {
      description = "Bind API methods to metrics. Binding a method to a metric causes that metric's configured quota behaviors to apply to the method call.",
      id = "MetricRule",
      properties = {
        metricCosts = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.",
          type = "object",
        },
        selector = {
          description = "Selects the methods to which this rule applies. Refer to selector for syntax details.",
          type = "string",
        },
      },
      type = "object",
    },
    Mixin = {
      description = "Declares an API Interface to be included in this interface. The including interface must redeclare all the methods from the included interface, but documentation and options are inherited as follows: - If after comment and whitespace stripping, the documentation string of the redeclared method is empty, it will be inherited from the original method. - Each annotation belonging to the service config (http, visibility) which is not set in the redeclared method will be inherited. - If an http annotation is inherited, the path pattern will be modified as follows. Any version prefix will be replaced by the version of the including interface plus the root path if specified. Example of a simple mixin: package google.acl.v1; service AccessControl { // Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = \"/v1/{resource=**}:getAcl\"; } } package google.storage.v2; service Storage { // rpc GetAcl(GetAclRequest) returns (Acl); // Get a data record. rpc GetData(GetDataRequest) returns (Data) { option (google.api.http).get = \"/v2/{resource=**}\"; } } Example of a mixin configuration: apis: - name: google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl The mixin construct implies that all methods in `AccessControl` are also declared with same name and request/response types in `Storage`. A documentation generator or annotation processor will see the effective `Storage.GetAcl` method after inheriting documentation and annotations as follows: service Storage { // Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = \"/v2/{resource=**}:getAcl\"; } ... } Note how the version in the path pattern changed from `v1` to `v2`. If the `root` field in the mixin is specified, it should be a relative path under which inherited HTTP paths are placed. Example: apis: - name: google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl root: acls This implies the following inherited HTTP annotation: service Storage { // Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = \"/v2/acls/{resource=**}:getAcl\"; } ... }",
      id = "Mixin",
      properties = {
        name = {
          description = "The fully qualified name of the interface which is included.",
          type = "string",
        },
        root = {
          description = "If non-empty specifies a path under which inherited HTTP paths are rooted.",
          type = "string",
        },
      },
      type = "object",
    },
    MonitoredResourceDescriptor = {
      description = "An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of `\"gce_instance\"` and specifies the use of the labels `\"instance_id\"` and `\"zone\"` to identify particular VM instances. Different APIs can support different monitored resource types. APIs generally provide a `list` method that returns the monitored resource descriptors used by the API. ",
      id = "MonitoredResourceDescriptor",
      properties = {
        description = {
          description = "Optional. A detailed description of the monitored resource type that might be used in documentation.",
          type = "string",
        },
        displayName = {
          description = "Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, `\"Google Cloud SQL Database\"`.",
          type = "string",
        },
        labels = {
          description = "Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels `\"database_id\"` and `\"zone\"`.",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        launchStage = {
          description = "Optional. The launch stage of the monitored resource definition.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        name = {
          description = "Optional. The resource name of the monitored resource descriptor: `\"projects/{project_id}/monitoredResourceDescriptors/{type}\"` where {type} is the value of the `type` field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format `\"monitoredResourceDescriptors/{type}\"`.",
          type = "string",
        },
        type = {
          description = "Required. The monitored resource type. For example, the type `\"cloudsql_database\"` represents databases in Google Cloud SQL. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).",
          type = "string",
        },
      },
      type = "object",
    },
    Monitoring = {
      description = "Monitoring configuration of the service. The example below shows how to configure monitored resources and metrics for monitoring. In the example, a monitored resource and two metrics are defined. The `library.googleapis.com/book/returned_count` metric is sent to both producer and consumer projects, whereas the `library.googleapis.com/book/num_overdue` metric is only sent to the consumer project. monitored_resources: - type: library.googleapis.com/Branch display_name: \"Library Branch\" description: \"A branch of a library.\" launch_stage: GA labels: - key: resource_container description: \"The Cloud container (ie. project id) for the Branch.\" - key: location description: \"The location of the library branch.\" - key: branch_id description: \"The id of the branch.\" metrics: - name: library.googleapis.com/book/returned_count display_name: \"Books Returned\" description: \"The count of books that have been returned.\" launch_stage: GA metric_kind: DELTA value_type: INT64 unit: \"1\" labels: - key: customer_id description: \"The id of the customer.\" - name: library.googleapis.com/book/num_overdue display_name: \"Books Overdue\" description: \"The current number of overdue books.\" launch_stage: GA metric_kind: GAUGE value_type: INT64 unit: \"1\" labels: - key: customer_id description: \"The id of the customer.\" monitoring: producer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count consumer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count - library.googleapis.com/book/num_overdue",
      id = "Monitoring",
      properties = {
        consumerDestinations = {
          description = "Monitoring configurations for sending metrics to the consumer project. There can be multiple consumer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.",
          items = {
            ["$ref"] = "MonitoringDestination",
          },
          type = "array",
        },
        producerDestinations = {
          description = "Monitoring configurations for sending metrics to the producer project. There can be multiple producer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.",
          items = {
            ["$ref"] = "MonitoringDestination",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MonitoringDestination = {
      description = "Configuration of a specific monitoring destination (the producer project or the consumer project).",
      id = "MonitoringDestination",
      properties = {
        metrics = {
          description = "Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.",
          items = {
            type = "string",
          },
          type = "array",
        },
        monitoredResource = {
          description = "The monitored resource type. The type must be defined in Service.monitored_resources section.",
          type = "string",
        },
      },
      type = "object",
    },
    NodeSettings = {
      description = "Settings for Node client libraries.",
      id = "NodeSettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
        },
      },
      type = "object",
    },
    OAuthRequirements = {
      description = "OAuth scopes are a way to define data and permissions on data. For example, there are scopes defined for \"Read-only access to Google Calendar\" and \"Access to Cloud Platform\". Users can consent to a scope for an application, giving it permission to access that data on their behalf. OAuth scope specifications should be fairly coarse grained; a user will need to see and understand the text description of what your scope means. In most cases: use one or at most two OAuth scopes for an entire family of products. If your product has multiple APIs, you should probably be sharing the OAuth scope across all of those APIs. When you need finer grained OAuth consent screens: talk with your product management about how developers will use them in practice. Please note that even though each of the canonical scopes is enough for a request to be accepted and passed to the backend, a request can still fail due to the backend requiring additional scopes or permissions.",
      id = "OAuthRequirements",
      properties = {
        canonicalScopes = {
          description = "The list of publicly documented OAuth scopes that are allowed access. An OAuth token containing any of these scopes will be accepted. Example: canonical_scopes: https://www.googleapis.com/auth/calendar, https://www.googleapis.com/auth/calendar.read",
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
    Option = {
      description = "A protocol buffer option, which can be attached to a message, field, enumeration, etc.",
      id = "Option",
      properties = {
        name = {
          description = "The option's name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, `\"map_entry\"`. For custom options, it should be the fully-qualified name. For example, `\"google.api.http\"`.",
          type = "string",
        },
        value = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The option's value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google/protobuf/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.",
          type = "object",
        },
      },
      type = "object",
    },
    Page = {
      description = "Represents a documentation page. A page can contain subpages to represent nested documentation set structure.",
      id = "Page",
      properties = {
        content = {
          description = "The Markdown content of the page. You can use (== include {path} ==) to include content from a Markdown file. The content can be used to produce the documentation page such as HTML format page.",
          type = "string",
        },
        name = {
          description = "The name of the page. It will be used as an identity of the page to generate URI of the page, text of the link to this page in navigation, etc. The full page name (start from the root page name to this page concatenated with `.`) can be used as reference to the page in your documentation. For example: pages: - name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java content: (== include tutorial_java.md ==) You can reference `Java` page using Markdown reference link syntax: `Java`.",
          type = "string",
        },
        subpages = {
          description = "Subpages of this page. The order of subpages specified here will be honored in the generated docset.",
          items = {
            ["$ref"] = "Page",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PartialDeleteConnectionMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by Partial Delete Connection API",
      id = "PartialDeleteConnectionMetadata",
      properties = {},
      type = "object",
    },
    PeeredDnsDomain = {
      description = "DNS domain suffix for which requests originating in the producer VPC network are resolved in the associated consumer VPC network.",
      id = "PeeredDnsDomain",
      properties = {
        dnsSuffix = {
          description = "The DNS domain name suffix e.g. `example.com.`. Cloud DNS requires that a DNS suffix ends with a trailing dot.",
          type = "string",
        },
        name = {
          description = "User assigned name for this resource. Must be unique within the consumer network. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.",
          type = "string",
        },
      },
      type = "object",
    },
    PeeredDnsDomainMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by CreatePeeredDnsDomain API.",
      id = "PeeredDnsDomainMetadata",
      properties = {},
      type = "object",
    },
    PhpSettings = {
      description = "Settings for Php client libraries.",
      id = "PhpSettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
        },
      },
      type = "object",
    },
    PolicyBinding = {
      description = "Grouping of IAM role and IAM member.",
      id = "PolicyBinding",
      properties = {
        member = {
          description = "Required. Member to bind the role with. See /iam/docs/reference/rest/v1/Policy#Binding for how to format each member. Eg. - user:myuser@mydomain.com - serviceAccount:my-service-account@app.gserviceaccount.com",
          type = "string",
        },
        role = {
          description = "Required. Role to apply. Only allowlisted roles can be used at the specified granularity. The role must be one of the following: - 'roles/container.hostServiceAgentUser' applied on the shared VPC host project - 'roles/compute.securityAdmin' applied on the shared VPC host project",
          type = "string",
        },
      },
      type = "object",
    },
    Publishing = {
      description = "This message configures the settings for publishing [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from the service config.",
      id = "Publishing",
      properties = {
        apiShortName = {
          description = "Used as a tracking tag when collecting data about the APIs developer relations artifacts like docs, packages delivered to package managers, etc. Example: \"speech\".",
          type = "string",
        },
        codeownerGithubTeams = {
          description = "GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the client libraries for this API.",
          items = {
            type = "string",
          },
          type = "array",
        },
        docTagPrefix = {
          description = "A prefix used in sample code when demarking regions to be included in documentation.",
          type = "string",
        },
        documentationUri = {
          description = "Link to product home page. Example: https://cloud.google.com/asset-inventory/docs/overview",
          type = "string",
        },
        githubLabel = {
          description = "GitHub label to apply to issues and pull requests opened for this API.",
          type = "string",
        },
        librarySettings = {
          description = "Client library settings. If the same version string appears multiple times in this list, then the last one wins. Settings from earlier settings with the same version string are discarded.",
          items = {
            ["$ref"] = "ClientLibrarySettings",
          },
          type = "array",
        },
        methodSettings = {
          description = "A list of API method settings, e.g. the behavior for methods that use the long-running operation pattern.",
          items = {
            ["$ref"] = "MethodSettings",
          },
          type = "array",
        },
        newIssueUri = {
          description = "Link to a place that API users can report issues. Example: https://issuetracker.google.com/issues/new?component=190865&template=1161103",
          type = "string",
        },
        organization = {
          description = "For whom the client library is being published.",
          enum = {
            "CLIENT_LIBRARY_ORGANIZATION_UNSPECIFIED",
            "CLOUD",
            "ADS",
            "PHOTOS",
            "STREET_VIEW",
          },
          enumDescriptions = {
            "Not useful.",
            "Google Cloud Platform Org.",
            "Ads (Advertising) Org.",
            "Photos Org.",
            "Street View Org.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PythonSettings = {
      description = "Settings for Python client libraries.",
      id = "PythonSettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
        },
      },
      type = "object",
    },
    Quota = {
      description = "Quota configuration helps to achieve fairness and budgeting in service usage. The metric based quota configuration works this way: - The service configuration defines a set of metrics. - For API calls, the quota.metric_rules maps methods to metrics with corresponding costs. - The quota.limits defines limits on the metrics, which will be used for quota checks at runtime. An example quota configuration in yaml format: quota: limits: - name: apiWriteQpsPerProject metric: library.googleapis.com/write_calls unit: \"1/min/{project}\" # rate limit for consumer projects values: STANDARD: 10000 (The metric rules bind all methods to the read_calls metric, except for the UpdateBook and DeleteBook methods. These two methods are mapped to the write_calls metric, with the UpdateBook method consuming at twice rate as the DeleteBook method.) metric_rules: - selector: \"*\" metric_costs: library.googleapis.com/read_calls: 1 - selector: google.example.library.v1.LibraryService.UpdateBook metric_costs: library.googleapis.com/write_calls: 2 - selector: google.example.library.v1.LibraryService.DeleteBook metric_costs: library.googleapis.com/write_calls: 1 Corresponding Metric definition: metrics: - name: library.googleapis.com/read_calls display_name: Read requests metric_kind: DELTA value_type: INT64 - name: library.googleapis.com/write_calls display_name: Write requests metric_kind: DELTA value_type: INT64 ",
      id = "Quota",
      properties = {
        limits = {
          description = "List of QuotaLimit definitions for the service.",
          items = {
            ["$ref"] = "QuotaLimit",
          },
          type = "array",
        },
        metricRules = {
          description = "List of MetricRule definitions, each one mapping a selected method to one or more metrics.",
          items = {
            ["$ref"] = "MetricRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    QuotaLimit = {
      description = "`QuotaLimit` defines a specific limit that applies over a specified duration for a limit type. There can be at most one limit for a duration and limit type combination defined within a `QuotaGroup`.",
      id = "QuotaLimit",
      properties = {
        defaultLimit = {
          description = "Default number of tokens that can be consumed during the specified duration. This is the number of tokens assigned when a client application developer activates the service for his/her project. Specifying a value of 0 will block all requests. This can be used if you are provisioning quota to selected consumers and blocking others. Similarly, a value of -1 will indicate an unlimited quota. No other negative values are allowed. Used by group-based quotas only.",
          format = "int64",
          type = "string",
        },
        description = {
          description = "Optional. User-visible, extended description for this quota limit. Should be used only when more context is needed to understand this limit than provided by the limit's display name (see: `display_name`).",
          type = "string",
        },
        displayName = {
          description = "User-visible display name for this limit. Optional. If not set, the UI will provide a default display name based on the quota configuration. This field can be used to override the default display name generated from the configuration.",
          type = "string",
        },
        duration = {
          description = "Duration of this limit in textual notation. Must be \"100s\" or \"1d\". Used by group-based quotas only.",
          type = "string",
        },
        freeTier = {
          description = "Free tier value displayed in the Developers Console for this limit. The free tier is the number of tokens that will be subtracted from the billed amount when billing is enabled. This field can only be set on a limit with duration \"1d\", in a billable group; it is invalid on any other limit. If this field is not set, it defaults to 0, indicating that there is no free tier for this service. Used by group-based quotas only.",
          format = "int64",
          type = "string",
        },
        maxLimit = {
          description = "Maximum number of tokens that can be consumed during the specified duration. Client application developers can override the default limit up to this maximum. If specified, this value cannot be set to a value less than the default limit. If not specified, it is set to the default limit. To allow clients to apply overrides with no upper bound, set this to -1, indicating unlimited maximum quota. Used by group-based quotas only.",
          format = "int64",
          type = "string",
        },
        metric = {
          description = "The name of the metric this quota limit applies to. The quota limits with the same metric will be checked together during runtime. The metric must be defined within the service config.",
          type = "string",
        },
        name = {
          description = "Name of the quota limit. The name must be provided, and it must be unique within the service. The name can only include alphanumeric characters as well as '-'. The maximum length of the limit name is 64 characters.",
          type = "string",
        },
        unit = {
          description = "Specify the unit of the quota limit. It uses the same syntax as Metric.unit. The supported unit kinds are determined by the quota backend system. Here are some examples: * \"1/min/{project}\" for quota per minute per project. Note: the order of unit components is insignificant. The \"1\" at the beginning is required to follow the metric unit syntax.",
          type = "string",
        },
        values = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "Tiered limit values. You must specify this as a key:value pair, with an integer value that is the maximum number of requests allowed for the specified unit. Currently only STANDARD is supported.",
          type = "object",
        },
      },
      type = "object",
    },
    Range = {
      description = "Represents a found unused range.",
      id = "Range",
      properties = {
        ipCidrRange = {
          description = "CIDR range in \"10.x.x.x/y\" format that is within the allocated ranges and currently unused.",
          type = "string",
        },
        network = {
          description = "In the Shared VPC host project, the VPC network that's peered with the consumer network. For example: `projects/1234321/global/networks/host-network`",
          type = "string",
        },
      },
      type = "object",
    },
    RangeReservation = {
      description = "Represents a range reservation.",
      id = "RangeReservation",
      properties = {
        ipPrefixLength = {
          description = "Required. The size of the desired subnet. Use usual CIDR range notation. For example, '29' to find unused x.x.x.x/29 CIDR range. The goal is to determine if one of the allocated ranges has enough free space for a subnet of the requested size. GCE disallows subnets with prefix_length > 29",
          format = "int32",
          type = "integer",
        },
        requestedRanges = {
          description = "Optional. The name of one or more allocated IP address ranges associated with this private service access connection. If no range names are provided all ranges associated with this connection will be considered. If a CIDR range with the specified IP prefix length is not available within these ranges the validation fails.",
          items = {
            type = "string",
          },
          type = "array",
        },
        secondaryRangeIpPrefixLengths = {
          description = "Optional. The size of the desired secondary ranges for the subnet. Use usual CIDR range notation. For example, '29' to find unused x.x.x.x/29 CIDR range. The goal is to determine that the allocated ranges have enough free space for all the requested secondary ranges. GCE disallows subnets with prefix_length > 29",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        subnetworkCandidates = {
          description = "Optional. List of subnetwork candidates to validate. The required input fields are `name`, `network`, and `region`. Subnetworks from this list which exist will be returned in the response with the `ip_cidr_range`, `secondary_ip_cider_ranges`, and `outside_allocation` fields set.",
          items = {
            ["$ref"] = "Subnetwork",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RemoveDnsRecordSetMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by RemoveDnsRecordSet API",
      id = "RemoveDnsRecordSetMetadata",
      properties = {},
      type = "object",
    },
    RemoveDnsRecordSetRequest = {
      description = "Request to remove a record set from a private managed DNS zone in the shared producer host project. The name, type, ttl, and data values must all exactly match an existing record set in the specified zone.",
      id = "RemoveDnsRecordSetRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is the project number, as in '12345' {network} is the network name.",
          type = "string",
        },
        dnsRecordSet = {
          ["$ref"] = "DnsRecordSet",
          description = "Required. The DNS record set to remove.",
        },
        zone = {
          description = "Required. The name of the private DNS zone in the shared producer host project from which the record set will be removed.",
          type = "string",
        },
      },
      type = "object",
    },
    RemoveDnsRecordSetResponse = {
      description = "Blank message response type for RemoveDnsRecordSet API",
      id = "RemoveDnsRecordSetResponse",
      properties = {},
      type = "object",
    },
    RemoveDnsZoneMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by RemoveDnsZone API",
      id = "RemoveDnsZoneMetadata",
      properties = {},
      type = "object",
    },
    RemoveDnsZoneRequest = {
      description = "Request to remove a private managed DNS zone in the shared producer host project and a matching DNS peering zone in the consumer project.",
      id = "RemoveDnsZoneRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is the project number, as in '12345' {network} is the network name.",
          type = "string",
        },
        name = {
          description = "Required. The name for both the private zone in the shared producer host project and the peering zone in the consumer project.",
          type = "string",
        },
      },
      type = "object",
    },
    RemoveDnsZoneResponse = {
      description = "Blank message response type for RemoveDnsZone API",
      id = "RemoveDnsZoneResponse",
      properties = {},
      type = "object",
    },
    Route = {
      description = "Represents a route that was created or discovered by a private access management service.",
      id = "Route",
      properties = {
        destRange = {
          description = "Destination CIDR range that this route applies to.",
          type = "string",
        },
        name = {
          description = "Route name. See https://cloud.google.com/vpc/docs/routes",
          type = "string",
        },
        network = {
          description = "Fully-qualified URL of the VPC network in the producer host tenant project that this route applies to. For example: `projects/123456/global/networks/host-network`",
          type = "string",
        },
        nextHopGateway = {
          description = "Fully-qualified URL of the gateway that should handle matching packets that this route applies to. For example: `projects/123456/global/gateways/default-internet-gateway`",
          type = "string",
        },
      },
      type = "object",
    },
    RubySettings = {
      description = "Settings for Ruby client libraries.",
      id = "RubySettings",
      properties = {
        common = {
          ["$ref"] = "CommonLanguageSettings",
          description = "Some settings.",
        },
      },
      type = "object",
    },
    SearchRangeRequest = {
      description = "Request to search for an unused range within allocated ranges.",
      id = "SearchRangeRequest",
      properties = {
        ipPrefixLength = {
          description = "Required. The prefix length of the IP range. Use usual CIDR range notation. For example, '30' to find unused x.x.x.x/30 CIDR range. Actual range will be determined using allocated range for the consumer peered network and returned in the result.",
          format = "int32",
          type = "integer",
        },
        network = {
          description = "Network name in the consumer project. This network must have been already peered with a shared VPC network using CreateConnection method. Must be in a form 'projects/{project}/global/networks/{network}'. {project} is a project number, as in '12345' {network} is network name.",
          type = "string",
        },
      },
      type = "object",
    },
    SecondaryIpRange = {
      id = "SecondaryIpRange",
      properties = {
        ipCidrRange = {
          description = "Secondary IP CIDR range in `x.x.x.x/y` format.",
          type = "string",
        },
        rangeName = {
          description = "Name of the secondary IP range.",
          type = "string",
        },
      },
      type = "object",
    },
    SecondaryIpRangeSpec = {
      id = "SecondaryIpRangeSpec",
      properties = {
        ipPrefixLength = {
          description = "Required. The prefix length of the secondary IP range. Use CIDR range notation, such as `30` to provision a secondary IP range with an `x.x.x.x/30` CIDR range. The IP address range is drawn from a pool of available ranges in the service consumer's allocated range.",
          format = "int32",
          type = "integer",
        },
        outsideAllocationPublicIpRange = {
          description = "Optional. Enable outside allocation using public IP addresses. Any public IP range may be specified. If this field is provided, we will not use customer reserved ranges for this secondary IP range.",
          type = "string",
        },
        rangeName = {
          description = "Required. A name for the secondary IP range. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.",
          type = "string",
        },
        requestedAddress = {
          description = "Optional. The starting address of a range. The address must be a valid IPv4 address in the x.x.x.x format. This value combined with the IP prefix range is the CIDR range for the secondary IP range. The range must be within the allocated range that is assigned to the private connection. If the CIDR range isn't available, the call fails.",
          type = "string",
        },
      },
      type = "object",
    },
    Service = {
      description = "`Service` is the root object of Google API service configuration (service config). It describes the basic information about a logical service, such as the service name and the user-facing title, and delegates other aspects to sub-sections. Each sub-section is either a proto message or a repeated proto message that configures a specific aspect, such as auth. For more information, see each proto message definition. Example: type: google.api.Service name: calendar.googleapis.com title: Google Calendar API apis: - name: google.calendar.v3.Calendar visibility: rules: - selector: \"google.calendar.v3.*\" restriction: PREVIEW backend: rules: - selector: \"google.calendar.v3.*\" address: calendar.example.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: \"*\" requirements: provider_id: google_calendar_auth",
      id = "Service",
      properties = {
        apis = {
          description = "A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.",
          items = {
            ["$ref"] = "Api",
          },
          type = "array",
        },
        authentication = {
          ["$ref"] = "Authentication",
          description = "Auth configuration.",
        },
        backend = {
          ["$ref"] = "Backend",
          description = "API backend configuration.",
        },
        billing = {
          ["$ref"] = "Billing",
          description = "Billing configuration.",
        },
        configVersion = {
          description = "Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.",
          format = "uint32",
          type = "integer",
        },
        context = {
          ["$ref"] = "Context",
          description = "Context configuration.",
        },
        control = {
          ["$ref"] = "Control",
          description = "Configuration for the service control plane.",
        },
        customError = {
          ["$ref"] = "CustomError",
          description = "Custom error configuration.",
        },
        documentation = {
          ["$ref"] = "Documentation",
          description = "Additional API documentation.",
        },
        endpoints = {
          description = "Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.",
          items = {
            ["$ref"] = "Endpoint",
          },
          type = "array",
        },
        enums = {
          description = "A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum",
          items = {
            ["$ref"] = "Enum",
          },
          type = "array",
        },
        http = {
          ["$ref"] = "Http",
          description = "HTTP configuration.",
        },
        id = {
          description = "A unique ID for a specific instance of this message, typically assigned by the client for tracking purpose. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If empty, the server may choose to generate one instead.",
          type = "string",
        },
        logging = {
          ["$ref"] = "Logging",
          description = "Logging configuration.",
        },
        logs = {
          description = "Defines the logs used by this service.",
          items = {
            ["$ref"] = "LogDescriptor",
          },
          type = "array",
        },
        metrics = {
          description = "Defines the metrics used by this service.",
          items = {
            ["$ref"] = "MetricDescriptor",
          },
          type = "array",
        },
        monitoredResources = {
          description = "Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.",
          items = {
            ["$ref"] = "MonitoredResourceDescriptor",
          },
          type = "array",
        },
        monitoring = {
          ["$ref"] = "Monitoring",
          description = "Monitoring configuration.",
        },
        name = {
          description = "The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.",
          type = "string",
        },
        producerProjectId = {
          description = "The Google project that owns this service.",
          type = "string",
        },
        publishing = {
          ["$ref"] = "Publishing",
          description = "Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.",
        },
        quota = {
          ["$ref"] = "Quota",
          description = "Quota configuration.",
        },
        sourceInfo = {
          ["$ref"] = "SourceInfo",
          description = "Output only. The source information for this configuration if available.",
        },
        systemParameters = {
          ["$ref"] = "SystemParameters",
          description = "System parameter configuration.",
        },
        systemTypes = {
          description = "A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.",
          items = {
            ["$ref"] = "Type",
          },
          type = "array",
        },
        title = {
          description = "The product title for this service, it is the name displayed in Google Cloud Console.",
          type = "string",
        },
        types = {
          description = "A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32",
          items = {
            ["$ref"] = "Type",
          },
          type = "array",
        },
        usage = {
          ["$ref"] = "Usage",
          description = "Configuration controlling usage of this service.",
        },
      },
      type = "object",
    },
    SourceContext = {
      description = "`SourceContext` represents information about the source of a protobuf element, like the file in which it is defined.",
      id = "SourceContext",
      properties = {
        fileName = {
          description = "The path-qualified name of the .proto file that contained the associated protobuf element. For example: `\"google/protobuf/source_context.proto\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    SourceInfo = {
      description = "Source information used to create a Service Config",
      id = "SourceInfo",
      properties = {
        sourceFiles = {
          description = "All files used during config generation.",
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
    Subnetwork = {
      description = "Represents a subnet that was created or discovered by a private access management service.",
      id = "Subnetwork",
      properties = {
        ipCidrRange = {
          description = "Subnetwork CIDR range in `10.x.x.x/y` format.",
          type = "string",
        },
        name = {
          description = "Subnetwork name. See https://cloud.google.com/compute/docs/vpc/",
          type = "string",
        },
        network = {
          description = "In the Shared VPC host project, the VPC network that's peered with the consumer network. For example: `projects/1234321/global/networks/host-network`",
          type = "string",
        },
        outsideAllocation = {
          description = "This is a discovered subnet that is not within the current consumer allocated ranges.",
          type = "boolean",
        },
        region = {
          description = "GCP region where the subnetwork is located.",
          type = "string",
        },
        secondaryIpRanges = {
          description = "List of secondary IP ranges in this subnetwork.",
          items = {
            ["$ref"] = "SecondaryIpRange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SystemParameter = {
      description = "Define a parameter's name and location. The parameter may be passed as either an HTTP header or a URL query parameter, and if both are passed the behavior is implementation-dependent.",
      id = "SystemParameter",
      properties = {
        httpHeader = {
          description = "Define the HTTP header name to use for the parameter. It is case insensitive.",
          type = "string",
        },
        name = {
          description = "Define the name of the parameter, such as \"api_key\" . It is case sensitive.",
          type = "string",
        },
        urlQueryParameter = {
          description = "Define the URL query parameter name to use for the parameter. It is case sensitive.",
          type = "string",
        },
      },
      type = "object",
    },
    SystemParameterRule = {
      description = "Define a system parameter rule mapping system parameter definitions to methods.",
      id = "SystemParameterRule",
      properties = {
        parameters = {
          description = "Define parameters. Multiple names may be defined for a parameter. For a given method call, only one of them should be used. If multiple names are used the behavior is implementation-dependent. If none of the specified names are present the behavior is parameter-dependent.",
          items = {
            ["$ref"] = "SystemParameter",
          },
          type = "array",
        },
        selector = {
          description = "Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refer to selector for syntax details.",
          type = "string",
        },
      },
      type = "object",
    },
    SystemParameters = {
      description = "### System parameter configuration A system parameter is a special kind of parameter defined by the API system, not by an individual API. It is typically mapped to an HTTP header and/or a URL query parameter. This configuration specifies which methods change the names of the system parameters.",
      id = "SystemParameters",
      properties = {
        rules = {
          description = "Define system parameters. The parameters defined here will override the default parameters implemented by the system. If this field is missing from the service config, default system parameters will be used. Default system parameters and names is implementation-dependent. Example: define api key for all methods system_parameters rules: - selector: \"*\" parameters: - name: api_key url_query_parameter: api_key Example: define 2 api key names for a specific method. system_parameters rules: - selector: \"/ListShelves\" parameters: - name: api_key http_header: Api-Key1 - name: api_key http_header: Api-Key2 **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "SystemParameterRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Type = {
      description = "A protocol buffer message type.",
      id = "Type",
      properties = {
        fields = {
          description = "The list of fields.",
          items = {
            ["$ref"] = "Field",
          },
          type = "array",
        },
        name = {
          description = "The fully qualified message name.",
          type = "string",
        },
        oneofs = {
          description = "The list of types appearing in `oneof` definitions in this type.",
          items = {
            type = "string",
          },
          type = "array",
        },
        options = {
          description = "The protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        sourceContext = {
          ["$ref"] = "SourceContext",
          description = "The source context.",
        },
        syntax = {
          description = "The source syntax.",
          enum = {
            "SYNTAX_PROTO2",
            "SYNTAX_PROTO3",
          },
          enumDescriptions = {
            "Syntax `proto2`.",
            "Syntax `proto3`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UpdateConsumerConfigRequest = {
      description = "Request to update the configuration of a service networking connection including the import/export of custom routes and subnetwork routes with public IP.",
      id = "UpdateConsumerConfigRequest",
      properties = {
        consumerConfig = {
          ["$ref"] = "ConsumerConfig",
          description = "Required. The updated peering config.",
        },
      },
      type = "object",
    },
    UpdateDnsRecordSetMetadata = {
      description = "Metadata provided through GetOperation request for the LRO generated by UpdateDnsRecordSet API",
      id = "UpdateDnsRecordSetMetadata",
      properties = {},
      type = "object",
    },
    UpdateDnsRecordSetRequest = {
      description = "Request to update a record set from a private managed DNS zone in the shared producer host project. The name, type, ttl, and data values of the existing record set must all exactly match an existing record set in the specified zone.",
      id = "UpdateDnsRecordSetRequest",
      properties = {
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is the project number, as in '12345' {network} is the network name.",
          type = "string",
        },
        existingDnsRecordSet = {
          ["$ref"] = "DnsRecordSet",
          description = "Required. The existing DNS record set to update.",
        },
        newDnsRecordSet = {
          ["$ref"] = "DnsRecordSet",
          description = "Required. The new values that the DNS record set should be updated to hold.",
        },
        zone = {
          description = "Required. The name of the private DNS zone in the shared producer host project from which the record set will be removed.",
          type = "string",
        },
      },
      type = "object",
    },
    Usage = {
      description = "Configuration controlling usage of a service.",
      id = "Usage",
      properties = {
        producerNotificationChannel = {
          description = "The full resource name of a channel used for sending notifications to the service producer. Google Service Management currently only supports [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification channel. To use Google Cloud Pub/Sub as the channel, this must be the name of a Cloud Pub/Sub topic that uses the Cloud Pub/Sub topic name format documented in https://cloud.google.com/pubsub/docs/overview.",
          type = "string",
        },
        requirements = {
          description = "Requirements that must be satisfied before a consumer project can use the service. Each requirement is of the form /; for example 'serviceusage.googleapis.com/billing-enabled'. For Google APIs, a Terms of Service requirement must be included here. Google Cloud APIs must include \"serviceusage.googleapis.com/tos/cloud\". Other Google APIs should include \"serviceusage.googleapis.com/tos/universal\". Additional ToS can be included based on the business needs.",
          items = {
            type = "string",
          },
          type = "array",
        },
        rules = {
          description = "A list of usage rules that apply to individual API methods. **NOTE:** All service configuration rules follow \"last one wins\" order.",
          items = {
            ["$ref"] = "UsageRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UsageRule = {
      description = "Usage configuration rules for the service. NOTE: Under development. Use this rule to configure unregistered calls for the service. Unregistered calls are calls that do not contain consumer project identity. (Example: calls that do not contain an API key). By default, API methods do not allow unregistered calls, and each method call must be identified by a consumer project identity. Use this rule to allow/disallow unregistered calls. Example of an API that wants to allow unregistered calls for entire service. usage: rules: - selector: \"*\" allow_unregistered_calls: true Example of a method that wants to allow unregistered calls. usage: rules: - selector: \"google.example.library.v1.LibraryService.CreateBook\" allow_unregistered_calls: true",
      id = "UsageRule",
      properties = {
        allowUnregisteredCalls = {
          description = "If true, the selected method allows unregistered calls, e.g. calls that don't identify any user or application.",
          type = "boolean",
        },
        selector = {
          description = "Selects the methods to which this rule applies. Use '*' to indicate all methods in all APIs. Refer to selector for syntax details.",
          type = "string",
        },
        skipServiceControl = {
          description = "If true, the selected method should skip service control and the control plane features, such as quota and billing, will not be available. This flag is used by Google Cloud Endpoints to bypass checks for internal methods, such as service health check methods.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ValidateConsumerConfigRequest = {
      id = "ValidateConsumerConfigRequest",
      properties = {
        checkServiceNetworkingUsePermission = {
          description = "Optional. The IAM permission check determines whether the consumer project has 'servicenetworking.services.use' permission or not.",
          type = "boolean",
        },
        consumerNetwork = {
          description = "Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is a project number, as in '12345' {network} is network name.",
          type = "string",
        },
        consumerProject = {
          ["$ref"] = "ConsumerProject",
          description = "NETWORK_NOT_IN_CONSUMERS_PROJECT, NETWORK_NOT_IN_CONSUMERS_HOST_PROJECT, and HOST_PROJECT_NOT_FOUND are done when consumer_project is provided.",
        },
        rangeReservation = {
          ["$ref"] = "RangeReservation",
          description = "RANGES_EXHAUSTED, RANGES_EXHAUSTED, and RANGES_DELETED_LATER are done when range_reservation is provided.",
        },
        validateNetwork = {
          description = "The validations will be performed in the order listed in the ValidationError enum. The first failure will return. If a validation is not requested, then the next one will be performed. SERVICE_NETWORKING_NOT_ENABLED and NETWORK_NOT_PEERED checks are performed for all requests where validation is requested. NETWORK_NOT_FOUND and NETWORK_DISCONNECTED checks are done for requests that have validate_network set to true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ValidateConsumerConfigResponse = {
      id = "ValidateConsumerConfigResponse",
      properties = {
        existingSubnetworkCandidates = {
          description = "List of subnetwork candidates from the request which exist with the `ip_cidr_range`, `secondary_ip_cider_ranges`, and `outside_allocation` fields set.",
          items = {
            ["$ref"] = "Subnetwork",
          },
          type = "array",
        },
        isValid = {
          description = "Indicates whether all the requested validations passed.",
          type = "boolean",
        },
        validationError = {
          description = "The first validation which failed.",
          enum = {
            "VALIDATION_ERROR_UNSPECIFIED",
            "VALIDATION_NOT_REQUESTED",
            "SERVICE_NETWORKING_NOT_ENABLED",
            "NETWORK_NOT_FOUND",
            "NETWORK_NOT_PEERED",
            "NETWORK_PEERING_DELETED",
            "NETWORK_NOT_IN_CONSUMERS_PROJECT",
            "NETWORK_NOT_IN_CONSUMERS_HOST_PROJECT",
            "HOST_PROJECT_NOT_FOUND",
            "CONSUMER_PROJECT_NOT_SERVICE_PROJECT",
            "RANGES_EXHAUSTED",
            "RANGES_NOT_RESERVED",
            "RANGES_DELETED_LATER",
            "COMPUTE_API_NOT_ENABLED",
            "USE_PERMISSION_NOT_FOUND",
          },
          enumDescriptions = {
            "",
            "In case none of the validations are requested.",
            "",
            "The network provided by the consumer does not exist.",
            "The network has not been peered with the producer org.",
            "The peering was created and later deleted.",
            "The network is a regular VPC but the network is not in the consumer's project.",
            "The consumer project is a service project, and network is a shared VPC, but the network is not in the host project of this consumer project.",
            "The host project associated with the consumer project was not found.",
            "The consumer project is not a service project for the specified host project.",
            "The reserved IP ranges do not have enough space to create a subnet of desired size.",
            "The IP ranges were not reserved.",
            "The IP ranges were reserved but deleted later.",
            "The consumer project does not have the compute api enabled.",
            "The consumer project does not have the permission from the host project.",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Service Networking API",
  version = "v1",
  version_module = true,
}
