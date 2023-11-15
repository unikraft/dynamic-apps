return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/tagmanager.delete.containers"] = {
          description = "Delete your Google Tag Manager containers",
        },
        ["https://www.googleapis.com/auth/tagmanager.edit.containers"] = {
          description = "Manage your Google Tag Manager container and its subcomponents, excluding versioning and publishing",
        },
        ["https://www.googleapis.com/auth/tagmanager.edit.containerversions"] = {
          description = "Manage your Google Tag Manager container versions",
        },
        ["https://www.googleapis.com/auth/tagmanager.manage.accounts"] = {
          description = "View and manage your Google Tag Manager accounts",
        },
        ["https://www.googleapis.com/auth/tagmanager.manage.users"] = {
          description = "Manage user permissions of your Google Tag Manager account and container",
        },
        ["https://www.googleapis.com/auth/tagmanager.publish"] = {
          description = "Publish your Google Tag Manager container versions",
        },
        ["https://www.googleapis.com/auth/tagmanager.readonly"] = {
          description = "View your Google Tag Manager container and its subcomponents",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://tagmanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Tag Manager",
  description = "This API allows clients to access and modify container and tag configuration.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/tag-manager",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "tagmanager:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://tagmanager.mtls.googleapis.com/",
  name = "tagmanager",
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
        get = {
          description = "Gets a GTM Account.",
          flatPath = "tagmanager/v1/accounts/{accountId}",
          httpMethod = "GET",
          id = "tagmanager.accounts.get",
          parameterOrder = {
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The GTM Account ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "tagmanager/v1/accounts/{accountId}",
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/tagmanager.edit.containers",
            "https://www.googleapis.com/auth/tagmanager.manage.accounts",
            "https://www.googleapis.com/auth/tagmanager.readonly",
          },
        },
        list = {
          description = "Lists all GTM Accounts that a user has access to.",
          flatPath = "tagmanager/v1/accounts",
          httpMethod = "GET",
          id = "tagmanager.accounts.list",
          parameterOrder = {},
          parameters = {},
          path = "tagmanager/v1/accounts",
          response = {
            ["$ref"] = "ListAccountsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/tagmanager.edit.containers",
            "https://www.googleapis.com/auth/tagmanager.manage.accounts",
            "https://www.googleapis.com/auth/tagmanager.readonly",
          },
        },
        update = {
          description = "Updates a GTM Account.",
          flatPath = "tagmanager/v1/accounts/{accountId}",
          httpMethod = "PUT",
          id = "tagmanager.accounts.update",
          parameterOrder = {
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The GTM Account ID.",
              location = "path",
              required = true,
              type = "string",
            },
            fingerprint = {
              description = "When provided, this fingerprint must match the fingerprint of the account in storage.",
              location = "query",
              type = "string",
            },
          },
          path = "tagmanager/v1/accounts/{accountId}",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/tagmanager.manage.accounts",
          },
        },
      },
      resources = {
        containers = {
          methods = {
            create = {
              description = "Creates a Container.",
              flatPath = "tagmanager/v1/accounts/{accountId}/containers",
              httpMethod = "POST",
              id = "tagmanager.accounts.containers.create",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/containers",
              request = {
                ["$ref"] = "Container",
              },
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
              },
            },
            delete = {
              description = "Deletes a Container.",
              flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}",
              httpMethod = "DELETE",
              id = "tagmanager.accounts.containers.delete",
              parameterOrder = {
                "accountId",
                "containerId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                containerId = {
                  description = "The GTM Container ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}",
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.delete.containers",
              },
            },
            get = {
              description = "Gets a Container.",
              flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}",
              httpMethod = "GET",
              id = "tagmanager.accounts.containers.get",
              parameterOrder = {
                "accountId",
                "containerId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                containerId = {
                  description = "The GTM Container ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}",
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
                "https://www.googleapis.com/auth/tagmanager.readonly",
              },
            },
            list = {
              description = "Lists all Containers that belongs to a GTM Account.",
              flatPath = "tagmanager/v1/accounts/{accountId}/containers",
              httpMethod = "GET",
              id = "tagmanager.accounts.containers.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/containers",
              response = {
                ["$ref"] = "ListContainersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
                "https://www.googleapis.com/auth/tagmanager.readonly",
              },
            },
            update = {
              description = "Updates a Container.",
              flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}",
              httpMethod = "PUT",
              id = "tagmanager.accounts.containers.update",
              parameterOrder = {
                "accountId",
                "containerId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                containerId = {
                  description = "The GTM Container ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                fingerprint = {
                  description = "When provided, this fingerprint must match the fingerprint of the container in storage.",
                  location = "query",
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}",
              request = {
                ["$ref"] = "Container",
              },
              response = {
                ["$ref"] = "Container",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.edit.containers",
              },
            },
          },
          resources = {
            environments = {
              methods = {
                create = {
                  description = "Creates a GTM Environment.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.environments.create",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments",
                  request = {
                    ["$ref"] = "Environment",
                  },
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                delete = {
                  description = "Deletes a GTM Environment.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments/{environmentId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.environments.delete",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "environmentId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    environmentId = {
                      description = "The GTM Environment ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments/{environmentId}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                get = {
                  description = "Gets a GTM Environment.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments/{environmentId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.environments.get",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "environmentId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    environmentId = {
                      description = "The GTM Environment ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments/{environmentId}",
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all GTM Environments of a GTM Container.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.environments.list",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments",
                  response = {
                    ["$ref"] = "ListEnvironmentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                update = {
                  description = "Updates a GTM Environment.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments/{environmentId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.environments.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "environmentId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    environmentId = {
                      description = "The GTM Environment ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the environment in storage.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/environments/{environmentId}",
                  request = {
                    ["$ref"] = "Environment",
                  },
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
            },
            folders = {
              methods = {
                create = {
                  description = "Creates a GTM Folder.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.folders.create",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders",
                  request = {
                    ["$ref"] = "Folder",
                  },
                  response = {
                    ["$ref"] = "Folder",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                delete = {
                  description = "Deletes a GTM Folder.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.folders.delete",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "folderId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    folderId = {
                      description = "The GTM Folder ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                get = {
                  description = "Gets a GTM Folder.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.folders.get",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "folderId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    folderId = {
                      description = "The GTM Folder ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}",
                  response = {
                    ["$ref"] = "Folder",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all GTM Folders of a Container.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.folders.list",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders",
                  response = {
                    ["$ref"] = "ListFoldersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                update = {
                  description = "Updates a GTM Folder.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.folders.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "folderId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the folder in storage.",
                      location = "query",
                      type = "string",
                    },
                    folderId = {
                      description = "The GTM Folder ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}",
                  request = {
                    ["$ref"] = "Folder",
                  },
                  response = {
                    ["$ref"] = "Folder",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
              resources = {
                entities = {
                  methods = {
                    list = {
                      description = "List all entities in a GTM Folder.",
                      flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}/entities",
                      httpMethod = "GET",
                      id = "tagmanager.accounts.containers.folders.entities.list",
                      parameterOrder = {
                        "accountId",
                        "containerId",
                        "folderId",
                      },
                      parameters = {
                        accountId = {
                          description = "The GTM Account ID.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        containerId = {
                          description = "The GTM Container ID.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        folderId = {
                          description = "The GTM Folder ID.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/folders/{folderId}/entities",
                      response = {
                        ["$ref"] = "FolderEntities",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/tagmanager.edit.containers",
                        "https://www.googleapis.com/auth/tagmanager.readonly",
                      },
                    },
                  },
                },
              },
            },
            move_folders = {
              methods = {
                update = {
                  description = "Moves entities to a GTM Folder.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/move_folders/{folderId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.move_folders.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "folderId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    folderId = {
                      description = "The GTM Folder ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    tagId = {
                      description = "The tags to be moved to the folder.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    triggerId = {
                      description = "The triggers to be moved to the folder.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    variableId = {
                      description = "The variables to be moved to the folder.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/move_folders/{folderId}",
                  request = {
                    ["$ref"] = "Folder",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
            },
            reauthorize_environments = {
              methods = {
                update = {
                  description = "Re-generates the authorization code for a GTM Environment.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/reauthorize_environments/{environmentId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.reauthorize_environments.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "environmentId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    environmentId = {
                      description = "The GTM Environment ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/reauthorize_environments/{environmentId}",
                  request = {
                    ["$ref"] = "Environment",
                  },
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.publish",
                  },
                },
              },
            },
            tags = {
              methods = {
                create = {
                  description = "Creates a GTM Tag.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.tags.create",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags",
                  request = {
                    ["$ref"] = "Tag",
                  },
                  response = {
                    ["$ref"] = "Tag",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                delete = {
                  description = "Deletes a GTM Tag.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags/{tagId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.tags.delete",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "tagId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    tagId = {
                      description = "The GTM Tag ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags/{tagId}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                get = {
                  description = "Gets a GTM Tag.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags/{tagId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.tags.get",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "tagId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    tagId = {
                      description = "The GTM Tag ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags/{tagId}",
                  response = {
                    ["$ref"] = "Tag",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all GTM Tags of a Container.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.tags.list",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags",
                  response = {
                    ["$ref"] = "ListTagsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                update = {
                  description = "Updates a GTM Tag.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags/{tagId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.tags.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "tagId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the tag in storage.",
                      location = "query",
                      type = "string",
                    },
                    tagId = {
                      description = "The GTM Tag ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/tags/{tagId}",
                  request = {
                    ["$ref"] = "Tag",
                  },
                  response = {
                    ["$ref"] = "Tag",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
            },
            triggers = {
              methods = {
                create = {
                  description = "Creates a GTM Trigger.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.triggers.create",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers",
                  request = {
                    ["$ref"] = "Trigger",
                  },
                  response = {
                    ["$ref"] = "Trigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                delete = {
                  description = "Deletes a GTM Trigger.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers/{triggerId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.triggers.delete",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "triggerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    triggerId = {
                      description = "The GTM Trigger ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers/{triggerId}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                get = {
                  description = "Gets a GTM Trigger.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers/{triggerId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.triggers.get",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "triggerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    triggerId = {
                      description = "The GTM Trigger ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers/{triggerId}",
                  response = {
                    ["$ref"] = "Trigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all GTM Triggers of a Container.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.triggers.list",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers",
                  response = {
                    ["$ref"] = "ListTriggersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                update = {
                  description = "Updates a GTM Trigger.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers/{triggerId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.triggers.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "triggerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the trigger in storage.",
                      location = "query",
                      type = "string",
                    },
                    triggerId = {
                      description = "The GTM Trigger ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/triggers/{triggerId}",
                  request = {
                    ["$ref"] = "Trigger",
                  },
                  response = {
                    ["$ref"] = "Trigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
            },
            variables = {
              methods = {
                create = {
                  description = "Creates a GTM Variable.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.variables.create",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables",
                  request = {
                    ["$ref"] = "Variable",
                  },
                  response = {
                    ["$ref"] = "Variable",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                delete = {
                  description = "Deletes a GTM Variable.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables/{variableId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.variables.delete",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "variableId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    variableId = {
                      description = "The GTM Variable ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables/{variableId}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                get = {
                  description = "Gets a GTM Variable.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables/{variableId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.variables.get",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "variableId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    variableId = {
                      description = "The GTM Variable ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables/{variableId}",
                  response = {
                    ["$ref"] = "Variable",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all GTM Variables of a Container.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.variables.list",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables",
                  response = {
                    ["$ref"] = "ListVariablesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                update = {
                  description = "Updates a GTM Variable.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables/{variableId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.variables.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "variableId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the variable in storage.",
                      location = "query",
                      type = "string",
                    },
                    variableId = {
                      description = "The GTM Variable ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/variables/{variableId}",
                  request = {
                    ["$ref"] = "Variable",
                  },
                  response = {
                    ["$ref"] = "Variable",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
              },
            },
            versions = {
              methods = {
                create = {
                  description = "Creates a Container Version.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.versions.create",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions",
                  request = {
                    ["$ref"] = "CreateContainerVersionRequestVersionOptions",
                  },
                  response = {
                    ["$ref"] = "CreateContainerVersionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
                delete = {
                  description = "Deletes a Container Version.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}",
                  httpMethod = "DELETE",
                  id = "tagmanager.accounts.containers.versions.delete",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "containerVersionId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerVersionId = {
                      description = "The GTM Container Version ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}",
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
                get = {
                  description = "Gets a Container Version.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.versions.get",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "containerVersionId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerVersionId = {
                      description = "The GTM Container Version ID. Specify published to retrieve the currently published version.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}",
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                list = {
                  description = "Lists all Container Versions of a GTM Container.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions",
                  httpMethod = "GET",
                  id = "tagmanager.accounts.containers.versions.list",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    headers = {
                      default = "false",
                      description = "Retrieve headers only when true.",
                      location = "query",
                      type = "boolean",
                    },
                    includeDeleted = {
                      default = "false",
                      description = "Also retrieve deleted (archived) versions when true.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions",
                  response = {
                    ["$ref"] = "ListContainerVersionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                    "https://www.googleapis.com/auth/tagmanager.readonly",
                  },
                },
                publish = {
                  description = "Publishes a Container Version.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/publish",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.versions.publish",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "containerVersionId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerVersionId = {
                      description = "The GTM Container Version ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the container version in storage.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/publish",
                  response = {
                    ["$ref"] = "PublishContainerVersionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.publish",
                  },
                },
                restore = {
                  description = "Restores a Container Version. This will overwrite the container's current configuration (including its variables, triggers and tags). The operation will not have any effect on the version that is being served (i.e. the published version).",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/restore",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.versions.restore",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "containerVersionId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerVersionId = {
                      description = "The GTM Container Version ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/restore",
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containers",
                  },
                },
                undelete = {
                  description = "Undeletes a Container Version.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/undelete",
                  httpMethod = "POST",
                  id = "tagmanager.accounts.containers.versions.undelete",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "containerVersionId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerVersionId = {
                      description = "The GTM Container Version ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}/undelete",
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
                update = {
                  description = "Updates a Container Version.",
                  flatPath = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}",
                  httpMethod = "PUT",
                  id = "tagmanager.accounts.containers.versions.update",
                  parameterOrder = {
                    "accountId",
                    "containerId",
                    "containerVersionId",
                  },
                  parameters = {
                    accountId = {
                      description = "The GTM Account ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerId = {
                      description = "The GTM Container ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    containerVersionId = {
                      description = "The GTM Container Version ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    fingerprint = {
                      description = "When provided, this fingerprint must match the fingerprint of the container version in storage.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "tagmanager/v1/accounts/{accountId}/containers/{containerId}/versions/{containerVersionId}",
                  request = {
                    ["$ref"] = "ContainerVersion",
                  },
                  response = {
                    ["$ref"] = "ContainerVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
                  },
                },
              },
            },
          },
        },
        permissions = {
          methods = {
            create = {
              description = "Creates a user's Account & Container Permissions.",
              flatPath = "tagmanager/v1/accounts/{accountId}/permissions",
              httpMethod = "POST",
              id = "tagmanager.accounts.permissions.create",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/permissions",
              request = {
                ["$ref"] = "UserAccess",
              },
              response = {
                ["$ref"] = "UserAccess",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            delete = {
              description = "Removes a user from the account, revoking access to it and all of its containers.",
              flatPath = "tagmanager/v1/accounts/{accountId}/permissions/{permissionId}",
              httpMethod = "DELETE",
              id = "tagmanager.accounts.permissions.delete",
              parameterOrder = {
                "accountId",
                "permissionId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                permissionId = {
                  description = "The GTM User ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/permissions/{permissionId}",
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            get = {
              description = "Gets a user's Account & Container Permissions.",
              flatPath = "tagmanager/v1/accounts/{accountId}/permissions/{permissionId}",
              httpMethod = "GET",
              id = "tagmanager.accounts.permissions.get",
              parameterOrder = {
                "accountId",
                "permissionId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                permissionId = {
                  description = "The GTM User ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/permissions/{permissionId}",
              response = {
                ["$ref"] = "UserAccess",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            list = {
              description = "List all users that have access to the account along with Account and Container Permissions granted to each of them.",
              flatPath = "tagmanager/v1/accounts/{accountId}/permissions",
              httpMethod = "GET",
              id = "tagmanager.accounts.permissions.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/permissions",
              response = {
                ["$ref"] = "ListAccountUsersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
            update = {
              description = "Updates a user's Account & Container Permissions.",
              flatPath = "tagmanager/v1/accounts/{accountId}/permissions/{permissionId}",
              httpMethod = "PUT",
              id = "tagmanager.accounts.permissions.update",
              parameterOrder = {
                "accountId",
                "permissionId",
              },
              parameters = {
                accountId = {
                  description = "The GTM Account ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                permissionId = {
                  description = "The GTM User ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "tagmanager/v1/accounts/{accountId}/permissions/{permissionId}",
              request = {
                ["$ref"] = "UserAccess",
              },
              response = {
                ["$ref"] = "UserAccess",
              },
              scopes = {
                "https://www.googleapis.com/auth/tagmanager.manage.users",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://tagmanager.googleapis.com/",
  schemas = {
    Account = {
      description = "Represents a Google Tag Manager Account.",
      id = "Account",
      properties = {
        accountId = {
          description = "The Account ID uniquely identifies the GTM Account.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Account as computed at storage time. This value is recomputed whenever the account is modified.",
          type = "string",
        },
        name = {
          description = "Account display name. @mutable tagmanager.accounts.create @mutable tagmanager.accounts.update",
          type = "string",
        },
        shareData = {
          description = "Whether the account shares data anonymously with Google and others. @mutable tagmanager.accounts.create @mutable tagmanager.accounts.update",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountAccess = {
      description = "Defines the Google Tag Manager Account access permissions.",
      id = "AccountAccess",
      properties = {
        permission = {
          annotations = {
            required = {
              "tagmanager.accounts.permissions.create",
            },
          },
          description = "List of Account permissions. Valid account permissions are read and manage. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          items = {
            enum = {
              "read",
              "edit",
              "publish",
              "delete",
              "manage",
              "editWorkspace",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Condition = {
      description = "Represents a predicate.",
      id = "Condition",
      properties = {
        parameter = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.triggers.create",
              "tagmanager.accounts.containers.triggers.update",
            },
          },
          description = "A list of named parameters (key/value), depending on the condition's type. Notes: - For binary operators, include parameters named arg0 and arg1 for specifying the left and right operands, respectively. - At this time, the left operand (arg0) must be a reference to a variable. - For case-insensitive Regex matching, include a boolean parameter named ignore_case that is set to true. If not specified or set to any other value, the matching will be case sensitive. - To negate an operator, include a boolean parameter named negate boolean parameter that is set to true. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.triggers.create",
              "tagmanager.accounts.containers.triggers.update",
            },
          },
          description = "The type of operator for this condition. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
          enum = {
            "equals",
            "contains",
            "startsWith",
            "endsWith",
            "matchRegex",
            "greater",
            "greaterOrEquals",
            "less",
            "lessOrEquals",
            "cssSelector",
            "urlMatches",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Container = {
      description = "Represents a Google Tag Manager Container.",
      id = "Container",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "The Container ID uniquely identifies the GTM Container.",
          type = "string",
        },
        domainName = {
          description = "Optional list of domain names associated with the Container. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        enabledBuiltInVariable = {
          description = "List of enabled built-in variables. Valid values include: pageUrl, pageHostname, pagePath, referrer, event, clickElement, clickClasses, clickId, clickTarget, clickUrl, clickText, formElement, formClasses, formId, formTarget, formUrl, formText, errorMessage, errorUrl, errorLine, newHistoryFragment, oldHistoryFragment, newHistoryState, oldHistoryState, historySource, containerVersion, debugMode, randomNumber, containerId. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          items = {
            enum = {
              "pageUrl",
              "pageHostname",
              "pagePath",
              "referrer",
              "event",
              "clickElement",
              "clickClasses",
              "clickId",
              "clickTarget",
              "clickUrl",
              "clickText",
              "firstPartyServingUrl",
              "formElement",
              "formClasses",
              "formId",
              "formTarget",
              "formUrl",
              "formText",
              "environmentName",
              "errorMessage",
              "errorUrl",
              "errorLine",
              "newHistoryUrl",
              "oldHistoryUrl",
              "newHistoryFragment",
              "oldHistoryFragment",
              "newHistoryState",
              "oldHistoryState",
              "historySource",
              "containerVersion",
              "debugMode",
              "randomNumber",
              "containerId",
              "appId",
              "appName",
              "appVersionCode",
              "appVersionName",
              "language",
              "osVersion",
              "platform",
              "sdkVersion",
              "deviceName",
              "resolution",
              "advertiserId",
              "advertisingTrackingEnabled",
              "htmlId",
              "ampBrowserLanguage",
              "ampCanonicalPath",
              "ampCanonicalUrl",
              "ampCanonicalHost",
              "ampReferrer",
              "ampTitle",
              "ampClientId",
              "ampClientTimezone",
              "ampClientTimestamp",
              "ampClientScreenWidth",
              "ampClientScreenHeight",
              "ampClientScrollX",
              "ampClientScrollY",
              "ampClientMaxScrollX",
              "ampClientMaxScrollY",
              "ampTotalEngagedTime",
              "ampPageViewId",
              "ampPageLoadTime",
              "ampPageDownloadTime",
              "ampGtmEvent",
              "eventName",
              "firebaseEventParameterCampaign",
              "firebaseEventParameterCampaignAclid",
              "firebaseEventParameterCampaignAnid",
              "firebaseEventParameterCampaignClickTimestamp",
              "firebaseEventParameterCampaignContent",
              "firebaseEventParameterCampaignCp1",
              "firebaseEventParameterCampaignGclid",
              "firebaseEventParameterCampaignSource",
              "firebaseEventParameterCampaignTerm",
              "firebaseEventParameterCurrency",
              "firebaseEventParameterDynamicLinkAcceptTime",
              "firebaseEventParameterDynamicLinkLinkid",
              "firebaseEventParameterNotificationMessageDeviceTime",
              "firebaseEventParameterNotificationMessageId",
              "firebaseEventParameterNotificationMessageName",
              "firebaseEventParameterNotificationMessageTime",
              "firebaseEventParameterNotificationTopic",
              "firebaseEventParameterPreviousAppVersion",
              "firebaseEventParameterPreviousOsVersion",
              "firebaseEventParameterPrice",
              "firebaseEventParameterProductId",
              "firebaseEventParameterQuantity",
              "firebaseEventParameterValue",
              "videoProvider",
              "videoUrl",
              "videoTitle",
              "videoDuration",
              "videoPercent",
              "videoVisible",
              "videoStatus",
              "videoCurrentTime",
              "scrollDepthThreshold",
              "scrollDepthUnits",
              "scrollDepthDirection",
              "elementVisibilityRatio",
              "elementVisibilityTime",
              "elementVisibilityFirstTime",
              "elementVisibilityRecentTime",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "For web or mobile.",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "For web or mobile.",
              "",
              "For web or mobile.",
              "For web or mobile.",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Container as computed at storage time. This value is recomputed whenever the account is modified.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.create",
            },
          },
          description = "Container display name. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          type = "string",
        },
        notes = {
          description = "Container Notes. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          type = "string",
        },
        publicId = {
          description = "Container Public ID.",
          type = "string",
        },
        timeZoneCountryId = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.create",
            },
          },
          description = "Container Country ID. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          type = "string",
        },
        timeZoneId = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.create",
            },
          },
          description = "Container Time Zone ID. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          type = "string",
        },
        usageContext = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.create",
              "tagmanager.accounts.containers.update",
            },
          },
          description = "List of Usage Contexts for the Container. Valid values include: web, android, ios. @mutable tagmanager.accounts.containers.create @mutable tagmanager.accounts.containers.update",
          items = {
            enum = {
              "web",
              "android",
              "ios",
              "androidSdk5",
              "iosSdk5",
              "amp",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContainerAccess = {
      description = "Defines the Google Tag Manager Container access permissions.",
      id = "ContainerAccess",
      properties = {
        containerId = {
          description = "GTM Container ID. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          type = "string",
        },
        permission = {
          description = "List of Container permissions. Valid container permissions are: read, edit, delete, publish. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          items = {
            enum = {
              "read",
              "edit",
              "publish",
              "delete",
              "manage",
              "editWorkspace",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContainerVersion = {
      description = "Represents a Google Tag Manager Container Version.",
      id = "ContainerVersion",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        container = {
          ["$ref"] = "Container",
          description = "The container that this version was taken from.",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        containerVersionId = {
          description = "The Container Version ID uniquely identifies the GTM Container Version.",
          type = "string",
        },
        deleted = {
          description = "A value of true indicates this container version has been deleted.",
          type = "boolean",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Container Version as computed at storage time. This value is recomputed whenever the container version is modified.",
          type = "string",
        },
        folder = {
          description = "The folders in the container that this version was taken from.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
        macro = {
          description = "The macros in the container that this version was taken from.",
          items = {
            ["$ref"] = "Macro",
          },
          type = "array",
        },
        name = {
          description = "Container version display name. @mutable tagmanager.accounts.containers.versions.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this container version in the container. @mutable tagmanager.accounts.containers.versions.update",
          type = "string",
        },
        rule = {
          description = "The rules in the container that this version was taken from.",
          items = {
            ["$ref"] = "Rule",
          },
          type = "array",
        },
        tag = {
          description = "The tags in the container that this version was taken from.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
        trigger = {
          description = "The triggers in the container that this version was taken from.",
          items = {
            ["$ref"] = "Trigger",
          },
          type = "array",
        },
        variable = {
          description = "The variables in the container that this version was taken from.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContainerVersionHeader = {
      description = "Represents a Google Tag Manager Container Version Header.",
      id = "ContainerVersionHeader",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        containerVersionId = {
          description = "The Container Version ID uniquely identifies the GTM Container Version.",
          type = "string",
        },
        deleted = {
          description = "A value of true indicates this container version has been deleted.",
          type = "boolean",
        },
        name = {
          description = "Container version display name.",
          type = "string",
        },
        numMacros = {
          description = "Number of macros in the container version.",
          type = "string",
        },
        numRules = {
          description = "Number of rules in the container version.",
          type = "string",
        },
        numTags = {
          description = "Number of tags in the container version.",
          type = "string",
        },
        numTriggers = {
          description = "Number of triggers in the container version.",
          type = "string",
        },
        numVariables = {
          description = "Number of variables in the container version.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateContainerVersionRequestVersionOptions = {
      description = "Options for new container versions.",
      id = "CreateContainerVersionRequestVersionOptions",
      properties = {
        name = {
          description = "The name of the container version to be created.",
          type = "string",
        },
        notes = {
          description = "The notes of the container version to be created.",
          type = "string",
        },
        quickPreview = {
          description = "The creation of this version may be for quick preview and shouldn't be saved.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CreateContainerVersionResponse = {
      description = "Create container versions response.",
      id = "CreateContainerVersionResponse",
      properties = {
        compilerError = {
          description = "Compiler errors or not.",
          type = "boolean",
        },
        containerVersion = {
          ["$ref"] = "ContainerVersion",
          description = "The container version created.",
        },
      },
      type = "object",
    },
    Environment = {
      description = "Represents a Google Tag Manager Environment. Note that a user can create, delete and update environments of type USER, but can only update the enable_debug and url fields of environments of other types.",
      id = "Environment",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        authorizationCode = {
          description = "The environment authorization code.",
          type = "string",
        },
        authorizationTimestampMs = {
          description = "The last update time-stamp for the authorization code.",
          format = "int64",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        containerVersionId = {
          type = "string",
        },
        description = {
          description = "The environment description. Can be set or changed only on USER type environments. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "string",
        },
        enableDebug = {
          description = "Whether or not to enable debug by default on for the environment. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "boolean",
        },
        environmentId = {
          description = "GTM Environment ID uniquely identifies the GTM Environment.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM environment as computed at storage time. This value is recomputed whenever the environment is modified.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.environments.create",
              "tagmanager.accounts.containers.environments.update",
            },
          },
          description = "The environment display name. Can be set or changed only on USER type environments. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "string",
        },
        type = {
          description = "The type of this environment.",
          enum = {
            "user",
            "live",
            "latest",
            "draft",
          },
          enumDescriptions = {
            "Used for user defined environments.",
            "Used for Live environment, which points to the live published container version.",
            "Used for Latest environment, which points to the latest created container version.",
            "Used for Draft environment, which points to the single draft in the container.",
          },
          type = "string",
        },
        url = {
          description = "Default preview page url for the environment. @mutable tagmanager.accounts.containers.environments.create @mutable tagmanager.accounts.containers.environments.update",
          type = "string",
        },
      },
      type = "object",
    },
    Folder = {
      description = "Represents a Google Tag Manager Folder.",
      id = "Folder",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Folder as computed at storage time. This value is recomputed whenever the folder is modified.",
          type = "string",
        },
        folderId = {
          description = "The Folder ID uniquely identifies the GTM Folder.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.folders.create",
              "tagmanager.accounts.containers.folders.update",
            },
          },
          description = "Folder display name. @mutable tagmanager.accounts.containers.folders.create @mutable tagmanager.accounts.containers.folders.update",
          type = "string",
        },
      },
      type = "object",
    },
    FolderEntities = {
      description = "Represents a Google Tag Manager Folder's contents.",
      id = "FolderEntities",
      properties = {
        tag = {
          description = "The list of tags inside the folder.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
        trigger = {
          description = "The list of triggers inside the folder.",
          items = {
            ["$ref"] = "Trigger",
          },
          type = "array",
        },
        variable = {
          description = "The list of variables inside the folder.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAccountUsersResponse = {
      description = "List AccountUsers Response.",
      id = "ListAccountUsersResponse",
      properties = {
        userAccess = {
          description = "All GTM AccountUsers of a GTM Account.",
          items = {
            ["$ref"] = "UserAccess",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAccountsResponse = {
      description = "List Accounts Response.",
      id = "ListAccountsResponse",
      properties = {
        accounts = {
          description = "List of GTM Accounts that a user has access to.",
          items = {
            ["$ref"] = "Account",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListContainerVersionsResponse = {
      description = "List container versions response.",
      id = "ListContainerVersionsResponse",
      properties = {
        containerVersion = {
          description = "All versions of a GTM Container.",
          items = {
            ["$ref"] = "ContainerVersion",
          },
          type = "array",
        },
        containerVersionHeader = {
          description = "All container version headers of a GTM Container.",
          items = {
            ["$ref"] = "ContainerVersionHeader",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListContainersResponse = {
      description = "List Containers Response.",
      id = "ListContainersResponse",
      properties = {
        containers = {
          description = "All Containers of a GTM Account.",
          items = {
            ["$ref"] = "Container",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListEnvironmentsResponse = {
      description = "List Environments Response.",
      id = "ListEnvironmentsResponse",
      properties = {
        environments = {
          description = "All Environments of a GTM Container.",
          items = {
            ["$ref"] = "Environment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListFoldersResponse = {
      description = "List Folders Response.",
      id = "ListFoldersResponse",
      properties = {
        folders = {
          description = "All GTM Folders of a GTM Container.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTagsResponse = {
      description = "List Tags Response.",
      id = "ListTagsResponse",
      properties = {
        tags = {
          description = "All GTM Tags of a GTM Container.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTriggersResponse = {
      description = "List triggers response.",
      id = "ListTriggersResponse",
      properties = {
        triggers = {
          description = "All GTM Triggers of a GTM Container.",
          items = {
            ["$ref"] = "Trigger",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVariablesResponse = {
      description = "List Variables Response.",
      id = "ListVariablesResponse",
      properties = {
        variables = {
          description = "All GTM Variables of a GTM Container.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Macro = {
      description = "Represents a Google Tag Manager Macro.",
      id = "Macro",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        disablingRuleId = {
          description = "For mobile containers only: A list of rule IDs for disabling conditional macros; the macro is enabled if one of the enabling rules is true while all the disabling rules are false. Treated as an unordered set. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        enablingRuleId = {
          description = "For mobile containers only: A list of rule IDs for enabling conditional macros; the macro is enabled if one of the enabling rules is true while all the disabling rules are false. Treated as an unordered set. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Macro as computed at storage time. This value is recomputed whenever the macro is modified.",
          type = "string",
        },
        macroId = {
          description = "The Macro ID uniquely identifies the GTM Macro.",
          type = "string",
        },
        name = {
          description = "Macro display name. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this macro in the container. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          type = "string",
        },
        parameter = {
          description = "The macro's parameters. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        scheduleEndMs = {
          description = "The end timestamp in milliseconds to schedule a macro. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          format = "int64",
          type = "string",
        },
        scheduleStartMs = {
          description = "The start timestamp in milliseconds to schedule a macro. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          format = "int64",
          type = "string",
        },
        type = {
          description = "GTM Macro Type. @mutable tagmanager.accounts.containers.macros.create @mutable tagmanager.accounts.containers.macros.update",
          type = "string",
        },
      },
      type = "object",
    },
    Parameter = {
      description = "Represents a Google Tag Manager Parameter.",
      id = "Parameter",
      properties = {
        key = {
          description = "The named key that uniquely identifies a parameter. Required for top-level parameters, as well as map values. Ignored for list values. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          type = "string",
        },
        list = {
          description = "This list parameter's parameters (keys will be ignored). @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        map = {
          description = "This map parameter's parameters (must have keys; keys must be unique). @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.tags.create",
              "tagmanager.accounts.containers.tags.update",
              "tagmanager.accounts.containers.triggers.create",
              "tagmanager.accounts.containers.triggers.update",
              "tagmanager.accounts.containers.variables.create",
              "tagmanager.accounts.containers.variables.update",
            },
          },
          description = "The parameter type. Valid values are: - boolean: The value represents a boolean, represented as 'true' or 'false' - integer: The value represents a 64-bit signed integer value, in base 10 - list: A list of parameters should be specified - map: A map of parameters should be specified - template: The value represents any text; this can include variable references (even variable references that might return non-string types) - trigger_reference: The value represents a trigger, represented as the trigger id - tag_reference: The value represents a tag, represented as the tag name @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          enum = {
            "template",
            "integer",
            "boolean",
            "list",
            "map",
            "triggerReference",
            "tagReference",
          },
          enumDescriptions = {
            "May include variable references (such as \"{{myVariable}}\").",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          description = "A parameter's value (may contain variable references such as \"{{myVariable}}\") as appropriate to the specified type. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          type = "string",
        },
      },
      type = "object",
    },
    PublishContainerVersionResponse = {
      description = "Publish container version response.",
      id = "PublishContainerVersionResponse",
      properties = {
        compilerError = {
          description = "Compiler errors or not.",
          type = "boolean",
        },
        containerVersion = {
          ["$ref"] = "ContainerVersion",
          description = "The container version created.",
        },
      },
      type = "object",
    },
    Rule = {
      description = "Represents a Google Tag Manager Rule.",
      id = "Rule",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        condition = {
          description = "The list of conditions that make up this rule (implicit AND between them). @mutable tagmanager.accounts.containers.rules.create @mutable tagmanager.accounts.containers.rules.update",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Rule as computed at storage time. This value is recomputed whenever the rule is modified.",
          type = "string",
        },
        name = {
          description = "Rule display name. @mutable tagmanager.accounts.containers.rules.create @mutable tagmanager.accounts.containers.rules.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this rule in the container. @mutable tagmanager.accounts.containers.rules.create @mutable tagmanager.accounts.containers.rules.update",
          type = "string",
        },
        ruleId = {
          description = "The Rule ID uniquely identifies the GTM Rule.",
          type = "string",
        },
      },
      type = "object",
    },
    SetupTag = {
      id = "SetupTag",
      properties = {
        stopOnSetupFailure = {
          description = "If true, fire the main tag if and only if the setup tag fires successfully. If false, fire the main tag regardless of setup tag firing status.",
          type = "boolean",
        },
        tagName = {
          description = "The name of the setup tag.",
          type = "string",
        },
      },
      type = "object",
    },
    Tag = {
      description = "Represents a Google Tag Manager Tag.",
      id = "Tag",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        blockingRuleId = {
          description = "Blocking rule IDs. If any of the listed rules evaluate to true, the tag will not fire. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        blockingTriggerId = {
          description = "Blocking trigger IDs. If any of the listed triggers evaluate to true, the tag will not fire. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Tag as computed at storage time. This value is recomputed whenever the tag is modified.",
          type = "string",
        },
        firingRuleId = {
          description = "Firing rule IDs. A tag will fire when any of the listed rules are true and all of its blockingRuleIds (if any specified) are false. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        firingTriggerId = {
          description = "Firing trigger IDs. A tag will fire when any of the listed triggers are true and all of its blockingTriggerIds (if any specified) are false. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        liveOnly = {
          description = "If set to true, this tag will only fire in the live environment (e.g. not in preview or debug mode). @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          type = "boolean",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.tags.create",
              "tagmanager.accounts.containers.tags.update",
            },
          },
          description = "Tag display name. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this tag in the container. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          type = "string",
        },
        parameter = {
          description = "The tag's parameters. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        paused = {
          description = "True if the tag is paused. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          type = "boolean",
        },
        priority = {
          ["$ref"] = "Parameter",
          description = "User defined numeric priority of the tag. Tags are fired asynchronously in order of priority. Tags with higher numeric value fire first. A tag's priority can be a positive or negative value. The default value is 0. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
        },
        scheduleEndMs = {
          description = "The end timestamp in milliseconds to schedule a tag. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          format = "int64",
          type = "string",
        },
        scheduleStartMs = {
          description = "The start timestamp in milliseconds to schedule a tag. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          format = "int64",
          type = "string",
        },
        setupTag = {
          description = "The list of setup tags. Currently we only allow one.",
          items = {
            ["$ref"] = "SetupTag",
          },
          type = "array",
        },
        tagFiringOption = {
          description = "Option to fire this tag.",
          enum = {
            "unlimited",
            "oncePerEvent",
            "oncePerLoad",
          },
          enumDescriptions = {
            "Tag can be fired multiple times per event.",
            "Tag can only be fired per event but can be fired multiple times per load (e.g., app load or page load).",
            "Tag can only be fired per load (e.g., app load or page load).",
          },
          type = "string",
        },
        tagId = {
          description = "The Tag ID uniquely identifies the GTM Tag.",
          type = "string",
        },
        teardownTag = {
          description = "The list of teardown tags. Currently we only allow one.",
          items = {
            ["$ref"] = "TeardownTag",
          },
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.tags.create",
            },
          },
          description = "GTM Tag Type. @mutable tagmanager.accounts.containers.tags.create @mutable tagmanager.accounts.containers.tags.update",
          type = "string",
        },
      },
      type = "object",
    },
    TeardownTag = {
      id = "TeardownTag",
      properties = {
        stopTeardownOnFailure = {
          description = "If true, fire the teardown tag if and only if the main tag fires successfully. If false, fire the teardown tag regardless of main tag firing status.",
          type = "boolean",
        },
        tagName = {
          description = "The name of the teardown tag.",
          type = "string",
        },
      },
      type = "object",
    },
    Trigger = {
      description = "Represents a Google Tag Manager Trigger",
      id = "Trigger",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        autoEventFilter = {
          description = "Used in the case of auto event tracking. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        checkValidation = {
          ["$ref"] = "Parameter",
          description = "Whether or not we should only fire tags if the form submit or link click event is not cancelled by some other event handler (e.g. because of validation). Only valid for Form Submission and Link Click triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        continuousTimeMinMilliseconds = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger minimum continuous visible time (in milliseconds). Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        customEventFilter = {
          description = "Used in the case of custom event, which is fired iff all Conditions are true. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        eventName = {
          ["$ref"] = "Parameter",
          description = "Name of the GTM event that is fired. Only valid for Timer triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        filter = {
          description = "The trigger will only fire iff all Conditions are true. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Trigger as computed at storage time. This value is recomputed whenever the trigger is modified.",
          type = "string",
        },
        horizontalScrollPercentageList = {
          ["$ref"] = "Parameter",
          description = "List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled horizontally. Only valid for AMP scroll triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        interval = {
          ["$ref"] = "Parameter",
          description = "Time between triggering recurring Timer Events (in milliseconds). Only valid for Timer triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        intervalSeconds = {
          ["$ref"] = "Parameter",
          description = "Time between Timer Events to fire (in seconds). Only valid for AMP Timer trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        limit = {
          ["$ref"] = "Parameter",
          description = "Limit of the number of GTM events this Timer Trigger will fire. If no limit is set, we will continue to fire GTM events until the user leaves the page. Only valid for Timer triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        maxTimerLengthSeconds = {
          ["$ref"] = "Parameter",
          description = "Max time to fire Timer Events (in seconds). Only valid for AMP Timer trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.triggers.create",
              "tagmanager.accounts.containers.triggers.update",
            },
          },
          description = "Trigger display name. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
          type = "string",
        },
        parameter = {
          description = "Additional parameters. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        selector = {
          ["$ref"] = "Parameter",
          description = "A click trigger CSS selector (i.e. \"a\", \"button\" etc.). Only valid for AMP Click trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        totalTimeMinMilliseconds = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger minimum total visible time (in milliseconds). Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        triggerId = {
          description = "The Trigger ID uniquely identifies the GTM Trigger.",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.triggers.create",
            },
          },
          description = "Defines the data layer event that causes this trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
          enum = {
            "pageview",
            "domReady",
            "windowLoaded",
            "customEvent",
            "triggerGroup",
            "always",
            "formSubmission",
            "click",
            "linkClick",
            "jsError",
            "historyChange",
            "timer",
            "ampClick",
            "ampTimer",
            "ampScroll",
            "ampVisibility",
            "youTubeVideo",
            "scrollDepth",
            "elementVisibility",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        uniqueTriggerId = {
          ["$ref"] = "Parameter",
          description = "Globally unique id of the trigger that auto-generates this (a Form Submit, Link Click or Timer listener) if any. Used to make incompatible auto-events work together with trigger filtering based on trigger ids. This value is populated during output generation since the tags implied by triggers don't exist until then. Only valid for Form Submit, Link Click and Timer triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        verticalScrollPercentageList = {
          ["$ref"] = "Parameter",
          description = "List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled vertically. Only valid for AMP scroll triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        visibilitySelector = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger CSS selector (i.e. \"#id\"). Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        visiblePercentageMax = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger maximum percent visibility. Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        visiblePercentageMin = {
          ["$ref"] = "Parameter",
          description = "A visibility trigger minimum percent visibility. Only valid for AMP Visibility trigger. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        waitForTags = {
          ["$ref"] = "Parameter",
          description = "Whether or not we should delay the form submissions or link opening until all of the tags have fired (by preventing the default action and later simulating the default action). Only valid for Form Submission and Link Click triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
        waitForTagsTimeout = {
          ["$ref"] = "Parameter",
          description = "How long to wait (in milliseconds) for tags to fire when 'waits_for_tags' above evaluates to true. Only valid for Form Submission and Link Click triggers. @mutable tagmanager.accounts.containers.triggers.create @mutable tagmanager.accounts.containers.triggers.update",
        },
      },
      type = "object",
    },
    UserAccess = {
      description = "Represents a user's permissions to an account and its container.",
      id = "UserAccess",
      properties = {
        accountAccess = {
          ["$ref"] = "AccountAccess",
          annotations = {
            required = {
              "tagmanager.accounts.permissions.create",
            },
          },
          description = "GTM Account access permissions. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
        },
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerAccess = {
          description = "GTM Container access permissions. @mutable tagmanager.accounts.permissions.create @mutable tagmanager.accounts.permissions.update",
          items = {
            ["$ref"] = "ContainerAccess",
          },
          type = "array",
        },
        emailAddress = {
          annotations = {
            required = {
              "tagmanager.accounts.permissions.create",
            },
          },
          description = "User's email address. @mutable tagmanager.accounts.permissions.create",
          type = "string",
        },
        permissionId = {
          description = "Account Permission ID.",
          type = "string",
        },
      },
      type = "object",
    },
    Variable = {
      description = "Represents a Google Tag Manager Variable.",
      id = "Variable",
      properties = {
        accountId = {
          description = "GTM Account ID.",
          type = "string",
        },
        containerId = {
          description = "GTM Container ID.",
          type = "string",
        },
        disablingTriggerId = {
          description = "For mobile containers only: A list of trigger IDs for disabling conditional variables; the variable is enabled if one of the enabling trigger is true while all the disabling trigger are false. Treated as an unordered set. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        enablingTriggerId = {
          description = "For mobile containers only: A list of trigger IDs for enabling conditional variables; the variable is enabled if one of the enabling triggers is true while all the disabling triggers are false. Treated as an unordered set. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          items = {
            type = "string",
          },
          type = "array",
        },
        fingerprint = {
          description = "The fingerprint of the GTM Variable as computed at storage time. This value is recomputed whenever the variable is modified.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.variables.create",
              "tagmanager.accounts.containers.variables.update",
            },
          },
          description = "Variable display name. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          type = "string",
        },
        notes = {
          description = "User notes on how to apply this variable in the container. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          type = "string",
        },
        parameter = {
          description = "The variable's parameters. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
        parentFolderId = {
          description = "Parent folder id.",
          type = "string",
        },
        scheduleEndMs = {
          description = "The end timestamp in milliseconds to schedule a variable. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          format = "int64",
          type = "string",
        },
        scheduleStartMs = {
          description = "The start timestamp in milliseconds to schedule a variable. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          format = "int64",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "tagmanager.accounts.containers.variables.create",
              "tagmanager.accounts.containers.variables.update",
            },
          },
          description = "GTM Variable Type. @mutable tagmanager.accounts.containers.variables.create @mutable tagmanager.accounts.containers.variables.update",
          type = "string",
        },
        variableId = {
          description = "The Variable ID uniquely identifies the GTM Variable.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Tag Manager API",
  version = "v1",
}
