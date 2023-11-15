return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/trace.append"] = {
          description = "Write Trace data for a project or application",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudtrace.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Trace",
  description = "Sends application trace data to Cloud Trace for viewing. Trace data is collected for all App Engine applications by default. Trace data from other applications can be provided using this API. This library is used to interact with the Cloud Trace API directly. If you are looking to instrument your application for Cloud Trace, we recommend using OpenTelemetry. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/trace",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudtrace:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudtrace.mtls.googleapis.com/",
  name = "cloudtrace",
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
        traces = {
          methods = {
            batchWrite = {
              description = "Batch writes new spans to new or existing traces. You cannot update existing spans.",
              flatPath = "v2/projects/{projectsId}/traces:batchWrite",
              httpMethod = "POST",
              id = "cloudtrace.projects.traces.batchWrite",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the project where the spans belong. The format is `projects/[PROJECT_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}/traces:batchWrite",
              request = {
                ["$ref"] = "BatchWriteSpansRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/trace.append",
              },
            },
          },
          resources = {
            spans = {
              methods = {
                createSpan = {
                  description = "Creates a new span.",
                  flatPath = "v2/projects/{projectsId}/traces/{tracesId}/spans/{spansId}",
                  httpMethod = "POST",
                  id = "cloudtrace.projects.traces.spans.createSpan",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the span in the following format: * `projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/[SPAN_ID]` `[TRACE_ID]` is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. It should not be zero. `[SPAN_ID]` is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero. .",
                      location = "path",
                      pattern = "^projects/[^/]+/traces/[^/]+/spans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "Span",
                  },
                  response = {
                    ["$ref"] = "Span",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/trace.append",
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
  rootUrl = "https://cloudtrace.googleapis.com/",
  schemas = {
    Annotation = {
      description = "Text annotation with a set of attributes.",
      id = "Annotation",
      properties = {
        attributes = {
          ["$ref"] = "Attributes",
          description = "A set of attributes on the annotation. You can have up to 4 attributes per Annotation.",
        },
        description = {
          ["$ref"] = "TruncatableString",
          description = "A user-supplied message describing the event. The maximum length for the description is 256 bytes.",
        },
      },
      type = "object",
    },
    AttributeValue = {
      description = "The allowed types for `[VALUE]` in a `[KEY]:[VALUE]` attribute.",
      id = "AttributeValue",
      properties = {
        boolValue = {
          description = "A Boolean value represented by `true` or `false`.",
          type = "boolean",
        },
        intValue = {
          description = "A 64-bit signed integer.",
          format = "int64",
          type = "string",
        },
        stringValue = {
          ["$ref"] = "TruncatableString",
          description = "A string up to 256 bytes long.",
        },
      },
      type = "object",
    },
    Attributes = {
      description = "A set of attributes as key-value pairs.",
      id = "Attributes",
      properties = {
        attributeMap = {
          additionalProperties = {
            ["$ref"] = "AttributeValue",
          },
          description = "A set of attributes. Each attribute's key can be up to 128 bytes long. The value can be a string up to 256 bytes, a signed 64-bit integer, or the boolean values `true` or `false`. For example: \"/instance_id\": { \"string_value\": { \"value\": \"my-instance\" } } \"/http/request_bytes\": { \"int_value\": 300 } \"abc.com/myattribute\": { \"bool_value\": false }",
          type = "object",
        },
        droppedAttributesCount = {
          description = "The number of attributes that were discarded. Attributes can be discarded because their keys are too long or because there are too many attributes. If this value is 0 then all attributes are valid.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BatchWriteSpansRequest = {
      description = "The request message for the `BatchWriteSpans` method.",
      id = "BatchWriteSpansRequest",
      properties = {
        spans = {
          description = "Required. A list of new spans. The span names must not match existing spans, otherwise the results are undefined.",
          items = {
            ["$ref"] = "Span",
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
    Link = {
      description = "A pointer from the current span to another span in the same trace or in a different trace. For example, this can be used in batching operations, where a single batch handler processes multiple requests from different traces or when the handler receives a request from a different project.",
      id = "Link",
      properties = {
        attributes = {
          ["$ref"] = "Attributes",
          description = "A set of attributes on the link. Up to 32 attributes can be specified per link.",
        },
        spanId = {
          description = "The `[SPAN_ID]` for a span within a trace.",
          type = "string",
        },
        traceId = {
          description = "The `[TRACE_ID]` for a trace within a project.",
          type = "string",
        },
        type = {
          description = "The relationship of the current span relative to the linked span.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CHILD_LINKED_SPAN",
            "PARENT_LINKED_SPAN",
          },
          enumDescriptions = {
            "The relationship of the two spans is unknown.",
            "The linked span is a child of the current span.",
            "The linked span is a parent of the current span.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Links = {
      description = "A collection of links, which are references from this span to a span in the same or different trace.",
      id = "Links",
      properties = {
        droppedLinksCount = {
          description = "The number of dropped links after the maximum size was enforced. If this value is 0, then no links were dropped.",
          format = "int32",
          type = "integer",
        },
        link = {
          description = "A collection of links.",
          items = {
            ["$ref"] = "Link",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MessageEvent = {
      description = "An event describing a message sent/received between Spans.",
      id = "MessageEvent",
      properties = {
        compressedSizeBytes = {
          description = "The number of compressed bytes sent or received. If missing, the compressed size is assumed to be the same size as the uncompressed size.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "An identifier for the MessageEvent's message that can be used to match `SENT` and `RECEIVED` MessageEvents.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Type of MessageEvent. Indicates whether the message was sent or received.",
          enum = {
            "TYPE_UNSPECIFIED",
            "SENT",
            "RECEIVED",
          },
          enumDescriptions = {
            "Unknown event type.",
            "Indicates a sent message.",
            "Indicates a received message.",
          },
          type = "string",
        },
        uncompressedSizeBytes = {
          description = "The number of uncompressed bytes sent or received.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Module = {
      description = "Binary module.",
      id = "Module",
      properties = {
        buildId = {
          ["$ref"] = "TruncatableString",
          description = "A unique identifier for the module, usually a hash of its contents (up to 128 bytes).",
        },
        module = {
          ["$ref"] = "TruncatableString",
          description = "For example: main binary, kernel modules, and dynamic libraries such as libc.so, sharedlib.so (up to 256 bytes).",
        },
      },
      type = "object",
    },
    Span = {
      description = "A span represents a single operation within a trace. Spans can be nested to form a trace tree. Often, a trace contains a root span that describes the end-to-end latency, and one or more subspans for its sub-operations. A trace can also contain multiple root spans, or none at all. Spans do not need to be contiguous—there might be gaps or overlaps between spans in a trace.",
      id = "Span",
      properties = {
        attributes = {
          ["$ref"] = "Attributes",
          description = "A set of attributes on the span. You can have up to 32 attributes per span.",
        },
        childSpanCount = {
          description = "Optional. The number of child spans that were generated while this span was active. If set, allows implementation to detect missing child spans.",
          format = "int32",
          type = "integer",
        },
        displayName = {
          ["$ref"] = "TruncatableString",
          description = "Required. A description of the span's operation (up to 128 bytes). Cloud Trace displays the description in the Cloud console. For example, the display name can be a qualified method name or a file name and a line number where the operation is called. A best practice is to use the same display name within an application and at the same call point. This makes it easier to correlate spans in different traces.",
        },
        endTime = {
          description = "Required. The end time of the span. On the client side, this is the time kept by the local machine where the span execution ends. On the server side, this is the time when the server application handler stops running.",
          format = "google-datetime",
          type = "string",
        },
        links = {
          ["$ref"] = "Links",
          description = "Links associated with the span. You can have up to 128 links per Span.",
        },
        name = {
          description = "Required. The resource name of the span in the following format: * `projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/[SPAN_ID]` `[TRACE_ID]` is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. It should not be zero. `[SPAN_ID]` is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero. .",
          type = "string",
        },
        parentSpanId = {
          description = "The `[SPAN_ID]` of this span's parent span. If this is a root span, then this field must be empty.",
          type = "string",
        },
        sameProcessAsParentSpan = {
          description = "Optional. Set this parameter to indicate whether this span is in the same process as its parent. If you do not set this parameter, Trace is unable to take advantage of this helpful information.",
          type = "boolean",
        },
        spanId = {
          description = "Required. The `[SPAN_ID]` portion of the span's resource name.",
          type = "string",
        },
        spanKind = {
          description = "Optional. Distinguishes between spans generated in a particular context. For example, two spans with the same name may be distinguished using `CLIENT` (caller) and `SERVER` (callee) to identify an RPC call.",
          enum = {
            "SPAN_KIND_UNSPECIFIED",
            "INTERNAL",
            "SERVER",
            "CLIENT",
            "PRODUCER",
            "CONSUMER",
          },
          enumDescriptions = {
            "Unspecified. Do NOT use as default. Implementations MAY assume SpanKind.INTERNAL to be default.",
            "Indicates that the span is used internally. Default value.",
            "Indicates that the span covers server-side handling of an RPC or other remote network request.",
            "Indicates that the span covers the client-side wrapper around an RPC or other remote request.",
            "Indicates that the span describes producer sending a message to a broker. Unlike client and server, there is no direct critical path latency relationship between producer and consumer spans (e.g. publishing a message to a pubsub service).",
            "Indicates that the span describes consumer receiving a message from a broker. Unlike client and server, there is no direct critical path latency relationship between producer and consumer spans (e.g. receiving a message from a pubsub service subscription).",
          },
          type = "string",
        },
        stackTrace = {
          ["$ref"] = "StackTrace",
          description = "Stack trace captured at the start of the span.",
        },
        startTime = {
          description = "Required. The start time of the span. On the client side, this is the time kept by the local machine where the span execution starts. On the server side, this is the time when the server's application handler starts running.",
          format = "google-datetime",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "Optional. The final status for this span.",
        },
        timeEvents = {
          ["$ref"] = "TimeEvents",
          description = "A set of time events. You can have up to 32 annotations and 128 message events per span.",
        },
      },
      type = "object",
    },
    StackFrame = {
      description = "Represents a single stack frame in a stack trace.",
      id = "StackFrame",
      properties = {
        columnNumber = {
          description = "The column number where the function call appears, if available. This is important in JavaScript because of its anonymous functions.",
          format = "int64",
          type = "string",
        },
        fileName = {
          ["$ref"] = "TruncatableString",
          description = "The name of the source file where the function call appears (up to 256 bytes).",
        },
        functionName = {
          ["$ref"] = "TruncatableString",
          description = "The fully-qualified name that uniquely identifies the function or method that is active in this frame (up to 1024 bytes).",
        },
        lineNumber = {
          description = "The line number in `file_name` where the function call appears.",
          format = "int64",
          type = "string",
        },
        loadModule = {
          ["$ref"] = "Module",
          description = "The binary module from where the code was loaded.",
        },
        originalFunctionName = {
          ["$ref"] = "TruncatableString",
          description = "An un-mangled function name, if `function_name` is [mangled](http://www.avabodh.com/cxxin/namemangling.html). The name can be fully-qualified (up to 1024 bytes).",
        },
        sourceVersion = {
          ["$ref"] = "TruncatableString",
          description = "The version of the deployed source code (up to 128 bytes).",
        },
      },
      type = "object",
    },
    StackFrames = {
      description = "A collection of stack frames, which can be truncated.",
      id = "StackFrames",
      properties = {
        droppedFramesCount = {
          description = "The number of stack frames that were dropped because there were too many stack frames. If this value is 0, then no stack frames were dropped.",
          format = "int32",
          type = "integer",
        },
        frame = {
          description = "Stack frames in this call stack.",
          items = {
            ["$ref"] = "StackFrame",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StackTrace = {
      description = "A call stack appearing in a trace.",
      id = "StackTrace",
      properties = {
        stackFrames = {
          ["$ref"] = "StackFrames",
          description = "Stack frames in this stack trace. A maximum of 128 frames are allowed.",
        },
        stackTraceHashId = {
          description = "The hash ID is used to conserve network bandwidth for duplicate stack traces within a single trace. Often multiple spans will have identical stack traces. The first occurrence of a stack trace should contain both the `stackFrame` content and a value in `stackTraceHashId`. Subsequent spans within the same request can refer to that stack trace by only setting `stackTraceHashId`.",
          format = "int64",
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
    TimeEvent = {
      description = "A time-stamped annotation or message event in the Span.",
      id = "TimeEvent",
      properties = {
        annotation = {
          ["$ref"] = "Annotation",
          description = "Text annotation with a set of attributes.",
        },
        messageEvent = {
          ["$ref"] = "MessageEvent",
          description = "An event describing a message sent/received between Spans.",
        },
        time = {
          description = "The timestamp indicating the time the event occurred.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TimeEvents = {
      description = "A collection of `TimeEvent`s. A `TimeEvent` is a time-stamped annotation on the span, consisting of either user-supplied key:value pairs, or details of a message sent/received between Spans.",
      id = "TimeEvents",
      properties = {
        droppedAnnotationsCount = {
          description = "The number of dropped annotations in all the included time events. If the value is 0, then no annotations were dropped.",
          format = "int32",
          type = "integer",
        },
        droppedMessageEventsCount = {
          description = "The number of dropped message events in all the included time events. If the value is 0, then no message events were dropped.",
          format = "int32",
          type = "integer",
        },
        timeEvent = {
          description = "A collection of `TimeEvent`s.",
          items = {
            ["$ref"] = "TimeEvent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TruncatableString = {
      description = "Represents a string that might be shortened to a specified length.",
      id = "TruncatableString",
      properties = {
        truncatedByteCount = {
          description = "The number of bytes removed from the original string. If this value is 0, then the string was not shortened.",
          format = "int32",
          type = "integer",
        },
        value = {
          description = "The shortened string. For example, if the original string is 500 bytes long and the limit of the string is 128 bytes, then `value` contains the first 128 bytes of the 500-byte string. Truncation always happens on a UTF8 character boundary. If there are multi-byte characters in the string, then the length of the shortened string might be less than the size limit.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Trace API",
  version = "v2",
  version_module = true,
}
