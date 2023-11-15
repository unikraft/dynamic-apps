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
  baseUrl = "https://essentialcontacts.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Essentialcontacts",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/essentialcontacts/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "essentialcontacts:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://essentialcontacts.mtls.googleapis.com/",
  name = "essentialcontacts",
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
    folders = {
      resources = {
        contacts = {
          methods = {
            compute = {
              description = "Lists all contacts for the resource that are subscribed to the specified notification categories, including contacts inherited from any parent resources.",
              flatPath = "v1/folders/{foldersId}/contacts:compute",
              httpMethod = "GET",
              id = "essentialcontacts.folders.contacts.compute",
              parameterOrder = {
                "parent",
              },
              parameters = {
                notificationCategories = {
                  description = "The categories of notifications to compute contacts for. If ALL is included in this list, contacts subscribed to any notification category will be returned.",
                  enum = {
                    "NOTIFICATION_CATEGORY_UNSPECIFIED",
                    "ALL",
                    "SUSPENSION",
                    "SECURITY",
                    "TECHNICAL",
                    "BILLING",
                    "LEGAL",
                    "PRODUCT_UPDATES",
                    "TECHNICAL_INCIDENTS",
                  },
                  enumDescriptions = {
                    "Notification category is unrecognized or unspecified.",
                    "All notifications related to the resource, including notifications pertaining to categories added in the future.",
                    "Notifications related to imminent account suspension.",
                    "Notifications related to security/privacy incidents, notifications, and vulnerabilities.",
                    "Notifications related to technical events and issues such as outages, errors, or bugs.",
                    "Notifications related to billing and payments notifications, price updates, errors, or credits.",
                    "Notifications related to enforcement actions, regulatory compliance, or government notices.",
                    "Notifications related to new versions, product terms updates, or deprecations.",
                    "Child category of TECHNICAL. If assigned, technical incident notifications will go to these contacts instead of TECHNICAL.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of `next_page_token` in the response indicates that more results might be available. If not specified, the default page_size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the resource to compute contacts for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts:compute",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1ComputeContactsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Adds a new contact for a resource.",
              flatPath = "v1/folders/{foldersId}/contacts",
              httpMethod = "POST",
              id = "essentialcontacts.folders.contacts.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a contact.",
              flatPath = "v1/folders/{foldersId}/contacts/{contactsId}",
              httpMethod = "DELETE",
              id = "essentialcontacts.folders.contacts.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the contact to delete. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{folder_id}/contacts/{contact_id} or projects/{project_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^folders/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a single contact.",
              flatPath = "v1/folders/{foldersId}/contacts/{contactsId}",
              httpMethod = "GET",
              id = "essentialcontacts.folders.contacts.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the contact to retrieve. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{folder_id}/contacts/{contact_id} or projects/{project_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^folders/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the contacts that have been set on a resource.",
              flatPath = "v1/folders/{foldersId}/contacts",
              httpMethod = "GET",
              id = "essentialcontacts.folders.contacts.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of `next_page_token` in the response indicates that more results might be available. If not specified, the default page_size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource name. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1ListContactsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a contact. Note: A contact's email address cannot be changed.",
              flatPath = "v1/folders/{foldersId}/contacts/{contactsId}",
              httpMethod = "PATCH",
              id = "essentialcontacts.folders.contacts.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^folders/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. The update mask applied to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            sendTestMessage = {
              description = "Allows a contact admin to send a test message to contact to verify that it has been configured correctly.",
              flatPath = "v1/folders/{foldersId}/contacts:sendTestMessage",
              httpMethod = "POST",
              id = "essentialcontacts.folders.contacts.sendTestMessage",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "Required. The name of the resource to send the test message for. All contacts must either be set directly on this resource or inherited from another resource that is an ancestor of this one. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}/contacts:sendTestMessage",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1SendTestMessageRequest",
              },
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    organizations = {
      resources = {
        contacts = {
          methods = {
            compute = {
              description = "Lists all contacts for the resource that are subscribed to the specified notification categories, including contacts inherited from any parent resources.",
              flatPath = "v1/organizations/{organizationsId}/contacts:compute",
              httpMethod = "GET",
              id = "essentialcontacts.organizations.contacts.compute",
              parameterOrder = {
                "parent",
              },
              parameters = {
                notificationCategories = {
                  description = "The categories of notifications to compute contacts for. If ALL is included in this list, contacts subscribed to any notification category will be returned.",
                  enum = {
                    "NOTIFICATION_CATEGORY_UNSPECIFIED",
                    "ALL",
                    "SUSPENSION",
                    "SECURITY",
                    "TECHNICAL",
                    "BILLING",
                    "LEGAL",
                    "PRODUCT_UPDATES",
                    "TECHNICAL_INCIDENTS",
                  },
                  enumDescriptions = {
                    "Notification category is unrecognized or unspecified.",
                    "All notifications related to the resource, including notifications pertaining to categories added in the future.",
                    "Notifications related to imminent account suspension.",
                    "Notifications related to security/privacy incidents, notifications, and vulnerabilities.",
                    "Notifications related to technical events and issues such as outages, errors, or bugs.",
                    "Notifications related to billing and payments notifications, price updates, errors, or credits.",
                    "Notifications related to enforcement actions, regulatory compliance, or government notices.",
                    "Notifications related to new versions, product terms updates, or deprecations.",
                    "Child category of TECHNICAL. If assigned, technical incident notifications will go to these contacts instead of TECHNICAL.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of `next_page_token` in the response indicates that more results might be available. If not specified, the default page_size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the resource to compute contacts for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts:compute",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1ComputeContactsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Adds a new contact for a resource.",
              flatPath = "v1/organizations/{organizationsId}/contacts",
              httpMethod = "POST",
              id = "essentialcontacts.organizations.contacts.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a contact.",
              flatPath = "v1/organizations/{organizationsId}/contacts/{contactsId}",
              httpMethod = "DELETE",
              id = "essentialcontacts.organizations.contacts.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the contact to delete. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{folder_id}/contacts/{contact_id} or projects/{project_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a single contact.",
              flatPath = "v1/organizations/{organizationsId}/contacts/{contactsId}",
              httpMethod = "GET",
              id = "essentialcontacts.organizations.contacts.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the contact to retrieve. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{folder_id}/contacts/{contact_id} or projects/{project_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the contacts that have been set on a resource.",
              flatPath = "v1/organizations/{organizationsId}/contacts",
              httpMethod = "GET",
              id = "essentialcontacts.organizations.contacts.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of `next_page_token` in the response indicates that more results might be available. If not specified, the default page_size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource name. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1ListContactsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a contact. Note: A contact's email address cannot be changed.",
              flatPath = "v1/organizations/{organizationsId}/contacts/{contactsId}",
              httpMethod = "PATCH",
              id = "essentialcontacts.organizations.contacts.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. The update mask applied to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            sendTestMessage = {
              description = "Allows a contact admin to send a test message to contact to verify that it has been configured correctly.",
              flatPath = "v1/organizations/{organizationsId}/contacts:sendTestMessage",
              httpMethod = "POST",
              id = "essentialcontacts.organizations.contacts.sendTestMessage",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "Required. The name of the resource to send the test message for. All contacts must either be set directly on this resource or inherited from another resource that is an ancestor of this one. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}/contacts:sendTestMessage",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1SendTestMessageRequest",
              },
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    projects = {
      resources = {
        contacts = {
          methods = {
            compute = {
              description = "Lists all contacts for the resource that are subscribed to the specified notification categories, including contacts inherited from any parent resources.",
              flatPath = "v1/projects/{projectsId}/contacts:compute",
              httpMethod = "GET",
              id = "essentialcontacts.projects.contacts.compute",
              parameterOrder = {
                "parent",
              },
              parameters = {
                notificationCategories = {
                  description = "The categories of notifications to compute contacts for. If ALL is included in this list, contacts subscribed to any notification category will be returned.",
                  enum = {
                    "NOTIFICATION_CATEGORY_UNSPECIFIED",
                    "ALL",
                    "SUSPENSION",
                    "SECURITY",
                    "TECHNICAL",
                    "BILLING",
                    "LEGAL",
                    "PRODUCT_UPDATES",
                    "TECHNICAL_INCIDENTS",
                  },
                  enumDescriptions = {
                    "Notification category is unrecognized or unspecified.",
                    "All notifications related to the resource, including notifications pertaining to categories added in the future.",
                    "Notifications related to imminent account suspension.",
                    "Notifications related to security/privacy incidents, notifications, and vulnerabilities.",
                    "Notifications related to technical events and issues such as outages, errors, or bugs.",
                    "Notifications related to billing and payments notifications, price updates, errors, or credits.",
                    "Notifications related to enforcement actions, regulatory compliance, or government notices.",
                    "Notifications related to new versions, product terms updates, or deprecations.",
                    "Child category of TECHNICAL. If assigned, technical incident notifications will go to these contacts instead of TECHNICAL.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of `next_page_token` in the response indicates that more results might be available. If not specified, the default page_size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the resource to compute contacts for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts:compute",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1ComputeContactsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Adds a new contact for a resource.",
              flatPath = "v1/projects/{projectsId}/contacts",
              httpMethod = "POST",
              id = "essentialcontacts.projects.contacts.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a contact.",
              flatPath = "v1/projects/{projectsId}/contacts/{contactsId}",
              httpMethod = "DELETE",
              id = "essentialcontacts.projects.contacts.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the contact to delete. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{folder_id}/contacts/{contact_id} or projects/{project_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^projects/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a single contact.",
              flatPath = "v1/projects/{projectsId}/contacts/{contactsId}",
              httpMethod = "GET",
              id = "essentialcontacts.projects.contacts.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the contact to retrieve. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{folder_id}/contacts/{contact_id} or projects/{project_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^projects/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the contacts that have been set on a resource.",
              flatPath = "v1/projects/{projectsId}/contacts",
              httpMethod = "GET",
              id = "essentialcontacts.projects.contacts.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of `next_page_token` in the response indicates that more results might be available. If not specified, the default page_size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of other method parameters should be identical to those in the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource name. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/contacts",
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1ListContactsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a contact. Note: A contact's email address cannot be changed.",
              flatPath = "v1/projects/{projectsId}/contacts/{contactsId}",
              httpMethod = "PATCH",
              id = "essentialcontacts.projects.contacts.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}",
                  location = "path",
                  pattern = "^projects/[^/]+/contacts/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. The update mask applied to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              response = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            sendTestMessage = {
              description = "Allows a contact admin to send a test message to contact to verify that it has been configured correctly.",
              flatPath = "v1/projects/{projectsId}/contacts:sendTestMessage",
              httpMethod = "POST",
              id = "essentialcontacts.projects.contacts.sendTestMessage",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "Required. The name of the resource to send the test message for. All contacts must either be set directly on this resource or inherited from another resource that is an ancestor of this one. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}/contacts:sendTestMessage",
              request = {
                ["$ref"] = "GoogleCloudEssentialcontactsV1SendTestMessageRequest",
              },
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
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
  revision = "20230116",
  rootUrl = "https://essentialcontacts.googleapis.com/",
  schemas = {
    GoogleCloudEssentialcontactsV1ComputeContactsResponse = {
      description = "Response message for the ComputeContacts method.",
      id = "GoogleCloudEssentialcontactsV1ComputeContactsResponse",
      properties = {
        contacts = {
          description = "All contacts for the resource that are subscribed to the specified notification categories, including contacts inherited from any parent resources.",
          items = {
            ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token` and the rest of the parameters the same as the original request.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudEssentialcontactsV1Contact = {
      description = "A contact that will receive notifications from Google Cloud.",
      id = "GoogleCloudEssentialcontactsV1Contact",
      properties = {
        email = {
          description = "Required. The email address to send notifications to. The email address does not need to be a Google Account.",
          type = "string",
        },
        languageTag = {
          description = "Required. The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.",
          type = "string",
        },
        name = {
          description = "Output only. The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}",
          readOnly = true,
          type = "string",
        },
        notificationCategorySubscriptions = {
          description = "Required. The categories of notifications that the contact will receive communications for.",
          items = {
            enum = {
              "NOTIFICATION_CATEGORY_UNSPECIFIED",
              "ALL",
              "SUSPENSION",
              "SECURITY",
              "TECHNICAL",
              "BILLING",
              "LEGAL",
              "PRODUCT_UPDATES",
              "TECHNICAL_INCIDENTS",
            },
            enumDescriptions = {
              "Notification category is unrecognized or unspecified.",
              "All notifications related to the resource, including notifications pertaining to categories added in the future.",
              "Notifications related to imminent account suspension.",
              "Notifications related to security/privacy incidents, notifications, and vulnerabilities.",
              "Notifications related to technical events and issues such as outages, errors, or bugs.",
              "Notifications related to billing and payments notifications, price updates, errors, or credits.",
              "Notifications related to enforcement actions, regulatory compliance, or government notices.",
              "Notifications related to new versions, product terms updates, or deprecations.",
              "Child category of TECHNICAL. If assigned, technical incident notifications will go to these contacts instead of TECHNICAL.",
            },
            type = "string",
          },
          type = "array",
        },
        validateTime = {
          description = "The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.",
          format = "google-datetime",
          type = "string",
        },
        validationState = {
          description = "The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.",
          enum = {
            "VALIDATION_STATE_UNSPECIFIED",
            "VALID",
            "INVALID",
          },
          enumDescriptions = {
            "The validation state is unknown or unspecified.",
            "The contact is marked as valid. This is usually done manually by the contact admin. All new contacts begin in the valid state.",
            "The contact is considered invalid. This may become the state if the contact's email is found to be unreachable.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudEssentialcontactsV1ListContactsResponse = {
      description = "Response message for the ListContacts method.",
      id = "GoogleCloudEssentialcontactsV1ListContactsResponse",
      properties = {
        contacts = {
          description = "The contacts for the specified resource.",
          items = {
            ["$ref"] = "GoogleCloudEssentialcontactsV1Contact",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token` and the rest of the parameters the same as the original request.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudEssentialcontactsV1SendTestMessageRequest = {
      description = "Request message for the SendTestMessage method.",
      id = "GoogleCloudEssentialcontactsV1SendTestMessageRequest",
      properties = {
        contacts = {
          description = "Required. The list of names of the contacts to send a test message to. Format: organizations/{organization_id}/contacts/{contact_id}, folders/{folder_id}/contacts/{contact_id} or projects/{project_id}/contacts/{contact_id}",
          items = {
            type = "string",
          },
          type = "array",
        },
        notificationCategory = {
          description = "Required. The notification category to send the test message for. All contacts must be subscribed to this category.",
          enum = {
            "NOTIFICATION_CATEGORY_UNSPECIFIED",
            "ALL",
            "SUSPENSION",
            "SECURITY",
            "TECHNICAL",
            "BILLING",
            "LEGAL",
            "PRODUCT_UPDATES",
            "TECHNICAL_INCIDENTS",
          },
          enumDescriptions = {
            "Notification category is unrecognized or unspecified.",
            "All notifications related to the resource, including notifications pertaining to categories added in the future.",
            "Notifications related to imminent account suspension.",
            "Notifications related to security/privacy incidents, notifications, and vulnerabilities.",
            "Notifications related to technical events and issues such as outages, errors, or bugs.",
            "Notifications related to billing and payments notifications, price updates, errors, or credits.",
            "Notifications related to enforcement actions, regulatory compliance, or government notices.",
            "Notifications related to new versions, product terms updates, or deprecations.",
            "Child category of TECHNICAL. If assigned, technical incident notifications will go to these contacts instead of TECHNICAL.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Essential Contacts API",
  version = "v1",
  version_module = true,
}
