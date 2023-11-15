return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/drive.activity"] = {
          description = "View and add to the activity record of files in your Google Drive",
        },
        ["https://www.googleapis.com/auth/drive.activity.readonly"] = {
          description = "View the activity record of files in your Google Drive",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://driveactivity.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Drive Activity",
  description = "Provides a historical view of activity in Google Drive.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/drive/activity/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "driveactivity:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://driveactivity.mtls.googleapis.com/",
  name = "driveactivity",
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
    activity = {
      methods = {
        query = {
          description = "Query past activity in Google Drive.",
          flatPath = "v2/activity:query",
          httpMethod = "POST",
          id = "driveactivity.activity.query",
          parameterOrder = {},
          parameters = {},
          path = "v2/activity:query",
          request = {
            ["$ref"] = "QueryDriveActivityRequest",
          },
          response = {
            ["$ref"] = "QueryDriveActivityResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive.activity",
            "https://www.googleapis.com/auth/drive.activity.readonly",
          },
        },
      },
    },
  },
  revision = "20230115",
  rootUrl = "https://driveactivity.googleapis.com/",
  schemas = {
    Action = {
      description = "Information about the action.",
      id = "Action",
      properties = {
        actor = {
          ["$ref"] = "Actor",
          description = "The actor responsible for this action (or empty if all actors are responsible).",
        },
        detail = {
          ["$ref"] = "ActionDetail",
          description = "The type and detailed information about the action.",
        },
        target = {
          ["$ref"] = "Target",
          description = "The target this action affects (or empty if affecting all targets). This represents the state of the target immediately after this action occurred.",
        },
        timeRange = {
          ["$ref"] = "TimeRange",
          description = "The action occurred over this time range.",
        },
        timestamp = {
          description = "The action occurred at this specific time.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ActionDetail = {
      description = "Data describing the type and additional information of an action.",
      id = "ActionDetail",
      properties = {
        appliedLabelChange = {
          ["$ref"] = "AppliedLabelChange",
          description = "Label was changed.",
        },
        comment = {
          ["$ref"] = "Comment",
          description = "A change about comments was made.",
        },
        create = {
          ["$ref"] = "Create",
          description = "An object was created.",
        },
        delete = {
          ["$ref"] = "Delete",
          description = "An object was deleted.",
        },
        dlpChange = {
          ["$ref"] = "DataLeakPreventionChange",
          description = "A change happened in data leak prevention status.",
        },
        edit = {
          ["$ref"] = "Edit",
          description = "An object was edited.",
        },
        move = {
          ["$ref"] = "Move",
          description = "An object was moved.",
        },
        permissionChange = {
          ["$ref"] = "PermissionChange",
          description = "The permission on an object was changed.",
        },
        reference = {
          ["$ref"] = "ApplicationReference",
          description = "An object was referenced in an application outside of Drive/Docs.",
        },
        rename = {
          ["$ref"] = "Rename",
          description = "An object was renamed.",
        },
        restore = {
          ["$ref"] = "Restore",
          description = "A deleted object was restored.",
        },
        settingsChange = {
          ["$ref"] = "SettingsChange",
          description = "Settings were changed.",
        },
      },
      type = "object",
    },
    Actor = {
      description = "The actor of a Drive activity.",
      id = "Actor",
      properties = {
        administrator = {
          ["$ref"] = "Administrator",
          description = "An administrator.",
        },
        anonymous = {
          ["$ref"] = "AnonymousUser",
          description = "An anonymous user.",
        },
        impersonation = {
          ["$ref"] = "Impersonation",
          description = "An account acting on behalf of another.",
        },
        system = {
          ["$ref"] = "SystemEvent",
          description = "A non-user actor (i.e. system triggered).",
        },
        user = {
          ["$ref"] = "User",
          description = "An end user.",
        },
      },
      type = "object",
    },
    Administrator = {
      description = "Empty message representing an administrator.",
      id = "Administrator",
      properties = {},
      type = "object",
    },
    AnonymousUser = {
      description = "Empty message representing an anonymous user or indicating the authenticated user should be anonymized.",
      id = "AnonymousUser",
      properties = {},
      type = "object",
    },
    Anyone = {
      description = "Represents any user (including a logged out user).",
      id = "Anyone",
      properties = {},
      type = "object",
    },
    ApplicationReference = {
      description = "Activity in applications other than Drive.",
      id = "ApplicationReference",
      properties = {
        type = {
          description = "The reference type corresponding to this event.",
          enum = {
            "UNSPECIFIED_REFERENCE_TYPE",
            "LINK",
            "DISCUSS",
          },
          enumDescriptions = {
            "The type is not available.",
            "The links of one or more Drive items were posted.",
            "Comments were made regarding a Drive item.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AppliedLabelChange = {
      description = "Label changes that were made on the Target.",
      id = "AppliedLabelChange",
      properties = {
        changes = {
          description = "Changes that were made to the Label on the Target.",
          items = {
            ["$ref"] = "AppliedLabelChangeDetail",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppliedLabelChangeDetail = {
      description = "A change made to a Label on the Target.",
      id = "AppliedLabelChangeDetail",
      properties = {
        fieldChanges = {
          description = "Field Changes. Only present if `types` contains `LABEL_FIELD_VALUE_CHANGED`.",
          items = {
            ["$ref"] = "FieldValueChange",
          },
          type = "array",
        },
        label = {
          description = "The Label name representing the Label that changed. This name always contains the revision of the Label that was used when this Action occurred. The format is `labels/id@revision`.",
          type = "string",
        },
        title = {
          description = "The human-readable title of the label that changed.",
          type = "string",
        },
        types = {
          description = "The types of changes made to the Label on the Target.",
          items = {
            enum = {
              "TYPE_UNSPECIFIED",
              "LABEL_ADDED",
              "LABEL_REMOVED",
              "LABEL_FIELD_VALUE_CHANGED",
              "LABEL_APPLIED_BY_ITEM_CREATE",
            },
            enumDescriptions = {
              "The type of change to this Label is not available.",
              "The identified Label was added to the Target.",
              "The identified Label was removed from the Target.",
              "Field values were changed on the Target.",
              "The Label was applied as a side-effect of Drive item creation.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Assignment = {
      description = "A comment with an assignment.",
      id = "Assignment",
      properties = {
        assignedUser = {
          ["$ref"] = "User",
          description = "The user to whom the comment was assigned.",
        },
        subtype = {
          description = "The sub-type of this event.",
          enum = {
            "SUBTYPE_UNSPECIFIED",
            "ADDED",
            "DELETED",
            "REPLY_ADDED",
            "REPLY_DELETED",
            "RESOLVED",
            "REOPENED",
            "REASSIGNED",
          },
          enumDescriptions = {
            "Subtype not available.",
            "An assignment was added.",
            "An assignment was deleted.",
            "An assignment reply was added.",
            "An assignment reply was deleted.",
            "An assignment was resolved.",
            "A resolved assignment was reopened.",
            "An assignment was reassigned.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Comment = {
      description = "A change about comments on an object.",
      id = "Comment",
      properties = {
        assignment = {
          ["$ref"] = "Assignment",
          description = "A change on an assignment.",
        },
        mentionedUsers = {
          description = "Users who are mentioned in this comment.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
        post = {
          ["$ref"] = "Post",
          description = "A change on a regular posted comment.",
        },
        suggestion = {
          ["$ref"] = "Suggestion",
          description = "A change on a suggestion.",
        },
      },
      type = "object",
    },
    ConsolidationStrategy = {
      description = "How the individual activities are consolidated. If a set of activities is related they can be consolidated into one combined activity, such as one actor performing the same action on multiple targets, or multiple actors performing the same action on a single target. The strategy defines the rules for which activities are related.",
      id = "ConsolidationStrategy",
      properties = {
        legacy = {
          ["$ref"] = "Legacy",
          description = "The individual activities are consolidated using the legacy strategy.",
        },
        none = {
          ["$ref"] = "NoConsolidation",
          description = "The individual activities are not consolidated.",
        },
      },
      type = "object",
    },
    Copy = {
      description = "An object was created by copying an existing object.",
      id = "Copy",
      properties = {
        originalObject = {
          ["$ref"] = "TargetReference",
          description = "The original object.",
        },
      },
      type = "object",
    },
    Create = {
      description = "An object was created.",
      id = "Create",
      properties = {
        copy = {
          ["$ref"] = "Copy",
          description = "If present, indicates the object was created by copying an existing Drive object.",
        },
        new = {
          ["$ref"] = "New",
          description = "If present, indicates the object was newly created (e.g. as a blank document), not derived from a Drive object or external object.",
        },
        upload = {
          ["$ref"] = "Upload",
          description = "If present, indicates the object originated externally and was uploaded to Drive.",
        },
      },
      type = "object",
    },
    DataLeakPreventionChange = {
      description = "A change in the object's data leak prevention status.",
      id = "DataLeakPreventionChange",
      properties = {
        type = {
          description = "The type of Data Leak Prevention (DLP) change.",
          enum = {
            "TYPE_UNSPECIFIED",
            "FLAGGED",
            "CLEARED",
          },
          enumDescriptions = {
            "An update to the DLP state that is neither FLAGGED or CLEARED.",
            "Document has been flagged as containing sensitive content.",
            "Document is no longer flagged as containing sensitive content.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Date = {
      description = "Wrapper for Date Field value.",
      id = "Date",
      properties = {
        value = {
          description = "Date value.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Delete = {
      description = "An object was deleted.",
      id = "Delete",
      properties = {
        type = {
          description = "The type of delete action taken.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TRASH",
            "PERMANENT_DELETE",
          },
          enumDescriptions = {
            "Deletion type is not available.",
            "An object was put into the trash.",
            "An object was deleted permanently.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeletedUser = {
      description = "A user whose account has since been deleted.",
      id = "DeletedUser",
      properties = {},
      type = "object",
    },
    Domain = {
      description = "Information about a domain.",
      id = "Domain",
      properties = {
        legacyId = {
          description = "An opaque string used to identify this domain.",
          type = "string",
        },
        name = {
          description = "The name of the domain, e.g. `google.com`.",
          type = "string",
        },
      },
      type = "object",
    },
    Drive = {
      description = "Information about a shared drive.",
      id = "Drive",
      properties = {
        name = {
          description = "The resource name of the shared drive. The format is `COLLECTION_ID/DRIVE_ID`. Clients should not assume a specific collection ID for this resource name.",
          type = "string",
        },
        root = {
          ["$ref"] = "DriveItem",
          description = "The root of this shared drive.",
        },
        title = {
          description = "The title of the shared drive.",
          type = "string",
        },
      },
      type = "object",
    },
    DriveActivity = {
      description = "A single Drive activity comprising one or more Actions by one or more Actors on one or more Targets. Some Action groupings occur spontaneously, such as moving an item into a shared folder triggering a permission change. Other groupings of related Actions, such as multiple Actors editing one item or moving multiple files into a new folder, are controlled by the selection of a ConsolidationStrategy in the QueryDriveActivityRequest.",
      id = "DriveActivity",
      properties = {
        actions = {
          description = "Details on all actions in this activity.",
          items = {
            ["$ref"] = "Action",
          },
          type = "array",
        },
        actors = {
          description = "All actor(s) responsible for the activity.",
          items = {
            ["$ref"] = "Actor",
          },
          type = "array",
        },
        primaryActionDetail = {
          ["$ref"] = "ActionDetail",
          description = "Key information about the primary action for this activity. This is either representative, or the most important, of all actions in the activity, according to the ConsolidationStrategy in the request.",
        },
        targets = {
          description = "All Google Drive objects this activity is about (e.g. file, folder, drive). This represents the state of the target immediately after the actions occurred.",
          items = {
            ["$ref"] = "Target",
          },
          type = "array",
        },
        timeRange = {
          ["$ref"] = "TimeRange",
          description = "The activity occurred over this time range.",
        },
        timestamp = {
          description = "The activity occurred at this specific time.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    DriveFile = {
      description = "A Drive item which is a file.",
      id = "DriveFile",
      properties = {},
      type = "object",
    },
    DriveFolder = {
      description = "A Drive item which is a folder.",
      id = "DriveFolder",
      properties = {
        type = {
          description = "The type of Drive folder.",
          enum = {
            "TYPE_UNSPECIFIED",
            "MY_DRIVE_ROOT",
            "SHARED_DRIVE_ROOT",
            "STANDARD_FOLDER",
          },
          enumDescriptions = {
            "The folder type is unknown.",
            "The folder is the root of a user's MyDrive.",
            "The folder is the root of a shared drive.",
            "The folder is a standard, non-root, folder.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DriveItem = {
      description = "A Drive item, such as a file or folder.",
      id = "DriveItem",
      properties = {
        driveFile = {
          ["$ref"] = "DriveFile",
          description = "The Drive item is a file.",
        },
        driveFolder = {
          ["$ref"] = "DriveFolder",
          description = "The Drive item is a folder. Includes information about the type of folder.",
        },
        file = {
          ["$ref"] = "File",
          description = "This field is deprecated; please use the `driveFile` field instead.",
        },
        folder = {
          ["$ref"] = "Folder",
          description = "This field is deprecated; please use the `driveFolder` field instead.",
        },
        mimeType = {
          description = "The MIME type of the Drive item. See https://developers.google.com/drive/v3/web/mime-types.",
          type = "string",
        },
        name = {
          description = "The target Drive item. The format is `items/ITEM_ID`.",
          type = "string",
        },
        owner = {
          ["$ref"] = "Owner",
          description = "Information about the owner of this Drive item.",
        },
        title = {
          description = "The title of the Drive item.",
          type = "string",
        },
      },
      type = "object",
    },
    DriveItemReference = {
      description = "A lightweight reference to a Drive item, such as a file or folder.",
      id = "DriveItemReference",
      properties = {
        driveFile = {
          ["$ref"] = "DriveFile",
          description = "The Drive item is a file.",
        },
        driveFolder = {
          ["$ref"] = "DriveFolder",
          description = "The Drive item is a folder. Includes information about the type of folder.",
        },
        file = {
          ["$ref"] = "File",
          description = "This field is deprecated; please use the `driveFile` field instead.",
        },
        folder = {
          ["$ref"] = "Folder",
          description = "This field is deprecated; please use the `driveFolder` field instead.",
        },
        name = {
          description = "The target Drive item. The format is `items/ITEM_ID`.",
          type = "string",
        },
        title = {
          description = "The title of the Drive item.",
          type = "string",
        },
      },
      type = "object",
    },
    DriveReference = {
      description = "A lightweight reference to a shared drive.",
      id = "DriveReference",
      properties = {
        name = {
          description = "The resource name of the shared drive. The format is `COLLECTION_ID/DRIVE_ID`. Clients should not assume a specific collection ID for this resource name.",
          type = "string",
        },
        title = {
          description = "The title of the shared drive.",
          type = "string",
        },
      },
      type = "object",
    },
    Edit = {
      description = "An empty message indicating an object was edited.",
      id = "Edit",
      properties = {},
      type = "object",
    },
    FieldValue = {
      description = "Contains a value of a Field.",
      id = "FieldValue",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "Date Field value.",
        },
        integer = {
          ["$ref"] = "Integer",
          description = "Integer Field value.",
        },
        selection = {
          ["$ref"] = "Selection",
          description = "Selection Field value.",
        },
        selectionList = {
          ["$ref"] = "SelectionList",
          description = "Selection List Field value.",
        },
        text = {
          ["$ref"] = "Text",
          description = "Text Field value.",
        },
        textList = {
          ["$ref"] = "TextList",
          description = "Text List Field value.",
        },
        user = {
          ["$ref"] = "SingleUser",
          description = "User Field value.",
        },
        userList = {
          ["$ref"] = "UserList",
          description = "User List Field value.",
        },
      },
      type = "object",
    },
    FieldValueChange = {
      description = "Change to a Field value.",
      id = "FieldValueChange",
      properties = {
        displayName = {
          description = "The human-readable display name for this field.",
          type = "string",
        },
        fieldId = {
          description = "The ID of this field. Field IDs are unique within a Label.",
          type = "string",
        },
        newValue = {
          ["$ref"] = "FieldValue",
          description = "The value that is now set on the field. If not present, the field was cleared. At least one of {old_value|new_value} is always set.",
        },
        oldValue = {
          ["$ref"] = "FieldValue",
          description = "The value that was previously set on the field. If not present, the field was newly set. At least one of {old_value|new_value} is always set.",
        },
      },
      type = "object",
    },
    File = {
      description = "This item is deprecated; please see `DriveFile` instead.",
      id = "File",
      properties = {},
      type = "object",
    },
    FileComment = {
      description = "A comment on a file.",
      id = "FileComment",
      properties = {
        legacyCommentId = {
          description = "The comment in the discussion thread. This identifier is an opaque string compatible with the Drive API; see https://developers.google.com/drive/v3/reference/comments/get",
          type = "string",
        },
        legacyDiscussionId = {
          description = "The discussion thread to which the comment was added. This identifier is an opaque string compatible with the Drive API and references the first comment in a discussion; see https://developers.google.com/drive/v3/reference/comments/get",
          type = "string",
        },
        linkToDiscussion = {
          description = "The link to the discussion thread containing this comment, for example, `https://docs.google.com/DOCUMENT_ID/edit?disco=THREAD_ID`.",
          type = "string",
        },
        parent = {
          ["$ref"] = "DriveItem",
          description = "The Drive item containing this comment.",
        },
      },
      type = "object",
    },
    Folder = {
      description = "This item is deprecated; please see `DriveFolder` instead.",
      id = "Folder",
      properties = {
        type = {
          description = "This field is deprecated; please see `DriveFolder.type` instead.",
          enum = {
            "TYPE_UNSPECIFIED",
            "MY_DRIVE_ROOT",
            "TEAM_DRIVE_ROOT",
            "STANDARD_FOLDER",
          },
          enumDescriptions = {
            "This item is deprecated; please see `DriveFolder.Type` instead.",
            "This item is deprecated; please see `DriveFolder.Type` instead.",
            "This item is deprecated; please see `DriveFolder.Type` instead.",
            "This item is deprecated; please see `DriveFolder.Type` instead.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Group = {
      description = "Information about a group.",
      id = "Group",
      properties = {
        email = {
          description = "The email address of the group.",
          type = "string",
        },
        title = {
          description = "The title of the group.",
          type = "string",
        },
      },
      type = "object",
    },
    Impersonation = {
      description = "Information about an impersonation, where an admin acts on behalf of an end user. Information about the acting admin is not currently available.",
      id = "Impersonation",
      properties = {
        impersonatedUser = {
          ["$ref"] = "User",
          description = "The impersonated user.",
        },
      },
      type = "object",
    },
    Integer = {
      description = "Wrapper for Integer Field value.",
      id = "Integer",
      properties = {
        value = {
          description = "Integer value.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    KnownUser = {
      description = "A known user.",
      id = "KnownUser",
      properties = {
        isCurrentUser = {
          description = "True if this is the user making the request.",
          type = "boolean",
        },
        personName = {
          description = "The identifier for this user that can be used with the People API to get more information. The format is `people/ACCOUNT_ID`. See https://developers.google.com/people/.",
          type = "string",
        },
      },
      type = "object",
    },
    Legacy = {
      description = "A strategy that consolidates activities using the grouping rules from the legacy V1 Activity API. Similar actions occurring within a window of time can be grouped across multiple targets (such as moving a set of files at once) or multiple actors (such as several users editing the same item). Grouping rules for this strategy are specific to each type of action.",
      id = "Legacy",
      properties = {},
      type = "object",
    },
    Move = {
      description = "An object was moved.",
      id = "Move",
      properties = {
        addedParents = {
          description = "The added parent object(s).",
          items = {
            ["$ref"] = "TargetReference",
          },
          type = "array",
        },
        removedParents = {
          description = "The removed parent object(s).",
          items = {
            ["$ref"] = "TargetReference",
          },
          type = "array",
        },
      },
      type = "object",
    },
    New = {
      description = "An object was created from scratch.",
      id = "New",
      properties = {},
      type = "object",
    },
    NoConsolidation = {
      description = "A strategy that does no consolidation of individual activities.",
      id = "NoConsolidation",
      properties = {},
      type = "object",
    },
    Owner = {
      description = "Information about the owner of a Drive item.",
      id = "Owner",
      properties = {
        domain = {
          ["$ref"] = "Domain",
          description = "The domain of the Drive item owner.",
        },
        drive = {
          ["$ref"] = "DriveReference",
          description = "The drive that owns the item.",
        },
        teamDrive = {
          ["$ref"] = "TeamDriveReference",
          description = "This field is deprecated; please use the `drive` field instead.",
        },
        user = {
          ["$ref"] = "User",
          description = "The user that owns the Drive item.",
        },
      },
      type = "object",
    },
    Permission = {
      description = "The permission setting of an object.",
      id = "Permission",
      properties = {
        allowDiscovery = {
          description = "If true, the item can be discovered (e.g. in the user's \"Shared with me\" collection) without needing a link to the item.",
          type = "boolean",
        },
        anyone = {
          ["$ref"] = "Anyone",
          description = "If set, this permission applies to anyone, even logged out users.",
        },
        domain = {
          ["$ref"] = "Domain",
          description = "The domain to whom this permission applies.",
        },
        group = {
          ["$ref"] = "Group",
          description = "The group to whom this permission applies.",
        },
        role = {
          description = "Indicates the [Google Drive permissions role](https://developers.google.com/drive/web/manage-sharing#roles). The role determines a user's ability to read, write, and comment on items.",
          enum = {
            "ROLE_UNSPECIFIED",
            "OWNER",
            "ORGANIZER",
            "FILE_ORGANIZER",
            "EDITOR",
            "COMMENTER",
            "VIEWER",
            "PUBLISHED_VIEWER",
          },
          enumDescriptions = {
            "The role is not available.",
            "A role granting full access.",
            "A role granting the ability to manage people and settings.",
            "A role granting the ability to contribute and manage content.",
            "A role granting the ability to contribute content. This role is sometimes also known as \"writer\".",
            "A role granting the ability to view and comment on content.",
            "A role granting the ability to view content. This role is sometimes also known as \"reader\".",
            "A role granting the ability to view content only after it has been published to the web. This role is sometimes also known as \"published reader\". See https://support.google.com/sites/answer/6372880 for more information.",
          },
          type = "string",
        },
        user = {
          ["$ref"] = "User",
          description = "The user to whom this permission applies.",
        },
      },
      type = "object",
    },
    PermissionChange = {
      description = "A change of the permission setting on an item.",
      id = "PermissionChange",
      properties = {
        addedPermissions = {
          description = "The set of permissions added by this change.",
          items = {
            ["$ref"] = "Permission",
          },
          type = "array",
        },
        removedPermissions = {
          description = "The set of permissions removed by this change.",
          items = {
            ["$ref"] = "Permission",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Post = {
      description = "A regular posted comment.",
      id = "Post",
      properties = {
        subtype = {
          description = "The sub-type of this event.",
          enum = {
            "SUBTYPE_UNSPECIFIED",
            "ADDED",
            "DELETED",
            "REPLY_ADDED",
            "REPLY_DELETED",
            "RESOLVED",
            "REOPENED",
          },
          enumDescriptions = {
            "Subtype not available.",
            "A post was added.",
            "A post was deleted.",
            "A reply was added.",
            "A reply was deleted.",
            "A posted comment was resolved.",
            "A posted comment was reopened.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    QueryDriveActivityRequest = {
      description = "The request message for querying Drive activity.",
      id = "QueryDriveActivityRequest",
      properties = {
        ancestorName = {
          description = "Return activities for this Drive folder, plus all children and descendants. The format is `items/ITEM_ID`.",
          type = "string",
        },
        consolidationStrategy = {
          ["$ref"] = "ConsolidationStrategy",
          description = "Details on how to consolidate related actions that make up the activity. If not set, then related actions aren't consolidated.",
        },
        filter = {
          description = "The filtering for items returned from this query request. The format of the filter string is a sequence of expressions, joined by an optional \"AND\", where each expression is of the form \"field operator value\". Supported fields: - `time`: Uses numerical operators on date values either in terms of milliseconds since Jan 1, 1970 or in RFC 3339 format. Examples: - `time > 1452409200000 AND time <= 1492812924310` - `time >= \"2016-01-10T01:02:03-05:00\"` - `detail.action_detail_case`: Uses the \"has\" operator (:) and either a singular value or a list of allowed action types enclosed in parentheses, separated by a space. To exclude a result from the response, prepend a hyphen (`-`) to the beginning of the filter string. Examples: - `detail.action_detail_case:RENAME` - `detail.action_detail_case:(CREATE RESTORE)` - `-detail.action_detail_case:MOVE` ",
          type = "string",
        },
        itemName = {
          description = "Return activities for this Drive item. The format is `items/ITEM_ID`.",
          type = "string",
        },
        pageSize = {
          description = "The minimum number of activities desired in the response; the server attempts to return at least this quantity. The server may also return fewer activities if it has a partial response ready before the request times out. If not set, a default value is used.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "The token identifies which page of results to return. Set this to the next_page_token value returned from a previous query to obtain the following page of results. If not set, the first page of results is returned.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryDriveActivityResponse = {
      description = "Response message for querying Drive activity.",
      id = "QueryDriveActivityResponse",
      properties = {
        activities = {
          description = "List of activity requested.",
          items = {
            ["$ref"] = "DriveActivity",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    Rename = {
      description = "An object was renamed.",
      id = "Rename",
      properties = {
        newTitle = {
          description = "The new title of the drive object.",
          type = "string",
        },
        oldTitle = {
          description = "The previous title of the drive object.",
          type = "string",
        },
      },
      type = "object",
    },
    Restore = {
      description = "A deleted object was restored.",
      id = "Restore",
      properties = {
        type = {
          description = "The type of restore action taken.",
          enum = {
            "TYPE_UNSPECIFIED",
            "UNTRASH",
          },
          enumDescriptions = {
            "The type is not available.",
            "An object was restored from the trash.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RestrictionChange = {
      description = "Information about restriction policy changes to a feature.",
      id = "RestrictionChange",
      properties = {
        feature = {
          description = "The feature which had a change in restriction policy.",
          enum = {
            "FEATURE_UNSPECIFIED",
            "SHARING_OUTSIDE_DOMAIN",
            "DIRECT_SHARING",
            "ITEM_DUPLICATION",
            "DRIVE_FILE_STREAM",
          },
          enumDescriptions = {
            "The feature which changed restriction settings was not available.",
            "When restricted, this prevents items from being shared outside the domain.",
            "When restricted, this prevents direct sharing of individual items.",
            "When restricted, this prevents actions like copy, download, and print that might result in uncontrolled duplicates of items.",
            "When restricted, this prevents use of Drive File Stream.",
          },
          type = "string",
        },
        newRestriction = {
          description = "The restriction in place after the change.",
          enum = {
            "RESTRICTION_UNSPECIFIED",
            "UNRESTRICTED",
            "FULLY_RESTRICTED",
          },
          enumDescriptions = {
            "The type of restriction is not available.",
            "The feature is available without restriction.",
            "The use of this feature is fully restricted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Selection = {
      description = "Wrapper for Selection Field value as combined value/display_name pair for selected choice.",
      id = "Selection",
      properties = {
        displayName = {
          description = "Selection value as human-readable display string.",
          type = "string",
        },
        value = {
          description = "Selection value as Field Choice ID.",
          type = "string",
        },
      },
      type = "object",
    },
    SelectionList = {
      description = "Wrapper for SelectionList Field value.",
      id = "SelectionList",
      properties = {
        values = {
          description = "Selection values.",
          items = {
            ["$ref"] = "Selection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SettingsChange = {
      description = "Information about settings changes.",
      id = "SettingsChange",
      properties = {
        restrictionChanges = {
          description = "The set of changes made to restrictions.",
          items = {
            ["$ref"] = "RestrictionChange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SingleUser = {
      description = "Wrapper for User Field value.",
      id = "SingleUser",
      properties = {
        value = {
          description = "User value as email.",
          type = "string",
        },
      },
      type = "object",
    },
    Suggestion = {
      description = "A suggestion.",
      id = "Suggestion",
      properties = {
        subtype = {
          description = "The sub-type of this event.",
          enum = {
            "SUBTYPE_UNSPECIFIED",
            "ADDED",
            "DELETED",
            "REPLY_ADDED",
            "REPLY_DELETED",
            "ACCEPTED",
            "REJECTED",
            "ACCEPT_DELETED",
            "REJECT_DELETED",
          },
          enumDescriptions = {
            "Subtype not available.",
            "A suggestion was added.",
            "A suggestion was deleted.",
            "A suggestion reply was added.",
            "A suggestion reply was deleted.",
            "A suggestion was accepted.",
            "A suggestion was rejected.",
            "An accepted suggestion was deleted.",
            "A rejected suggestion was deleted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SystemEvent = {
      description = "Event triggered by system operations instead of end users.",
      id = "SystemEvent",
      properties = {
        type = {
          description = "The type of the system event that may triggered activity.",
          enum = {
            "TYPE_UNSPECIFIED",
            "USER_DELETION",
            "TRASH_AUTO_PURGE",
          },
          enumDescriptions = {
            "The event type is unspecified.",
            "The event is a consequence of a user account being deleted.",
            "The event is due to the system automatically purging trash.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Target = {
      description = "Information about the target of activity. For more information on how activity history is shared with users, see [Activity history visibility](https://developers.google.com/drive/activity/v2#activityhistory).",
      id = "Target",
      properties = {
        drive = {
          ["$ref"] = "Drive",
          description = "The target is a shared drive.",
        },
        driveItem = {
          ["$ref"] = "DriveItem",
          description = "The target is a Drive item.",
        },
        fileComment = {
          ["$ref"] = "FileComment",
          description = "The target is a comment on a Drive file.",
        },
        teamDrive = {
          ["$ref"] = "TeamDrive",
          description = "This field is deprecated; please use the `drive` field instead.",
        },
      },
      type = "object",
    },
    TargetReference = {
      description = "A lightweight reference to the target of activity.",
      id = "TargetReference",
      properties = {
        drive = {
          ["$ref"] = "DriveReference",
          description = "The target is a shared drive.",
        },
        driveItem = {
          ["$ref"] = "DriveItemReference",
          description = "The target is a Drive item.",
        },
        teamDrive = {
          ["$ref"] = "TeamDriveReference",
          description = "This field is deprecated; please use the `drive` field instead.",
        },
      },
      type = "object",
    },
    TeamDrive = {
      description = "This item is deprecated; please see `Drive` instead.",
      id = "TeamDrive",
      properties = {
        name = {
          description = "This field is deprecated; please see `Drive.name` instead.",
          type = "string",
        },
        root = {
          ["$ref"] = "DriveItem",
          description = "This field is deprecated; please see `Drive.root` instead.",
        },
        title = {
          description = "This field is deprecated; please see `Drive.title` instead.",
          type = "string",
        },
      },
      type = "object",
    },
    TeamDriveReference = {
      description = "This item is deprecated; please see `DriveReference` instead.",
      id = "TeamDriveReference",
      properties = {
        name = {
          description = "This field is deprecated; please see `DriveReference.name` instead.",
          type = "string",
        },
        title = {
          description = "This field is deprecated; please see `DriveReference.title` instead.",
          type = "string",
        },
      },
      type = "object",
    },
    Text = {
      description = "Wrapper for Text Field value.",
      id = "Text",
      properties = {
        value = {
          description = "Value of Text Field.",
          type = "string",
        },
      },
      type = "object",
    },
    TextList = {
      description = "Wrapper for Text List Field value.",
      id = "TextList",
      properties = {
        values = {
          description = "Text values.",
          items = {
            ["$ref"] = "Text",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TimeRange = {
      description = "Information about time ranges.",
      id = "TimeRange",
      properties = {
        endTime = {
          description = "The end of the time range.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The start of the time range.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UnknownUser = {
      description = "A user about whom nothing is currently known.",
      id = "UnknownUser",
      properties = {},
      type = "object",
    },
    Upload = {
      description = "An object was uploaded into Drive.",
      id = "Upload",
      properties = {},
      type = "object",
    },
    User = {
      description = "Information about an end user.",
      id = "User",
      properties = {
        deletedUser = {
          ["$ref"] = "DeletedUser",
          description = "A user whose account has since been deleted.",
        },
        knownUser = {
          ["$ref"] = "KnownUser",
          description = "A known user.",
        },
        unknownUser = {
          ["$ref"] = "UnknownUser",
          description = "A user about whom nothing is currently known.",
        },
      },
      type = "object",
    },
    UserList = {
      description = "Wrapper for UserList Field value.",
      id = "UserList",
      properties = {
        values = {
          description = "User values.",
          items = {
            ["$ref"] = "SingleUser",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Drive Activity API",
  version = "v2",
  version_module = true,
}
