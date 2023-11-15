return {
  basePath = "",
  baseUrl = "https://drivelabels.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Drive Labels",
  description = "An API for managing Drive Labels",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/drive/labels",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "drivelabels:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://drivelabels.mtls.googleapis.com/",
  name = "drivelabels",
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
    labels = {
      methods = {
        get = {
          description = "Get a label by its resource name. Resource name may be any of: * `labels/{id}` - See `labels/{id}@latest` * `labels/{id}@latest` - Gets the latest revision of the label. * `labels/{id}@published` - Gets the current published revision of the label. * `labels/{id}@{revision_id}` - Gets the label at the specified revision ID.",
          flatPath = "v2/labels/{labelsId}",
          httpMethod = "GET",
          id = "drivelabels.labels.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            languageCode = {
              description = "The BCP-47 language code to use for evaluating localized field labels. When not specified, values in the default configured language are used.",
              location = "query",
              type = "string",
            },
            name = {
              description = "Required. Label resource name. May be any of: * `labels/{id}` (equivalent to labels/{id}@latest) * `labels/{id}@latest` * `labels/{id}@published` * `labels/{id}@{revision_id}`",
              location = "path",
              pattern = "^labels/[^/]+$",
              required = true,
              type = "string",
            },
            useAdminAccess = {
              description = "Set to `true` in order to use the user's admin credentials. The server verifies that the user is an admin for the label before allowing access.",
              location = "query",
              type = "boolean",
            },
            view = {
              description = "When specified, only certain fields belonging to the indicated view are returned.",
              enum = {
                "LABEL_VIEW_BASIC",
                "LABEL_VIEW_FULL",
              },
              enumDescriptions = {
                "Implies the field mask: `name,id,revision_id,label_type,properties.*`",
                "All possible fields.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "GoogleAppsDriveLabelsV2Label",
          },
        },
        list = {
          description = "List labels.",
          flatPath = "v2/labels",
          httpMethod = "GET",
          id = "drivelabels.labels.list",
          parameterOrder = {},
          parameters = {
            languageCode = {
              description = "The BCP-47 language code to use for evaluating localized field labels. When not specified, values in the default configured language are used.",
              location = "query",
              type = "string",
            },
            minimumRole = {
              description = "Specifies the level of access the user must have on the returned Labels. The minimum role a user must have on a label. Defaults to `READER`.",
              enum = {
                "LABEL_ROLE_UNSPECIFIED",
                "READER",
                "APPLIER",
                "ORGANIZER",
                "EDITOR",
              },
              enumDescriptions = {
                "Unknown role.",
                "A reader can read the label and associated metadata applied to Drive items.",
                "An applier can write associated metadata on Drive items in which they also have write access to. Implies `READER`.",
                "An organizer can pin this label in shared drives they manage and add new appliers to the label.",
                "Editors can make any update including deleting the label which also deletes the associated Drive item metadata. Implies `APPLIER`.",
              },
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Maximum number of labels to return per page. Default: 50. Max: 200.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token of the page to return.",
              location = "query",
              type = "string",
            },
            publishedOnly = {
              description = "Whether to include only published labels in the results. * When `true`, only the current published label revisions are returned. Disabled labels are included. Returned label resource names reference the published revision (`labels/{id}/{revision_id}`). * When `false`, the current label revisions are returned, which might not be published. Returned label resource names don't reference a specific revision (`labels/{id}`).",
              location = "query",
              type = "boolean",
            },
            useAdminAccess = {
              description = "Set to `true` in order to use the user's admin credentials. This will return all Labels within the customer.",
              location = "query",
              type = "boolean",
            },
            view = {
              description = "When specified, only certain fields belonging to the indicated view are returned.",
              enum = {
                "LABEL_VIEW_BASIC",
                "LABEL_VIEW_FULL",
              },
              enumDescriptions = {
                "Implies the field mask: `name,id,revision_id,label_type,properties.*`",
                "All possible fields.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v2/labels",
          response = {
            ["$ref"] = "GoogleAppsDriveLabelsV2ListLabelsResponse",
          },
        },
      },
    },
  },
  revision = "20230111",
  rootUrl = "https://drivelabels.googleapis.com/",
  schemas = {
    GoogleAppsDriveLabelsV2BadgeColors = {
      description = "The color derived from BadgeConfig and changed to the closest recommended supported color.",
      id = "GoogleAppsDriveLabelsV2BadgeColors",
      properties = {
        backgroundColor = {
          ["$ref"] = "GoogleTypeColor",
          description = "Output only. Badge background that pairs with the foreground.",
          readOnly = true,
        },
        foregroundColor = {
          ["$ref"] = "GoogleTypeColor",
          description = "Output only. Badge foreground that pairs with the background.",
          readOnly = true,
        },
        soloColor = {
          ["$ref"] = "GoogleTypeColor",
          description = "Output only. Color that can be used for text without a background.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2BadgeConfig = {
      description = "Badge status of the label.",
      id = "GoogleAppsDriveLabelsV2BadgeConfig",
      properties = {
        color = {
          ["$ref"] = "GoogleTypeColor",
          description = "The color of the badge. When not specified, no badge is rendered. The background, foreground, and solo (light and dark mode) colors set here are changed in the Drive UI into the closest recommended supported color.",
        },
        priorityOverride = {
          description = "Override the default global priority of this badge. When set to 0, the default priority heuristic is used.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2Field = {
      description = "Defines a field that has a display name, data type, and other configuration options. This field defines the kind of metadata that may be set on a Drive item.",
      id = "GoogleAppsDriveLabelsV2Field",
      properties = {
        appliedCapabilities = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldAppliedCapabilities",
          description = "Output only. The capabilities this user has on this field and its value when the label is applied on Drive items.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time this field was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who created this field.",
          readOnly = true,
        },
        dateOptions = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldDateOptions",
          description = "Date field options.",
        },
        disableTime = {
          description = "Output only. The time this field was disabled. This value has no meaning when the field is not disabled.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        disabler = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who disabled this field. This value has no meaning when the field is not disabled.",
          readOnly = true,
        },
        displayHints = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldDisplayHints",
          description = "Output only. UI display hints for rendering a field.",
          readOnly = true,
        },
        id = {
          description = "Output only. The key of a field, unique within a label or library. This value is autogenerated. Matches the regex: `([a-zA-Z0-9])+`",
          readOnly = true,
          type = "string",
        },
        integerOptions = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldIntegerOptions",
          description = "Integer field options.",
        },
        lifecycle = {
          ["$ref"] = "GoogleAppsDriveLabelsV2Lifecycle",
          description = "Output only. The lifecycle of this field.",
          readOnly = true,
        },
        lockStatus = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LockStatus",
          description = "Output only. The LockStatus of this field.",
          readOnly = true,
        },
        properties = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldProperties",
          description = "The basic properties of the field.",
        },
        publisher = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who published this field. This value has no meaning when the field is not published.",
          readOnly = true,
        },
        queryKey = {
          description = "Output only. The key to use when constructing Drive search queries to find files based on values defined for this field on files. For example, \"`{query_key}` > 2001-01-01\".",
          readOnly = true,
          type = "string",
        },
        schemaCapabilities = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldSchemaCapabilities",
          description = "Output only. The capabilities this user has when editing this field.",
          readOnly = true,
        },
        selectionOptions = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldSelectionOptions",
          description = "Selection field options.",
        },
        textOptions = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldTextOptions",
          description = "Text field options.",
        },
        updateTime = {
          description = "Output only. The time this field was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        updater = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who modified this field.",
          readOnly = true,
        },
        userOptions = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldUserOptions",
          description = "User field options.",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldAppliedCapabilities = {
      description = "The capabilities related to this field on applied metadata.",
      id = "GoogleAppsDriveLabelsV2FieldAppliedCapabilities",
      properties = {
        canRead = {
          description = "Whether the user can read related applied metadata on items.",
          type = "boolean",
        },
        canSearch = {
          description = "Whether the user can search for Drive items referencing this field.",
          type = "boolean",
        },
        canWrite = {
          description = "Whether the user can set this field on Drive items.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldDateOptions = {
      description = "Options for the date field type.",
      id = "GoogleAppsDriveLabelsV2FieldDateOptions",
      properties = {
        dateFormat = {
          description = "Output only. ICU date format.",
          readOnly = true,
          type = "string",
        },
        dateFormatType = {
          description = "Localized date formatting option. Field values are rendered in this format according to their locale.",
          enum = {
            "DATE_FORMAT_UNSPECIFIED",
            "LONG_DATE",
            "SHORT_DATE",
          },
          enumDescriptions = {
            "Date format unspecified.",
            "Includes full month name. For example, January 12, 1999 (MMMM d, y)",
            "Short, numeric, representation. For example, 12/13/99 (M/d/yy)",
          },
          type = "string",
        },
        maxValue = {
          ["$ref"] = "GoogleTypeDate",
          description = "Output only. Maximum valid value (year, month, day).",
          readOnly = true,
        },
        minValue = {
          ["$ref"] = "GoogleTypeDate",
          description = "Output only. Minimum valid value (year, month, day).",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldDisplayHints = {
      description = "UI display hints for rendering a field.",
      id = "GoogleAppsDriveLabelsV2FieldDisplayHints",
      properties = {
        disabled = {
          description = "Whether the field should be shown in the UI as disabled.",
          type = "boolean",
        },
        hiddenInSearch = {
          description = "This field should be hidden in the search menu when searching for Drive items.",
          type = "boolean",
        },
        required = {
          description = "Whether the field should be shown as required in the UI.",
          type = "boolean",
        },
        shownInApply = {
          description = "This field should be shown in the apply menu when applying values to a Drive item.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldIntegerOptions = {
      description = "Options for the Integer field type.",
      id = "GoogleAppsDriveLabelsV2FieldIntegerOptions",
      properties = {
        maxValue = {
          description = "Output only. The maximum valid value for the integer field.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        minValue = {
          description = "Output only. The minimum valid value for the integer field.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldListOptions = {
      description = "Options for a multi-valued variant of an associated field type.",
      id = "GoogleAppsDriveLabelsV2FieldListOptions",
      properties = {
        maxEntries = {
          description = "Maximum number of entries permitted.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldProperties = {
      description = "The basic properties of the field.",
      id = "GoogleAppsDriveLabelsV2FieldProperties",
      properties = {
        displayName = {
          description = "Required. The display text to show in the UI identifying this field.",
          type = "string",
        },
        insertBeforeField = {
          description = "Input only. Insert or move this field before the indicated field. If empty, the field is placed at the end of the list.",
          type = "string",
        },
        required = {
          description = "Whether the field should be marked as required.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldSchemaCapabilities = {
      description = "The capabilities related to this field when editing the field.",
      id = "GoogleAppsDriveLabelsV2FieldSchemaCapabilities",
      properties = {
        canDelete = {
          description = "Whether the user can delete this field. The user must have permission and the field must be deprecated.",
          type = "boolean",
        },
        canDisable = {
          description = "Whether the user can disable this field. The user must have permission and this field must not already be disabled.",
          type = "boolean",
        },
        canEnable = {
          description = "Whether the user can enable this field. The user must have permission and this field must be disabled.",
          type = "boolean",
        },
        canUpdate = {
          description = "Whether the user can change this field.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldSelectionOptions = {
      description = "Options for the selection field type.",
      id = "GoogleAppsDriveLabelsV2FieldSelectionOptions",
      properties = {
        choices = {
          description = "The options available for this selection field. The list order is consistent, and modified with `insert_before_choice`.",
          items = {
            ["$ref"] = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice",
          },
          type = "array",
        },
        listOptions = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldListOptions",
          description = "When specified, indicates this field supports a list of values. Once the field is published, this cannot be changed.",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice = {
      description = "Selection field choice.",
      id = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice",
      properties = {
        appliedCapabilities = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities",
          description = "Output only. The capabilities related to this choice on applied metadata.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time this choice was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who created this choice.",
          readOnly = true,
        },
        disableTime = {
          description = "Output only. The time this choice was disabled. This value has no meaning when the choice is not disabled.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        disabler = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who disabled this choice. This value has no meaning when the option is not disabled.",
          readOnly = true,
        },
        displayHints = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints",
          description = "Output only. UI display hints for rendering a choice.",
          readOnly = true,
        },
        id = {
          description = "The unique value of the choice. This ID is autogenerated. Matches the regex: `([a-zA-Z0-9_])+`.",
          type = "string",
        },
        lifecycle = {
          ["$ref"] = "GoogleAppsDriveLabelsV2Lifecycle",
          description = "Output only. Lifecycle of the choice.",
          readOnly = true,
        },
        lockStatus = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LockStatus",
          description = "Output only. The LockStatus of this choice.",
          readOnly = true,
        },
        properties = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties",
          description = "Basic properties of the choice.",
        },
        publishTime = {
          description = "Output only. The time this choice was published. This value has no meaning when the choice is not published.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        publisher = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who published this choice. This value has no meaning when the choice is not published.",
          readOnly = true,
        },
        schemaCapabilities = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities",
          description = "Output only. The capabilities related to this option when editing the option.",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. The time this choice was updated last.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        updater = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who updated this choice last.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities = {
      description = "The capabilities related to this choice on applied metadata.",
      id = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities",
      properties = {
        canRead = {
          description = "Whether the user can read related applied metadata on items.",
          type = "boolean",
        },
        canSearch = {
          description = "Whether the user can use this choice in search queries.",
          type = "boolean",
        },
        canSelect = {
          description = "Whether the user can select this choice on an item.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints = {
      description = "UI display hints for rendering an option.",
      id = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints",
      properties = {
        badgeColors = {
          ["$ref"] = "GoogleAppsDriveLabelsV2BadgeColors",
          description = "The colors to use for the badge. Changed to Google Material colors based on the chosen `properties.badge_config.color`.",
        },
        badgePriority = {
          description = "The priority of this badge. Used to compare and sort between multiple badges. A lower number means the badge should be shown first. When a badging configuration is not present, this will be 0. Otherwise, this will be set to `BadgeConfig.priority_override` or the default heuristic which prefers creation date of the label, and field and option priority.",
          format = "int64",
          type = "string",
        },
        darkBadgeColors = {
          ["$ref"] = "GoogleAppsDriveLabelsV2BadgeColors",
          description = "The dark-mode color to use for the badge. Changed to Google Material colors based on the chosen `properties.badge_config.color`.",
        },
        disabled = {
          description = "Whether the option should be shown in the UI as disabled.",
          type = "boolean",
        },
        hiddenInSearch = {
          description = "This option should be hidden in the search menu when searching for Drive items.",
          type = "boolean",
        },
        shownInApply = {
          description = "This option should be shown in the apply menu when applying values to a Drive item.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties = {
      description = "Basic properties of the choice.",
      id = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties",
      properties = {
        badgeConfig = {
          ["$ref"] = "GoogleAppsDriveLabelsV2BadgeConfig",
          description = "The badge configuration for this choice. When set, the label that owns this choice is considered a \"badged label\".",
        },
        description = {
          description = "The description of this label.",
          type = "string",
        },
        displayName = {
          description = "Required. The display text to show in the UI identifying this field.",
          type = "string",
        },
        insertBeforeChoice = {
          description = "Input only. Insert or move this choice before the indicated choice. If empty, the choice is placed at the end of the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities = {
      description = "The capabilities related to this choice when editing the choice.",
      id = "GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities",
      properties = {
        canDelete = {
          description = "Whether the user can delete this choice.",
          type = "boolean",
        },
        canDisable = {
          description = "Whether the user can disable this choice.",
          type = "boolean",
        },
        canEnable = {
          description = "Whether the user can enable this choice.",
          type = "boolean",
        },
        canUpdate = {
          description = "Whether the user can update this choice.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldTextOptions = {
      description = "Options for the Text field type.",
      id = "GoogleAppsDriveLabelsV2FieldTextOptions",
      properties = {
        maxLength = {
          description = "Output only. The maximum valid length of values for the text field.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        minLength = {
          description = "Output only. The minimum valid length of values for the text field.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2FieldUserOptions = {
      description = "Options for the user field type.",
      id = "GoogleAppsDriveLabelsV2FieldUserOptions",
      properties = {
        listOptions = {
          ["$ref"] = "GoogleAppsDriveLabelsV2FieldListOptions",
          description = "When specified, indicates that this field supports a list of values. Once the field is published, this cannot be changed.",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2Label = {
      description = "A label defines a taxonomy that can be applied to Drive items in order to organize and search across items. Labels can be simple strings, or can contain fields that describe additional metadata that can be further used to organize and search Drive items.",
      id = "GoogleAppsDriveLabelsV2Label",
      properties = {
        appliedCapabilities = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LabelAppliedCapabilities",
          description = "Output only. The capabilities related to this label on applied metadata.",
          readOnly = true,
        },
        appliedLabelPolicy = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy",
          description = "Output only. Behavior of this label when it's applied to Drive items.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time this label was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who created this label.",
          readOnly = true,
        },
        disableTime = {
          description = "Output only. The time this label was disabled. This value has no meaning when the label is not disabled.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        disabler = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who disabled this label. This value has no meaning when the label is not disabled.",
          readOnly = true,
        },
        displayHints = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LabelDisplayHints",
          description = "Output only. UI display hints for rendering the label.",
          readOnly = true,
        },
        fields = {
          description = "List of fields in descending priority order.",
          items = {
            ["$ref"] = "GoogleAppsDriveLabelsV2Field",
          },
          type = "array",
        },
        id = {
          description = "Output only. Globally unique identifier of this label. ID makes up part of the label `name`, but unlike `name`, ID is consistent between revisions. Matches the regex: `([a-zA-Z0-9])+`",
          readOnly = true,
          type = "string",
        },
        labelType = {
          description = "Required. The type of label.",
          enum = {
            "LABEL_TYPE_UNSPECIFIED",
            "SHARED",
            "ADMIN",
          },
          enumDescriptions = {
            "Unknown label type.",
            "Shared labels may be shared with users to apply to Drive items.",
            "Admin-owned label. Only creatable and editable by admins. Supports some additional admin-only features.",
          },
          type = "string",
        },
        learnMoreUri = {
          description = "Custom URL to present to users to allow them to learn more about this label and how it should be used.",
          type = "string",
        },
        lifecycle = {
          ["$ref"] = "GoogleAppsDriveLabelsV2Lifecycle",
          description = "Output only. The lifecycle state of the label including whether it's published, deprecated, and has draft changes.",
          readOnly = true,
        },
        lockStatus = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LockStatus",
          description = "Output only. The LockStatus of this label.",
          readOnly = true,
        },
        name = {
          description = "Output only. Resource name of the label. Will be in the form of either: `labels/{id}` or `labels/{id}@{revision_id}` depending on the request. See `id` and `revision_id` below.",
          readOnly = true,
          type = "string",
        },
        properties = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LabelProperties",
          description = "Required. The basic properties of the label.",
        },
        publishTime = {
          description = "Output only. The time this label was published. This value has no meaning when the label is not published.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        publisher = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who published this label. This value has no meaning when the label is not published.",
          readOnly = true,
        },
        revisionCreateTime = {
          description = "Output only. The time this label revision was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionCreator = {
          ["$ref"] = "GoogleAppsDriveLabelsV2UserInfo",
          description = "Output only. The user who created this label revision.",
          readOnly = true,
        },
        revisionId = {
          description = "Output only. Revision ID of the label. Revision ID might be part of the label `name` depending on the request issued. A new revision is created whenever revisioned properties of a label are changed. Matches the regex: `([a-zA-Z0-9])+`",
          readOnly = true,
          type = "string",
        },
        schemaCapabilities = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LabelSchemaCapabilities",
          description = "Output only. The capabilities the user has on this label.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2LabelAppliedCapabilities = {
      description = "The capabilities a user has on this label's applied metadata.",
      id = "GoogleAppsDriveLabelsV2LabelAppliedCapabilities",
      properties = {
        canApply = {
          description = "Whether the user can apply this label to items.",
          type = "boolean",
        },
        canRead = {
          description = "Whether the user can read applied metadata related to this label.",
          type = "boolean",
        },
        canRemove = {
          description = "Whether the user can remove this label from items.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy = {
      description = "Behavior of this label when it's applied to Drive items.",
      id = "GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy",
      properties = {
        copyMode = {
          description = "Indicates how the applied label and field values should be copied when a Drive item is copied.",
          enum = {
            "COPY_MODE_UNSPECIFIED",
            "DO_NOT_COPY",
            "ALWAYS_COPY",
            "COPY_APPLIABLE",
          },
          enumDescriptions = {
            "Copy mode unspecified.",
            "The applied label and field values are not copied by default when the Drive item it's applied to is copied.",
            "The applied label and field values are always copied when the Drive item it's applied to is copied. Only admins can use this mode.",
            "The applied label and field values are copied if the label is appliable by the user making the copy.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2LabelDisplayHints = {
      description = "UI display hints for rendering the label.",
      id = "GoogleAppsDriveLabelsV2LabelDisplayHints",
      properties = {
        disabled = {
          description = "Whether the label should be shown in the UI as disabled.",
          type = "boolean",
        },
        hiddenInSearch = {
          description = "This label should be hidden in the search menu when searching for Drive items.",
          type = "boolean",
        },
        priority = {
          description = "Order to display label in a list.",
          format = "int64",
          type = "string",
        },
        shownInApply = {
          description = "This label should be shown in the apply menu when applying values to a Drive item.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2LabelProperties = {
      description = "Basic properties of the label.",
      id = "GoogleAppsDriveLabelsV2LabelProperties",
      properties = {
        description = {
          description = "The description of the label.",
          type = "string",
        },
        title = {
          description = "Required. Title of the label.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2LabelSchemaCapabilities = {
      description = "The capabilities related to this label when editing the label.",
      id = "GoogleAppsDriveLabelsV2LabelSchemaCapabilities",
      properties = {
        canDelete = {
          description = "Whether the user can delete this label. The user must have permission and the label must be disabled.",
          type = "boolean",
        },
        canDisable = {
          description = "Whether the user can disable this label. The user must have permission and this label must not already be disabled.",
          type = "boolean",
        },
        canEnable = {
          description = "Whether the user can enable this label. The user must have permission and this label must be disabled.",
          type = "boolean",
        },
        canUpdate = {
          description = "Whether the user can change this label.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2Lifecycle = {
      description = "The lifecycle state of an object, such as label, field, or choice. The lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT` (starting state) * `UNPUBLISHED_DRAFT` -> `PUBLISHED` * `UNPUBLISHED_DRAFT` -> (Deleted) * `PUBLISHED` -> `DISABLED` * `DISABLED` -> `PUBLISHED` * `DISABLED` -> (Deleted) The published and disabled states have some distinct characteristics: * Published—Some kinds of changes might be made to an object in this state, in which case `has_unpublished_changes` will be true. Also, some kinds of changes are not permitted. Generally, any change that would invalidate or cause new restrictions on existing metadata related to the label are rejected. * Disabled—When disabled, the configured `DisabledPolicy` takes effect.",
      id = "GoogleAppsDriveLabelsV2Lifecycle",
      properties = {
        disabledPolicy = {
          ["$ref"] = "GoogleAppsDriveLabelsV2LifecycleDisabledPolicy",
          description = "The policy that governs how to show a disabled label, field, or selection choice.",
        },
        hasUnpublishedChanges = {
          description = "Output only. Whether the object associated with this lifecycle has unpublished changes.",
          readOnly = true,
          type = "boolean",
        },
        state = {
          description = "Output only. The state of the object associated with this lifecycle.",
          enum = {
            "STATE_UNSPECIFIED",
            "UNPUBLISHED_DRAFT",
            "PUBLISHED",
            "DISABLED",
            "DELETED",
          },
          enumDescriptions = {
            "Unknown State.",
            "The initial state of an object. Once published, the object can never return to this state. Once an object is published, certain kinds of changes are no longer permitted.",
            "The object has been published. The object might have unpublished draft changes as indicated by `has_unpublished_changes`.",
            "The object has been published and has since been disabled. The object might have unpublished draft changes as indicated by `has_unpublished_changes`.",
            "The object has been deleted.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2LifecycleDisabledPolicy = {
      description = "The policy that governs how to treat a disabled label, field, or selection choice in different contexts.",
      id = "GoogleAppsDriveLabelsV2LifecycleDisabledPolicy",
      properties = {
        hideInSearch = {
          description = "Whether to hide this disabled object in the search menu for Drive items. * When `false`, the object is generally shown in the UI as disabled but it appears in the search results when searching for Drive items. * When `true`, the object is generally hidden in the UI when searching for Drive items.",
          type = "boolean",
        },
        showInApply = {
          description = "Whether to show this disabled object in the apply menu on Drive items. * When `true`, the object is generally shown in the UI as disabled and is unselectable. * When `false`, the object is generally hidden in the UI.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2ListLabelsResponse = {
      description = "Response for listing Labels.",
      id = "GoogleAppsDriveLabelsV2ListLabelsResponse",
      properties = {
        labels = {
          description = "Labels.",
          items = {
            ["$ref"] = "GoogleAppsDriveLabelsV2Label",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token of the next page in the response.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2LockStatus = {
      description = "Contains information about whether a label component should be considered locked.",
      id = "GoogleAppsDriveLabelsV2LockStatus",
      properties = {
        locked = {
          description = "Output only. Indicates whether this label component is the (direct) target of a LabelLock. A label component can be implicitly locked even if it's not the direct target of a LabelLock, in which case this field is set to false.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsDriveLabelsV2UserInfo = {
      description = "Information about a user.",
      id = "GoogleAppsDriveLabelsV2UserInfo",
      properties = {
        person = {
          description = "The identifier for this user that can be used with the People API to get more information. For example, people/12345678.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypeColor = {
      description = "Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to/from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't carry information about the absolute color space that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most 1e-5. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...",
      id = "GoogleTypeColor",
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
    GoogleTypeDate = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "GoogleTypeDate",
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
  },
  servicePath = "",
  title = "Drive Labels API",
  version = "v2",
  version_module = true,
}
