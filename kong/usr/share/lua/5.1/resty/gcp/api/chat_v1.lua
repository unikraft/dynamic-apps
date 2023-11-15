return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/chat.memberships"] = {
          description = "View, add, and remove members from conversations in Google Chat",
        },
        ["https://www.googleapis.com/auth/chat.memberships.readonly"] = {
          description = "View members in Google Chat conversations.",
        },
        ["https://www.googleapis.com/auth/chat.messages"] = {
          description = "View, compose, send, update, and delete messages, and add, view, and delete reactions to messages.",
        },
        ["https://www.googleapis.com/auth/chat.messages.create"] = {
          description = "Compose and send messages in Google Chat",
        },
        ["https://www.googleapis.com/auth/chat.messages.readonly"] = {
          description = "View messages and reactions in Google Chat",
        },
        ["https://www.googleapis.com/auth/chat.spaces"] = {
          description = "Create conversations and spaces and view or update metadata (including history settings) in Google Chat",
        },
        ["https://www.googleapis.com/auth/chat.spaces.readonly"] = {
          description = "View chat and spaces in Google Chat",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://chat.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Hangouts Chat",
  description = "Enables apps to fetch information and perform actions in Google Chat. Authentication is a prerequisite for using the Google Chat REST API.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/hangouts/chat",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "chat:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://chat.mtls.googleapis.com/",
  name = "chat",
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
    media = {
      methods = {
        download = {
          description = "Downloads media. Download is supported on the URI `/v1/media/{+name}?alt=media`.",
          flatPath = "v1/media/{mediaId}",
          httpMethod = "GET",
          id = "chat.media.download",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            resourceName = {
              description = "Name of the media that is being downloaded. See ReadRequest.resource_name.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/media/{+resourceName}",
          response = {
            ["$ref"] = "Media",
          },
          scopes = {
            "https://www.googleapis.com/auth/chat.messages",
            "https://www.googleapis.com/auth/chat.messages.readonly",
          },
          supportsMediaDownload = true,
        },
      },
    },
    spaces = {
      methods = {
        get = {
          description = "Returns a space. Requires [authentication](https://developers.google.com/chat/api/guides/auth). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.spaces` or `chat.spaces.readonly` authorization scope.",
          flatPath = "v1/spaces/{spacesId}",
          httpMethod = "GET",
          id = "chat.spaces.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name of the space, in the form \"spaces/*\". Format: spaces/{space}",
              location = "path",
              pattern = "^spaces/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Space",
          },
          scopes = {
            "https://www.googleapis.com/auth/chat.spaces",
            "https://www.googleapis.com/auth/chat.spaces.readonly",
          },
        },
        list = {
          description = "Lists spaces the caller is a member of. Requires [authentication](https://developers.google.com/chat/api/guides/auth). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.spaces` or `chat.spaces.readonly` authorization scope. Lists spaces visible to the caller or authenticated user. Group chats and DMs aren't listed until the first message is sent.",
          flatPath = "v1/spaces",
          httpMethod = "GET",
          id = "chat.spaces.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of spaces to return. The service may return fewer than this value. If unspecified, at most 100 spaces are returned. The maximum value is 1000; values above 1000 are coerced to 1000. Negative values return an INVALID_ARGUMENT error.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A page token, received from a previous list spaces call. Provide this to retrieve the subsequent page. When paginating, the filter value should match the call that provided the page token. Passing a different value may lead to unexpected results.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/spaces",
          response = {
            ["$ref"] = "ListSpacesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/chat.spaces",
            "https://www.googleapis.com/auth/chat.spaces.readonly",
          },
        },
      },
      resources = {
        members = {
          methods = {
            get = {
              description = "[Developer Preview](https://developers.google.com/workspace/preview): Returns a membership. Requires [authentication](https://developers.google.com/chat/api/guides/auth/). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.memberships` or `chat.memberships.readonly` authorization scope.",
              flatPath = "v1/spaces/{spacesId}/members/{membersId}",
              httpMethod = "GET",
              id = "chat.spaces.members.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the membership to retrieve. Format: spaces/{space}/members/{member}",
                  location = "path",
                  pattern = "^spaces/[^/]+/members/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Membership",
              },
              scopes = {
                "https://www.googleapis.com/auth/chat.memberships",
                "https://www.googleapis.com/auth/chat.memberships.readonly",
              },
            },
            list = {
              description = "[Developer Preview](https://developers.google.com/workspace/preview): Lists memberships in a space. Requires [authentication](https://developers.google.com/chat/api/guides/auth/). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.memberships` or `chat.memberships.readonly` authorization scope.",
              flatPath = "v1/spaces/{spacesId}/members",
              httpMethod = "GET",
              id = "chat.spaces.members.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of memberships to return. The service may return fewer than this value. If unspecified, at most 100 memberships are returned. The maximum value is 1000; values above 1000 are coerced to 1000. Negative values return an INVALID_ARGUMENT error.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous list memberships call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided should match the call that provided the page token. Passing different values to the other parameters may lead to unexpected results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the space for which to fetch a membership list. Format: spaces/{space}",
                  location = "path",
                  pattern = "^spaces/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/members",
              response = {
                ["$ref"] = "ListMembershipsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chat.memberships",
                "https://www.googleapis.com/auth/chat.memberships.readonly",
              },
            },
          },
        },
        messages = {
          methods = {
            create = {
              description = "Creates a message. For example usage, see [Create a message](https://developers.google.com/chat/api/guides/crudl/messages#create_a_message). Requires [authentication](https://developers.google.com/chat/api/guides/auth). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.messages` or `chat.messages.create` authorization scope. Because Chat provides authentication for [webhooks](https://developers.google.com/chat/how-tos/webhooks) as part of the URL that's generated when a webhook is registered, webhooks can create messages without a service account or user authentication.",
              flatPath = "v1/spaces/{spacesId}/messages",
              httpMethod = "POST",
              id = "chat.spaces.messages.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                messageId = {
                  description = "Optional. A custom name for a Chat message assigned at creation. Must start with `client-` and contain only lowercase letters, numbers, and hyphens up to 63 characters in length. Specify this field to get, update, or delete the message with the specified value. For example usage, see [Name a created message](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).",
                  location = "query",
                  type = "string",
                },
                messageReplyOption = {
                  description = "Optional. Specifies whether a message starts a thread or replies to one. Only supported in named spaces.",
                  enum = {
                    "MESSAGE_REPLY_OPTION_UNSPECIFIED",
                    "REPLY_MESSAGE_FALLBACK_TO_NEW_THREAD",
                    "REPLY_MESSAGE_OR_FAIL",
                  },
                  enumDescriptions = {
                    "Default. Starts a thread.",
                    "Creates the message as a reply to the thread specified by thread ID or thread_key. If it fails, the message starts a new thread instead.",
                    "Creates the message as a reply to the thread specified by thread ID or thread_key. If it fails, a NOT_FOUND error is returned instead.",
                  },
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the space in which to create a message. Format: spaces/{space}",
                  location = "path",
                  pattern = "^spaces/[^/]+$",
                  required = true,
                  type = "string",
                },
                requestId = {
                  description = "Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with that ID instead of creating a new message.",
                  location = "query",
                  type = "string",
                },
                threadKey = {
                  description = "Optional. Deprecated: Use thread.thread_key instead. Opaque thread identifier. To start or add to a thread, create a message and specify a `threadKey` or the thread.name. For example usage, see [Start or reply to a message thread](/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread).",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/messages",
              request = {
                ["$ref"] = "Message",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://www.googleapis.com/auth/chat.messages",
                "https://www.googleapis.com/auth/chat.messages.create",
              },
            },
            delete = {
              description = "Deletes a message. For example usage, see [Delete a message](https://developers.google.com/chat/api/guides/crudl/messages#delete_a_message). Requires [authentication](https://developers.google.com/chat/api/guides/auth). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.messages` authorization scope.",
              flatPath = "v1/spaces/{spacesId}/messages/{messagesId}",
              httpMethod = "DELETE",
              id = "chat.spaces.messages.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the message to be deleted, in the form \"spaces/*/messages/*\" Example: spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB",
                  location = "path",
                  pattern = "^spaces/[^/]+/messages/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/chat.messages",
              },
            },
            get = {
              description = "Returns a message. For example usage, see [Read a message](https://developers.google.com/chat/api/guides/crudl/messages#read_a_message). Requires [authentication](https://developers.google.com/chat/api/guides/auth). Fully supports [Service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.messages` or `chat.messages.readonly` authorization scope. Note: Might return a message from a blocked member or space.",
              flatPath = "v1/spaces/{spacesId}/messages/{messagesId}",
              httpMethod = "GET",
              id = "chat.spaces.messages.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the message to retrieve. Format: spaces/{space}/messages/{message} If the message begins with `client-`, then it has a custom name assigned by a Chat app that created it with the Chat REST API. That Chat app (but not others) can pass the custom name to get, update, or delete the message. To learn more, see [create and name a message] (https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).",
                  location = "path",
                  pattern = "^spaces/[^/]+/messages/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://www.googleapis.com/auth/chat.messages",
                "https://www.googleapis.com/auth/chat.messages.readonly",
              },
            },
            patch = {
              description = "Updates a message. For example usage, see [Update a message](https://developers.google.com/chat/api/guides/crudl/messages#update_a_message). Requires [authentication](https://developers.google.com/chat/api/guides/auth/). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.messages` authorization scope.",
              flatPath = "v1/spaces/{spacesId}/messages/{messagesId}",
              httpMethod = "PATCH",
              id = "chat.spaces.messages.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                allowMissing = {
                  description = "Optional. If `true` and the message is not found, a new message is created and `updateMask` is ignored. The specified message ID must be [client-assigned](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message) or the request fails.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`",
                  location = "path",
                  pattern = "^spaces/[^/]+/messages/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The field paths to update. Separate multiple values with commas. Currently supported field paths: - text - cards (Requires [service account authentication](/chat/api/guides/auth/service-accounts).) - cards_v2 ",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Message",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://www.googleapis.com/auth/chat.messages",
              },
            },
            update = {
              description = "Updates a message. For example usage, see [Update a message](https://developers.google.com/chat/api/guides/crudl/messages#update_a_message). Requires [authentication](https://developers.google.com/chat/api/guides/auth/). Fully supports [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts). Supports [user authentication](https://developers.google.com/chat/api/guides/auth/users) as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), which grants early access to certain features. [User authentication](https://developers.google.com/chat/api/guides/auth/users) requires the `chat.messages` authorization scope.",
              flatPath = "v1/spaces/{spacesId}/messages/{messagesId}",
              httpMethod = "PUT",
              id = "chat.spaces.messages.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                allowMissing = {
                  description = "Optional. If `true` and the message is not found, a new message is created and `updateMask` is ignored. The specified message ID must be [client-assigned](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message) or the request fails.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`",
                  location = "path",
                  pattern = "^spaces/[^/]+/messages/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The field paths to update. Separate multiple values with commas. Currently supported field paths: - text - cards (Requires [service account authentication](/chat/api/guides/auth/service-accounts).) - cards_v2 ",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Message",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://www.googleapis.com/auth/chat.messages",
              },
            },
          },
          resources = {
            attachments = {
              methods = {
                get = {
                  description = "Gets the metadata of a message attachment. The attachment data is fetched using the media API. Requires [service account authentication](https://developers.google.com/chat/api/guides/auth/service-accounts).",
                  flatPath = "v1/spaces/{spacesId}/messages/{messagesId}/attachments/{attachmentsId}",
                  httpMethod = "GET",
                  id = "chat.spaces.messages.attachments.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the attachment, in the form \"spaces/*/messages/*/attachments/*\".",
                      location = "path",
                      pattern = "^spaces/[^/]+/messages/[^/]+/attachments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Attachment",
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
  rootUrl = "https://chat.googleapis.com/",
  schemas = {
    ActionParameter = {
      description = "List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze 1 day, snooze next week. You might use action method = snooze(), passing the snooze type and snooze time in the list of string parameters.",
      id = "ActionParameter",
      properties = {
        key = {
          description = "The name of the parameter for the action script.",
          type = "string",
        },
        value = {
          description = "The value of the parameter.",
          type = "string",
        },
      },
      type = "object",
    },
    ActionResponse = {
      description = "Parameters that a Chat app can use to configure how it's response is posted.",
      id = "ActionResponse",
      properties = {
        dialogAction = {
          ["$ref"] = "DialogAction",
          description = "Input only. A response to an event related to a [dialog](https://developers.google.com/chat/how-tos/dialogs). Must be accompanied by `ResponseType.Dialog`.",
        },
        type = {
          description = "Input only. The type of Chat app response.",
          enum = {
            "TYPE_UNSPECIFIED",
            "NEW_MESSAGE",
            "UPDATE_MESSAGE",
            "UPDATE_USER_MESSAGE_CARDS",
            "REQUEST_CONFIG",
            "DIALOG",
          },
          enumDescriptions = {
            "Default type; will be handled as NEW_MESSAGE.",
            "Post as a new message in the topic.",
            "Update the Chat app's message. This is only permitted on a CARD_CLICKED event where the message sender type is BOT.",
            "Update the cards on a user's message. This is only permitted as a response to a MESSAGE event with a matched url, or a CARD_CLICKED event where the message sender type is HUMAN. Text will be ignored.",
            "Privately ask the user for additional auth or config.",
            "Presents a [dialog](https://developers.google.com/chat/how-tos/dialogs).",
          },
          type = "string",
        },
        url = {
          description = "Input only. URL for users to auth or config. (Only for REQUEST_CONFIG response types.)",
          type = "string",
        },
      },
      type = "object",
    },
    ActionStatus = {
      description = "Represents the status for a request to either invoke or submit a [dialog](https://developers.google.com/chat/how-tos/dialogs).",
      id = "ActionStatus",
      properties = {
        statusCode = {
          description = "The status code.",
          enum = {
            "OK",
            "CANCELLED",
            "UNKNOWN",
            "INVALID_ARGUMENT",
            "DEADLINE_EXCEEDED",
            "NOT_FOUND",
            "ALREADY_EXISTS",
            "PERMISSION_DENIED",
            "UNAUTHENTICATED",
            "RESOURCE_EXHAUSTED",
            "FAILED_PRECONDITION",
            "ABORTED",
            "OUT_OF_RANGE",
            "UNIMPLEMENTED",
            "INTERNAL",
            "UNAVAILABLE",
            "DATA_LOSS",
          },
          enumDescriptions = {
            "Not an error; returned on success. HTTP Mapping: 200 OK",
            "The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request",
            "Unknown error. For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error",
            "The client specified an invalid argument. Note that this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request",
            "The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout",
            "Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used. HTTP Mapping: 404 Not Found",
            "The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict",
            "The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden",
            "The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized",
            "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests",
            "The operation was rejected because the system is not in a state required for the operation's execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a) Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use `ABORTED` if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, `FAILED_PRECONDITION` should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request",
            "The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 409 Conflict",
            "The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size. There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done. HTTP Mapping: 400 Bad Request",
            "The operation is not implemented or is not supported/enabled in this service. HTTP Mapping: 501 Not Implemented",
            "Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error",
            "The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503 Service Unavailable",
            "Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error",
          },
          type = "string",
        },
        userFacingMessage = {
          description = "The message to send users about the status of their request. If unset, a generic message based on the `status_code` is sent.",
          type = "string",
        },
      },
      type = "object",
    },
    Annotation = {
      description = "Annotations associated with the plain-text body of the message. Example plain-text message body: ``` Hello @FooBot how are you!\" ``` The corresponding annotations metadata: ``` \"annotations\":[{ \"type\":\"USER_MENTION\", \"startIndex\":6, \"length\":7, \"userMention\": { \"user\": { \"name\":\"users/107946847022116401880\", \"displayName\":\"FooBot\", \"avatarUrl\":\"https://goo.gl/aeDtrS\", \"type\":\"BOT\" }, \"type\":\"MENTION\" } }] ```",
      id = "Annotation",
      properties = {
        length = {
          description = "Length of the substring in the plain-text message body this annotation corresponds to.",
          format = "int32",
          type = "integer",
        },
        slashCommand = {
          ["$ref"] = "SlashCommandMetadata",
          description = "The metadata for a slash command.",
        },
        startIndex = {
          description = "Start index (0-based, inclusive) in the plain-text message body this annotation corresponds to.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of this annotation.",
          enum = {
            "ANNOTATION_TYPE_UNSPECIFIED",
            "USER_MENTION",
            "SLASH_COMMAND",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "A user is mentioned.",
            "A slash command is invoked.",
          },
          type = "string",
        },
        userMention = {
          ["$ref"] = "UserMentionMetadata",
          description = "The metadata of user mention.",
        },
      },
      type = "object",
    },
    Attachment = {
      description = "An attachment in Google Chat.",
      id = "Attachment",
      properties = {
        attachmentDataRef = {
          ["$ref"] = "AttachmentDataRef",
          description = "A reference to the attachment data. This is used with the media API to download the attachment data.",
        },
        contentName = {
          description = "The original file name for the content, not the full path.",
          type = "string",
        },
        contentType = {
          description = "The content type (MIME type) of the file.",
          type = "string",
        },
        downloadUri = {
          description = "Output only. The download URL which should be used to allow a human user to download the attachment. Chat apps should not use this URL to download attachment content.",
          readOnly = true,
          type = "string",
        },
        driveDataRef = {
          ["$ref"] = "DriveDataRef",
          description = "A reference to the drive attachment. This is used with the Drive API.",
        },
        name = {
          description = "Resource name of the attachment, in the form \"spaces/*/messages/*/attachments/*\".",
          type = "string",
        },
        source = {
          description = "The source of the attachment.",
          enum = {
            "SOURCE_UNSPECIFIED",
            "DRIVE_FILE",
            "UPLOADED_CONTENT",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        thumbnailUri = {
          description = "Output only. The thumbnail URL which should be used to preview the attachment to a human user. Chat apps should not use this URL to download attachment content.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    AttachmentDataRef = {
      id = "AttachmentDataRef",
      properties = {
        resourceName = {
          description = "The resource name of the attachment data. This is used with the media API to download the attachment data.",
          type = "string",
        },
      },
      type = "object",
    },
    Button = {
      description = "A button. Can be a text button or an image button.",
      id = "Button",
      properties = {
        imageButton = {
          ["$ref"] = "ImageButton",
          description = "A button with image and onclick action.",
        },
        textButton = {
          ["$ref"] = "TextButton",
          description = "A button with text and onclick action.",
        },
      },
      type = "object",
    },
    Card = {
      description = "A card is a UI element that can contain UI widgets such as texts, images.",
      id = "Card",
      properties = {
        cardActions = {
          description = "The actions of this card.",
          items = {
            ["$ref"] = "CardAction",
          },
          type = "array",
        },
        header = {
          ["$ref"] = "CardHeader",
          description = "The header of the card. A header usually contains a title and an image.",
        },
        name = {
          description = "Name of the card.",
          type = "string",
        },
        sections = {
          description = "Sections are separated by a line divider.",
          items = {
            ["$ref"] = "Section",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CardAction = {
      description = "A card action is the action associated with the card. For an invoice card, a typical action would be: delete invoice, email invoice or open the invoice in browser. Not supported by Google Chat apps.",
      id = "CardAction",
      properties = {
        actionLabel = {
          description = "The label used to be displayed in the action menu item.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
          description = "The onclick action for this action item.",
        },
      },
      type = "object",
    },
    CardHeader = {
      id = "CardHeader",
      properties = {
        imageStyle = {
          description = "The image's type (e.g. square border or circular border).",
          enum = {
            "IMAGE_STYLE_UNSPECIFIED",
            "IMAGE",
            "AVATAR",
          },
          enumDescriptions = {
            "",
            "Square border.",
            "Circular border.",
          },
          type = "string",
        },
        imageUrl = {
          description = "The URL of the image in the card header.",
          type = "string",
        },
        subtitle = {
          description = "The subtitle of the card header.",
          type = "string",
        },
        title = {
          description = "The title must be specified. The header has a fixed height: if both a title and subtitle is specified, each will take up 1 line. If only the title is specified, it will take up both lines.",
          type = "string",
        },
      },
      type = "object",
    },
    CardWithId = {
      description = "Widgets for Chat apps to specify.",
      id = "CardWithId",
      properties = {
        card = {
          ["$ref"] = "GoogleAppsCardV1Card",
          description = "Card proto that allows Chat apps to specify UI elements and editable widgets.",
        },
        cardId = {
          description = "Required for `cardsV2` messages. Chat app-specified identifier for this widget. Scoped within a message.",
          type = "string",
        },
      },
      type = "object",
    },
    ChatAppLogEntry = {
      description = "JSON payload of error messages. If the Cloud Logging API is enabled, these error messages are logged to [Google Cloud Logging](https://cloud.google.com/logging/docs).",
      id = "ChatAppLogEntry",
      properties = {
        deployment = {
          description = "The deployment that caused the error. For Chat apps built in Apps Script, this is the deployment ID defined by Apps Script.",
          type = "string",
        },
        deploymentFunction = {
          description = "The unencrypted `callback_method` name that was running when the error was encountered.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "The error code and message.",
        },
      },
      type = "object",
    },
    Color = {
      description = "Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to/from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't carry information about the absolute color space that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most 1e-5. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...",
      id = "Color",
      properties = {
        alpha = {
          description = "The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: `pixel color = alpha * (this color) + (1.0 - alpha) * (background color)` This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).",
          format = "float",
          type = "number",
        },
        blue = {
          description = "The amount of blue in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        green = {
          description = "The amount of green in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        red = {
          description = "The amount of red in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    CommonEventObject = {
      description = "Represents information about the user's client, such as locale, host app, and platform. For Chat apps, `CommonEventObject` includes data submitted by users interacting with cards, like data entered in [dialogs](https://developers.google.com/chat/how-tos/dialogs).",
      id = "CommonEventObject",
      properties = {
        formInputs = {
          additionalProperties = {
            ["$ref"] = "Inputs",
          },
          description = "A map containing the current values of the widgets in a card. The map keys are the string IDs assigned to each widget, and the values represent inputs to the widget. Depending on the input data type, a different object represents each input: For single-value widgets, `StringInput`. For multi-value widgets, an array of `StringInput` objects. For a date-time picker, a `DateTimeInput`. For a date-only picker, a `DateInput`. For a time-only picker, a `TimeInput`. Corresponds with the data entered by a user on a card in a [dialog](https://developers.google.com/chat/how-tos/dialogs).",
          type = "object",
        },
        hostApp = {
          description = "The hostApp enum which indicates the app the add-on is invoked from. Always `CHAT` for Chat apps.",
          enum = {
            "UNSPECIFIED_HOST_APP",
            "GMAIL",
            "CALENDAR",
            "DRIVE",
            "DEMO",
            "DOCS",
            "MEET",
            "SHEETS",
            "SLIDES",
            "DRAWINGS",
            "CHAT",
          },
          enumDescriptions = {
            "Google can't identify a host app.",
            "The add-on launches from Gmail.",
            "The add-on launches from Google Calendar.",
            "The add-on launches from Google Drive.",
            "Not used.",
            "The add-on launches from Google Docs.",
            "The add-on launches from Google Meet.",
            "The add-on launches from Google Sheets.",
            "The add-on launches from Google Slides.",
            "The add-on launches from Google Drawings.",
            "A Google Chat app. Not used for Google Workspace Add-ons.",
          },
          type = "string",
        },
        invokedFunction = {
          description = "Name of the invoked function associated with the widget. Only set for Chat apps.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "Custom [parameters](/chat/api/reference/rest/v1/cards#ActionParameter) passed to the invoked function. Both keys and values must be strings.",
          type = "object",
        },
        platform = {
          description = "The platform enum which indicates the platform where the event originates (`WEB`, `IOS`, or `ANDROID`). Not supported by Chat apps.",
          enum = {
            "UNKNOWN_PLATFORM",
            "WEB",
            "IOS",
            "ANDROID",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        timeZone = {
          ["$ref"] = "TimeZone",
          description = "The timezone ID and offset from Coordinated Universal Time (UTC).",
        },
        userLocale = {
          description = "The full `locale.displayName` in the format of [ISO 639 language code]-[ISO 3166 country/region code] such as \"en-US\". Not supported by Chat apps.",
          type = "string",
        },
      },
      type = "object",
    },
    DateInput = {
      description = "Date input values. Not supported by Chat apps.",
      id = "DateInput",
      properties = {
        msSinceEpoch = {
          description = "Time since epoch time, in milliseconds.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DateTimeInput = {
      description = "Date and time input values. Not supported by Chat apps.",
      id = "DateTimeInput",
      properties = {
        hasDate = {
          description = "Whether the `datetime` input includes a calendar date.",
          type = "boolean",
        },
        hasTime = {
          description = "Whether the `datetime` input includes a timestamp.",
          type = "boolean",
        },
        msSinceEpoch = {
          description = "Time since epoch time, in milliseconds.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DeprecatedEvent = {
      description = "Google Chat events.",
      id = "DeprecatedEvent",
      properties = {
        action = {
          ["$ref"] = "FormAction",
          description = "The form action data associated with an interactive card that was clicked. Only populated for CARD_CLICKED events. See the [Interactive Cards guide](/chat/how-tos/cards-onclick) for more information.",
        },
        common = {
          ["$ref"] = "CommonEventObject",
          description = "Represents information about the user's client, such as locale, host app, and platform. For Chat apps, `CommonEventObject` includes information submitted by users interacting with [dialogs](https://developers.google.com/chat/how-tos/dialogs), like data entered on a card.",
        },
        configCompleteRedirectUrl = {
          description = "The URL the Chat app should redirect the user to after they have completed an authorization or configuration flow outside of Google Chat. See the [Authorizing access to 3p services guide](/chat/how-tos/auth-3p) for more information.",
          type = "string",
        },
        dialogEventType = {
          description = "The type of [dialog](https://developers.google.com/chat/how-tos/dialogs) event received.",
          enum = {
            "TYPE_UNSPECIFIED",
            "REQUEST_DIALOG",
            "SUBMIT_DIALOG",
            "CANCEL_DIALOG",
          },
          enumDescriptions = {
            "This could be used when the corresponding event is not dialog related. For example an @mention.",
            "Any user action that opens a [dialog](https://developers.google.com/chat/how-tos/dialogs).",
            "A card click event from a [dialog](https://developers.google.com/chat/how-tos/dialogs).",
            "The [dialog](https://developers.google.com/chat/how-tos/dialogs) was cancelled.",
          },
          type = "string",
        },
        eventTime = {
          description = "The timestamp indicating when the event occurred.",
          format = "google-datetime",
          type = "string",
        },
        isDialogEvent = {
          description = "True when the event is related to [dialogs](https://developers.google.com/chat/how-tos/dialogs).",
          type = "boolean",
        },
        message = {
          ["$ref"] = "Message",
          description = "The message that triggered the event, if applicable.",
        },
        space = {
          ["$ref"] = "Space",
          description = "The space in which the event occurred.",
        },
        threadKey = {
          description = "The Chat app-defined key for the thread related to the event. See the thread_key field of the `spaces.message.create` request for more information.",
          type = "string",
        },
        token = {
          description = "A secret value that legacy Chat apps can use to verify if a request is from Google. Google randomly generates the token, and its value remains static. You can obtain, revoke, or regenerate the token from the [Chat API configuration page](https://console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-chat) in the Google Cloud Console. Modern Chat apps don't use this field. It is absent from API responses and the [Chat API configuration page](https://console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-chat).",
          type = "string",
        },
        type = {
          description = "The type of the event.",
          enum = {
            "UNSPECIFIED",
            "MESSAGE",
            "ADDED_TO_SPACE",
            "REMOVED_FROM_SPACE",
            "CARD_CLICKED",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "A message was sent in a space.",
            "The Chat app was added to a space.",
            "The Chat app was removed from a space.",
            "The Chat app's interactive card was clicked.",
          },
          type = "string",
        },
        user = {
          ["$ref"] = "User",
          description = "The user that triggered the event.",
        },
      },
      type = "object",
    },
    Dialog = {
      description = "Wrapper around the card body of the dialog.",
      id = "Dialog",
      properties = {
        body = {
          ["$ref"] = "GoogleAppsCardV1Card",
          description = "Input only. Body of the dialog, which is rendered in a modal. Google Chat apps do not support the following card entities: `DateTimePicker`, `OnChangeAction`.",
        },
      },
      type = "object",
    },
    DialogAction = {
      description = "Contains a [dialog](https://developers.google.com/chat/how-tos/dialogs) and request status code.",
      id = "DialogAction",
      properties = {
        actionStatus = {
          ["$ref"] = "ActionStatus",
          description = "Input only. Status for a request to either invoke or submit a [dialog](https://developers.google.com/chat/how-tos/dialogs). Displays a status and message to users, if necessary. For example, in case of an error or success.",
        },
        dialog = {
          ["$ref"] = "Dialog",
          description = "Input only. [Dialog](https://developers.google.com/chat/how-tos/dialogs) for the request.",
        },
      },
      type = "object",
    },
    DriveDataRef = {
      description = "A reference to the data of a drive attachment.",
      id = "DriveDataRef",
      properties = {
        driveFileId = {
          description = "The id for the drive file, for use with the Drive API.",
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
    FormAction = {
      description = "A form action describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.",
      id = "FormAction",
      properties = {
        actionMethodName = {
          description = "The method name is used to identify which part of the form triggered the form submission. This information is echoed back to the Chat app as part of the card click event. The same method name can be used for several elements that trigger a common behavior if desired.",
          type = "string",
        },
        parameters = {
          description = "List of action parameters.",
          items = {
            ["$ref"] = "ActionParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Action = {
      description = "An action that describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.",
      id = "GoogleAppsCardV1Action",
      properties = {
        ["function"] = {
          description = "A custom function to invoke when the containing element is clicked or othrwise activated. For example usage, see [Create interactive cards](https://developers.google.com/chat/how-tos/cards-onclick).",
          type = "string",
        },
        interaction = {
          description = "Optional. Required when opening a [dialog](https://developers.google.com/chat/how-tos/dialogs). What to do in response to an interaction with a user, such as a user clicking button on a card message. If unspecified, the app responds by executing an `action` - like opening a link or running a function - as normal. By specifying an `interaction`, the app can respond in special interactive ways. For example, by setting `interaction` to `OPEN_DIALOG`, the app can open a [dialog](https://developers.google.com/chat/how-tos/dialogs). When specified, a loading indicator is not shown. Supported by Chat apps, but not Google Workspace Add-ons. If specified for an add-on, the entire card is stripped and nothing is shown in the client.",
          enum = {
            "INTERACTION_UNSPECIFIED",
            "OPEN_DIALOG",
          },
          enumDescriptions = {
            "Default value. The `action` executes as normal.",
            "Opens a [dialog](https://developers.google.com/chat/how-tos/dialogs), a windowed, card-based interface that Chat apps use to interact with users. Only supported by Chat apps in response to button-clicks on card messages. Not supported by Google Workspace Add-ons. If specified for an add-on, the entire card is stripped and nothing is shown in the client.",
          },
          type = "string",
        },
        loadIndicator = {
          description = "Specifies the loading indicator that the action displays while making the call to the action.",
          enum = {
            "SPINNER",
            "NONE",
          },
          enumDescriptions = {
            "Displays a spinner to indicate that content is loading.",
            "Nothing is displayed.",
          },
          type = "string",
        },
        parameters = {
          description = "List of action parameters.",
          items = {
            ["$ref"] = "GoogleAppsCardV1ActionParameter",
          },
          type = "array",
        },
        persistValues = {
          description = "Indicates whether form values persist after the action. The default value is `false`. If `true`, form values remain after the action is triggered. When using [LoadIndicator.NONE](https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator) for actions, `persist_values` = `true`is recommended, as it ensures that any changes made by the user after form or on change actions are sent to the server are not overwritten by the response. If `false`, the form values are cleared when the action is triggered. When `persist_values` is set to `false`, it is strongly recommended that the card use [LoadIndicator.SPINNER](https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator) for all actions, as this locks the UI to ensure no changes are made by the user while the action is being processed. Not supported by Chat apps.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1ActionParameter = {
      description = "List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze 1 day, snooze next week. You might use action method = snooze(), passing the snooze type and snooze time in the list of string parameters. To learn more, see [CommonEventObject](https://developers.google.com/chat/api/reference/rest/v1/Event#commoneventobject).",
      id = "GoogleAppsCardV1ActionParameter",
      properties = {
        key = {
          description = "The name of the parameter for the action script.",
          type = "string",
        },
        value = {
          description = "The value of the parameter.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1BorderStyle = {
      description = "Represents the complete border style applied to items in a widget.",
      id = "GoogleAppsCardV1BorderStyle",
      properties = {
        cornerRadius = {
          description = "The corner radius for the border.",
          format = "int32",
          type = "integer",
        },
        strokeColor = {
          ["$ref"] = "Color",
          description = "The colors to use when the type is `BORDER_TYPE_STROKE`.",
        },
        type = {
          description = "The border type.",
          enum = {
            "BORDER_TYPE_UNSPECIFIED",
            "NO_BORDER",
            "STROKE",
          },
          enumDescriptions = {
            "No value specified.",
            "Default value. No border.",
            "Outline.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Button = {
      description = "A text, icon, or text + icon button that users can click. To make an image a clickable button, specify an Image (not an ImageComponent) and set an `onClick` action.",
      id = "GoogleAppsCardV1Button",
      properties = {
        altText = {
          description = "The alternative text used for accessibility. Set descriptive text that lets users know what the button does. For example, if a button opens a hyperlink, you might write: \"Opens a new browser tab and navigates to the Google Chat developer documentation at https://developers.google.com/chat\". Has no effect when an icon is set; use `icon.alt_text` instead.",
          type = "string",
        },
        color = {
          ["$ref"] = "Color",
          description = "If set, the button is filled with a solid background color and the font color changes to maintain contrast with the background color. For example, setting a blue background will likely result in white text. If unset, the image background is white and the font color is blue. For red, green and blue, the value of each field is a `float` number that can be expressed in either of two ways: as a number between 0 and 255 divided by 255 (153/255) or as a value between 0 and 1 (0.6). 0 represents the absence of a color and 1 or 255/255 represent the full presence of that color on the RGB scale. Optionally set alpha, which sets a level of transparency using this equation: ``` pixel color = alpha * (this color) + (1.0 - alpha) * (background color) ``` For alpha, a value of 1 corresponds with a solid color, and a value of 0 corresponds with a completely transparent color. For example, the following color represents a half transparent red: ``` \"color\": { \"red\": 1, \"green\": 0, \"blue\": 0, \"alpha\": 0.5 } ```",
        },
        disabled = {
          description = "If `true`, the button is displayed in an inactive state and doesn't respond to user actions.",
          type = "boolean",
        },
        icon = {
          ["$ref"] = "GoogleAppsCardV1Icon",
          description = "The icon image. If both `icon` and `text` are set, then the icon appears in place of the text. Support for both an icon and text is coming soon.",
        },
        onClick = {
          ["$ref"] = "GoogleAppsCardV1OnClick",
          description = "The action to perform when the button is clicked, such as opening a hyperlink or running a custom function.",
        },
        text = {
          description = "The text displayed inside the button.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1ButtonList = {
      description = "A list of buttons layed out horizontally.",
      id = "GoogleAppsCardV1ButtonList",
      properties = {
        buttons = {
          description = "An array of buttons.",
          items = {
            ["$ref"] = "GoogleAppsCardV1Button",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Card = {
      description = "Cards support a defined layout, interactive UI elements like buttons, and rich media like images. Use cards to present detailed information, gather information from users, and guide users to take a next step. In Google Chat, cards appear in several places: - As stand-alone messages. - Accompanying a text message, just beneath the text message. - As a [dialog](https://developers.google.com/chat/how-tos/dialogs). The following example JSON creates a \"contact card\" that features: - A header with the contact's name, job title, avatar picture. - A section with the contact information, including formatted text. - Buttons that users can click to share the contact or see more or less info. ![Example contact card](https://developers.google.com/chat/images/card_api_reference.png) ``` { \"cardsV2\": [ { \"cardId\": \"unique-card-id\", \"card\": { \"header\": { \"title\": \"Sasha\", \"subtitle\": \"Software Engineer\", \"imageUrl\": \"https://developers.google.com/chat/images/quickstart-app-avatar.png\", \"imageType\": \"CIRCLE\", \"imageAltText\": \"Avatar for Sasha\", }, \"sections\": [ { \"header\": \"Contact Info\", \"collapsible\": true, \"uncollapsibleWidgetsCount\": 1, \"widgets\": [ { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"EMAIL\", }, \"text\": \"sasha@example.com\", } }, { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"PERSON\", }, \"text\": \"Online\", }, }, { \"decoratedText\": { \"startIcon\": { \"knownIcon\": \"PHONE\", }, \"text\": \"+1 (555) 555-1234\", } }, { \"buttonList\": { \"buttons\": [ { \"text\": \"Share\", \"onClick\": { \"openLink\": { \"url\": \"https://example.com/share\", } } }, { \"text\": \"Edit\", \"onClick\": { \"action\": { \"function\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"EDIT\", } ], } } }, ], } }, ], }, ], }, } ], } ```",
      id = "GoogleAppsCardV1Card",
      properties = {
        cardActions = {
          description = "The card's actions. Actions are added to the card's toolbar menu. Because Chat app cards have no toolbar, `cardActions[]` is not supported by Chat apps. For example, the following JSON constructs a card action menu with Settings and Send Feedback options: ``` \"card_actions\": [ { \"actionLabel\": \"Settings\", \"onClick\": { \"action\": { \"functionName\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\", \"value\": \"SETTING\" } ], \"loadIndicator\": \"LoadIndicator.SPINNER\" } } }, { \"actionLabel\": \"Send Feedback\", \"onClick\": { \"openLink\": { \"url\": \"https://example.com/feedback\" } } } ] ```",
          items = {
            ["$ref"] = "GoogleAppsCardV1CardAction",
          },
          type = "array",
        },
        displayStyle = {
          description = "In Google Workspace add-ons, sets the display properties of the `peekCardHeader`. Not supported by Chat apps.",
          enum = {
            "DISPLAY_STYLE_UNSPECIFIED",
            "PEEK",
            "REPLACE",
          },
          enumDescriptions = {
            "Do not use.",
            "The header of the card appears at the bottom of the sidebar, partially covering the current top card of the stack. Clicking the header pops the card into the card stack. If the card has no header, a generated header is used instead.",
            "Default value. The card is shown by replacing the view of the top card in the card stack.",
          },
          type = "string",
        },
        fixedFooter = {
          ["$ref"] = "GoogleAppsCardV1CardFixedFooter",
          description = "The fixed footer shown at the bottom of this card. Setting `fixedFooter` without specifying a `primaryButton` or a `secondaryButton` causes an error. Chat apps support `fixedFooter` in [dialogs](https://developers.google.com/chat/how-tos/dialogs), but not in [card messages](https://developers.google.com/chat/api/guides/message-formats/cards).",
        },
        header = {
          ["$ref"] = "GoogleAppsCardV1CardHeader",
          description = "The header of the card. A header usually contains a leading image and a title. Headers always appear at the top of a card.",
        },
        name = {
          description = "Name of the card. Used as a card identifier in card navigation. Because Chat apps don't support card navigation, they ignore this field.",
          type = "string",
        },
        peekCardHeader = {
          ["$ref"] = "GoogleAppsCardV1CardHeader",
          description = "When displaying contextual content, the peek card header acts as a placeholder so that the user can navigate forward between the homepage cards and the contextual cards. Not supported by Chat apps.",
        },
        sections = {
          description = "Contains a collection of widgets. Each section has its own, optional header. Sections are visually separated by a line divider.",
          items = {
            ["$ref"] = "GoogleAppsCardV1Section",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1CardAction = {
      description = "A card action is the action associated with the card. For example, an invoice card might include actions such as delete invoice, email invoice, or open the invoice in a browser. Not supported by Chat apps.",
      id = "GoogleAppsCardV1CardAction",
      properties = {
        actionLabel = {
          description = "The label that displays as the action menu item.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "GoogleAppsCardV1OnClick",
          description = "The `onClick` action for this action item.",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1CardFixedFooter = {
      description = "A persistent (sticky) footer that that appears at the bottom of the card. Setting `fixedFooter` without specifying a `primaryButton` or a `secondaryButton` causes an error. Chat apps support `fixedFooter` in [dialogs](https://developers.google.com/chat/how-tos/dialogs), but not in [card messages](https://developers.google.com/chat/api/guides/message-formats/cards).",
      id = "GoogleAppsCardV1CardFixedFooter",
      properties = {
        primaryButton = {
          ["$ref"] = "GoogleAppsCardV1Button",
          description = "The primary button of the fixed footer. The button must be a text button with text and color set.",
        },
        secondaryButton = {
          ["$ref"] = "GoogleAppsCardV1Button",
          description = "The secondary button of the fixed footer. The button must be a text button with text and color set. `primaryButton` must be set if `secondaryButton` is set.",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1CardHeader = {
      description = "Represents a card header.",
      id = "GoogleAppsCardV1CardHeader",
      properties = {
        imageAltText = {
          description = "The alternative text of this image which is used for accessibility.",
          type = "string",
        },
        imageType = {
          description = "The shape used to crop the image.",
          enum = {
            "SQUARE",
            "CIRCLE",
          },
          enumDescriptions = {
            "Default value. Applies a square mask to the image. For example, a 4x3 image becomes 3x3.",
            "Applies a circular mask to the image. For example, a 4x3 image becomes a circle with a diameter of 3.",
          },
          type = "string",
        },
        imageUrl = {
          description = "The HTTPS URL of the image in the card header.",
          type = "string",
        },
        subtitle = {
          description = "The subtitle of the card header. If specified, appears on its own line below the `title`.",
          type = "string",
        },
        title = {
          description = "Required. The title of the card header. The header has a fixed height: if both a title and subtitle are specified, each takes up one line. If only the title is specified, it takes up both lines.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1DateTimePicker = {
      description = "Lets users specify a date, a time, or both a date and a time. Accepts text input from users, but features an interactive date and time selector that helps users enter correctly-formatted dates and times. If users enter a date or time incorrectly, the widget shows an error that prompts users to enter the correct format. Not supported by Chat apps. Support by Chat apps coming soon.",
      id = "GoogleAppsCardV1DateTimePicker",
      properties = {
        label = {
          description = "The text that prompts users to enter a date, time, or datetime. Specify text that helps the user enter the information your app needs. For example, if users are setting an appointment, then a label like \"Appointment date\" or \"Appointment date and time\" might work well.",
          type = "string",
        },
        name = {
          description = "The name by which the datetime picker is identified in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "GoogleAppsCardV1Action",
          description = "Triggered when the user clicks **Save** or **Clear** from the datetime picker interface.",
        },
        timezoneOffsetDate = {
          description = "The number representing the time zone offset from UTC, in minutes. If set, the `value_ms_epoch` is displayed in the specified time zone. If not set, it uses the user's time zone setting on the client side.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "What kind of date and time input the datetime picker supports.",
          enum = {
            "DATE_AND_TIME",
            "DATE_ONLY",
            "TIME_ONLY",
          },
          enumDescriptions = {
            "The user can select a date and time.",
            "The user can only select a date.",
            "The user can only select a time.",
          },
          type = "string",
        },
        valueMsEpoch = {
          description = "The value displayed as the default value before user input or previous user input, represented in milliseconds ([Epoch time](https://en.wikipedia.org/wiki/Unix_time)). For `DATE_AND_TIME` type, the full epoch value is used. For `DATE_ONLY` type, only date of the epoch time is used. For `TIME_ONLY` type, only time of the epoch time is used. For example, to represent 3:00 AM, set epoch time to `3 * 60 * 60 * 1000`.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1DecoratedText = {
      description = "A widget that displays text with optional decorations such as a label above or below the text, an icon in front of the text, a selection widget or a button after the text.",
      id = "GoogleAppsCardV1DecoratedText",
      properties = {
        bottomLabel = {
          description = "The text that appears below `text`. Always truncates. Supports simple formatting. See Text formatting for formatting details.",
          type = "string",
        },
        button = {
          ["$ref"] = "GoogleAppsCardV1Button",
          description = "A button that can be clicked to trigger an action.",
        },
        endIcon = {
          ["$ref"] = "GoogleAppsCardV1Icon",
          description = "An icon displayed after the text. Supports [standard](https://developers.google.com/chat/api/guides/message-formats/cards#builtinicons) and [custom](https://developers.google.com/chat/api/guides/message-formats/cards#customicons) icons.",
        },
        icon = {
          ["$ref"] = "GoogleAppsCardV1Icon",
          description = "Deprecated in favor of `startIcon`.",
        },
        onClick = {
          ["$ref"] = "GoogleAppsCardV1OnClick",
          description = "When users click on `topLabel` or `bottomLabel`, this action triggers.",
        },
        startIcon = {
          ["$ref"] = "GoogleAppsCardV1Icon",
          description = "The icon displayed in front of the text.",
        },
        switchControl = {
          ["$ref"] = "GoogleAppsCardV1SwitchControl",
          description = "A switch widget can be clicked to change its state and trigger an action. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon.",
        },
        text = {
          description = "Required. The primary text. Supports simple formatting. See Text formatting for formatting details.",
          type = "string",
        },
        topLabel = {
          description = "The text that appears above `text`. Always truncates. Supports simple formatting. See Text formatting for formatting details.",
          type = "string",
        },
        wrapText = {
          description = "The wrap text setting. If `true`, the text wraps and displays on multiple lines. Otherwise, the text is truncated. Only applies to `text`, not `topLabel` and `bottomLabel`.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Divider = {
      description = "Displays a divider between widgets, a horizontal line. For example, the following JSON creates a divider: ``` \"divider\": { } ```",
      id = "GoogleAppsCardV1Divider",
      properties = {},
      type = "object",
    },
    GoogleAppsCardV1Grid = {
      description = "Displays a grid with a collection of items. A grid supports any number of columns and items. The number of rows is determined by items divided by columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items and 2 columns has 6 rows. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon. For example, the following JSON creates a 2 column grid with a single item: ``` \"grid\": { \"title\": \"A fine collection of items\", \"numColumns\": 2, \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4.0 }, \"items\": [ \"image\": { \"imageUri\": \"https://www.example.com/image.png\", \"cropStyle\": { \"type\": \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\": \"An item\", \"textAlignment\": \"CENTER\" ], \"onClick\": { \"openLink\": { \"url\":\"https://www.example.com\" } } } ```",
      id = "GoogleAppsCardV1Grid",
      properties = {
        borderStyle = {
          ["$ref"] = "GoogleAppsCardV1BorderStyle",
          description = "The border style to apply to each grid item.",
        },
        columnCount = {
          description = "The number of columns to display in the grid. A default value is used if this field isn't specified, and that default value is different depending on where the grid is shown (dialog versus companion).",
          format = "int32",
          type = "integer",
        },
        items = {
          description = "The items to display in the grid.",
          items = {
            ["$ref"] = "GoogleAppsCardV1GridItem",
          },
          type = "array",
        },
        onClick = {
          ["$ref"] = "GoogleAppsCardV1OnClick",
          description = "This callback is reused by each individual grid item, but with the item's identifier and index in the items list added to the callback's parameters.",
        },
        title = {
          description = "The text that displays in the grid header.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1GridItem = {
      description = "Represents a single item in the grid layout.",
      id = "GoogleAppsCardV1GridItem",
      properties = {
        id = {
          description = "A user-specified identifier for this grid item. This identifier is returned in the parent Grid's onClick callback parameters.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleAppsCardV1ImageComponent",
          description = "The image that displays in the grid item.",
        },
        layout = {
          description = "The layout to use for the grid item.",
          enum = {
            "GRID_ITEM_LAYOUT_UNSPECIFIED",
            "TEXT_BELOW",
            "TEXT_ABOVE",
          },
          enumDescriptions = {
            "No layout specified.",
            "The title and subtitle are shown below the grid item's image.",
            "The title and subtitle are shown above the grid item's image.",
          },
          type = "string",
        },
        subtitle = {
          description = "The grid item's subtitle.",
          type = "string",
        },
        title = {
          description = "The grid item's title.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Icon = {
      description = "An icon displayed in a widget on a card. Supports [standard](https://developers.google.com/chat/api/guides/message-formats/cards) and [custom](https://developers.google.com/chat/api/guides/message-formats/cards#customicons) icons.",
      id = "GoogleAppsCardV1Icon",
      properties = {
        altText = {
          description = "Optional. A description of the icon used for accessibility. If unspecified, a default value is provided. As a best practice, you should set a helpful description. For example, if an icon displays a user's account portrait, you could describe it as \"A user's account portrait.\" If the icon displays in a Button, this alt text takes precedence and overwrites the button's alt text, so you should write alt text for the button: Set descriptive text that lets users know what the button does. For example, if a button opens a hyperlink, you might write: \"Opens a new browser tab and navigates to the Google Chat developer documentation at https://developers.google.com/chat\".",
          type = "string",
        },
        iconUrl = {
          description = "Display a custom icon hosted at an HTTPS URL. For example: ``` \"iconUrl\": \"https://developers.google.com/chat/images/quickstart-app-avatar.png\" ``` Supported file types include `.png` and `.jpg`.",
          type = "string",
        },
        imageType = {
          description = "The crop style applied to the image. In some cases, applying a `CIRCLE` crop causes the image to be drawn larger than a standard icon.",
          enum = {
            "SQUARE",
            "CIRCLE",
          },
          enumDescriptions = {
            "Default value. Applies a square mask to the image. For example, a 4x3 image becomes 3x3.",
            "Applies a circular mask to the image. For example, a 4x3 image becomes a circle with a diameter of 3.",
          },
          type = "string",
        },
        knownIcon = {
          description = "Display one of the standard icons provided by Google Workspace. For example, to display an airplane icon, specify `AIRPLANE`. For a bus, specify `BUS`. For a full list of supported icons, see [standard icons](https://developers.google.com/chat/api/guides/message-formats/cards).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Image = {
      description = "An image that is specified by a URL and can have an `onClick` action.",
      id = "GoogleAppsCardV1Image",
      properties = {
        altText = {
          description = "The alternative text of this image, used for accessibility.",
          type = "string",
        },
        imageUrl = {
          description = "The `https` URL that hosts the image. For example: ``` https://developers.google.com/chat/images/quickstart-app-avatar.png ```",
          type = "string",
        },
        onClick = {
          ["$ref"] = "GoogleAppsCardV1OnClick",
          description = "When a user clicks on the image, the click triggers this action.",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1ImageComponent = {
      description = "Represents an image.",
      id = "GoogleAppsCardV1ImageComponent",
      properties = {
        altText = {
          description = "The accessibility label for the image.",
          type = "string",
        },
        borderStyle = {
          ["$ref"] = "GoogleAppsCardV1BorderStyle",
          description = "The border style to apply to the image.",
        },
        cropStyle = {
          ["$ref"] = "GoogleAppsCardV1ImageCropStyle",
          description = "The crop style to apply to the image.",
        },
        imageUri = {
          description = "The image URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1ImageCropStyle = {
      description = "Represents the crop style applied to an image. For example, here's how to apply a 16 by 9 aspect ratio: ``` cropStyle { \"type\": \"RECTANGLE_CUSTOM\", \"aspectRatio\": 16/9 } ```",
      id = "GoogleAppsCardV1ImageCropStyle",
      properties = {
        aspectRatio = {
          description = "The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`. For example, here's how to apply a 16 by 9 aspect ratio: ``` cropStyle { \"type\": \"RECTANGLE_CUSTOM\", \"aspectRatio\": 16/9 } ```",
          format = "double",
          type = "number",
        },
        type = {
          description = "The crop type.",
          enum = {
            "IMAGE_CROP_TYPE_UNSPECIFIED",
            "SQUARE",
            "CIRCLE",
            "RECTANGLE_CUSTOM",
            "RECTANGLE_4_3",
          },
          enumDescriptions = {
            "No value specified. Do not use.",
            "Default value. Applies a square crop.",
            "Applies a circular crop.",
            "Applies a rectangular crop with a custom aspect ratio. Set the custom aspect ratio with `aspectRatio`.",
            "Applies a rectangular crop with a 4:3 aspect ratio.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1OnClick = {
      description = "Represents how to respond when users click an interactive element on a card, such as a button.",
      id = "GoogleAppsCardV1OnClick",
      properties = {
        action = {
          ["$ref"] = "GoogleAppsCardV1Action",
          description = "If specified, an action is triggered by this `onClick`.",
        },
        card = {
          ["$ref"] = "GoogleAppsCardV1Card",
          description = "A new card is pushed to the card stack after clicking if specified. Supported by Google Workspace Add-ons, but not Chat apps.",
        },
        openDynamicLinkAction = {
          ["$ref"] = "GoogleAppsCardV1Action",
          description = "An add-on triggers this action when the action needs to open a link. This differs from the `open_link` above in that this needs to talk to server to get the link. Thus some preparation work is required for web client to do before the open link action response comes back.",
        },
        openLink = {
          ["$ref"] = "GoogleAppsCardV1OpenLink",
          description = "If specified, this `onClick` triggers an open link action.",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1OpenLink = {
      description = "Represents an `onClick` event that opens a hyperlink.",
      id = "GoogleAppsCardV1OpenLink",
      properties = {
        onClose = {
          description = "Whether the client forgets about a link after opening it, or observes it until the window closes. Not supported by Chat apps.",
          enum = {
            "NOTHING",
            "RELOAD",
          },
          enumDescriptions = {
            "Default value. The card does not reload; nothing happens.",
            "Reloads the card after the child window closes. If used in conjunction with [OpenAs.OVERLAY](https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.v1#openas), the child window acts as a modal dialog and the parent card is blocked until the child window closes.",
          },
          type = "string",
        },
        openAs = {
          description = "How to open a link. Not supported by Chat apps.",
          enum = {
            "FULL_SIZE",
            "OVERLAY",
          },
          enumDescriptions = {
            "The link opens as a full size window (if that's the frame used by the client.",
            "The link opens as an overlay, such as a pop-up.",
          },
          type = "string",
        },
        url = {
          description = "The URL to open.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Section = {
      description = "A section contains a collection of widgets that are rendered vertically in the order that they are specified.",
      id = "GoogleAppsCardV1Section",
      properties = {
        collapsible = {
          description = "Indicates whether this section is collapsible. Collapsible sections hide some or all widgets, but users can expand the section to reveal the hidden widgets by clicking **Show more**. Users can hide the widgets again by clicking **Show less**. To determine which widgets are hidden, specify `uncollapsibleWidgetsCount`.",
          type = "boolean",
        },
        header = {
          description = "Text that appears at the top of a section. Supports [simple HTML formatted text](https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting).",
          type = "string",
        },
        uncollapsibleWidgetsCount = {
          description = "The number of uncollapsible widgets which remain visible even when a section is collapsed. For example, when a section contains five widgets and the `uncollapsibleWidgetsCount` is set to `2`, the first two widgets are always shown and the last three are collapsed by default. The `uncollapsibleWidgetsCount` is taken into account only when `collapsible` is `true`.",
          format = "int32",
          type = "integer",
        },
        widgets = {
          description = "All the widgets in the section. Must contain at least 1 widget.",
          items = {
            ["$ref"] = "GoogleAppsCardV1Widget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1SelectionInput = {
      description = "A widget that creates a UI item with options for users to select. For example, a dropdown menu or check list. Chat apps receive and can process the value of entered text during form input events. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs). When you need to collect data from users that matches options you set, use a selection input. To collect abstract data from users, use the text input widget instead. Only supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) coming soon.",
      id = "GoogleAppsCardV1SelectionInput",
      properties = {
        items = {
          description = "An array of the selected items. For example, all the selected check boxes.",
          items = {
            ["$ref"] = "GoogleAppsCardV1SelectionItem",
          },
          type = "array",
        },
        label = {
          description = "The text that appears above the selection input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if users are selecting the urgency of a work ticket from a drop-down menu, the label might be \"Urgency\" or \"Select urgency\".",
          type = "string",
        },
        name = {
          description = "The name by which the selection input is identified in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "GoogleAppsCardV1Action",
          description = "If specified, the form is submitted when the selection changes. If not specified, you must specify a separate button that submits the form. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
        },
        type = {
          description = "The way that an option appears to users. Different options support different types of interactions. For example, users can enable multiple check boxes, but can only select one value from a dropdown menu. Each selection input supports one type of selection. Mixing check boxes and switches, for example, is not supported.",
          enum = {
            "CHECK_BOX",
            "RADIO_BUTTON",
            "SWITCH",
            "DROPDOWN",
          },
          enumDescriptions = {
            "A set of checkboxes. Users can select multiple check boxes per selection input. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon.",
            "A set of radio buttons. Users can select one radio button per selection input. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon.",
            "A set of switches. Users can turn on multiple switches at once per selection input. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon.",
            "A dropdown menu. Users can select one dropdown menu item per selection input. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1SelectionItem = {
      description = "A selectable item in a selection input, such as a check box or a switch.",
      id = "GoogleAppsCardV1SelectionItem",
      properties = {
        selected = {
          description = "When `true`, more than one item is selected. If more than one item is selected for radio buttons and dropdown menus, the first selected item is received and the ones after are ignored.",
          type = "boolean",
        },
        text = {
          description = "The text displayed to users.",
          type = "string",
        },
        value = {
          description = "The value associated with this item. The client should use this as a form input value. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1SuggestionItem = {
      description = "One suggested value that users can enter in a text input field.",
      id = "GoogleAppsCardV1SuggestionItem",
      properties = {
        text = {
          description = "The value of a suggested input to a text input field. This is equivalent to what users would enter themselves.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Suggestions = {
      description = "Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing \"Jav\", the list of suggestions filters to show just Java and JavaScript. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter \"javascript\" and others \"java script\". Suggesting \"JavaScript\" can standardize how users interact with your app. When specified, `TextInput.type` is always `SINGLE_LINE`, even if it is set to `MULTIPLE_LINE`.",
      id = "GoogleAppsCardV1Suggestions",
      properties = {
        items = {
          description = "A list of suggestions used for autocomplete recommendations in text input fields.",
          items = {
            ["$ref"] = "GoogleAppsCardV1SuggestionItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1SwitchControl = {
      description = "Either a toggle-style switch or a checkbox inside a `decoratedText` widget. Only supported on the `decoratedText` widget. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon.",
      id = "GoogleAppsCardV1SwitchControl",
      properties = {
        controlType = {
          description = "How the switch appears in the user interface.",
          enum = {
            "SWITCH",
            "CHECKBOX",
            "CHECK_BOX",
          },
          enumDescriptions = {
            "A toggle-style switch.",
            "Deprecated in favor of `CHECK_BOX`.",
            "A checkbox.",
          },
          type = "string",
        },
        name = {
          description = "The name by which the switch widget is identified in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "GoogleAppsCardV1Action",
          description = "The action to perform when the switch state is changed, such as what function to run.",
        },
        selected = {
          description = "When `true`, the switch is selected.",
          type = "boolean",
        },
        value = {
          description = "The value entered by a user, returned as part of a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1TextInput = {
      description = "A field in which users can enter text. Supports suggestions and on-change actions. Chat apps receive and can process the value of entered text during form input events. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs). When you need to collect abstract data from users, use a text input. To collect defined data from users, use the selection input widget instead. Only supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) coming soon.",
      id = "GoogleAppsCardV1TextInput",
      properties = {
        autoCompleteAction = {
          ["$ref"] = "GoogleAppsCardV1Action",
          description = "Optional. Specify what action to take when the text input field provides suggestions to users who interact with it. If unspecified, the suggestions are set by `initialSuggestions` and are processed by the client. If specified, the app takes the action specified here, such as running a custom function. Supported by Google Workspace Add-ons, but not Chat apps. Support by Chat apps coming soon.",
        },
        hintText = {
          description = "Text that appears inside the text input field meant to assist users by prompting them to enter a certain value. This text is not visible after users begin typing. Required if `label` is unspecified. Otherwise, optional.",
          type = "string",
        },
        initialSuggestions = {
          ["$ref"] = "GoogleAppsCardV1Suggestions",
          description = "Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing \"Jav\", the list of suggestions filters to show just Java and JavaScript. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter \"javascript\" and others \"java script\". Suggesting \"JavaScript\" can standardize how users interact with your app. When specified, `TextInput.type` is always `SINGLE_LINE`, even if it is set to `MULTIPLE_LINE`.",
        },
        label = {
          description = "The text that appears above the text input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if you are asking someone's name, but specifically need their surname, write \"surname\" instead of \"name\". Required if `hintText` is unspecified. Otherwise, optional.",
          type = "string",
        },
        name = {
          description = "The name by which the text input is identified in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
          type = "string",
        },
        onChangeAction = {
          ["$ref"] = "GoogleAppsCardV1Action",
          description = "What to do when a change occurs in the text input field. Examples of changes include a user adding to the field, or deleting text. Examples of actions to take include running a custom function or opening a [dialog](https://developers.google.com/chat/how-tos/dialogs) in Google Chat.",
        },
        type = {
          description = "How a text input field appears in the user interface. For example, whether the field is single or multi-line.",
          enum = {
            "SINGLE_LINE",
            "MULTIPLE_LINE",
          },
          enumDescriptions = {
            "The text input field has a fixed height of one line.",
            "The text input field has a fixed height of multiple lines.",
          },
          type = "string",
        },
        value = {
          description = "The value entered by a user, returned as part of a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1TextParagraph = {
      description = "A paragraph of text that supports formatting. See [Text formatting](https://developers.google.com/workspace/add-ons/concepts/widgets#text_formatting) for details.",
      id = "GoogleAppsCardV1TextParagraph",
      properties = {
        text = {
          description = "The text that's shown in the widget.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCardV1Widget = {
      description = "Each card is made up of widgets. A widget is a composite object that can represent one of text, images, buttons, and other object types.",
      id = "GoogleAppsCardV1Widget",
      properties = {
        buttonList = {
          ["$ref"] = "GoogleAppsCardV1ButtonList",
          description = "A list of buttons. For example, the following JSON creates two buttons. The first is a blue text button and the second is an image button that opens a link: ``` \"buttonList\": { \"buttons\": [ \"button\": { \"text\": \"Edit\", \"color\": { \"red\": 0, \"green\": 0, \"blue\": 1, \"alpha\": 1 } \"disabled\": true }, \"button\": { \"icon\": { \"knownIcon\": \"INVITE\" \"altText\": \"check calendar\" }, \"onClick\": { \"openLink\": { \"url\": \"https://example.com/calendar\" } } }, ] } ```",
        },
        dateTimePicker = {
          ["$ref"] = "GoogleAppsCardV1DateTimePicker",
          description = "Displays a selection/input widget for date, time, or date and time. Not supported by Chat apps. Support by Chat apps is coming soon. For example, the following JSON creates a datetime picker to schedule an appointment: ``` \"date_time_picker\": { \"name\": \"appointment_time\", \"label\": \"Book your appointment at:\", \"type\": \"DateTimePickerType.DATE_AND_TIME\", \"valueMsEpoch\": \"796435200000\" } ```",
        },
        decoratedText = {
          ["$ref"] = "GoogleAppsCardV1DecoratedText",
          description = "Displays a decorated text item. For example, the following JSON creates a decorated text widget showing email address: ``` \"decoratedText\": { \"icon\": { \"knownIcon\": \"EMAIL\" }, \"topLabel\": \"Email Address\", \"text\": \"sasha@example.com\", \"bottomLabel\": \"This is a new Email address!\", \"switchWidget\": { \"name\": \"has_send_welcome_email_to_sasha\", \"selected\": false, \"controlType\": \"ControlType.CHECKBOX\" } } ```",
        },
        divider = {
          ["$ref"] = "GoogleAppsCardV1Divider",
          description = "Displays a horizontal line divider between widgets. For example, the following JSON creates a divider: ``` \"divider\": { } ```",
        },
        grid = {
          ["$ref"] = "GoogleAppsCardV1Grid",
          description = "Displays a grid with a collection of items. A grid supports any number of columns and items. The number of rows is determined by the upper bounds of the number items divided by the number of columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items and 2 columns has 6 rows. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon. For example, the following JSON creates a 2 column grid with a single item: ``` \"grid\": { \"title\": \"A fine collection of items\", \"numColumns\": 2, \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4.0 }, \"items\": [ \"image\": { \"imageUri\": \"https://www.example.com/image.png\", \"cropStyle\": { \"type\": \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\": \"An item\", \"textAlignment\": \"CENTER\" ], \"onClick\": { \"openLink\": { \"url\":\"https://www.example.com\" } } } ```",
        },
        image = {
          ["$ref"] = "GoogleAppsCardV1Image",
          description = "Displays an image. For example, the following JSON creates an image with alternative text: ``` \"image\": { \"imageUrl\": \"https://developers.google.com/chat/images/quickstart-app-avatar.png\" \"altText\": \"Chat app avatar\" } ```",
        },
        selectionInput = {
          ["$ref"] = "GoogleAppsCardV1SelectionInput",
          description = "Displays a selection control that lets users select items. Selection controls can be check boxes, radio buttons, switches, or dropdown menus. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon. For example, the following JSON creates a dropdown menu that lets users choose a size: ``` \"selectionInput\": { \"name\": \"size\", \"label\": \"Size\" \"type\": \"SelectionType.DROPDOWN\", \"items\": [ { \"text\": \"S\", \"value\": \"small\", \"selected\": false }, { \"text\": \"M\", \"value\": \"medium\", \"selected\": true }, { \"text\": \"L\", \"value\": \"large\", \"selected\": false }, { \"text\": \"XL\", \"value\": \"extra_large\", \"selected\": false } ] } ```",
        },
        textInput = {
          ["$ref"] = "GoogleAppsCardV1TextInput",
          description = "Displays a text box that users can type into. Currently supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) is coming soon. For example, the following JSON creates a text input for an email address: ``` \"textInput\": { \"name\": \"mailing_address\", \"label\": \"Mailing Address\" } ``` As another example, the following JSON creates a text input for a programming language with static suggestions: ``` \"textInput\": { \"name\": \"preferred_programing_language\", \"label\": \"Preferred Language\", \"initialSuggestions\": { \"items\": [ { \"text\": \"C++\" }, { \"text\": \"Java\" }, { \"text\": \"JavaScript\" }, { \"text\": \"Python\" } ] } } ```",
        },
        textParagraph = {
          ["$ref"] = "GoogleAppsCardV1TextParagraph",
          description = "Displays a text paragraph. Supports [simple HTML formatted text](https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting). For example, the following JSON creates a bolded text: ``` \"textParagraph\": { \"text\": \" *bold text*\" } ```",
        },
      },
      type = "object",
    },
    Image = {
      description = "An image that is specified by a URL and can have an onclick action.",
      id = "Image",
      properties = {
        aspectRatio = {
          description = "The aspect ratio of this image (width/height). This field allows clients to reserve the right height for the image while waiting for it to load. It's not meant to override the native aspect ratio of the image. If unset, the server fills it by prefetching the image.",
          format = "double",
          type = "number",
        },
        imageUrl = {
          description = "The URL of the image.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
          description = "The onclick action.",
        },
      },
      type = "object",
    },
    ImageButton = {
      description = "An image button with an onclick action.",
      id = "ImageButton",
      properties = {
        icon = {
          description = "The icon specified by an enum that indices to an icon provided by Chat API.",
          enum = {
            "ICON_UNSPECIFIED",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
        iconUrl = {
          description = "The icon specified by a URL.",
          type = "string",
        },
        name = {
          description = "The name of this image_button which will be used for accessibility. Default value will be provided if developers don't specify.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
          description = "The onclick action.",
        },
      },
      type = "object",
    },
    Inputs = {
      description = "Types of data inputs for widgets. Users enter data with these inputs.",
      id = "Inputs",
      properties = {
        dateInput = {
          ["$ref"] = "DateInput",
          description = "Date input values. Not supported by Chat apps.",
        },
        dateTimeInput = {
          ["$ref"] = "DateTimeInput",
          description = "Date and time input values. Not supported by Chat apps.",
        },
        stringInputs = {
          ["$ref"] = "StringInputs",
          description = "Input parameter for regular widgets. For single-valued widgets, it is a single value list. For multi-valued widgets, such as checkbox, all the values are presented.",
        },
        timeInput = {
          ["$ref"] = "TimeInput",
          description = "Time input values. Not supported by Chat apps.",
        },
      },
      type = "object",
    },
    KeyValue = {
      description = "A UI element contains a key (label) and a value (content). And this element may also contain some actions such as onclick button.",
      id = "KeyValue",
      properties = {
        bottomLabel = {
          description = "The text of the bottom label. Formatted text supported.",
          type = "string",
        },
        button = {
          ["$ref"] = "Button",
          description = "A button that can be clicked to trigger an action.",
        },
        content = {
          description = "The text of the content. Formatted text supported and always required.",
          type = "string",
        },
        contentMultiline = {
          description = "If the content should be multiline.",
          type = "boolean",
        },
        icon = {
          description = "An enum value that will be replaced by the Chat API with the corresponding icon image.",
          enum = {
            "ICON_UNSPECIFIED",
            "AIRPLANE",
            "BOOKMARK",
            "BUS",
            "CAR",
            "CLOCK",
            "CONFIRMATION_NUMBER_ICON",
            "DOLLAR",
            "DESCRIPTION",
            "EMAIL",
            "EVENT_PERFORMER",
            "EVENT_SEAT",
            "FLIGHT_ARRIVAL",
            "FLIGHT_DEPARTURE",
            "HOTEL",
            "HOTEL_ROOM_TYPE",
            "INVITE",
            "MAP_PIN",
            "MEMBERSHIP",
            "MULTIPLE_PEOPLE",
            "OFFER",
            "PERSON",
            "PHONE",
            "RESTAURANT_ICON",
            "SHOPPING_CART",
            "STAR",
            "STORE",
            "TICKET",
            "TRAIN",
            "VIDEO_CAMERA",
            "VIDEO_PLAY",
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
        iconUrl = {
          description = "The icon specified by a URL.",
          type = "string",
        },
        onClick = {
          ["$ref"] = "OnClick",
          description = "The onclick action. Only the top label, bottom label and content region are clickable.",
        },
        topLabel = {
          description = "The text of the top label. Formatted text supported.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMembershipsResponse = {
      id = "ListMembershipsResponse",
      properties = {
        memberships = {
          description = "List of memberships in the requested (or first) page.",
          items = {
            ["$ref"] = "Membership",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as `pageToken` to retrieve the next page of results. If empty, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListSpacesResponse = {
      id = "ListSpacesResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `pageToken` to retrieve the next page of results. If empty, there are no subsequent pages.",
          type = "string",
        },
        spaces = {
          description = "List of spaces in the requested (or first) page.",
          items = {
            ["$ref"] = "Space",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MatchedUrl = {
      description = "A matched url in a Chat message. Chat apps can preview matched URLs. For more information, refer to [Preview links](https://developers.google.com/chat/how-tos/preview-links).",
      id = "MatchedUrl",
      properties = {
        url = {
          description = "Output only. The url that was matched.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Media = {
      description = "Media resource.",
      id = "Media",
      properties = {
        resourceName = {
          description = "Name of the media resource.",
          type = "string",
        },
      },
      type = "object",
    },
    Membership = {
      description = "Represents a membership relation in Google Chat, such as whether a user or Chat app is invited to, part of, or absent from a space.",
      id = "Membership",
      properties = {
        createTime = {
          description = "Output only. The creation time of the membership, such as when a member joined or was invited to join a space.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        member = {
          ["$ref"] = "User",
          description = "A Google Chat user or app. Format: `users/{user}` or `users/app` When `users/{user}`, represents a [person](https://developers.google.com/people/api/rest/v1/people) in the People API or a [user](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users) in the Admin SDK Directory API. When `users/app`, represents a Chat app creating membership for itself.",
        },
        name = {
          description = "Resource name of the membership. Format: spaces/{space}/members/{member}",
          type = "string",
        },
        role = {
          description = "Output only. User's role within a Chat space, which determines their permitted actions in the space.",
          enum = {
            "MEMBERSHIP_ROLE_UNSPECIFIED",
            "ROLE_MEMBER",
            "ROLE_MANAGER",
          },
          enumDescriptions = {
            "Default value. The user isn't a member of the space, but might be invited.",
            "A member of the space. The user has basic permissions, like sending messages to the space. In 1:1 and unnamed group conversations, everyone has this role.",
            "A space manager. The user has all basic permissions plus administrative permissions that allow them to manage the space, like adding or removing members. Only supports SpaceType.SPACE.",
          },
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. State of the membership.",
          enum = {
            "MEMBERSHIP_STATE_UNSPECIFIED",
            "JOINED",
            "INVITED",
            "NOT_A_MEMBER",
          },
          enumDescriptions = {
            "Default, do not use.",
            "The user has joined the space.",
            "The user has been invited, is able to join the space, but currently has not joined.",
            "The user is not a member of the space, has not been invited and is not able to join the space.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Message = {
      description = "A message in Google Chat.",
      id = "Message",
      properties = {
        actionResponse = {
          ["$ref"] = "ActionResponse",
          description = "Input only. Parameters that a Chat app can use to configure how its response is posted.",
        },
        annotations = {
          description = "Output only. Annotations associated with the text in this message.",
          items = {
            ["$ref"] = "Annotation",
          },
          readOnly = true,
          type = "array",
        },
        argumentText = {
          description = "Plain-text body of the message with all Chat app mentions stripped out.",
          type = "string",
        },
        attachment = {
          description = "User uploaded attachment.",
          items = {
            ["$ref"] = "Attachment",
          },
          type = "array",
        },
        cards = {
          description = "Deprecated: Use `cards_v2` instead. Rich, formatted and interactive cards that can be used to display UI elements such as: formatted texts, buttons, clickable images. Cards are normally displayed below the plain-text body of the message.",
          items = {
            ["$ref"] = "Card",
          },
          type = "array",
        },
        cardsV2 = {
          description = "Richly formatted and interactive cards that display UI elements and editable widgets, such as: - Formatted text - Buttons - Clickable images - Checkboxes - Radio buttons - Input widgets. Cards are usually displayed below the text-body of a Chat message, but can situationally appear other places, such as [dialogs](https://developers.google.com/chat/how-tos/dialogs). The `cardId` is a unique identifier among cards in the same message and for identifying user input values. Currently supported widgets include: - `TextParagraph` - `DecoratedText` - `Image` - `ButtonList` - `Divider`",
          items = {
            ["$ref"] = "CardWithId",
          },
          type = "array",
        },
        clientAssignedMessageId = {
          description = "A custom name for a Chat message assigned at creation. Must start with `client-` and contain only lowercase letters, numbers, and hyphens up to 63 characters in length. Specify this field to get, update, or delete the message with the specified value. For example usage, see [Name a created message](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).",
          type = "string",
        },
        createTime = {
          description = "Output only. The time at which the message was created in Google Chat server.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        fallbackText = {
          description = "A plain-text description of the message's cards, used when the actual cards cannot be displayed (e.g. mobile notifications).",
          type = "string",
        },
        lastUpdateTime = {
          description = "Output only. The time at which the message was last edited by a user. If the message has never been edited, this field is empty.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        matchedUrl = {
          ["$ref"] = "MatchedUrl",
          description = "Output only. A URL in `spaces.messages.text` that matches a link preview pattern. For more information, refer to [Preview links](https://developers.google.com/chat/how-tos/preview-links).",
          readOnly = true,
        },
        name = {
          description = "Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`",
          type = "string",
        },
        sender = {
          ["$ref"] = "User",
          description = "Output only. The user who created the message.",
          readOnly = true,
        },
        slashCommand = {
          ["$ref"] = "SlashCommand",
          description = "Output only. Slash command information, if applicable.",
          readOnly = true,
        },
        space = {
          ["$ref"] = "Space",
          description = "The space the message belongs to. When accessed with [user authentication](https://developers.google.com/chat/api/guides/auth/users), only the name of the Space is populated.",
        },
        text = {
          description = "Plain-text body of the message. The first link to an image, video, web page, or other preview-able item generates a preview chip.",
          type = "string",
        },
        thread = {
          ["$ref"] = "Thread",
          description = "The thread the message belongs to. For example usage, see [Start or reply to a message thread](/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread).",
        },
        threadReply = {
          description = "Output only. When `true`, the message is a response in a reply thread. When `false`, the message is visible in the space's top-level conversation as either the first message of a thread or a message with no threaded replies. If the space doesn't support reply in threads, this field is always `false`.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    OnClick = {
      description = "An onclick action (e.g. open a link).",
      id = "OnClick",
      properties = {
        action = {
          ["$ref"] = "FormAction",
          description = "A form action will be triggered by this onclick if specified.",
        },
        openLink = {
          ["$ref"] = "OpenLink",
          description = "This onclick triggers an open link action if specified.",
        },
      },
      type = "object",
    },
    OpenLink = {
      description = "A link that opens a new window.",
      id = "OpenLink",
      properties = {
        url = {
          description = "The URL to open.",
          type = "string",
        },
      },
      type = "object",
    },
    Section = {
      description = "A section contains a collection of widgets that are rendered (vertically) in the order that they are specified. Across all platforms, cards have a narrow fixed width, so there is currently no need for layout properties (e.g. float).",
      id = "Section",
      properties = {
        header = {
          description = "The header of the section, text formatted supported.",
          type = "string",
        },
        widgets = {
          description = "A section must contain at least 1 widget.",
          items = {
            ["$ref"] = "WidgetMarkup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SlashCommand = {
      description = "A [slash command](https://developers.google.com/chat/how-tos/slash-commands) in Google Chat.",
      id = "SlashCommand",
      properties = {
        commandId = {
          description = "The id of the slash command invoked.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SlashCommandMetadata = {
      description = "Annotation metadata for slash commands (/).",
      id = "SlashCommandMetadata",
      properties = {
        bot = {
          ["$ref"] = "User",
          description = "The Chat app whose command was invoked.",
        },
        commandId = {
          description = "The command id of the invoked slash command.",
          format = "int64",
          type = "string",
        },
        commandName = {
          description = "The name of the invoked slash command.",
          type = "string",
        },
        triggersDialog = {
          description = "Indicating whether the slash command is for a dialog.",
          type = "boolean",
        },
        type = {
          description = "The type of slash command.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ADD",
            "INVOKE",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "Add Chat app to space.",
            "Invoke slash command in space.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Space = {
      description = "A space in Google Chat. Spaces are conversations between two or more users or 1:1 messages between a user and a Chat app.",
      id = "Space",
      properties = {
        displayName = {
          description = "The space's display name. Required when [creating a space](https://developers.google.com/chat/api/reference/rest/v1/spaces/create). For direct messages, this field may be empty.",
          type = "string",
        },
        name = {
          description = "Resource name of the space. Format: spaces/{space}",
          type = "string",
        },
        singleUserBotDm = {
          description = "Optional. Whether the space is a DM between a Chat app and a single human.",
          type = "boolean",
        },
        spaceDetails = {
          ["$ref"] = "SpaceDetails",
          description = "Details about the space including description and rules.",
        },
        spaceThreadingState = {
          description = "Output only. The threading state in the Chat space.",
          enum = {
            "SPACE_THREADING_STATE_UNSPECIFIED",
            "THREADED_MESSAGES",
            "GROUPED_MESSAGES",
            "UNTHREADED_MESSAGES",
          },
          enumDescriptions = {
            "Reserved.",
            "Named spaces that support message threads. When users respond to a message, they can reply in-thread, which keeps their response in the context of the original message.",
            "Named spaces where the conversation is organized by topic. Topics and their replies are grouped together.",
            "Direct messages (DMs) between two people and group conversations between 3 or more people.",
          },
          readOnly = true,
          type = "string",
        },
        threaded = {
          description = "Output only. Deprecated: Use `spaceThreadingState` instead. Whether messages are threaded in this space.",
          readOnly = true,
          type = "boolean",
        },
        type = {
          description = "Output only. Deprecated: Use `singleUserBotDm` or `spaceType` (developer preview) instead. The type of a space.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ROOM",
            "DM",
          },
          enumDescriptions = {
            "",
            "Conversations between two or more humans.",
            "1:1 Direct Message between a human and a Chat app, where all messages are flat. Note that this does not include direct messages between two humans.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SpaceDetails = {
      description = "Details about the space including description and rules.",
      id = "SpaceDetails",
      properties = {
        description = {
          description = "Optional. A description of the space. It could describe the space's discussion topic, functional purpose, or participants.",
          type = "string",
        },
        guidelines = {
          description = "Optional. The space's rules, expectations, and etiquette.",
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
    StringInputs = {
      description = "Input parameter for regular widgets. For single-valued widgets, it is a single value list. For multi-valued widgets, such as checkbox, all the values are presented.",
      id = "StringInputs",
      properties = {
        value = {
          description = "An array of strings entered by the user.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TextButton = {
      description = "A button with text and onclick action.",
      id = "TextButton",
      properties = {
        onClick = {
          ["$ref"] = "OnClick",
          description = "The onclick action of the button.",
        },
        text = {
          description = "The text of the button.",
          type = "string",
        },
      },
      type = "object",
    },
    TextParagraph = {
      description = "A paragraph of text. Formatted text supported.",
      id = "TextParagraph",
      properties = {
        text = {
          type = "string",
        },
      },
      type = "object",
    },
    Thread = {
      description = "A thread in Google Chat.",
      id = "Thread",
      properties = {
        name = {
          description = "Resource name of the thread. Example: spaces/{space}/threads/{thread}",
          type = "string",
        },
        threadKey = {
          description = "Optional. Opaque thread identifier. To start or add to a thread, create a message and specify a `threadKey` or the thread.name. For example usage, see [Start or reply to a message thread](/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread). For other requests, this is an output only field.",
          type = "string",
        },
      },
      type = "object",
    },
    TimeInput = {
      description = "Time input values. Not supported by Chat apps.",
      id = "TimeInput",
      properties = {
        hours = {
          description = "The hour on a 24-hour clock.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "The number of minutes past the hour. Valid values are 0 to 59.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TimeZone = {
      description = "The timezone ID and offset from Coordinated Universal Time (UTC). Not supported by Chat apps.",
      id = "TimeZone",
      properties = {
        id = {
          description = "The [IANA TZ](https://www.iana.org/time-zones) time zone database code, such as \"America/Toronto\".",
          type = "string",
        },
        offset = {
          description = "The user timezone offset, in milliseconds, from Coordinated Universal Time (UTC).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    User = {
      description = "A user in Google Chat.",
      id = "User",
      properties = {
        displayName = {
          description = "Output only. The user's display name.",
          readOnly = true,
          type = "string",
        },
        domainId = {
          description = "Unique identifier of the user's Google Workspace domain.",
          type = "string",
        },
        isAnonymous = {
          description = "Output only. When `true`, the user is deleted or their profile is not visible.",
          readOnly = true,
          type = "boolean",
        },
        name = {
          description = "Resource name for a Google Chat user. For human users, represents a person in the People API or a user in the Admin SDK Directory API. Format: `users/{user}`",
          type = "string",
        },
        type = {
          description = "User type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "HUMAN",
            "BOT",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "Human user.",
            "Chat app user.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UserMentionMetadata = {
      description = "Annotation metadata for user mentions (@).",
      id = "UserMentionMetadata",
      properties = {
        type = {
          description = "The type of user mention.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ADD",
            "MENTION",
          },
          enumDescriptions = {
            "Default value for the enum. DO NOT USE.",
            "Add user to space.",
            "Mention user in space.",
          },
          type = "string",
        },
        user = {
          ["$ref"] = "User",
          description = "The user mentioned.",
        },
      },
      type = "object",
    },
    WidgetMarkup = {
      description = "A widget is a UI element that presents texts, images, etc.",
      id = "WidgetMarkup",
      properties = {
        buttons = {
          description = "A list of buttons. Buttons is also oneof data and only one of these fields should be set.",
          items = {
            ["$ref"] = "Button",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "Image",
          description = "Display an image in this widget.",
        },
        keyValue = {
          ["$ref"] = "KeyValue",
          description = "Display a key value item in this widget.",
        },
        textParagraph = {
          ["$ref"] = "TextParagraph",
          description = "Display a text paragraph in this widget.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Chat API",
  version = "v1",
  version_module = true,
}
