return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/datastore"] = {
          description = "View and manage your Google Cloud Datastore data",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://firestore.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Firestore",
  description = "Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/firestore",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "firestore:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://firestore.mtls.googleapis.com/",
  name = "firestore",
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
        databases = {
          methods = {
            create = {
              description = "Create a database.",
              flatPath = "v1/projects/{projectsId}/databases",
              httpMethod = "POST",
              id = "firestore.projects.databases.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                databaseId = {
                  description = "Required. The ID to use for the database, which will become the final component of the database's resource name. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. \"(default)\" database id is also valid.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. A parent name of the form `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/databases",
              request = {
                ["$ref"] = "GoogleFirestoreAdminV1Database",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            delete = {
              description = "Deletes a database.",
              flatPath = "v1/projects/{projectsId}/databases/{databasesId}",
              httpMethod = "DELETE",
              id = "firestore.projects.databases.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                allowMissing = {
                  description = "If set to true and the Database is not found, the request will succeed but no action will be taken.",
                  location = "query",
                  type = "boolean",
                },
                etag = {
                  description = "The current etag of the Database. If an etag is provided and does not match the current etag of the database, deletion will be blocked and a FAILED_PRECONDITION error will be returned.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. A name of the form `projects/{project_id}/databases/{database_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/databases/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "If set, validate the request and preview the response, but do not actually delete the database.",
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
                "https://www.googleapis.com/auth/datastore",
              },
            },
            exportDocuments = {
              description = "Exports a copy of all or a subset of documents from Google Cloud Firestore to another storage system, such as Google Cloud Storage. Recent updates to documents may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage. For more details on export behavior and output format, refer to: https://cloud.google.com/firestore/docs/manage-data/export-import",
              flatPath = "v1/projects/{projectsId}/databases/{databasesId}:exportDocuments",
              httpMethod = "POST",
              id = "firestore.projects.databases.exportDocuments",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Database to export. Should be of the form: `projects/{project_id}/databases/{database_id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/databases/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:exportDocuments",
              request = {
                ["$ref"] = "GoogleFirestoreAdminV1ExportDocumentsRequest",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            get = {
              description = "Gets information about a database.",
              flatPath = "v1/projects/{projectsId}/databases/{databasesId}",
              httpMethod = "GET",
              id = "firestore.projects.databases.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. A name of the form `projects/{project_id}/databases/{database_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/databases/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleFirestoreAdminV1Database",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            importDocuments = {
              description = "Imports documents into Google Cloud Firestore. Existing documents with the same name are overwritten. The import occurs in the background and its progress can be monitored and managed via the Operation resource that is created. If an ImportDocuments operation is cancelled, it is possible that a subset of the data has already been imported to Cloud Firestore.",
              flatPath = "v1/projects/{projectsId}/databases/{databasesId}:importDocuments",
              httpMethod = "POST",
              id = "firestore.projects.databases.importDocuments",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Database to import into. Should be of the form: `projects/{project_id}/databases/{database_id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/databases/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:importDocuments",
              request = {
                ["$ref"] = "GoogleFirestoreAdminV1ImportDocumentsRequest",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            list = {
              description = "List all the databases in the project.",
              flatPath = "v1/projects/{projectsId}/databases",
              httpMethod = "GET",
              id = "firestore.projects.databases.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. A parent name of the form `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/databases",
              response = {
                ["$ref"] = "GoogleFirestoreAdminV1ListDatabasesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            patch = {
              description = "Updates a database.",
              flatPath = "v1/projects/{projectsId}/databases/{databasesId}",
              httpMethod = "PATCH",
              id = "firestore.projects.databases.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the Database. Format: `projects/{project}/databases/{database}`",
                  location = "path",
                  pattern = "^projects/[^/]+/databases/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The list of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleFirestoreAdminV1Database",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
          },
          resources = {
            collectionGroups = {
              resources = {
                fields = {
                  methods = {
                    get = {
                      description = "Gets the metadata and configuration for a Field.",
                      flatPath = "v1/projects/{projectsId}/databases/{databasesId}/collectionGroups/{collectionGroupsId}/fields/{fieldsId}",
                      httpMethod = "GET",
                      id = "firestore.projects.databases.collectionGroups.fields.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. A name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/fields/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleFirestoreAdminV1Field",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/datastore",
                      },
                    },
                    list = {
                      description = "Lists the field configuration and metadata for this database. Currently, FirestoreAdmin.ListFields only supports listing fields that have been explicitly overridden. To issue this query, call FirestoreAdmin.ListFields with the filter set to `indexConfig.usesAncestorConfig:false` .",
                      flatPath = "v1/projects/{projectsId}/databases/{databasesId}/collectionGroups/{collectionGroupsId}/fields",
                      httpMethod = "GET",
                      id = "firestore.projects.databases.collectionGroups.fields.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "The filter to apply to list results. Currently, FirestoreAdmin.ListFields only supports listing fields that have been explicitly overridden. To issue this query, call FirestoreAdmin.ListFields with a filter that includes `indexConfig.usesAncestorConfig:false` .",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, returned from a previous call to FirestoreAdmin.ListFields, that may be used to get the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. A parent name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/fields",
                      response = {
                        ["$ref"] = "GoogleFirestoreAdminV1ListFieldsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/datastore",
                      },
                    },
                    patch = {
                      description = "Updates a field configuration. Currently, field updates apply only to single field index configuration. However, calls to FirestoreAdmin.UpdateField should provide a field mask to avoid changing any configuration that the caller isn't aware of. The field mask should be specified as: `{ paths: \"index_config\" }`. This call returns a google.longrunning.Operation which may be used to track the status of the field update. The metadata for the operation will be the type FieldOperationMetadata. To configure the default field settings for the database, use the special `Field` with resource name: `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields/*`.",
                      flatPath = "v1/projects/{projectsId}/databases/{databasesId}/collectionGroups/{collectionGroupsId}/fields/{fieldsId}",
                      httpMethod = "PATCH",
                      id = "firestore.projects.databases.collectionGroups.fields.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. A field name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}` A field path may be a simple field name, e.g. `address` or a path to fields within map_value , e.g. `address.city`, or a special field path. The only valid special field is `*`, which represents any field. Field paths may be quoted using ` (backtick). The only character that needs to be escaped within a quoted field path is the backtick character itself, escaped using a backslash. Special characters in field paths that must be quoted include: `*`, `.`, ``` (backtick), `[`, `]`, as well as any ascii symbolic characters. Examples: (Note: Comments here are written in markdown syntax, so there is an additional layer of backticks to represent a code block) `\\`address.city\\`` represents a field named `address.city`, not the map key `city` in the field `address`. `\\`*\\`` represents a field named `*`, not any field. A special `Field` contains the default indexing settings for all fields. This field's resource name is: `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields/*` Indexes defined on this `Field` will be applied to all fields which do not have their own `Field` index configuration.",
                          location = "path",
                          pattern = "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/fields/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "A mask, relative to the field. If specified, only configuration specified by this field_mask will be updated in the field.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleFirestoreAdminV1Field",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/datastore",
                      },
                    },
                  },
                },
                indexes = {
                  methods = {
                    create = {
                      description = "Creates a composite index. This returns a google.longrunning.Operation which may be used to track the status of the creation. The metadata for the operation will be the type IndexOperationMetadata.",
                      flatPath = "v1/projects/{projectsId}/databases/{databasesId}/collectionGroups/{collectionGroupsId}/indexes",
                      httpMethod = "POST",
                      id = "firestore.projects.databases.collectionGroups.indexes.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. A parent name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/indexes",
                      request = {
                        ["$ref"] = "GoogleFirestoreAdminV1Index",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/datastore",
                      },
                    },
                    delete = {
                      description = "Deletes a composite index.",
                      flatPath = "v1/projects/{projectsId}/databases/{databasesId}/collectionGroups/{collectionGroupsId}/indexes/{indexesId}",
                      httpMethod = "DELETE",
                      id = "firestore.projects.databases.collectionGroups.indexes.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. A name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/indexes/[^/]+$",
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
                        "https://www.googleapis.com/auth/datastore",
                      },
                    },
                    get = {
                      description = "Gets a composite index.",
                      flatPath = "v1/projects/{projectsId}/databases/{databasesId}/collectionGroups/{collectionGroupsId}/indexes/{indexesId}",
                      httpMethod = "GET",
                      id = "firestore.projects.databases.collectionGroups.indexes.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. A name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+/indexes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleFirestoreAdminV1Index",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/datastore",
                      },
                    },
                    list = {
                      description = "Lists composite indexes.",
                      flatPath = "v1/projects/{projectsId}/databases/{databasesId}/collectionGroups/{collectionGroupsId}/indexes",
                      httpMethod = "GET",
                      id = "firestore.projects.databases.collectionGroups.indexes.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "The filter to apply to list results.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, returned from a previous call to FirestoreAdmin.ListIndexes, that may be used to get the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. A parent name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/databases/[^/]+/collectionGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/indexes",
                      response = {
                        ["$ref"] = "GoogleFirestoreAdminV1ListIndexesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/datastore",
                      },
                    },
                  },
                },
              },
            },
            documents = {
              methods = {
                batchGet = {
                  description = "Gets multiple documents. Documents returned by this method are not guaranteed to be returned in the same order that they were requested.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents:batchGet",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.batchGet",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/documents:batchGet",
                  request = {
                    ["$ref"] = "BatchGetDocumentsRequest",
                  },
                  response = {
                    ["$ref"] = "BatchGetDocumentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                batchWrite = {
                  description = "Applies a batch of write operations. The BatchWrite method does not apply the write operations atomically and can apply them out of order. Method does not allow more than one write per document. Each write succeeds or fails independently. See the BatchWriteResponse for the success status of each write. If you require an atomically applied set of writes, use Commit instead.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents:batchWrite",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.batchWrite",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/documents:batchWrite",
                  request = {
                    ["$ref"] = "BatchWriteRequest",
                  },
                  response = {
                    ["$ref"] = "BatchWriteResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                beginTransaction = {
                  description = "Starts a new transaction.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents:beginTransaction",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.beginTransaction",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/documents:beginTransaction",
                  request = {
                    ["$ref"] = "BeginTransactionRequest",
                  },
                  response = {
                    ["$ref"] = "BeginTransactionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                commit = {
                  description = "Commits a transaction, while optionally updating documents.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents:commit",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.commit",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/documents:commit",
                  request = {
                    ["$ref"] = "CommitRequest",
                  },
                  response = {
                    ["$ref"] = "CommitResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                createDocument = {
                  description = "Creates a new document.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{collectionId}",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.createDocument",
                  parameterOrder = {
                    "parent",
                    "collectionId",
                  },
                  parameters = {
                    collectionId = {
                      description = "Required. The collection ID, relative to `parent`, to list. For example: `chatrooms`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    documentId = {
                      description = "The client-assigned document ID to use for this document. Optional. If not specified, an ID will be assigned by the service.",
                      location = "query",
                      type = "string",
                    },
                    ["mask.fieldPaths"] = {
                      description = "The list of field paths in the mask. See Document.fields for a field path syntax reference.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource. For example: `projects/{project_id}/databases/{database_id}/documents` or `projects/{project_id}/databases/{database_id}/documents/chatrooms/{chatroom_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/.*$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/{collectionId}",
                  request = {
                    ["$ref"] = "Document",
                  },
                  response = {
                    ["$ref"] = "Document",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                delete = {
                  description = "Deletes a document.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}",
                  httpMethod = "DELETE",
                  id = "firestore.projects.databases.documents.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["currentDocument.exists"] = {
                      description = "When set to `true`, the target document must exist. When set to `false`, the target document must not exist.",
                      location = "query",
                      type = "boolean",
                    },
                    ["currentDocument.updateTime"] = {
                      description = "When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The resource name of the Document to delete. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
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
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                get = {
                  description = "Gets a single document.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}",
                  httpMethod = "GET",
                  id = "firestore.projects.databases.documents.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["mask.fieldPaths"] = {
                      description = "The list of field paths in the mask. See Document.fields for a field path syntax reference.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    name = {
                      description = "Required. The resource name of the Document to get. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
                      required = true,
                      type = "string",
                    },
                    readTime = {
                      description = "Reads the version of the document at the given time. This may not be older than 270 seconds.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    transaction = {
                      description = "Reads the document in a transaction.",
                      format = "byte",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Document",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                list = {
                  description = "Lists documents.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}/{collectionId}",
                  httpMethod = "GET",
                  id = "firestore.projects.databases.documents.list",
                  parameterOrder = {
                    "parent",
                    "collectionId",
                  },
                  parameters = {
                    collectionId = {
                      description = "Optional. The collection ID, relative to `parent`, to list. For example: `chatrooms` or `messages`. This is optional, and when not provided, Firestore will list documents from all collections under the provided `parent`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    ["mask.fieldPaths"] = {
                      description = "The list of field paths in the mask. See Document.fields for a field path syntax reference.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. The optional ordering of the documents to return. For example: `priority desc, __name__ desc`. This mirrors the `ORDER BY` used in Firestore queries but in a string representation. When absent, documents are ordered based on `__name__ ASC`.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of documents to return in a single response. Firestore may return fewer than this value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token, received from a previous `ListDocuments` response. Provide this to retrieve the subsequent page. When paginating, all other parameters (with the exception of `page_size`) must match the values set in the request that generated the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `projects/{project_id}/databases/{database_id}/documents/{document_path}`. For example: `projects/my-project/databases/my-database/documents` or `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
                      required = true,
                      type = "string",
                    },
                    readTime = {
                      description = "Perform the read at the provided time. This may not be older than 270 seconds.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    showMissing = {
                      description = "If the list should show missing documents. A document is missing if it does not exist, but there are sub-documents nested underneath it. When true, such missing documents will be returned with a key but will not have fields, `create_time`, or `update_time` set. Requests with `show_missing` may not specify `where` or `order_by`.",
                      location = "query",
                      type = "boolean",
                    },
                    transaction = {
                      description = "Perform the read as part of an already active transaction.",
                      format = "byte",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/{collectionId}",
                  response = {
                    ["$ref"] = "ListDocumentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                listCollectionIds = {
                  description = "Lists all the collection IDs underneath a document.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}:listCollectionIds",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.listCollectionIds",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent document. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`. For example: `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:listCollectionIds",
                  request = {
                    ["$ref"] = "ListCollectionIdsRequest",
                  },
                  response = {
                    ["$ref"] = "ListCollectionIdsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                listDocuments = {
                  description = "Lists documents.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{collectionId}",
                  httpMethod = "GET",
                  id = "firestore.projects.databases.documents.listDocuments",
                  parameterOrder = {
                    "parent",
                    "collectionId",
                  },
                  parameters = {
                    collectionId = {
                      description = "Optional. The collection ID, relative to `parent`, to list. For example: `chatrooms` or `messages`. This is optional, and when not provided, Firestore will list documents from all collections under the provided `parent`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    ["mask.fieldPaths"] = {
                      description = "The list of field paths in the mask. See Document.fields for a field path syntax reference.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. The optional ordering of the documents to return. For example: `priority desc, __name__ desc`. This mirrors the `ORDER BY` used in Firestore queries but in a string representation. When absent, documents are ordered based on `__name__ ASC`.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of documents to return in a single response. Firestore may return fewer than this value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token, received from a previous `ListDocuments` response. Provide this to retrieve the subsequent page. When paginating, all other parameters (with the exception of `page_size`) must match the values set in the request that generated the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `projects/{project_id}/databases/{database_id}/documents/{document_path}`. For example: `projects/my-project/databases/my-database/documents` or `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents$",
                      required = true,
                      type = "string",
                    },
                    readTime = {
                      description = "Perform the read at the provided time. This may not be older than 270 seconds.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    showMissing = {
                      description = "If the list should show missing documents. A document is missing if it does not exist, but there are sub-documents nested underneath it. When true, such missing documents will be returned with a key but will not have fields, `create_time`, or `update_time` set. Requests with `show_missing` may not specify `where` or `order_by`.",
                      location = "query",
                      type = "boolean",
                    },
                    transaction = {
                      description = "Perform the read as part of an already active transaction.",
                      format = "byte",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/{collectionId}",
                  response = {
                    ["$ref"] = "ListDocumentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                listen = {
                  description = "Listens to changes.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents:listen",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.listen",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/documents:listen",
                  request = {
                    ["$ref"] = "ListenRequest",
                  },
                  response = {
                    ["$ref"] = "ListenResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                partitionQuery = {
                  description = "Partitions a query by returning partition cursors that can be used to run the query in parallel. The returned partition cursors are split points that can be used by RunQuery as starting/end points for the query results.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}:partitionQuery",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.partitionQuery",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents`. Document resource names are not supported; only database resource names can be specified.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:partitionQuery",
                  request = {
                    ["$ref"] = "PartitionQueryRequest",
                  },
                  response = {
                    ["$ref"] = "PartitionQueryResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                patch = {
                  description = "Updates or inserts a document.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}",
                  httpMethod = "PATCH",
                  id = "firestore.projects.databases.documents.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    ["currentDocument.exists"] = {
                      description = "When set to `true`, the target document must exist. When set to `false`, the target document must not exist.",
                      location = "query",
                      type = "boolean",
                    },
                    ["currentDocument.updateTime"] = {
                      description = "When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    ["mask.fieldPaths"] = {
                      description = "The list of field paths in the mask. See Document.fields for a field path syntax reference.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                    name = {
                      description = "The resource name of the document, for example `projects/{project_id}/databases/{database_id}/documents/{document_path}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
                      required = true,
                      type = "string",
                    },
                    ["updateMask.fieldPaths"] = {
                      description = "The list of field paths in the mask. See Document.fields for a field path syntax reference.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Document",
                  },
                  response = {
                    ["$ref"] = "Document",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                rollback = {
                  description = "Rolls back a transaction.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents:rollback",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.rollback",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/documents:rollback",
                  request = {
                    ["$ref"] = "RollbackRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                runAggregationQuery = {
                  description = "Runs an aggregation query. Rather than producing Document results like Firestore.RunQuery, this API allows running an aggregation to produce a series of AggregationResult server-side. High-Level Example: ``` -- Return the number of documents in table given a filter. SELECT COUNT(*) FROM ( SELECT * FROM k where a = true ); ```",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}:runAggregationQuery",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.runAggregationQuery",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `projects/{project_id}/databases/{database_id}/documents/{document_path}`. For example: `projects/my-project/databases/my-database/documents` or `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:runAggregationQuery",
                  request = {
                    ["$ref"] = "RunAggregationQueryRequest",
                  },
                  response = {
                    ["$ref"] = "RunAggregationQueryResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                runQuery = {
                  description = "Runs a query.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents/{documentsId}/{documentsId1}:runQuery",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.runQuery",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `projects/{project_id}/databases/{database_id}/documents/{document_path}`. For example: `projects/my-project/databases/my-database/documents` or `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/documents/[^/]+/.*$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:runQuery",
                  request = {
                    ["$ref"] = "RunQueryRequest",
                  },
                  response = {
                    ["$ref"] = "RunQueryResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                write = {
                  description = "Streams batches of document updates and deletes, in order.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/documents:write",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.documents.write",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. This is only required in the first message.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/documents:write",
                  request = {
                    ["$ref"] = "WriteRequest",
                  },
                  response = {
                    ["$ref"] = "WriteResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "firestore.projects.databases.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "firestore.projects.databases.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "firestore.projects.databases.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/databases/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/databases/{databasesId}/operations",
                  httpMethod = "GET",
                  id = "firestore.projects.databases.operations.list",
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
                      pattern = "^projects/[^/]+/databases/[^/]+$",
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
                    "https://www.googleapis.com/auth/datastore",
                  },
                },
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "firestore.projects.locations.get",
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
                "https://www.googleapis.com/auth/datastore",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "firestore.projects.locations.list",
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
                "https://www.googleapis.com/auth/datastore",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://firestore.googleapis.com/",
  schemas = {
    Aggregation = {
      description = "Defines a aggregation that produces a single result.",
      id = "Aggregation",
      properties = {
        alias = {
          description = "Optional. Optional name of the field to store the result of the aggregation into. If not provided, Firestore will pick a default name following the format `field_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT_UP_TO(4) OVER ( ... ); ``` becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2) AS field_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT_UP_TO(4) AS field_2 OVER ( ... ); ``` Requires: * Must be unique across all aggregation aliases. * Conform to document field name limitations.",
          type = "string",
        },
        count = {
          ["$ref"] = "Count",
          description = "Count aggregator.",
        },
      },
      type = "object",
    },
    AggregationResult = {
      description = "The result of a single bucket from a Firestore aggregation query. The keys of `aggregate_fields` are the same for all results in an aggregation query, unlike document queries which can have different fields present for each result.",
      id = "AggregationResult",
      properties = {
        aggregateFields = {
          additionalProperties = {
            ["$ref"] = "Value",
          },
          description = "The result of the aggregation functions, ex: `COUNT(*) AS total_docs`. The key is the alias assigned to the aggregation function on input and the size of this map equals the number of aggregation functions in the query.",
          type = "object",
        },
      },
      type = "object",
    },
    ArrayValue = {
      description = "An array value.",
      id = "ArrayValue",
      properties = {
        values = {
          description = "Values in the array.",
          items = {
            ["$ref"] = "Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchGetDocumentsRequest = {
      description = "The request for Firestore.BatchGetDocuments.",
      id = "BatchGetDocumentsRequest",
      properties = {
        documents = {
          description = "The names of the documents to retrieve. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`. The request will fail if any of the document is not a child resource of the given `database`. Duplicate names will be elided.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mask = {
          ["$ref"] = "DocumentMask",
          description = "The fields to return. If not set, returns all fields. If a document has a field that is not present in this mask, that field will not be returned in the response.",
        },
        newTransaction = {
          ["$ref"] = "TransactionOptions",
          description = "Starts a new transaction and reads the documents. Defaults to a read-only transaction. The new transaction ID will be returned as the first response in the stream.",
        },
        readTime = {
          description = "Reads documents as they were at the given time. This may not be older than 270 seconds.",
          format = "google-datetime",
          type = "string",
        },
        transaction = {
          description = "Reads documents in a transaction.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    BatchGetDocumentsResponse = {
      description = "The streamed response for Firestore.BatchGetDocuments.",
      id = "BatchGetDocumentsResponse",
      properties = {
        found = {
          ["$ref"] = "Document",
          description = "A document that was requested.",
        },
        missing = {
          description = "A document name that was requested but does not exist. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`.",
          type = "string",
        },
        readTime = {
          description = "The time at which the document was read. This may be monotically increasing, in this case the previous documents in the result stream are guaranteed not to have changed between their read_time and this one.",
          format = "google-datetime",
          type = "string",
        },
        transaction = {
          description = "The transaction that was started as part of this request. Will only be set in the first response, and only if BatchGetDocumentsRequest.new_transaction was set in the request.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    BatchWriteRequest = {
      description = "The request for Firestore.BatchWrite.",
      id = "BatchWriteRequest",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels associated with this batch write.",
          type = "object",
        },
        writes = {
          description = "The writes to apply. Method does not apply writes atomically and does not guarantee ordering. Each write succeeds or fails independently. You cannot write to the same document more than once per request.",
          items = {
            ["$ref"] = "Write",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchWriteResponse = {
      description = "The response from Firestore.BatchWrite.",
      id = "BatchWriteResponse",
      properties = {
        status = {
          description = "The status of applying the writes. This i-th write status corresponds to the i-th write in the request.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
        writeResults = {
          description = "The result of applying the writes. This i-th write result corresponds to the i-th write in the request.",
          items = {
            ["$ref"] = "WriteResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BeginTransactionRequest = {
      description = "The request for Firestore.BeginTransaction.",
      id = "BeginTransactionRequest",
      properties = {
        options = {
          ["$ref"] = "TransactionOptions",
          description = "The options for the transaction. Defaults to a read-write transaction.",
        },
      },
      type = "object",
    },
    BeginTransactionResponse = {
      description = "The response for Firestore.BeginTransaction.",
      id = "BeginTransactionResponse",
      properties = {
        transaction = {
          description = "The transaction that was started.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    CollectionSelector = {
      description = "A selection of a collection, such as `messages as m1`.",
      id = "CollectionSelector",
      properties = {
        allDescendants = {
          description = "When false, selects only collections that are immediate children of the `parent` specified in the containing `RunQueryRequest`. When true, selects all descendant collections.",
          type = "boolean",
        },
        collectionId = {
          description = "The collection ID. When set, selects only collections with this ID.",
          type = "string",
        },
      },
      type = "object",
    },
    CommitRequest = {
      description = "The request for Firestore.Commit.",
      id = "CommitRequest",
      properties = {
        transaction = {
          description = "If set, applies all writes in this transaction, and commits it.",
          format = "byte",
          type = "string",
        },
        writes = {
          description = "The writes to apply. Always executed atomically and in order.",
          items = {
            ["$ref"] = "Write",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CommitResponse = {
      description = "The response for Firestore.Commit.",
      id = "CommitResponse",
      properties = {
        commitTime = {
          description = "The time at which the commit occurred. Any read with an equal or greater `read_time` is guaranteed to see the effects of the commit.",
          format = "google-datetime",
          type = "string",
        },
        writeResults = {
          description = "The result of applying the writes. This i-th write result corresponds to the i-th write in the request.",
          items = {
            ["$ref"] = "WriteResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CompositeFilter = {
      description = "A filter that merges multiple other filters using the given operator.",
      id = "CompositeFilter",
      properties = {
        filters = {
          description = "The list of filters to combine. Requires: * At least one filter is present.",
          items = {
            ["$ref"] = "Filter",
          },
          type = "array",
        },
        op = {
          description = "The operator for combining multiple filters.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "AND",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "Documents are required to satisfy all of the combined filters.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Count = {
      description = "Count of documents that match the query. The `COUNT(*)` aggregation function operates on the entire document so it does not require a field reference.",
      id = "Count",
      properties = {
        upTo = {
          description = "Optional. Optional constraint on the maximum number of documents to count. This provides a way to set an upper bound on the number of documents to scan, limiting latency and cost. Unspecified is interpreted as no bound. High-Level Example: ``` AGGREGATE COUNT_UP_TO(1000) OVER ( SELECT * FROM k ); ``` Requires: * Must be greater than zero when present.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Cursor = {
      description = "A position in a query result set.",
      id = "Cursor",
      properties = {
        before = {
          description = "If the position is just before or just after the given values, relative to the sort order defined by the query.",
          type = "boolean",
        },
        values = {
          description = "The values that represent a position, in the order they appear in the order by clause of a query. Can contain fewer values than specified in the order by clause.",
          items = {
            ["$ref"] = "Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Document = {
      description = "A Firestore document. Must not exceed 1 MiB - 4 bytes.",
      id = "Document",
      properties = {
        createTime = {
          description = "Output only. The time at which the document was created. This value increases monotonically when a document is deleted then recreated. It can also be compared to values from other documents and the `read_time` of a query.",
          format = "google-datetime",
          type = "string",
        },
        fields = {
          additionalProperties = {
            ["$ref"] = "Value",
          },
          description = "The document's fields. The map keys represent field names. A simple field name contains only characters `a` to `z`, `A` to `Z`, `0` to `9`, or `_`, and must not start with `0` to `9`. For example, `foo_bar_17`. Field names matching the regular expression `__.*__` are reserved. Reserved field names are forbidden except in certain documented contexts. The map keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be empty. Field paths may be used in other contexts to refer to structured fields defined here. For `map_value`, the field path is represented by the simple or quoted field names of the containing fields, delimited by `.`. For example, the structured field `\"foo\" : { map_value: { \"x&y\" : { string_value: \"hello\" }}}` would be represented by the field path `foo.x&y`. Within a field path, a quoted field name starts and ends with `` ` `` and may contain any character. Some characters, including `` ` ``, must be escaped using a `\\`. For example, `` `x&y` `` represents `x&y` and `` `bak\\`tik` `` represents `` bak`tik ``.",
          type = "object",
        },
        name = {
          description = "The resource name of the document, for example `projects/{project_id}/databases/{database_id}/documents/{document_path}`.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time at which the document was last changed. This value is initially set to the `create_time` then increases monotonically with each change to the document. It can also be compared to values from other documents and the `read_time` of a query.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    DocumentChange = {
      description = "A Document has changed. May be the result of multiple writes, including deletes, that ultimately resulted in a new value for the Document. Multiple DocumentChange messages may be returned for the same logical change, if multiple targets are affected.",
      id = "DocumentChange",
      properties = {
        document = {
          ["$ref"] = "Document",
          description = "The new state of the Document. If `mask` is set, contains only fields that were updated or added.",
        },
        removedTargetIds = {
          description = "A set of target IDs for targets that no longer match this document.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        targetIds = {
          description = "A set of target IDs of targets that match this document.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DocumentDelete = {
      description = "A Document has been deleted. May be the result of multiple writes, including updates, the last of which deleted the Document. Multiple DocumentDelete messages may be returned for the same logical delete, if multiple targets are affected.",
      id = "DocumentDelete",
      properties = {
        document = {
          description = "The resource name of the Document that was deleted.",
          type = "string",
        },
        readTime = {
          description = "The read timestamp at which the delete was observed. Greater or equal to the `commit_time` of the delete.",
          format = "google-datetime",
          type = "string",
        },
        removedTargetIds = {
          description = "A set of target IDs for targets that previously matched this entity.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DocumentMask = {
      description = "A set of field paths on a document. Used to restrict a get or update operation on a document to a subset of its fields. This is different from standard field masks, as this is always scoped to a Document, and takes in account the dynamic nature of Value.",
      id = "DocumentMask",
      properties = {
        fieldPaths = {
          description = "The list of field paths in the mask. See Document.fields for a field path syntax reference.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DocumentRemove = {
      description = "A Document has been removed from the view of the targets. Sent if the document is no longer relevant to a target and is out of view. Can be sent instead of a DocumentDelete or a DocumentChange if the server can not send the new value of the document. Multiple DocumentRemove messages may be returned for the same logical write or delete, if multiple targets are affected.",
      id = "DocumentRemove",
      properties = {
        document = {
          description = "The resource name of the Document that has gone out of view.",
          type = "string",
        },
        readTime = {
          description = "The read timestamp at which the remove was observed. Greater or equal to the `commit_time` of the change/delete/remove.",
          format = "google-datetime",
          type = "string",
        },
        removedTargetIds = {
          description = "A set of target IDs for targets that previously matched this document.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DocumentTransform = {
      description = "A transformation of a document.",
      id = "DocumentTransform",
      properties = {
        document = {
          description = "The name of the document to transform.",
          type = "string",
        },
        fieldTransforms = {
          description = "The list of transformations to apply to the fields of the document, in order. This must not be empty.",
          items = {
            ["$ref"] = "FieldTransform",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DocumentsTarget = {
      description = "A target specified by a set of documents names.",
      id = "DocumentsTarget",
      properties = {
        documents = {
          description = "The names of the documents to retrieve. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`. The request will fail if any of the document is not a child resource of the given `database`. Duplicate names will be elided.",
          items = {
            type = "string",
          },
          type = "array",
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
    ExistenceFilter = {
      description = "A digest of all the documents that match a given target.",
      id = "ExistenceFilter",
      properties = {
        count = {
          description = "The total count of documents that match target_id. If different from the count of documents in the client that match, the client must manually determine which documents no longer match the target.",
          format = "int32",
          type = "integer",
        },
        targetId = {
          description = "The target ID to which this filter applies.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    FieldFilter = {
      description = "A filter on a specific field.",
      id = "FieldFilter",
      properties = {
        field = {
          ["$ref"] = "FieldReference",
          description = "The field to filter by.",
        },
        op = {
          description = "The operator to filter by.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "LESS_THAN",
            "LESS_THAN_OR_EQUAL",
            "GREATER_THAN",
            "GREATER_THAN_OR_EQUAL",
            "EQUAL",
            "NOT_EQUAL",
            "ARRAY_CONTAINS",
            "IN",
            "ARRAY_CONTAINS_ANY",
            "NOT_IN",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "The given `field` is less than the given `value`. Requires: * That `field` come first in `order_by`.",
            "The given `field` is less than or equal to the given `value`. Requires: * That `field` come first in `order_by`.",
            "The given `field` is greater than the given `value`. Requires: * That `field` come first in `order_by`.",
            "The given `field` is greater than or equal to the given `value`. Requires: * That `field` come first in `order_by`.",
            "The given `field` is equal to the given `value`.",
            "The given `field` is not equal to the given `value`. Requires: * No other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That `field` comes first in the `order_by`.",
            "The given `field` is an array that contains the given `value`.",
            "The given `field` is equal to at least one value in the given array. Requires: * That `value` is a non-empty `ArrayValue` with at most 10 values. * No other `IN` or `ARRAY_CONTAINS_ANY` or `NOT_IN`.",
            "The given `field` is an array that contains any of the values in the given array. Requires: * That `value` is a non-empty `ArrayValue` with at most 10 values. * No other `IN` or `ARRAY_CONTAINS_ANY` or `NOT_IN`.",
            "The value of the `field` is not in the given array. Requires: * That `value` is a non-empty `ArrayValue` with at most 10 values. * No other `IN`, `ARRAY_CONTAINS_ANY`, `NOT_IN`, `NOT_EQUAL`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That `field` comes first in the `order_by`.",
          },
          type = "string",
        },
        value = {
          ["$ref"] = "Value",
          description = "The value to compare to.",
        },
      },
      type = "object",
    },
    FieldReference = {
      description = "A reference to a field in a document, ex: `stats.operations`.",
      id = "FieldReference",
      properties = {
        fieldPath = {
          description = "The relative path of the document being referenced. Requires: * Conform to document field name limitations.",
          type = "string",
        },
      },
      type = "object",
    },
    FieldTransform = {
      description = "A transformation of a field of the document.",
      id = "FieldTransform",
      properties = {
        appendMissingElements = {
          ["$ref"] = "ArrayValue",
          description = "Append the given elements in order if they are not already present in the current field value. If the field is not an array, or if the field does not yet exist, it is first set to the empty array. Equivalent numbers of different types (e.g. 3L and 3.0) are considered equal when checking if a value is missing. NaN is equal to NaN, and Null is equal to Null. If the input contains multiple equivalent values, only the first will be considered. The corresponding transform_result will be the null value.",
        },
        fieldPath = {
          description = "The path of the field. See Document.fields for the field path syntax reference.",
          type = "string",
        },
        increment = {
          ["$ref"] = "Value",
          description = "Adds the given value to the field's current value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the given value. If either of the given value or the current field value are doubles, both values will be interpreted as doubles. Double arithmetic and representation of double values follow IEEE 754 semantics. If there is positive/negative integer overflow, the field is resolved to the largest magnitude positive/negative integer.",
        },
        maximum = {
          ["$ref"] = "Value",
          description = "Sets the field to the maximum of its current value and the given value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the given value. If a maximum operation is applied where the field and the input value are of mixed types (that is - one is an integer and one is a double) the field takes on the type of the larger operand. If the operands are equivalent (e.g. 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero. The maximum of a zero stored value and zero input value is always the stored value. The maximum of any numeric value x and NaN is NaN.",
        },
        minimum = {
          ["$ref"] = "Value",
          description = "Sets the field to the minimum of its current value and the given value. This must be an integer or a double value. If the field is not an integer or double, or if the field does not yet exist, the transformation will set the field to the input value. If a minimum operation is applied where the field and the input value are of mixed types (that is - one is an integer and one is a double) the field takes on the type of the smaller operand. If the operands are equivalent (e.g. 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero. The minimum of a zero stored value and zero input value is always the stored value. The minimum of any numeric value x and NaN is NaN.",
        },
        removeAllFromArray = {
          ["$ref"] = "ArrayValue",
          description = "Remove all of the given elements from the array in the field. If the field is not an array, or if the field does not yet exist, it is set to the empty array. Equivalent numbers of the different types (e.g. 3L and 3.0) are considered equal when deciding whether an element should be removed. NaN is equal to NaN, and Null is equal to Null. This will remove all equivalent values if there are duplicates. The corresponding transform_result will be the null value.",
        },
        setToServerValue = {
          description = "Sets the field to the given server value.",
          enum = {
            "SERVER_VALUE_UNSPECIFIED",
            "REQUEST_TIME",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "The time at which the server processed the request, with millisecond precision. If used on multiple fields (same or different documents) in a transaction, all the fields will get the same server timestamp.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Filter = {
      description = "A filter.",
      id = "Filter",
      properties = {
        compositeFilter = {
          ["$ref"] = "CompositeFilter",
          description = "A composite filter.",
        },
        fieldFilter = {
          ["$ref"] = "FieldFilter",
          description = "A filter on a document field.",
        },
        unaryFilter = {
          ["$ref"] = "UnaryFilter",
          description = "A filter that takes exactly one argument.",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1Database = {
      description = "A Cloud Firestore Database. Currently only one database is allowed per cloud project; this database must have a `database_id` of '(default)'.",
      id = "GoogleFirestoreAdminV1Database",
      properties = {
        appEngineIntegrationMode = {
          description = "The App Engine integration mode to use for this database.",
          enum = {
            "APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED",
            "ENABLED",
            "DISABLED",
          },
          enumDescriptions = {
            "Not used.",
            "If an App Engine application exists in the same region as this database, App Engine configuration will impact this database. This includes disabling of the application & database, as well as disabling writes to the database.",
            "Appengine has no affect on the ability of this database to serve requests.",
          },
          type = "string",
        },
        concurrencyMode = {
          description = "The concurrency control mode to use for this database.",
          enum = {
            "CONCURRENCY_MODE_UNSPECIFIED",
            "OPTIMISTIC",
            "PESSIMISTIC",
            "OPTIMISTIC_WITH_ENTITY_GROUPS",
          },
          enumDescriptions = {
            "Not used.",
            "Use optimistic concurrency control by default. This mode is available for Cloud Firestore databases.",
            "Use pessimistic concurrency control by default. This mode is available for Cloud Firestore databases. This is the default setting for Cloud Firestore.",
            "Use optimistic concurrency control with entity groups by default. This is the only available mode for Cloud Datastore. This mode is also available for Cloud Firestore with Datastore Mode but is not recommended.",
          },
          type = "string",
        },
        etag = {
          description = "This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          type = "string",
        },
        keyPrefix = {
          description = "Output only. The key_prefix for this database. This key_prefix is used, in combination with the project id (\"~\") to construct the application id that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes. This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).",
          readOnly = true,
          type = "string",
        },
        locationId = {
          description = "The location of the database. Available databases are listed at https://cloud.google.com/firestore/docs/locations.",
          type = "string",
        },
        name = {
          description = "The resource name of the Database. Format: `projects/{project}/databases/{database}`",
          type = "string",
        },
        type = {
          description = "The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.",
          enum = {
            "DATABASE_TYPE_UNSPECIFIED",
            "FIRESTORE_NATIVE",
            "DATASTORE_MODE",
          },
          enumDescriptions = {
            "The default value. This value is used if the database type is omitted.",
            "Firestore Native Mode",
            "Firestore in Datastore Mode.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ExportDocumentsMetadata = {
      description = "Metadata for google.longrunning.Operation results from FirestoreAdmin.ExportDocuments.",
      id = "GoogleFirestoreAdminV1ExportDocumentsMetadata",
      properties = {
        collectionIds = {
          description = "Which collection ids are being exported.",
          items = {
            type = "string",
          },
          type = "array",
        },
        endTime = {
          description = "The time this operation completed. Will be unset if operation still in progress.",
          format = "google-datetime",
          type = "string",
        },
        operationState = {
          description = "The state of the export operation.",
          enum = {
            "OPERATION_STATE_UNSPECIFIED",
            "INITIALIZING",
            "PROCESSING",
            "CANCELLING",
            "FINALIZING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Request is being prepared for processing.",
            "Request is actively being processed.",
            "Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.",
            "Request has been processed and is in its finalization stage.",
            "Request has completed successfully.",
            "Request has finished being processed, but encountered an error.",
            "Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.",
          },
          type = "string",
        },
        outputUriPrefix = {
          description = "Where the entities are being exported to.",
          type = "string",
        },
        progressBytes = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in bytes, of this operation.",
        },
        progressDocuments = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in documents, of this operation.",
        },
        startTime = {
          description = "The time this operation started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ExportDocumentsRequest = {
      description = "The request for FirestoreAdmin.ExportDocuments.",
      id = "GoogleFirestoreAdminV1ExportDocumentsRequest",
      properties = {
        collectionIds = {
          description = "Which collection ids to export. Unspecified means all collections.",
          items = {
            type = "string",
          },
          type = "array",
        },
        namespaceIds = {
          description = "An empty list represents all namespaces. This is the preferred usage for databases that don't use namespaces. An empty string element represents the default namespace. This should be used if the database has data in non-default namespaces, but doesn't want to include them. Each namespace in this list must be unique.",
          items = {
            type = "string",
          },
          type = "array",
        },
        outputUriPrefix = {
          description = "The output URI. Currently only supports Google Cloud Storage URIs of the form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name of the Google Cloud Storage bucket and `NAMESPACE_PATH` is an optional Google Cloud Storage namespace path. When choosing a name, be sure to consider Google Cloud Storage naming guidelines: https://cloud.google.com/storage/docs/naming. If the URI is a bucket (without a namespace path), a prefix will be generated based on the start time.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ExportDocumentsResponse = {
      description = "Returned in the google.longrunning.Operation response field.",
      id = "GoogleFirestoreAdminV1ExportDocumentsResponse",
      properties = {
        outputUriPrefix = {
          description = "Location of the output files. This can be used to begin an import into Cloud Firestore (this project or another project) after the operation completes successfully.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1Field = {
      description = "Represents a single field in the database. Fields are grouped by their \"Collection Group\", which represent all collections in the database with the same id.",
      id = "GoogleFirestoreAdminV1Field",
      properties = {
        indexConfig = {
          ["$ref"] = "GoogleFirestoreAdminV1IndexConfig",
          description = "The index configuration for this field. If unset, field indexing will revert to the configuration defined by the `ancestor_field`. To explicitly remove all indexes for this field, specify an index config with an empty list of indexes.",
        },
        name = {
          description = "Required. A field name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}` A field path may be a simple field name, e.g. `address` or a path to fields within map_value , e.g. `address.city`, or a special field path. The only valid special field is `*`, which represents any field. Field paths may be quoted using ` (backtick). The only character that needs to be escaped within a quoted field path is the backtick character itself, escaped using a backslash. Special characters in field paths that must be quoted include: `*`, `.`, ``` (backtick), `[`, `]`, as well as any ascii symbolic characters. Examples: (Note: Comments here are written in markdown syntax, so there is an additional layer of backticks to represent a code block) `\\`address.city\\`` represents a field named `address.city`, not the map key `city` in the field `address`. `\\`*\\`` represents a field named `*`, not any field. A special `Field` contains the default indexing settings for all fields. This field's resource name is: `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields/*` Indexes defined on this `Field` will be applied to all fields which do not have their own `Field` index configuration.",
          type = "string",
        },
        ttlConfig = {
          ["$ref"] = "GoogleFirestoreAdminV1TtlConfig",
          description = "The TTL configuration for this `Field`. Setting or unsetting this will enable or disable the TTL for documents that have this `Field`.",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1FieldOperationMetadata = {
      description = "Metadata for google.longrunning.Operation results from FirestoreAdmin.UpdateField.",
      id = "GoogleFirestoreAdminV1FieldOperationMetadata",
      properties = {
        endTime = {
          description = "The time this operation completed. Will be unset if operation still in progress.",
          format = "google-datetime",
          type = "string",
        },
        field = {
          description = "The field resource that this operation is acting on. For example: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`",
          type = "string",
        },
        indexConfigDeltas = {
          description = "A list of IndexConfigDelta, which describe the intent of this operation.",
          items = {
            ["$ref"] = "GoogleFirestoreAdminV1IndexConfigDelta",
          },
          type = "array",
        },
        progressBytes = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in bytes, of this operation.",
        },
        progressDocuments = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in documents, of this operation.",
        },
        startTime = {
          description = "The time this operation started.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The state of the operation.",
          enum = {
            "OPERATION_STATE_UNSPECIFIED",
            "INITIALIZING",
            "PROCESSING",
            "CANCELLING",
            "FINALIZING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Request is being prepared for processing.",
            "Request is actively being processed.",
            "Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.",
            "Request has been processed and is in its finalization stage.",
            "Request has completed successfully.",
            "Request has finished being processed, but encountered an error.",
            "Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.",
          },
          type = "string",
        },
        ttlConfigDelta = {
          ["$ref"] = "GoogleFirestoreAdminV1TtlConfigDelta",
          description = "Describes the deltas of TTL configuration.",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ImportDocumentsMetadata = {
      description = "Metadata for google.longrunning.Operation results from FirestoreAdmin.ImportDocuments.",
      id = "GoogleFirestoreAdminV1ImportDocumentsMetadata",
      properties = {
        collectionIds = {
          description = "Which collection ids are being imported.",
          items = {
            type = "string",
          },
          type = "array",
        },
        endTime = {
          description = "The time this operation completed. Will be unset if operation still in progress.",
          format = "google-datetime",
          type = "string",
        },
        inputUriPrefix = {
          description = "The location of the documents being imported.",
          type = "string",
        },
        operationState = {
          description = "The state of the import operation.",
          enum = {
            "OPERATION_STATE_UNSPECIFIED",
            "INITIALIZING",
            "PROCESSING",
            "CANCELLING",
            "FINALIZING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Request is being prepared for processing.",
            "Request is actively being processed.",
            "Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.",
            "Request has been processed and is in its finalization stage.",
            "Request has completed successfully.",
            "Request has finished being processed, but encountered an error.",
            "Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.",
          },
          type = "string",
        },
        progressBytes = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in bytes, of this operation.",
        },
        progressDocuments = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in documents, of this operation.",
        },
        startTime = {
          description = "The time this operation started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ImportDocumentsRequest = {
      description = "The request for FirestoreAdmin.ImportDocuments.",
      id = "GoogleFirestoreAdminV1ImportDocumentsRequest",
      properties = {
        collectionIds = {
          description = "Which collection ids to import. Unspecified means all collections included in the import.",
          items = {
            type = "string",
          },
          type = "array",
        },
        inputUriPrefix = {
          description = "Location of the exported files. This must match the output_uri_prefix of an ExportDocumentsResponse from an export that has completed successfully. See: google.firestore.admin.v1.ExportDocumentsResponse.output_uri_prefix.",
          type = "string",
        },
        namespaceIds = {
          description = "An empty list represents all namespaces. This is the preferred usage for databases that don't use namespaces. An empty string element represents the default namespace. This should be used if the database has data in non-default namespaces, but doesn't want to include them. Each namespace in this list must be unique.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1Index = {
      description = "Cloud Firestore indexes enable simple and complex queries against documents in a database.",
      id = "GoogleFirestoreAdminV1Index",
      properties = {
        apiScope = {
          description = "The API scope supported by this index.",
          enum = {
            "ANY_API",
            "DATASTORE_MODE_API",
          },
          enumDescriptions = {
            "The index can be used by both Firestore Native and Firestore in Datastore Mode query API. This is the default.",
            "The index can only be used by the Firestore in Datastore Mode query API.",
          },
          type = "string",
        },
        fields = {
          description = "The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.",
          items = {
            ["$ref"] = "GoogleFirestoreAdminV1IndexField",
          },
          type = "array",
        },
        name = {
          description = "Output only. A server defined name for this index. The form of this name for composite indexes will be: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}` For single field indexes, this field will be empty.",
          type = "string",
        },
        queryScope = {
          description = "Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.",
          enum = {
            "QUERY_SCOPE_UNSPECIFIED",
            "COLLECTION",
            "COLLECTION_GROUP",
            "COLLECTION_RECURSIVE",
          },
          enumDescriptions = {
            "The query scope is unspecified. Not a valid option.",
            "Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the collection id specified by the index.",
            "Indexes with a collection group query scope specified allow queries against all collections that has the collection id specified by the index.",
            "Include all the collections's ancestor in the index. Only available for Datastore Mode databases.",
          },
          type = "string",
        },
        state = {
          description = "Output only. The serving state of the index.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "NEEDS_REPAIR",
          },
          enumDescriptions = {
            "The state is unspecified.",
            "The index is being created. There is an active long-running operation for the index. The index is updated when writing a document. Some index data may exist.",
            "The index is ready to be used. The index is updated when writing a document. The index is fully populated from all stored documents it applies to.",
            "The index was being created, but something went wrong. There is no active long-running operation for the index, and the most recently finished long-running operation failed. The index is not updated when writing a document. Some index data may exist. Use the google.longrunning.Operations API to determine why the operation that last attempted to create this index failed, then re-create the index.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1IndexConfig = {
      description = "The index configuration for this field.",
      id = "GoogleFirestoreAdminV1IndexConfig",
      properties = {
        ancestorField = {
          description = "Output only. Specifies the resource name of the `Field` from which this field's index configuration is set (when `uses_ancestor_config` is true), or from which it *would* be set if this field had no index configuration (when `uses_ancestor_config` is false).",
          type = "string",
        },
        indexes = {
          description = "The indexes supported for this field.",
          items = {
            ["$ref"] = "GoogleFirestoreAdminV1Index",
          },
          type = "array",
        },
        reverting = {
          description = "Output only When true, the `Field`'s index configuration is in the process of being reverted. Once complete, the index config will transition to the same state as the field specified by `ancestor_field`, at which point `uses_ancestor_config` will be `true` and `reverting` will be `false`.",
          type = "boolean",
        },
        usesAncestorConfig = {
          description = "Output only. When true, the `Field`'s index configuration is set from the configuration specified by the `ancestor_field`. When false, the `Field`'s index configuration is defined explicitly.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1IndexConfigDelta = {
      description = "Information about an index configuration change.",
      id = "GoogleFirestoreAdminV1IndexConfigDelta",
      properties = {
        changeType = {
          description = "Specifies how the index is changing.",
          enum = {
            "CHANGE_TYPE_UNSPECIFIED",
            "ADD",
            "REMOVE",
          },
          enumDescriptions = {
            "The type of change is not specified or known.",
            "The single field index is being added.",
            "The single field index is being removed.",
          },
          type = "string",
        },
        index = {
          ["$ref"] = "GoogleFirestoreAdminV1Index",
          description = "The index being changed.",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1IndexField = {
      description = "A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.",
      id = "GoogleFirestoreAdminV1IndexField",
      properties = {
        arrayConfig = {
          description = "Indicates that this field supports operations on `array_value`s.",
          enum = {
            "ARRAY_CONFIG_UNSPECIFIED",
            "CONTAINS",
          },
          enumDescriptions = {
            "The index does not support additional array queries.",
            "The index supports array containment queries.",
          },
          type = "string",
        },
        fieldPath = {
          description = "Can be __name__. For single field indexes, this must match the name of the field or may be omitted.",
          type = "string",
        },
        order = {
          description = "Indicates that this field supports ordering by the specified order or comparing using =, !=, <, <=, >, >=.",
          enum = {
            "ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "The ordering is unspecified. Not a valid option.",
            "The field is ordered by ascending field value.",
            "The field is ordered by descending field value.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1IndexOperationMetadata = {
      description = "Metadata for google.longrunning.Operation results from FirestoreAdmin.CreateIndex.",
      id = "GoogleFirestoreAdminV1IndexOperationMetadata",
      properties = {
        endTime = {
          description = "The time this operation completed. Will be unset if operation still in progress.",
          format = "google-datetime",
          type = "string",
        },
        index = {
          description = "The index resource that this operation is acting on. For example: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`",
          type = "string",
        },
        progressBytes = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in bytes, of this operation.",
        },
        progressDocuments = {
          ["$ref"] = "GoogleFirestoreAdminV1Progress",
          description = "The progress, in documents, of this operation.",
        },
        startTime = {
          description = "The time this operation started.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The state of the operation.",
          enum = {
            "OPERATION_STATE_UNSPECIFIED",
            "INITIALIZING",
            "PROCESSING",
            "CANCELLING",
            "FINALIZING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Request is being prepared for processing.",
            "Request is actively being processed.",
            "Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.",
            "Request has been processed and is in its finalization stage.",
            "Request has completed successfully.",
            "Request has finished being processed, but encountered an error.",
            "Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ListDatabasesResponse = {
      description = "The list of databases for a project.",
      id = "GoogleFirestoreAdminV1ListDatabasesResponse",
      properties = {
        databases = {
          description = "The databases in the project.",
          items = {
            ["$ref"] = "GoogleFirestoreAdminV1Database",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ListFieldsResponse = {
      description = "The response for FirestoreAdmin.ListFields.",
      id = "GoogleFirestoreAdminV1ListFieldsResponse",
      properties = {
        fields = {
          description = "The requested fields.",
          items = {
            ["$ref"] = "GoogleFirestoreAdminV1Field",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A page token that may be used to request another page of results. If blank, this is the last page.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1ListIndexesResponse = {
      description = "The response for FirestoreAdmin.ListIndexes.",
      id = "GoogleFirestoreAdminV1ListIndexesResponse",
      properties = {
        indexes = {
          description = "The requested indexes.",
          items = {
            ["$ref"] = "GoogleFirestoreAdminV1Index",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A page token that may be used to request another page of results. If blank, this is the last page.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1LocationMetadata = {
      description = "The metadata message for google.cloud.location.Location.metadata.",
      id = "GoogleFirestoreAdminV1LocationMetadata",
      properties = {},
      type = "object",
    },
    GoogleFirestoreAdminV1Progress = {
      description = "Describes the progress of the operation. Unit of work is generic and must be interpreted based on where Progress is used.",
      id = "GoogleFirestoreAdminV1Progress",
      properties = {
        completedWork = {
          description = "The amount of work completed.",
          format = "int64",
          type = "string",
        },
        estimatedWork = {
          description = "The amount of work estimated.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1TtlConfig = {
      description = "The TTL (time-to-live) configuration for documents that have this `Field` set. Storing a timestamp value into a TTL-enabled field will be treated as the document's absolute expiration time. Timestamp values in the past indicate that the document is eligible for immediate expiration. Using any other data type or leaving the field absent will disable expiration for the individual document.",
      id = "GoogleFirestoreAdminV1TtlConfig",
      properties = {
        state = {
          description = "Output only. The state of the TTL configuration.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "NEEDS_REPAIR",
          },
          enumDescriptions = {
            "The state is unspecified or unknown.",
            "The TTL is being applied. There is an active long-running operation to track the change. Newly written documents will have TTLs applied as requested. Requested TTLs on existing documents are still being processed. When TTLs on all existing documents have been processed, the state will move to 'ACTIVE'.",
            "The TTL is active for all documents.",
            "The TTL configuration could not be enabled for all existing documents. Newly written documents will continue to have their TTL applied. The LRO returned when last attempting to enable TTL for this `Field` has failed, and may have more details.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1TtlConfigDelta = {
      description = "Information about an TTL configuration change.",
      id = "GoogleFirestoreAdminV1TtlConfigDelta",
      properties = {
        changeType = {
          description = "Specifies how the TTL configuration is changing.",
          enum = {
            "CHANGE_TYPE_UNSPECIFIED",
            "ADD",
            "REMOVE",
          },
          enumDescriptions = {
            "The type of change is not specified or known.",
            "The TTL config is being added.",
            "The TTL config is being removed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleFirestoreAdminV1UpdateDatabaseMetadata = {
      description = "Metadata related to the update database operation.",
      id = "GoogleFirestoreAdminV1UpdateDatabaseMetadata",
      properties = {},
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
    LatLng = {
      description = "An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.",
      id = "LatLng",
      properties = {
        latitude = {
          description = "The latitude in degrees. It must be in the range [-90.0, +90.0].",
          format = "double",
          type = "number",
        },
        longitude = {
          description = "The longitude in degrees. It must be in the range [-180.0, +180.0].",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ListCollectionIdsRequest = {
      description = "The request for Firestore.ListCollectionIds.",
      id = "ListCollectionIdsRequest",
      properties = {
        pageSize = {
          description = "The maximum number of results to return.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "A page token. Must be a value from ListCollectionIdsResponse.",
          type = "string",
        },
        readTime = {
          description = "Reads documents as they were at the given time. This may not be older than 270 seconds.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ListCollectionIdsResponse = {
      description = "The response from Firestore.ListCollectionIds.",
      id = "ListCollectionIdsResponse",
      properties = {
        collectionIds = {
          description = "The collection ids.",
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A page token that may be used to continue the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDocumentsResponse = {
      description = "The response for Firestore.ListDocuments.",
      id = "ListDocumentsResponse",
      properties = {
        documents = {
          description = "The Documents found.",
          items = {
            ["$ref"] = "Document",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of documents. If this field is omitted, there are no subsequent pages.",
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
    ListenRequest = {
      description = "A request for Firestore.Listen",
      id = "ListenRequest",
      properties = {
        addTarget = {
          ["$ref"] = "Target",
          description = "A target to add to this stream.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels associated with this target change.",
          type = "object",
        },
        removeTarget = {
          description = "The ID of a target to remove from this stream.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListenResponse = {
      description = "The response for Firestore.Listen.",
      id = "ListenResponse",
      properties = {
        documentChange = {
          ["$ref"] = "DocumentChange",
          description = "A Document has changed.",
        },
        documentDelete = {
          ["$ref"] = "DocumentDelete",
          description = "A Document has been deleted.",
        },
        documentRemove = {
          ["$ref"] = "DocumentRemove",
          description = "A Document has been removed from a target (because it is no longer relevant to that target).",
        },
        filter = {
          ["$ref"] = "ExistenceFilter",
          description = "A filter to apply to the set of documents previously returned for the given target. Returned when documents may have been removed from the given target, but the exact documents are unknown.",
        },
        targetChange = {
          ["$ref"] = "TargetChange",
          description = "Targets have changed.",
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
    MapValue = {
      description = "A map value.",
      id = "MapValue",
      properties = {
        fields = {
          additionalProperties = {
            ["$ref"] = "Value",
          },
          description = "The map's fields. The map keys represent field names. Field names matching the regular expression `__.*__` are reserved. Reserved field names are forbidden except in certain documented contexts. The map keys, represented as UTF-8, must not exceed 1,500 bytes and cannot be empty.",
          type = "object",
        },
      },
      type = "object",
    },
    Order = {
      description = "An order on a field.",
      id = "Order",
      properties = {
        direction = {
          description = "The direction to order by. Defaults to `ASCENDING`.",
          enum = {
            "DIRECTION_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Unspecified.",
            "Ascending.",
            "Descending.",
          },
          type = "string",
        },
        field = {
          ["$ref"] = "FieldReference",
          description = "The field to order by.",
        },
      },
      type = "object",
    },
    PartitionQueryRequest = {
      description = "The request for Firestore.PartitionQuery.",
      id = "PartitionQueryRequest",
      properties = {
        pageSize = {
          description = "The maximum number of partitions to return in this call, subject to `partition_count`. For example, if `partition_count` = 10 and `page_size` = 8, the first call to PartitionQuery will return up to 8 partitions and a `next_page_token` if more results exist. A second call to PartitionQuery will return up to 2 partitions, to complete the total of 10 specified in `partition_count`.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "The `next_page_token` value returned from a previous call to PartitionQuery that may be used to get an additional set of results. There are no ordering guarantees between sets of results. Thus, using multiple sets of results will require merging the different result sets. For example, two subsequent calls using a page_token may return: * cursor B, cursor M, cursor Q * cursor A, cursor U, cursor W To obtain a complete result set ordered with respect to the results of the query supplied to PartitionQuery, the results sets should be merged: cursor A, cursor B, cursor M, cursor Q, cursor U, cursor W",
          type = "string",
        },
        partitionCount = {
          description = "The desired maximum number of partition points. The partitions may be returned across multiple pages of results. The number must be positive. The actual number of partitions returned may be fewer. For example, this may be set to one fewer than the number of parallel queries to be run, or in running a data pipeline job, one fewer than the number of workers or compute instances available.",
          format = "int64",
          type = "string",
        },
        readTime = {
          description = "Reads documents as they were at the given time. This may not be older than 270 seconds.",
          format = "google-datetime",
          type = "string",
        },
        structuredQuery = {
          ["$ref"] = "StructuredQuery",
          description = "A structured query. Query must specify collection with all descendants and be ordered by name ascending. Other filters, order bys, limits, offsets, and start/end cursors are not supported.",
        },
      },
      type = "object",
    },
    PartitionQueryResponse = {
      description = "The response for Firestore.PartitionQuery.",
      id = "PartitionQueryResponse",
      properties = {
        nextPageToken = {
          description = "A page token that may be used to request an additional set of results, up to the number specified by `partition_count` in the PartitionQuery request. If blank, there are no more results.",
          type = "string",
        },
        partitions = {
          description = "Partition results. Each partition is a split point that can be used by RunQuery as a starting or end point for the query results. The RunQuery requests must be made with the same query supplied to this PartitionQuery request. The partition cursors will be ordered according to same ordering as the results of the query supplied to PartitionQuery. For example, if a PartitionQuery request returns partition cursors A and B, running the following three queries will return the entire result set of the original query: * query, end_at A * query, start_at A, end_at B * query, start_at B An empty result may indicate that the query has too few results to be partitioned.",
          items = {
            ["$ref"] = "Cursor",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Precondition = {
      description = "A precondition on a document, used for conditional operations.",
      id = "Precondition",
      properties = {
        exists = {
          description = "When set to `true`, the target document must exist. When set to `false`, the target document must not exist.",
          type = "boolean",
        },
        updateTime = {
          description = "When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Projection = {
      description = "The projection of document's fields to return.",
      id = "Projection",
      properties = {
        fields = {
          description = "The fields to return. If empty, all fields are returned. To only return the name of the document, use `['__name__']`.",
          items = {
            ["$ref"] = "FieldReference",
          },
          type = "array",
        },
      },
      type = "object",
    },
    QueryTarget = {
      description = "A target specified by a query.",
      id = "QueryTarget",
      properties = {
        parent = {
          description = "The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `projects/{project_id}/databases/{database_id}/documents/{document_path}`. For example: `projects/my-project/databases/my-database/documents` or `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`",
          type = "string",
        },
        structuredQuery = {
          ["$ref"] = "StructuredQuery",
          description = "A structured query.",
        },
      },
      type = "object",
    },
    ReadOnly = {
      description = "Options for a transaction that can only be used to read documents.",
      id = "ReadOnly",
      properties = {
        readTime = {
          description = "Reads documents at the given time. This may not be older than 60 seconds.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ReadWrite = {
      description = "Options for a transaction that can be used to read and write documents.",
      id = "ReadWrite",
      properties = {
        retryTransaction = {
          description = "An optional transaction to retry.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    RollbackRequest = {
      description = "The request for Firestore.Rollback.",
      id = "RollbackRequest",
      properties = {
        transaction = {
          description = "Required. The transaction to roll back.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    RunAggregationQueryRequest = {
      description = "The request for Firestore.RunAggregationQuery.",
      id = "RunAggregationQueryRequest",
      properties = {
        newTransaction = {
          ["$ref"] = "TransactionOptions",
          description = "Starts a new transaction as part of the query, defaulting to read-only. The new transaction ID will be returned as the first response in the stream.",
        },
        readTime = {
          description = "Executes the query at the given timestamp. Requires: * Cannot be more than 270 seconds in the past.",
          format = "google-datetime",
          type = "string",
        },
        structuredAggregationQuery = {
          ["$ref"] = "StructuredAggregationQuery",
          description = "An aggregation query.",
        },
        transaction = {
          description = "Run the aggregation within an already active transaction. The value here is the opaque transaction ID to execute the query in.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    RunAggregationQueryResponse = {
      description = "The response for Firestore.RunAggregationQuery.",
      id = "RunAggregationQueryResponse",
      properties = {
        readTime = {
          description = "The time at which the aggregate value is valid for.",
          format = "google-datetime",
          type = "string",
        },
        result = {
          ["$ref"] = "AggregationResult",
          description = "A single aggregation result. Not present when reporting partial progress.",
        },
        transaction = {
          description = "The transaction that was started as part of this request. Only present on the first response when the request requested to start a new transaction.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    RunQueryRequest = {
      description = "The request for Firestore.RunQuery.",
      id = "RunQueryRequest",
      properties = {
        newTransaction = {
          ["$ref"] = "TransactionOptions",
          description = "Starts a new transaction and reads the documents. Defaults to a read-only transaction. The new transaction ID will be returned as the first response in the stream.",
        },
        readTime = {
          description = "Reads documents as they were at the given time. This may not be older than 270 seconds.",
          format = "google-datetime",
          type = "string",
        },
        structuredQuery = {
          ["$ref"] = "StructuredQuery",
          description = "A structured query.",
        },
        transaction = {
          description = "Run the query within an already active transaction. The value here is the opaque transaction ID to execute the query in.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    RunQueryResponse = {
      description = "The response for Firestore.RunQuery.",
      id = "RunQueryResponse",
      properties = {
        document = {
          ["$ref"] = "Document",
          description = "A query result, not set when reporting partial progress.",
        },
        done = {
          description = "If present, Firestore has completely finished the request and no more documents will be returned.",
          type = "boolean",
        },
        readTime = {
          description = "The time at which the document was read. This may be monotonically increasing; in this case, the previous documents in the result stream are guaranteed not to have changed between their `read_time` and this one. If the query returns no results, a response with `read_time` and no `document` will be sent, and this represents the time at which the query was run.",
          format = "google-datetime",
          type = "string",
        },
        skippedResults = {
          description = "The number of results that have been skipped due to an offset between the last response and the current response.",
          format = "int32",
          type = "integer",
        },
        transaction = {
          description = "The transaction that was started as part of this request. Can only be set in the first response, and only if RunQueryRequest.new_transaction was set in the request. If set, no other fields will be set in this response.",
          format = "byte",
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
    StructuredAggregationQuery = {
      description = "Firestore query for running an aggregation over a StructuredQuery.",
      id = "StructuredAggregationQuery",
      properties = {
        aggregations = {
          description = "Optional. Series of aggregations to apply over the results of the `structured_query`. Requires: * A minimum of one and maximum of five aggregations per query.",
          items = {
            ["$ref"] = "Aggregation",
          },
          type = "array",
        },
        structuredQuery = {
          ["$ref"] = "StructuredQuery",
          description = "Nested structured query.",
        },
      },
      type = "object",
    },
    StructuredQuery = {
      description = "A Firestore query.",
      id = "StructuredQuery",
      properties = {
        endAt = {
          ["$ref"] = "Cursor",
          description = "A potential prefix of a position in the result set to end the query at. This is similar to `START_AT` but with it controlling the end position rather than the start position. Requires: * The number of values cannot be greater than the number of fields specified in the `ORDER BY` clause.",
        },
        from = {
          description = "The collections to query.",
          items = {
            ["$ref"] = "CollectionSelector",
          },
          type = "array",
        },
        limit = {
          description = "The maximum number of results to return. Applies after all other constraints. Requires: * The value must be greater than or equal to zero if specified.",
          format = "int32",
          type = "integer",
        },
        offset = {
          description = "The number of documents to skip before returning the first result. This applies after the constraints specified by the `WHERE`, `START AT`, & `END AT` but before the `LIMIT` clause. Requires: * The value must be greater than or equal to zero if specified.",
          format = "int32",
          type = "integer",
        },
        orderBy = {
          description = "The order to apply to the query results. Firestore allows callers to provide a full ordering, a partial ordering, or no ordering at all. In all cases, Firestore guarantees a stable ordering through the following rules: * The `order_by` is required to reference all fields used with an inequality filter. * All fields that are required to be in the `order_by` but are not already present are appended in lexicographical ordering of the field name. * If an order on `__name__` is not specified, it is appended by default. Fields are appended with the same sort direction as the last order specified, or 'ASCENDING' if no order was specified. For example: * `ORDER BY a` becomes `ORDER BY a ASC, __name__ ASC` * `ORDER BY a DESC` becomes `ORDER BY a DESC, __name__ DESC` * `WHERE a > 1` becomes `WHERE a > 1 ORDER BY a ASC, __name__ ASC` * `WHERE __name__ > ... AND a > 1` becomes `WHERE __name__ > ... AND a > 1 ORDER BY a ASC, __name__ ASC`",
          items = {
            ["$ref"] = "Order",
          },
          type = "array",
        },
        select = {
          ["$ref"] = "Projection",
          description = "The projection to return.",
        },
        startAt = {
          ["$ref"] = "Cursor",
          description = "A potential prefix of a position in the result set to start the query at. The ordering of the result set is based on the `ORDER BY` clause of the original query. ``` SELECT * FROM k WHERE a = 1 AND b > 2 ORDER BY b ASC, __name__ ASC; ``` This query's results are ordered by `(b ASC, __name__ ASC)`. Cursors can reference either the full ordering or a prefix of the location, though it cannot reference more fields than what are in the provided `ORDER BY`. Continuing off the example above, attaching the following start cursors will have varying impact: - `START BEFORE (2, /k/123)`: start the query right before `a = 1 AND b > 2 AND __name__ > /k/123`. - `START AFTER (10)`: start the query right after `a = 1 AND b > 10`. Unlike `OFFSET` which requires scanning over the first N results to skip, a start cursor allows the query to begin at a logical position. This position is not required to match an actual result, it will scan forward from this position to find the next document. Requires: * The number of values cannot be greater than the number of fields specified in the `ORDER BY` clause.",
        },
        where = {
          ["$ref"] = "Filter",
          description = "The filter to apply.",
        },
      },
      type = "object",
    },
    Target = {
      description = "A specification of a set of documents to listen to.",
      id = "Target",
      properties = {
        documents = {
          ["$ref"] = "DocumentsTarget",
          description = "A target specified by a set of document names.",
        },
        once = {
          description = "If the target should be removed once it is current and consistent.",
          type = "boolean",
        },
        query = {
          ["$ref"] = "QueryTarget",
          description = "A target specified by a query.",
        },
        readTime = {
          description = "Start listening after a specific `read_time`. The client must know the state of matching documents at this time.",
          format = "google-datetime",
          type = "string",
        },
        resumeToken = {
          description = "A resume token from a prior TargetChange for an identical target. Using a resume token with a different target is unsupported and may fail.",
          format = "byte",
          type = "string",
        },
        targetId = {
          description = "The target ID that identifies the target on the stream. Must be a positive number and non-zero.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TargetChange = {
      description = "Targets being watched have changed.",
      id = "TargetChange",
      properties = {
        cause = {
          ["$ref"] = "Status",
          description = "The error that resulted in this change, if applicable.",
        },
        readTime = {
          description = "The consistent `read_time` for the given `target_ids` (omitted when the target_ids are not at a consistent snapshot). The stream is guaranteed to send a `read_time` with `target_ids` empty whenever the entire stream reaches a new consistent snapshot. ADD, CURRENT, and RESET messages are guaranteed to (eventually) result in a new consistent snapshot (while NO_CHANGE and REMOVE messages are not). For a given stream, `read_time` is guaranteed to be monotonically increasing.",
          format = "google-datetime",
          type = "string",
        },
        resumeToken = {
          description = "A token that can be used to resume the stream for the given `target_ids`, or all targets if `target_ids` is empty. Not set on every target change.",
          format = "byte",
          type = "string",
        },
        targetChangeType = {
          description = "The type of change that occurred.",
          enum = {
            "NO_CHANGE",
            "ADD",
            "REMOVE",
            "CURRENT",
            "RESET",
          },
          enumDescriptions = {
            "No change has occurred. Used only to send an updated `resume_token`.",
            "The targets have been added.",
            "The targets have been removed.",
            "The targets reflect all changes committed before the targets were added to the stream. This will be sent after or with a `read_time` that is greater than or equal to the time at which the targets were added. Listeners can wait for this change if read-after-write semantics are desired.",
            "The targets have been reset, and a new initial state for the targets will be returned in subsequent changes. After the initial state is complete, `CURRENT` will be returned even if the target was previously indicated to be `CURRENT`.",
          },
          type = "string",
        },
        targetIds = {
          description = "The target IDs of targets that have changed. If empty, the change applies to all targets. The order of the target IDs is not defined.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TransactionOptions = {
      description = "Options for creating a new transaction.",
      id = "TransactionOptions",
      properties = {
        readOnly = {
          ["$ref"] = "ReadOnly",
          description = "The transaction can only be used for read operations.",
        },
        readWrite = {
          ["$ref"] = "ReadWrite",
          description = "The transaction can be used for both read and write operations.",
        },
      },
      type = "object",
    },
    UnaryFilter = {
      description = "A filter with a single operand.",
      id = "UnaryFilter",
      properties = {
        field = {
          ["$ref"] = "FieldReference",
          description = "The field to which to apply the operator.",
        },
        op = {
          description = "The unary operator to apply.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "IS_NAN",
            "IS_NULL",
            "IS_NOT_NAN",
            "IS_NOT_NULL",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "The given `field` is equal to `NaN`.",
            "The given `field` is equal to `NULL`.",
            "The given `field` is not equal to `NaN`. Requires: * No other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That `field` comes first in the `order_by`.",
            "The given `field` is not equal to `NULL`. Requires: * A single `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That `field` comes first in the `order_by`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Value = {
      description = "A message that can hold any of the supported value types.",
      id = "Value",
      properties = {
        arrayValue = {
          ["$ref"] = "ArrayValue",
          description = "An array value. Cannot directly contain another array value, though can contain an map which contains another array.",
        },
        booleanValue = {
          description = "A boolean value.",
          type = "boolean",
        },
        bytesValue = {
          description = "A bytes value. Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are considered by queries.",
          format = "byte",
          type = "string",
        },
        doubleValue = {
          description = "A double value.",
          format = "double",
          type = "number",
        },
        geoPointValue = {
          ["$ref"] = "LatLng",
          description = "A geo point value representing a point on the surface of Earth.",
        },
        integerValue = {
          description = "An integer value.",
          format = "int64",
          type = "string",
        },
        mapValue = {
          ["$ref"] = "MapValue",
          description = "A map value.",
        },
        nullValue = {
          description = "A null value.",
          enum = {
            "NULL_VALUE",
          },
          enumDescriptions = {
            "Null value.",
          },
          type = "string",
        },
        referenceValue = {
          description = "A reference to a document. For example: `projects/{project_id}/databases/{database_id}/documents/{document_path}`.",
          type = "string",
        },
        stringValue = {
          description = "A string value. The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes of the UTF-8 representation are considered by queries.",
          type = "string",
        },
        timestampValue = {
          description = "A timestamp value. Precise only to microseconds. When stored, any additional precision is rounded down.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Write = {
      description = "A write on a document.",
      id = "Write",
      properties = {
        currentDocument = {
          ["$ref"] = "Precondition",
          description = "An optional precondition on the document. The write will fail if this is set and not met by the target document.",
        },
        delete = {
          description = "A document name to delete. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path}`.",
          type = "string",
        },
        transform = {
          ["$ref"] = "DocumentTransform",
          description = "Applies a transformation to a document.",
        },
        update = {
          ["$ref"] = "Document",
          description = "A document to write.",
        },
        updateMask = {
          ["$ref"] = "DocumentMask",
          description = "The fields to update in this write. This field can be set only when the operation is `update`. If the mask is not set for an `update` and the document exists, any existing data will be overwritten. If the mask is set and the document on the server has fields not covered by the mask, they are left unchanged. Fields referenced in the mask, but not present in the input document, are deleted from the document on the server. The field paths in this mask must not contain a reserved field name.",
        },
        updateTransforms = {
          description = "The transforms to perform after update. This field can be set only when the operation is `update`. If present, this write is equivalent to performing `update` and `transform` to the same document atomically and in order.",
          items = {
            ["$ref"] = "FieldTransform",
          },
          type = "array",
        },
      },
      type = "object",
    },
    WriteRequest = {
      description = "The request for Firestore.Write. The first request creates a stream, or resumes an existing one from a token. When creating a new stream, the server replies with a response containing only an ID and a token, to use in the next request. When resuming a stream, the server first streams any responses later than the given token, then a response containing only an up-to-date token, to use in the next request.",
      id = "WriteRequest",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels associated with this write request.",
          type = "object",
        },
        streamId = {
          description = "The ID of the write stream to resume. This may only be set in the first message. When left empty, a new write stream will be created.",
          type = "string",
        },
        streamToken = {
          description = "A stream token that was previously sent by the server. The client should set this field to the token from the most recent WriteResponse it has received. This acknowledges that the client has received responses up to this token. After sending this token, earlier tokens may not be used anymore. The server may close the stream if there are too many unacknowledged responses. Leave this field unset when creating a new stream. To resume a stream at a specific point, set this field and the `stream_id` field. Leave this field unset when creating a new stream.",
          format = "byte",
          type = "string",
        },
        writes = {
          description = "The writes to apply. Always executed atomically and in order. This must be empty on the first request. This may be empty on the last request. This must not be empty on all other requests.",
          items = {
            ["$ref"] = "Write",
          },
          type = "array",
        },
      },
      type = "object",
    },
    WriteResponse = {
      description = "The response for Firestore.Write.",
      id = "WriteResponse",
      properties = {
        commitTime = {
          description = "The time at which the commit occurred. Any read with an equal or greater `read_time` is guaranteed to see the effects of the write.",
          format = "google-datetime",
          type = "string",
        },
        streamId = {
          description = "The ID of the stream. Only set on the first message, when a new stream was created.",
          type = "string",
        },
        streamToken = {
          description = "A token that represents the position of this response in the stream. This can be used by a client to resume the stream at this point. This field is always set.",
          format = "byte",
          type = "string",
        },
        writeResults = {
          description = "The result of applying the writes. This i-th write result corresponds to the i-th write in the request.",
          items = {
            ["$ref"] = "WriteResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    WriteResult = {
      description = "The result of applying a write.",
      id = "WriteResult",
      properties = {
        transformResults = {
          description = "The results of applying each DocumentTransform.FieldTransform, in the same order.",
          items = {
            ["$ref"] = "Value",
          },
          type = "array",
        },
        updateTime = {
          description = "The last update time of the document after applying the write. Not set after a `delete`. If the write did not actually change the document, this will be the previous update_time.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Firestore API",
  version = "v1",
  version_module = true,
}
