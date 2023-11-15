return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/pubsub"] = {
          description = "View and manage Pub/Sub topics and subscriptions",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://pubsub.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Pubsub",
  description = "Provides reliable, many-to-many, asynchronous messaging between applications. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/pubsub/docs",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "pubsub:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://pubsub.mtls.googleapis.com/",
  name = "pubsub",
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
        schemas = {
          methods = {
            create = {
              description = "Creates a schema.",
              flatPath = "v1/projects/{projectsId}/schemas",
              httpMethod = "POST",
              id = "pubsub.projects.schemas.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in which to create the schema. Format is `projects/{project-id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                schemaId = {
                  description = "The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/admin#resource_names for resource name constraints.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/schemas",
              request = {
                ["$ref"] = "Schema",
              },
              response = {
                ["$ref"] = "Schema",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            delete = {
              description = "Deletes a schema.",
              flatPath = "v1/projects/{projectsId}/schemas/{schemasId}",
              httpMethod = "DELETE",
              id = "pubsub.projects.schemas.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the schema to delete. Format is `projects/{project}/schemas/{schema}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/schemas/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            get = {
              description = "Gets a schema.",
              flatPath = "v1/projects/{projectsId}/schemas/{schemasId}",
              httpMethod = "GET",
              id = "pubsub.projects.schemas.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the schema to get. Format is `projects/{project}/schemas/{schema}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/schemas/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The set of fields to return in the response. If not set, returns a Schema with all fields filled out. Set to `BASIC` to omit the `definition`.",
                  enum = {
                    "SCHEMA_VIEW_UNSPECIFIED",
                    "BASIC",
                    "FULL",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the BASIC view.",
                    "Include the name and type of the schema, but not the definition.",
                    "Include all Schema object fields.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Schema",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/schemas/{schemasId}:getIamPolicy",
              httpMethod = "GET",
              id = "pubsub.projects.schemas.getIamPolicy",
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
                  pattern = "^projects/[^/]+/schemas/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            list = {
              description = "Lists schemas in a project.",
              flatPath = "v1/projects/{projectsId}/schemas",
              httpMethod = "GET",
              id = "pubsub.projects.schemas.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Maximum number of schemas to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListSchemasResponse`; indicates that this is a continuation of a prior `ListSchemas` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project in which to list schemas. Format is `projects/{project-id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The set of Schema fields to return in the response. If not set, returns Schemas with `name` and `type`, but not `definition`. Set to `FULL` to retrieve all fields.",
                  enum = {
                    "SCHEMA_VIEW_UNSPECIFIED",
                    "BASIC",
                    "FULL",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the BASIC view.",
                    "Include the name and type of the schema, but not the definition.",
                    "Include all Schema object fields.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/schemas",
              response = {
                ["$ref"] = "ListSchemasResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
              flatPath = "v1/projects/{projectsId}/schemas/{schemasId}:setIamPolicy",
              httpMethod = "POST",
              id = "pubsub.projects.schemas.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/schemas/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
              flatPath = "v1/projects/{projectsId}/schemas/{schemasId}:testIamPermissions",
              httpMethod = "POST",
              id = "pubsub.projects.schemas.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/schemas/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            validate = {
              description = "Validates a schema.",
              flatPath = "v1/projects/{projectsId}/schemas:validate",
              httpMethod = "POST",
              id = "pubsub.projects.schemas.validate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in which to validate schemas. Format is `projects/{project-id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/schemas:validate",
              request = {
                ["$ref"] = "ValidateSchemaRequest",
              },
              response = {
                ["$ref"] = "ValidateSchemaResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            validateMessage = {
              description = "Validates a message against a schema.",
              flatPath = "v1/projects/{projectsId}/schemas:validateMessage",
              httpMethod = "POST",
              id = "pubsub.projects.schemas.validateMessage",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in which to validate schemas. Format is `projects/{project-id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/schemas:validateMessage",
              request = {
                ["$ref"] = "ValidateMessageRequest",
              },
              response = {
                ["$ref"] = "ValidateMessageResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
          },
        },
        snapshots = {
          methods = {
            create = {
              description = "Creates a snapshot from the requested subscription. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. If the snapshot already exists, returns `ALREADY_EXISTS`. If the requested subscription doesn't exist, returns `NOT_FOUND`. If the backlog in the subscription is too old -- and the resulting snapshot would expire in less than 1 hour -- then `FAILED_PRECONDITION` is returned. See also the `Snapshot.expire_time` field. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription, conforming to the [resource name format] (https://cloud.google.com/pubsub/docs/admin#resource_names). The generated name is populated in the returned Snapshot object. Note that for REST API requests, you must specify a name in the request.",
              flatPath = "v1/projects/{projectsId}/snapshots/{snapshotsId}",
              httpMethod = "PUT",
              id = "pubsub.projects.snapshots.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. User-provided name for this snapshot. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription. Note that for REST API requests, you must specify a name. See the [resource name rules](https://cloud.google.com/pubsub/docs/admin#resource_names). Format is `projects/{project}/snapshots/{snap}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/snapshots/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "CreateSnapshotRequest",
              },
              response = {
                ["$ref"] = "Snapshot",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            delete = {
              description = "Removes an existing snapshot. Snapshots are used in [Seek] (https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. When the snapshot is deleted, all messages retained in the snapshot are immediately dropped. After a snapshot is deleted, a new one may be created with the same name, but the new one has no association with the old snapshot or its subscription, unless the same subscription is specified.",
              flatPath = "v1/projects/{projectsId}/snapshots/{snapshotsId}",
              httpMethod = "DELETE",
              id = "pubsub.projects.snapshots.delete",
              parameterOrder = {
                "snapshot",
              },
              parameters = {
                snapshot = {
                  description = "Required. The name of the snapshot to delete. Format is `projects/{project}/snapshots/{snap}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/snapshots/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+snapshot}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            get = {
              description = "Gets the configuration details of a snapshot. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.",
              flatPath = "v1/projects/{projectsId}/snapshots/{snapshotsId}",
              httpMethod = "GET",
              id = "pubsub.projects.snapshots.get",
              parameterOrder = {
                "snapshot",
              },
              parameters = {
                snapshot = {
                  description = "Required. The name of the snapshot to get. Format is `projects/{project}/snapshots/{snap}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/snapshots/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+snapshot}",
              response = {
                ["$ref"] = "Snapshot",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/snapshots/{snapshotsId}:getIamPolicy",
              httpMethod = "GET",
              id = "pubsub.projects.snapshots.getIamPolicy",
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
                  pattern = "^projects/[^/]+/snapshots/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            list = {
              description = "Lists the existing snapshots. Snapshots are used in [Seek]( https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.",
              flatPath = "v1/projects/{projectsId}/snapshots",
              httpMethod = "GET",
              id = "pubsub.projects.snapshots.list",
              parameterOrder = {
                "project",
              },
              parameters = {
                pageSize = {
                  description = "Maximum number of snapshots to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListSnapshotsResponse`; indicates that this is a continuation of a prior `ListSnapshots` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                project = {
                  description = "Required. The name of the project in which to list snapshots. Format is `projects/{project-id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+project}/snapshots",
              response = {
                ["$ref"] = "ListSnapshotsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            patch = {
              description = "Updates an existing snapshot. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.",
              flatPath = "v1/projects/{projectsId}/snapshots/{snapshotsId}",
              httpMethod = "PATCH",
              id = "pubsub.projects.snapshots.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the snapshot.",
                  location = "path",
                  pattern = "^projects/[^/]+/snapshots/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UpdateSnapshotRequest",
              },
              response = {
                ["$ref"] = "Snapshot",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
              flatPath = "v1/projects/{projectsId}/snapshots/{snapshotsId}:setIamPolicy",
              httpMethod = "POST",
              id = "pubsub.projects.snapshots.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/snapshots/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
              flatPath = "v1/projects/{projectsId}/snapshots/{snapshotsId}:testIamPermissions",
              httpMethod = "POST",
              id = "pubsub.projects.snapshots.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/snapshots/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
          },
        },
        subscriptions = {
          methods = {
            acknowledge = {
              description = "Acknowledges the messages associated with the `ack_ids` in the `AcknowledgeRequest`. The Pub/Sub system can remove the relevant messages from the subscription. Acknowledging a message whose ack deadline has expired may succeed, but such a message may be redelivered later. Acknowledging a message more than once will not result in an error.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:acknowledge",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.acknowledge",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The subscription whose message is being acknowledged. Format is `projects/{project}/subscriptions/{sub}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}:acknowledge",
              request = {
                ["$ref"] = "AcknowledgeRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            create = {
              description = "Creates a subscription to a given topic. See the [resource name rules] (https://cloud.google.com/pubsub/docs/admin#resource_names). If the subscription already exists, returns `ALREADY_EXISTS`. If the corresponding topic doesn't exist, returns `NOT_FOUND`. If the name is not provided in the request, the server will assign a random name for this subscription on the same project as the topic, conforming to the [resource name format] (https://cloud.google.com/pubsub/docs/admin#resource_names). The generated name is populated in the returned Subscription object. Note that for REST API requests, you must specify a name in the request.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}",
              httpMethod = "PUT",
              id = "pubsub.projects.subscriptions.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the subscription. It must have the format `\"projects/{project}/subscriptions/{subscription}\"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `\"goog\"`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Subscription",
              },
              response = {
                ["$ref"] = "Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            delete = {
              description = "Deletes an existing subscription. All messages retained in the subscription are immediately dropped. Calls to `Pull` after deletion will return `NOT_FOUND`. After a subscription is deleted, a new one may be created with the same name, but the new one has no association with the old subscription or its topic unless the same topic is specified.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}",
              httpMethod = "DELETE",
              id = "pubsub.projects.subscriptions.delete",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The subscription to delete. Format is `projects/{project}/subscriptions/{sub}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            detach = {
              description = "Detaches a subscription from this topic. All messages retained in the subscription are dropped. Subsequent `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will stop.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:detach",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.detach",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The subscription to detach. Format is `projects/{project}/subscriptions/{subscription}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}:detach",
              response = {
                ["$ref"] = "DetachSubscriptionResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            get = {
              description = "Gets the configuration details of a subscription.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}",
              httpMethod = "GET",
              id = "pubsub.projects.subscriptions.get",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The name of the subscription to get. Format is `projects/{project}/subscriptions/{sub}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}",
              response = {
                ["$ref"] = "Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:getIamPolicy",
              httpMethod = "GET",
              id = "pubsub.projects.subscriptions.getIamPolicy",
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
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            list = {
              description = "Lists matching subscriptions.",
              flatPath = "v1/projects/{projectsId}/subscriptions",
              httpMethod = "GET",
              id = "pubsub.projects.subscriptions.list",
              parameterOrder = {
                "project",
              },
              parameters = {
                pageSize = {
                  description = "Maximum number of subscriptions to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListSubscriptionsResponse`; indicates that this is a continuation of a prior `ListSubscriptions` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                project = {
                  description = "Required. The name of the project in which to list subscriptions. Format is `projects/{project-id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+project}/subscriptions",
              response = {
                ["$ref"] = "ListSubscriptionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            modifyAckDeadline = {
              description = "Modifies the ack deadline for a specific message. This method is useful to indicate that more time is needed to process a message by the subscriber, or to make the message available for redelivery if the processing was interrupted. Note that this does not modify the subscription-level `ackDeadlineSeconds` used for subsequent messages.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:modifyAckDeadline",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.modifyAckDeadline",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The name of the subscription. Format is `projects/{project}/subscriptions/{sub}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}:modifyAckDeadline",
              request = {
                ["$ref"] = "ModifyAckDeadlineRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            modifyPushConfig = {
              description = "Modifies the `PushConfig` for a specified subscription. This may be used to change a push subscription to a pull one (signified by an empty `PushConfig`) or vice versa, or change the endpoint URL and other attributes of a push subscription. Messages will accumulate for delivery continuously through the call regardless of changes to the `PushConfig`.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:modifyPushConfig",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.modifyPushConfig",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The name of the subscription. Format is `projects/{project}/subscriptions/{sub}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}:modifyPushConfig",
              request = {
                ["$ref"] = "ModifyPushConfigRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            patch = {
              description = "Updates an existing subscription. Note that certain properties of a subscription, such as its topic, are not modifiable.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}",
              httpMethod = "PATCH",
              id = "pubsub.projects.subscriptions.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the subscription. It must have the format `\"projects/{project}/subscriptions/{subscription}\"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `\"goog\"`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UpdateSubscriptionRequest",
              },
              response = {
                ["$ref"] = "Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            pull = {
              description = "Pulls messages from the server.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:pull",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.pull",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The subscription from which messages should be pulled. Format is `projects/{project}/subscriptions/{sub}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}:pull",
              request = {
                ["$ref"] = "PullRequest",
              },
              response = {
                ["$ref"] = "PullResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            seek = {
              description = "Seeks an existing subscription to a point in time or to a given snapshot, whichever is provided in the request. Snapshots are used in [Seek] (https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. Note that both the subscription and the snapshot must be on the same topic.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:seek",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.seek",
              parameterOrder = {
                "subscription",
              },
              parameters = {
                subscription = {
                  description = "Required. The subscription to affect.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+subscription}:seek",
              request = {
                ["$ref"] = "SeekRequest",
              },
              response = {
                ["$ref"] = "SeekResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:setIamPolicy",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
              flatPath = "v1/projects/{projectsId}/subscriptions/{subscriptionsId}:testIamPermissions",
              httpMethod = "POST",
              id = "pubsub.projects.subscriptions.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/subscriptions/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
          },
        },
        topics = {
          methods = {
            create = {
              description = "Creates the given topic with the given name. See the [resource name rules] (https://cloud.google.com/pubsub/docs/admin#resource_names).",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}",
              httpMethod = "PUT",
              id = "pubsub.projects.topics.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the topic. It must have the format `\"projects/{project}/topics/{topic}\"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `\"goog\"`.",
                  location = "path",
                  pattern = "^projects/[^/]+/topics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Topic",
              },
              response = {
                ["$ref"] = "Topic",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            delete = {
              description = "Deletes the topic with the given name. Returns `NOT_FOUND` if the topic does not exist. After a topic is deleted, a new topic may be created with the same name; this is an entirely new topic with none of the old configuration or subscriptions. Existing subscriptions to this topic are not deleted, but their `topic` field is set to `_deleted-topic_`.",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}",
              httpMethod = "DELETE",
              id = "pubsub.projects.topics.delete",
              parameterOrder = {
                "topic",
              },
              parameters = {
                topic = {
                  description = "Required. Name of the topic to delete. Format is `projects/{project}/topics/{topic}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/topics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+topic}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            get = {
              description = "Gets the configuration of a topic.",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}",
              httpMethod = "GET",
              id = "pubsub.projects.topics.get",
              parameterOrder = {
                "topic",
              },
              parameters = {
                topic = {
                  description = "Required. The name of the topic to get. Format is `projects/{project}/topics/{topic}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/topics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+topic}",
              response = {
                ["$ref"] = "Topic",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}:getIamPolicy",
              httpMethod = "GET",
              id = "pubsub.projects.topics.getIamPolicy",
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
                  pattern = "^projects/[^/]+/topics/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            list = {
              description = "Lists matching topics.",
              flatPath = "v1/projects/{projectsId}/topics",
              httpMethod = "GET",
              id = "pubsub.projects.topics.list",
              parameterOrder = {
                "project",
              },
              parameters = {
                pageSize = {
                  description = "Maximum number of topics to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The value returned by the last `ListTopicsResponse`; indicates that this is a continuation of a prior `ListTopics` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                project = {
                  description = "Required. The name of the project in which to list topics. Format is `projects/{project-id}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+project}/topics",
              response = {
                ["$ref"] = "ListTopicsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            patch = {
              description = "Updates an existing topic. Note that certain properties of a topic are not modifiable.",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}",
              httpMethod = "PATCH",
              id = "pubsub.projects.topics.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the topic. It must have the format `\"projects/{project}/topics/{topic}\"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `\"goog\"`.",
                  location = "path",
                  pattern = "^projects/[^/]+/topics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UpdateTopicRequest",
              },
              response = {
                ["$ref"] = "Topic",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            publish = {
              description = "Adds one or more messages to the topic. Returns `NOT_FOUND` if the topic does not exist.",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}:publish",
              httpMethod = "POST",
              id = "pubsub.projects.topics.publish",
              parameterOrder = {
                "topic",
              },
              parameters = {
                topic = {
                  description = "Required. The messages in the request will be published on this topic. Format is `projects/{project}/topics/{topic}`.",
                  location = "path",
                  pattern = "^projects/[^/]+/topics/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+topic}:publish",
              request = {
                ["$ref"] = "PublishRequest",
              },
              response = {
                ["$ref"] = "PublishResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}:setIamPolicy",
              httpMethod = "POST",
              id = "pubsub.projects.topics.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/topics/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
              flatPath = "v1/projects/{projectsId}/topics/{topicsId}:testIamPermissions",
              httpMethod = "POST",
              id = "pubsub.projects.topics.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/topics/[^/]+$",
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
                "https://www.googleapis.com/auth/pubsub",
              },
            },
          },
          resources = {
            snapshots = {
              methods = {
                list = {
                  description = "Lists the names of the snapshots on this topic. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.",
                  flatPath = "v1/projects/{projectsId}/topics/{topicsId}/snapshots",
                  httpMethod = "GET",
                  id = "pubsub.projects.topics.snapshots.list",
                  parameterOrder = {
                    "topic",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of snapshot names to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListTopicSnapshotsResponse`; indicates that this is a continuation of a prior `ListTopicSnapshots` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    topic = {
                      description = "Required. The name of the topic that snapshots are attached to. Format is `projects/{project}/topics/{topic}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/topics/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+topic}/snapshots",
                  response = {
                    ["$ref"] = "ListTopicSnapshotsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/pubsub",
                  },
                },
              },
            },
            subscriptions = {
              methods = {
                list = {
                  description = "Lists the names of the attached subscriptions on this topic.",
                  flatPath = "v1/projects/{projectsId}/topics/{topicsId}/subscriptions",
                  httpMethod = "GET",
                  id = "pubsub.projects.topics.subscriptions.list",
                  parameterOrder = {
                    "topic",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of subscription names to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListTopicSubscriptionsResponse`; indicates that this is a continuation of a prior `ListTopicSubscriptions` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    topic = {
                      description = "Required. The name of the topic that subscriptions are attached to. Format is `projects/{project}/topics/{topic}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/topics/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+topic}/subscriptions",
                  response = {
                    ["$ref"] = "ListTopicSubscriptionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/pubsub",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230102",
  rootUrl = "https://pubsub.googleapis.com/",
  schemas = {
    AcknowledgeRequest = {
      description = "Request for the Acknowledge method.",
      id = "AcknowledgeRequest",
      properties = {
        ackIds = {
          description = "Required. The acknowledgment ID for the messages being acknowledged that was returned by the Pub/Sub system in the `Pull` response. Must not be empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BigQueryConfig = {
      description = "Configuration for a BigQuery subscription.",
      id = "BigQueryConfig",
      properties = {
        dropUnknownFields = {
          description = "When true and use_topic_schema is true, any fields that are a part of the topic schema that are not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync and any messages with extra fields are not written and remain in the subscription's backlog.",
          type = "boolean",
        },
        state = {
          description = "Output only. An output-only field that indicates whether or not the subscription can receive messages.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "PERMISSION_DENIED",
            "NOT_FOUND",
            "SCHEMA_MISMATCH",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The subscription can actively send messages to BigQuery",
            "Cannot write to the BigQuery table because of permission denied errors. This can happen if - Pub/Sub SA has not been granted the [appropriate BigQuery IAM permissions](https://cloud.google.com/pubsub/docs/create-subscription#assign_bigquery_service_account) - bigquery.googleapis.com API is not enabled for the project ([instructions](https://cloud.google.com/service-usage/docs/enable-disable))",
            "Cannot write to the BigQuery table because it does not exist.",
            "Cannot write to the BigQuery table due to a schema mismatch.",
          },
          readOnly = true,
          type = "string",
        },
        table = {
          description = "The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}",
          type = "string",
        },
        useTopicSchema = {
          description = "When true, use the topic's schema as the columns to write to in BigQuery, if it exists.",
          type = "boolean",
        },
        writeMetadata = {
          description = "When true, write the subscription name, message_id, publish_time, attributes, and ordering_key to additional columns in the table. The subscription name, message_id, and publish_time fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column.",
          type = "boolean",
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
    CreateSnapshotRequest = {
      description = "Request for the `CreateSnapshot` method.",
      id = "CreateSnapshotRequest",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).",
          type = "object",
        },
        subscription = {
          description = "Required. The subscription whose backlog the snapshot retains. Specifically, the created snapshot is guaranteed to retain: (a) The existing backlog on the subscription. More precisely, this is defined as the messages in the subscription's backlog that are unacknowledged upon the successful completion of the `CreateSnapshot` request; as well as: (b) Any messages published to the subscription's topic following the successful completion of the CreateSnapshot request. Format is `projects/{project}/subscriptions/{sub}`.",
          type = "string",
        },
      },
      type = "object",
    },
    DeadLetterPolicy = {
      description = "Dead lettering is done on a best effort basis. The same message might be dead lettered multiple times. If validation on any of the fields fails at subscription creation/updation, the create/update subscription request will fail.",
      id = "DeadLetterPolicy",
      properties = {
        deadLetterTopic = {
          description = "The name of the topic to which dead letter messages should be published. Format is `projects/{project}/topics/{topic}`.The Cloud Pub/Sub service account associated with the enclosing subscription's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Publish() to this topic. The operation will fail if the topic does not exist. Users should ensure that there is a subscription attached to this topic since messages published to a topic with no subscriptions are lost.",
          type = "string",
        },
        maxDeliveryAttempts = {
          description = "The maximum number of delivery attempts for any message. The value must be between 5 and 100. The number of delivery attempts is defined as 1 + (the sum of number of NACKs and number of times the acknowledgement deadline has been exceeded for the message). A NACK is any call to ModifyAckDeadline with a 0 deadline. Note that client libraries may automatically extend ack_deadlines. This field will be honored on a best effort basis. If this parameter is 0, a default value of 5 is used.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DetachSubscriptionResponse = {
      description = "Response for the DetachSubscription method. Reserved for future use.",
      id = "DetachSubscriptionResponse",
      properties = {},
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    ExpirationPolicy = {
      description = "A policy that specifies the conditions for resource expiration (i.e., automatic resource deletion).",
      id = "ExpirationPolicy",
      properties = {
        ttl = {
          description = "Specifies the \"time-to-live\" duration for an associated resource. The resource expires if it is not active for a period of `ttl`. The definition of \"activity\" depends on the type of the associated resource. The minimum and maximum allowed values for `ttl` depend on the type of the associated resource, as well. If `ttl` is not set, the associated resource never expires.",
          format = "google-duration",
          type = "string",
        },
      },
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
    ListSchemasResponse = {
      description = "Response for the `ListSchemas` method.",
      id = "ListSchemasResponse",
      properties = {
        nextPageToken = {
          description = "If not empty, indicates that there may be more schemas that match the request; this value should be passed in a new `ListSchemasRequest`.",
          type = "string",
        },
        schemas = {
          description = "The resulting schemas.",
          items = {
            ["$ref"] = "Schema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSnapshotsResponse = {
      description = "Response for the `ListSnapshots` method.",
      id = "ListSnapshotsResponse",
      properties = {
        nextPageToken = {
          description = "If not empty, indicates that there may be more snapshot that match the request; this value should be passed in a new `ListSnapshotsRequest`.",
          type = "string",
        },
        snapshots = {
          description = "The resulting snapshots.",
          items = {
            ["$ref"] = "Snapshot",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSubscriptionsResponse = {
      description = "Response for the `ListSubscriptions` method.",
      id = "ListSubscriptionsResponse",
      properties = {
        nextPageToken = {
          description = "If not empty, indicates that there may be more subscriptions that match the request; this value should be passed in a new `ListSubscriptionsRequest` to get more subscriptions.",
          type = "string",
        },
        subscriptions = {
          description = "The subscriptions that match the request.",
          items = {
            ["$ref"] = "Subscription",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTopicSnapshotsResponse = {
      description = "Response for the `ListTopicSnapshots` method.",
      id = "ListTopicSnapshotsResponse",
      properties = {
        nextPageToken = {
          description = "If not empty, indicates that there may be more snapshots that match the request; this value should be passed in a new `ListTopicSnapshotsRequest` to get more snapshots.",
          type = "string",
        },
        snapshots = {
          description = "The names of the snapshots that match the request.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTopicSubscriptionsResponse = {
      description = "Response for the `ListTopicSubscriptions` method.",
      id = "ListTopicSubscriptionsResponse",
      properties = {
        nextPageToken = {
          description = "If not empty, indicates that there may be more subscriptions that match the request; this value should be passed in a new `ListTopicSubscriptionsRequest` to get more subscriptions.",
          type = "string",
        },
        subscriptions = {
          description = "The names of subscriptions attached to the topic specified in the request.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTopicsResponse = {
      description = "Response for the `ListTopics` method.",
      id = "ListTopicsResponse",
      properties = {
        nextPageToken = {
          description = "If not empty, indicates that there may be more topics that match the request; this value should be passed in a new `ListTopicsRequest`.",
          type = "string",
        },
        topics = {
          description = "The resulting topics.",
          items = {
            ["$ref"] = "Topic",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MessageStoragePolicy = {
      description = "A policy constraining the storage of messages published to the topic.",
      id = "MessageStoragePolicy",
      properties = {
        allowedPersistenceRegions = {
          description = "A list of IDs of GCP regions where messages that are published to the topic may be persisted in storage. Messages published by publishers running in non-allowed GCP regions (or running outside of GCP altogether) will be routed for storage in one of the allowed regions. An empty list means that no regions are allowed, and is not a valid configuration.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyAckDeadlineRequest = {
      description = "Request for the ModifyAckDeadline method.",
      id = "ModifyAckDeadlineRequest",
      properties = {
        ackDeadlineSeconds = {
          description = "Required. The new ack deadline with respect to the time this request was sent to the Pub/Sub system. For example, if the value is 10, the new ack deadline will expire 10 seconds after the `ModifyAckDeadline` call was made. Specifying zero might immediately make the message available for delivery to another subscriber client. This typically results in an increase in the rate of message redeliveries (that is, duplicates). The minimum deadline you can specify is 0 seconds. The maximum deadline you can specify is 600 seconds (10 minutes).",
          format = "int32",
          type = "integer",
        },
        ackIds = {
          description = "Required. List of acknowledgment IDs.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyPushConfigRequest = {
      description = "Request for the ModifyPushConfig method.",
      id = "ModifyPushConfigRequest",
      properties = {
        pushConfig = {
          ["$ref"] = "PushConfig",
          description = "Required. The push configuration for future deliveries. An empty `pushConfig` indicates that the Pub/Sub system should stop pushing messages from the given subscription and allow messages to be pulled and acknowledged - effectively pausing the subscription if `Pull` or `StreamingPull` is not called.",
        },
      },
      type = "object",
    },
    OidcToken = {
      description = "Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect). [Service account email](https://cloud.google.com/iam/docs/service-accounts) used for generating the OIDC token. For more information on setting up authentication, see [Push subscriptions](https://cloud.google.com/pubsub/docs/push).",
      id = "OidcToken",
      properties = {
        audience = {
          description = "Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified, the Push endpoint URL will be used.",
          type = "string",
        },
        serviceAccountEmail = {
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
    PublishRequest = {
      description = "Request for the Publish method.",
      id = "PublishRequest",
      properties = {
        messages = {
          description = "Required. The messages to publish.",
          items = {
            ["$ref"] = "PubsubMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PublishResponse = {
      description = "Response for the `Publish` method.",
      id = "PublishResponse",
      properties = {
        messageIds = {
          description = "The server-assigned ID of each published message, in the same order as the messages in the request. IDs are guaranteed to be unique within the topic.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PubsubMessage = {
      description = "A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries) for more information. See [quotas and limits] (https://cloud.google.com/pubsub/quotas) for more information about message limits.",
      id = "PubsubMessage",
      properties = {
        attributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Attributes for this message. If this field is empty, the message must contain non-empty data. This can be used to filter messages on the subscription.",
          type = "object",
        },
        data = {
          description = "The message data field. If this field is empty, the message must contain at least one attribute.",
          format = "byte",
          type = "string",
        },
        messageId = {
          description = "ID of this message, assigned by the server when the message is published. Guaranteed to be unique within the topic. This value may be read by a subscriber that receives a `PubsubMessage` via a `Pull` call or a push delivery. It must not be populated by the publisher in a `Publish` call.",
          type = "string",
        },
        orderingKey = {
          description = "If non-empty, identifies related messages for which publish order should be respected. If a `Subscription` has `enable_message_ordering` set to `true`, messages published with the same non-empty `ordering_key` value will be delivered to subscribers in the order in which they are received by the Pub/Sub system. All `PubsubMessage`s published in a given `PublishRequest` must specify the same `ordering_key` value. For more information, see [ordering messages](https://cloud.google.com/pubsub/docs/ordering).",
          type = "string",
        },
        publishTime = {
          description = "The time at which the message was published, populated by the server when it receives the `Publish` call. It must not be populated by the publisher in a `Publish` call.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    PullRequest = {
      description = "Request for the `Pull` method.",
      id = "PullRequest",
      properties = {
        maxMessages = {
          description = "Required. The maximum number of messages to return for this request. Must be a positive integer. The Pub/Sub system may return fewer than the number specified.",
          format = "int32",
          type = "integer",
        },
        returnImmediately = {
          description = "Optional. If this field set to true, the system will respond immediately even if it there are no messages available to return in the `Pull` response. Otherwise, the system may wait (for a bounded amount of time) until at least one message is available, rather than returning no messages. Warning: setting this field to `true` is discouraged because it adversely impacts the performance of `Pull` operations. We recommend that users do not set this field.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PullResponse = {
      description = "Response for the `Pull` method.",
      id = "PullResponse",
      properties = {
        receivedMessages = {
          description = "Received Pub/Sub messages. The list will be empty if there are no more messages available in the backlog, or if no messages could be returned before the request timeout. For JSON, the response can be entirely empty. The Pub/Sub system may return fewer than the `maxMessages` requested even if there are more messages available in the backlog.",
          items = {
            ["$ref"] = "ReceivedMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PushConfig = {
      description = "Configuration for a push delivery endpoint.",
      id = "PushConfig",
      properties = {
        attributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is `x-goog-version`, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the `CreateSubscription` call, it will default to the version of the Pub/Sub API used to make such call. If not present in a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API. For example: `attributes { \"x-goog-version\": \"v1\" }`",
          type = "object",
        },
        oidcToken = {
          ["$ref"] = "OidcToken",
          description = "If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.",
        },
        pushEndpoint = {
          description = "A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use `https://example.com/push`.",
          type = "string",
        },
      },
      type = "object",
    },
    ReceivedMessage = {
      description = "A message and its corresponding acknowledgment ID.",
      id = "ReceivedMessage",
      properties = {
        ackId = {
          description = "This ID can be used to acknowledge the received message.",
          type = "string",
        },
        deliveryAttempt = {
          description = "The approximate number of times that Cloud Pub/Sub has attempted to deliver the associated message to a subscriber. More precisely, this is 1 + (number of NACKs) + (number of ack_deadline exceeds) for this message. A NACK is any call to ModifyAckDeadline with a 0 deadline. An ack_deadline exceeds event is whenever a message is not acknowledged within ack_deadline. Note that ack_deadline is initially Subscription.ackDeadlineSeconds, but may get extended automatically by the client library. Upon the first delivery of a given message, `delivery_attempt` will have a value of 1. The value is calculated at best effort and is approximate. If a DeadLetterPolicy is not set on the subscription, this will be 0.",
          format = "int32",
          type = "integer",
        },
        message = {
          ["$ref"] = "PubsubMessage",
          description = "The message.",
        },
      },
      type = "object",
    },
    RetryPolicy = {
      description = "A policy that specifies how Cloud Pub/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff.",
      id = "RetryPolicy",
      properties = {
        maximumBackoff = {
          description = "The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.",
          format = "google-duration",
          type = "string",
        },
        minimumBackoff = {
          description = "The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Schema = {
      description = "A schema resource.",
      id = "Schema",
      properties = {
        definition = {
          description = "The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.",
          type = "string",
        },
        name = {
          description = "Required. Name of the schema. Format is `projects/{project}/schemas/{schema}`.",
          type = "string",
        },
        revisionCreateTime = {
          description = "Output only. The timestamp that the revision was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. Immutable. The revision ID of the schema.",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "The type of the schema definition.",
          enum = {
            "TYPE_UNSPECIFIED",
            "PROTOCOL_BUFFER",
            "AVRO",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "A Protocol Buffer schema definition.",
            "An Avro schema definition.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SchemaSettings = {
      description = "Settings for validating messages published against a schema.",
      id = "SchemaSettings",
      properties = {
        encoding = {
          description = "The encoding of messages validated against `schema`.",
          enum = {
            "ENCODING_UNSPECIFIED",
            "JSON",
            "BINARY",
          },
          enumDescriptions = {
            "Unspecified",
            "JSON encoding",
            "Binary encoding, as defined by the schema type. For some schema types, binary encoding may not be available.",
          },
          type = "string",
        },
        firstRevisionId = {
          description = "The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.",
          type = "string",
        },
        lastRevisionId = {
          description = "The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.",
          type = "string",
        },
        schema = {
          description = "Required. The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.",
          type = "string",
        },
      },
      type = "object",
    },
    SeekRequest = {
      description = "Request for the `Seek` method.",
      id = "SeekRequest",
      properties = {
        snapshot = {
          description = "The snapshot to seek to. The snapshot's topic must be the same as that of the provided subscription. Format is `projects/{project}/snapshots/{snap}`.",
          type = "string",
        },
        time = {
          description = "The time to seek to. Messages retained in the subscription that were published before this time are marked as acknowledged, and messages retained in the subscription that were published after this time are marked as unacknowledged. Note that this operation affects only those messages retained in the subscription (configured by the combination of `message_retention_duration` and `retain_acked_messages`). For example, if `time` corresponds to a point before the message retention window (or to a point before the system's notion of the subscription creation time), only retained messages will be marked as unacknowledged, and already-expunged messages will not be restored.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    SeekResponse = {
      description = "Response for the `Seek` method (this response is empty).",
      id = "SeekResponse",
      properties = {},
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
    Snapshot = {
      description = "A snapshot resource. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.",
      id = "Snapshot",
      properties = {
        expireTime = {
          description = "The snapshot is guaranteed to exist up until this time. A newly-created snapshot expires no later than 7 days from the time of its creation. Its exact lifetime is determined at creation by the existing backlog in the source subscription. Specifically, the lifetime of the snapshot is `7 days - (age of oldest unacked message in the subscription)`. For example, consider a subscription whose oldest unacked message is 3 days old. If a snapshot is created from this subscription, the snapshot -- which will always capture this 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The service will refuse to create a snapshot that would expire in less than 1 hour after creation.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).",
          type = "object",
        },
        name = {
          description = "The name of the snapshot.",
          type = "string",
        },
        topic = {
          description = "The name of the topic from which this snapshot is retaining messages.",
          type = "string",
        },
      },
      type = "object",
    },
    Subscription = {
      description = "A subscription resource. If none of `push_config` or `bigquery_config` is set, then the subscriber will pull and ack messages using API methods. At most one of these fields may be set.",
      id = "Subscription",
      properties = {
        ackDeadlineSeconds = {
          description = "The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.",
          format = "int32",
          type = "integer",
        },
        bigqueryConfig = {
          ["$ref"] = "BigQueryConfig",
          description = "If delivery to BigQuery is used with this subscription, this field is used to configure it.",
        },
        deadLetterPolicy = {
          ["$ref"] = "DeadLetterPolicy",
          description = "A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Cloud Pub/Sub service account associated with this subscriptions's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.",
        },
        detached = {
          description = "Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.",
          type = "boolean",
        },
        enableExactlyOnceDelivery = {
          description = "If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values.",
          type = "boolean",
        },
        enableMessageOrdering = {
          description = "If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order.",
          type = "boolean",
        },
        expirationPolicy = {
          ["$ref"] = "ExpirationPolicy",
          description = "A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires.",
        },
        filter = {
          description = "An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).",
          type = "object",
        },
        messageRetentionDuration = {
          description = "How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes.",
          format = "google-duration",
          type = "string",
        },
        name = {
          description = "Required. The name of the subscription. It must have the format `\"projects/{project}/subscriptions/{subscription}\"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `\"goog\"`.",
          type = "string",
        },
        pushConfig = {
          ["$ref"] = "PushConfig",
          description = "If push delivery is used with this subscription, this field is used to configure it.",
        },
        retainAckedMessages = {
          description = "Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.",
          type = "boolean",
        },
        retryPolicy = {
          ["$ref"] = "RetryPolicy",
          description = "A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.",
        },
        state = {
          description = "Output only. An output-only field indicating whether or not the subscription can receive messages.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "RESOURCE_ERROR",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The subscription can actively receive messages",
            "The subscription cannot receive messages because of an error with the resource to which it pushes messages. See the more detailed error state in the corresponding configuration.",
          },
          readOnly = true,
          type = "string",
        },
        topic = {
          description = "Required. The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`. The value of this field will be `_deleted-topic_` if the topic has been deleted.",
          type = "string",
        },
        topicMessageRetentionDuration = {
          description = "Output only. Indicates the minimum duration for which a message is retained after it is published to the subscription's topic. If this field is set, messages published to the subscription's topic in the last `topic_message_retention_duration` are always available to subscribers. See the `message_retention_duration` field in `Topic`. This field is set only in responses from the server; it is ignored if it is set in any requests.",
          format = "google-duration",
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
    Topic = {
      description = "A topic resource.",
      id = "Topic",
      properties = {
        kmsKeyName = {
          description = "The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).",
          type = "object",
        },
        messageRetentionDuration = {
          description = "Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last `message_retention_duration` are always available to subscribers. For instance, it allows any attached subscription to [seek to a timestamp](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is up to `message_retention_duration` in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes.",
          format = "google-duration",
          type = "string",
        },
        messageStoragePolicy = {
          ["$ref"] = "MessageStoragePolicy",
          description = "Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.",
        },
        name = {
          description = "Required. The name of the topic. It must have the format `\"projects/{project}/topics/{topic}\"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `\"goog\"`.",
          type = "string",
        },
        satisfiesPzs = {
          description = "Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.",
          type = "boolean",
        },
        schemaSettings = {
          ["$ref"] = "SchemaSettings",
          description = "Settings for validating messages published against a schema.",
        },
      },
      type = "object",
    },
    UpdateSnapshotRequest = {
      description = "Request for the UpdateSnapshot method.",
      id = "UpdateSnapshotRequest",
      properties = {
        snapshot = {
          ["$ref"] = "Snapshot",
          description = "Required. The updated snapshot object.",
        },
        updateMask = {
          description = "Required. Indicates which fields in the provided snapshot to update. Must be specified and non-empty.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateSubscriptionRequest = {
      description = "Request for the UpdateSubscription method.",
      id = "UpdateSubscriptionRequest",
      properties = {
        subscription = {
          ["$ref"] = "Subscription",
          description = "Required. The updated subscription object.",
        },
        updateMask = {
          description = "Required. Indicates which fields in the provided subscription to update. Must be specified and non-empty.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateTopicRequest = {
      description = "Request for the UpdateTopic method.",
      id = "UpdateTopicRequest",
      properties = {
        topic = {
          ["$ref"] = "Topic",
          description = "Required. The updated topic object.",
        },
        updateMask = {
          description = "Required. Indicates which fields in the provided topic to update. Must be specified and non-empty. Note that if `update_mask` contains \"message_storage_policy\" but the `message_storage_policy` is not set in the `topic` provided above, then the updated value is determined by the policy configured at the project or organization level.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    ValidateMessageRequest = {
      description = "Request for the `ValidateMessage` method.",
      id = "ValidateMessageRequest",
      properties = {
        encoding = {
          description = "The encoding expected for messages",
          enum = {
            "ENCODING_UNSPECIFIED",
            "JSON",
            "BINARY",
          },
          enumDescriptions = {
            "Unspecified",
            "JSON encoding",
            "Binary encoding, as defined by the schema type. For some schema types, binary encoding may not be available.",
          },
          type = "string",
        },
        message = {
          description = "Message to validate against the provided `schema_spec`.",
          format = "byte",
          type = "string",
        },
        name = {
          description = "Name of the schema against which to validate. Format is `projects/{project}/schemas/{schema}`.",
          type = "string",
        },
        schema = {
          ["$ref"] = "Schema",
          description = "Ad-hoc schema against which to validate",
        },
      },
      type = "object",
    },
    ValidateMessageResponse = {
      description = "Response for the `ValidateMessage` method. Empty for now.",
      id = "ValidateMessageResponse",
      properties = {},
      type = "object",
    },
    ValidateSchemaRequest = {
      description = "Request for the `ValidateSchema` method.",
      id = "ValidateSchemaRequest",
      properties = {
        schema = {
          ["$ref"] = "Schema",
          description = "Required. The schema object to validate.",
        },
      },
      type = "object",
    },
    ValidateSchemaResponse = {
      description = "Response for the `ValidateSchema` method. Empty for now.",
      id = "ValidateSchemaResponse",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Pub/Sub API",
  version = "v1",
}
