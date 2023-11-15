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
  baseUrl = "https://workflowexecutions.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Workflow Executions",
  description = "Execute workflows created with Workflows API.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/workflows",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "workflowexecutions:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://workflowexecutions.mtls.googleapis.com/",
  name = "workflowexecutions",
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
          resources = {
            workflows = {
              methods = {
                triggerPubsubExecution = {
                  description = "Triggers a new execution using the latest revision of the given workflow by a Pub/Sub push notification.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflows/{workflowsId}:triggerPubsubExecution",
                  httpMethod = "POST",
                  id = "workflowexecutions.projects.locations.workflows.triggerPubsubExecution",
                  parameterOrder = {
                    "workflow",
                  },
                  parameters = {
                    workflow = {
                      description = "Required. Name of the workflow for which an execution should be created. Format: projects/{project}/locations/{location}/workflows/{workflow}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflows/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+workflow}:triggerPubsubExecution",
                  request = {
                    ["$ref"] = "TriggerPubsubExecutionRequest",
                  },
                  response = {
                    ["$ref"] = "Execution",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                executions = {
                  methods = {
                    cancel = {
                      description = "Cancels an execution of the given name.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflows/{workflowsId}/executions/{executionsId}:cancel",
                      httpMethod = "POST",
                      id = "workflowexecutions.projects.locations.workflows.executions.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the execution to be cancelled. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/workflows/[^/]+/executions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:cancel",
                      request = {
                        ["$ref"] = "CancelExecutionRequest",
                      },
                      response = {
                        ["$ref"] = "Execution",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Creates a new execution using the latest revision of the given workflow.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflows/{workflowsId}/executions",
                      httpMethod = "POST",
                      id = "workflowexecutions.projects.locations.workflows.executions.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Name of the workflow for which an execution should be created. Format: projects/{project}/locations/{location}/workflows/{workflow} The latest revision of the workflow will be used.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/workflows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/executions",
                      request = {
                        ["$ref"] = "Execution",
                      },
                      response = {
                        ["$ref"] = "Execution",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns an execution of the given name.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflows/{workflowsId}/executions/{executionsId}",
                      httpMethod = "GET",
                      id = "workflowexecutions.projects.locations.workflows.executions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the execution to be retrieved. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/workflows/[^/]+/executions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. A view defining which fields should be filled in the returned execution. The API will default to the FULL view.",
                          enum = {
                            "EXECUTION_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The default / unset value.",
                            "Includes only basic metadata about the execution. Following fields are returned: name, start_time, end_time, duration, state and workflow_revision_id.",
                            "Includes all data.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Execution",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Returns a list of executions which belong to the workflow with the given name. The method returns executions of all workflow revisions. Returned executions are ordered by their start time (newest first).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflows/{workflowsId}/executions",
                      httpMethod = "GET",
                      id = "workflowexecutions.projects.locations.workflows.executions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Maximum number of executions to return per call. Max supported value depends on the selected Execution view: it's 1000 for BASIC and 100 for FULL. The default value used if the field is not specified is 100, regardless of the selected view. Values greater than the max value will be coerced down to it.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListExecutions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListExecutions` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Name of the workflow for which the executions should be listed. Format: projects/{project}/locations/{location}/workflows/{workflow}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/workflows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. A view defining which fields should be filled in the returned executions. The API will default to the BASIC view.",
                          enum = {
                            "EXECUTION_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The default / unset value.",
                            "Includes only basic metadata about the execution. Following fields are returned: name, start_time, end_time, duration, state and workflow_revision_id.",
                            "Includes all data.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/executions",
                      response = {
                        ["$ref"] = "ListExecutionsResponse",
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
    },
  },
  revision = "20230103",
  rootUrl = "https://workflowexecutions.googleapis.com/",
  schemas = {
    CancelExecutionRequest = {
      description = "Request for the CancelExecution method.",
      id = "CancelExecutionRequest",
      properties = {},
      type = "object",
    },
    Error = {
      description = "Error describes why the execution was abnormally terminated.",
      id = "Error",
      properties = {
        context = {
          description = "Human-readable stack trace string.",
          type = "string",
        },
        payload = {
          description = "Error message and data returned represented as a JSON string.",
          type = "string",
        },
        stackTrace = {
          ["$ref"] = "StackTrace",
          description = "Stack trace with detailed information of where error was generated.",
        },
      },
      type = "object",
    },
    Execution = {
      description = "A running instance of a [Workflow](/workflows/docs/reference/rest/v1/projects.locations.workflows).",
      id = "Execution",
      properties = {
        argument = {
          description = "Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{\"argument\":\"{\\\"firstName\\\":\\\"FIRST\\\",\\\"lastName\\\":\\\"LAST\\\"}\"}'`",
          type = "string",
        },
        callLogLevel = {
          description = "The call logging level associated to this execution.",
          enum = {
            "CALL_LOG_LEVEL_UNSPECIFIED",
            "LOG_ALL_CALLS",
            "LOG_ERRORS_ONLY",
          },
          enumDescriptions = {
            "No call logging level specified.",
            "Log all call steps within workflows, all call returns, and all exceptions raised.",
            "Log only exceptions that are raised from call steps within workflows.",
          },
          type = "string",
        },
        duration = {
          description = "Output only. Measures the duration of the execution.",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. Marks the end of execution, successful or not.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        error = {
          ["$ref"] = "Error",
          description = "Output only. The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.",
          readOnly = true,
        },
        name = {
          description = "Output only. The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}",
          readOnly = true,
          type = "string",
        },
        result = {
          description = "Output only. Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. Marks the beginning of execution.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Current state of the execution.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid state.",
            "The execution is in progress.",
            "The execution finished successfully.",
            "The execution failed with an error.",
            "The execution was stopped intentionally.",
          },
          readOnly = true,
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "Output only. Status tracks the current steps and progress data of this execution.",
          readOnly = true,
        },
        workflowRevisionId = {
          description = "Output only. Revision of the workflow this execution is using.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListExecutionsResponse = {
      description = "Response for the ListExecutions method.",
      id = "ListExecutionsResponse",
      properties = {
        executions = {
          description = "The executions which match the request.",
          items = {
            ["$ref"] = "Execution",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    Position = {
      description = "Position contains source position information about the stack trace element such as line number, column number and length of the code block in bytes.",
      id = "Position",
      properties = {
        column = {
          description = "The source code column position (of the line) the current instruction was generated from.",
          format = "int64",
          type = "string",
        },
        length = {
          description = "The number of bytes of source code making up this stack trace element.",
          format = "int64",
          type = "string",
        },
        line = {
          description = "The source code line number the current instruction was generated from.",
          format = "int64",
          type = "string",
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
    StackTrace = {
      description = "A collection of stack elements (frames) where an error occurred.",
      id = "StackTrace",
      properties = {
        elements = {
          description = "An array of stack elements.",
          items = {
            ["$ref"] = "StackTraceElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StackTraceElement = {
      description = "A single stack element (frame) where an error occurred.",
      id = "StackTraceElement",
      properties = {
        position = {
          ["$ref"] = "Position",
          description = "The source position information of the stack trace element.",
        },
        routine = {
          description = "The routine where the error occurred.",
          type = "string",
        },
        step = {
          description = "The step the error occurred at.",
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "Represents the current status of this execution.",
      id = "Status",
      properties = {
        currentSteps = {
          description = "A list of currently executing or last executed step names for the workflow execution currently running. If the workflow has succeeded or failed, this is the last attempted or executed step. Presently, if the current step is inside a subworkflow, the list only includes that step. In the future, the list will contain items for each step in the call stack, starting with the outermost step in the `main` subworkflow, and ending with the most deeply nested step.",
          items = {
            ["$ref"] = "Step",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Step = {
      description = "Represents a step of the workflow this execution is running.",
      id = "Step",
      properties = {
        routine = {
          description = "Name of a routine within the workflow.",
          type = "string",
        },
        step = {
          description = "Name of a step within the routine.",
          type = "string",
        },
      },
      type = "object",
    },
    TriggerPubsubExecutionRequest = {
      description = "Request for the TriggerPubsubExecution method.",
      id = "TriggerPubsubExecutionRequest",
      properties = {
        GCPCloudEventsMode = {
          description = "Required. LINT: LEGACY_NAMES The query parameter value for __GCP_CloudEventsMode, set by the Eventarc service when configuring triggers.",
          type = "string",
        },
        message = {
          ["$ref"] = "PubsubMessage",
          description = "Required. The message of the Pub/Sub push notification.",
        },
        subscription = {
          description = "Required. The subscription of the Pub/Sub push notification. Format: projects/{project}/subscriptions/{sub}",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Workflow Executions API",
  version = "v1",
  version_module = true,
}
