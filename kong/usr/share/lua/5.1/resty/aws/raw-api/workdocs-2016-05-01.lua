local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-05-01",
    "endpointPrefix": "workdocs",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon WorkDocs",
    "serviceId": "WorkDocs",
    "signatureVersion": "v4",
    "uid": "workdocs-2016-05-01"
  },
  "operations": {
    "AbortDocumentVersionUpload": {
      "name": "AbortDocumentVersionUpload",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/documents/{DocumentId}/versions/{VersionId}",
        "responseCode": 204
      },
      "input": {
        "shape": "AbortDocumentVersionUploadRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Aborts the upload of the specified document version that was previously initiated by <a>InitiateDocumentVersionUpload</a>. The client should make this call only when it no longer intends to upload the document version, or fails to do so.</p>"
    },
    "ActivateUser": {
      "name": "ActivateUser",
      "http": {
        "method": "POST",
        "requestUri": "/api/v1/users/{UserId}/activation",
        "responseCode": 200
      },
      "input": {
        "shape": "ActivateUserRequest"
      },
      "output": {
        "shape": "ActivateUserResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Activates the specified user. Only active users can access Amazon WorkDocs.</p>"
    },
    "AddResourcePermissions": {
      "name": "AddResourcePermissions",
      "http": {
        "method": "POST",
        "requestUri": "/api/v1/resources/{ResourceId}/permissions",
        "responseCode": 201
      },
      "input": {
        "shape": "AddResourcePermissionsRequest"
      },
      "output": {
        "shape": "AddResourcePermissionsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.</p>"
    },
    "CreateComment": {
      "name": "CreateComment",
      "http": {
        "method": "POST",
        "requestUri": "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateCommentRequest"
      },
      "output": {
        "shape": "CreateCommentResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "DocumentLockedForCommentsException"
        },
        {
          "shape": "InvalidCommentOperationException"
        }
      ],
      "documentation": "<p>Adds a new comment to the specified document version.</p>"
    },
    "CreateCustomMetadata": {
      "name": "CreateCustomMetadata",
      "http": {
        "method": "PUT",
        "requestUri": "/api/v1/resources/{ResourceId}/customMetadata",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateCustomMetadataRequest"
      },
      "output": {
        "shape": "CreateCustomMetadataResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "CustomMetadataLimitExceededException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Adds one or more custom properties to the specified resource (a folder, document, or version).</p>"
    },
    "CreateFolder": {
      "name": "CreateFolder",
      "http": {
        "method": "POST",
        "requestUri": "/api/v1/folders",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateFolderRequest"
      },
      "output": {
        "shape": "CreateFolderResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a folder with the specified name and parent folder.</p>"
    },
    "CreateLabels": {
      "name": "CreateLabels",
      "http": {
        "method": "PUT",
        "requestUri": "/api/v1/resources/{ResourceId}/labels",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateLabelsRequest"
      },
      "output": {
        "shape": "CreateLabelsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyLabelsException"
        }
      ],
      "documentation": "<p>Adds the specified list of labels to the given resource (a document or folder)</p>"
    },
    "CreateNotificationSubscription": {
      "name": "CreateNotificationSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/api/v1/organizations/{OrganizationId}/subscriptions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateNotificationSubscriptionRequest"
      },
      "output": {
        "shape": "CreateNotificationSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "TooManySubscriptionsException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/workdocs/latest/developerguide/subscribe-notifications.html\">Subscribe to Notifications</a> in the <i>Amazon WorkDocs Developer Guide</i>.</p>"
    },
    "CreateUser": {
      "name": "CreateUser",
      "http": {
        "method": "POST",
        "requestUri": "/api/v1/users",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateUserRequest"
      },
      "output": {
        "shape": "CreateUserResponse"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is \"ACTIVE\". New users can access Amazon WorkDocs.</p>"
    },
    "DeactivateUser": {
      "name": "DeactivateUser",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/users/{UserId}/activation",
        "responseCode": 204
      },
      "input": {
        "shape": "DeactivateUserRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.</p>"
    },
    "DeleteComment": {
      "name": "DeleteComment",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteCommentRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "DocumentLockedForCommentsException"
        }
      ],
      "documentation": "<p>Deletes the specified comment from the document version.</p>"
    },
    "DeleteCustomMetadata": {
      "name": "DeleteCustomMetadata",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/resources/{ResourceId}/customMetadata",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteCustomMetadataRequest"
      },
      "output": {
        "shape": "DeleteCustomMetadataResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes custom metadata from the specified resource.</p>"
    },
    "DeleteDocument": {
      "name": "DeleteDocument",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/documents/{DocumentId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDocumentRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Permanently deletes the specified document and its associated metadata.</p>"
    },
    "DeleteFolder": {
      "name": "DeleteFolder",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/folders/{FolderId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteFolderRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Permanently deletes the specified folder and its contents.</p>"
    },
    "DeleteFolderContents": {
      "name": "DeleteFolderContents",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/folders/{FolderId}/contents",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteFolderContentsRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes the contents of the specified folder.</p>"
    },
    "DeleteLabels": {
      "name": "DeleteLabels",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/resources/{ResourceId}/labels",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteLabelsRequest"
      },
      "output": {
        "shape": "DeleteLabelsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes the specified list of labels from a resource.</p>"
    },
    "DeleteNotificationSubscription": {
      "name": "DeleteNotificationSubscription",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteNotificationSubscriptionRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ProhibitedStateException"
        }
      ],
      "documentation": "<p>Deletes the specified subscription from the specified organization.</p>"
    },
    "DeleteUser": {
      "name": "DeleteUser",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/users/{UserId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteUserRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes the specified user from a Simple AD or Microsoft AD directory.</p>"
    },
    "DescribeActivities": {
      "name": "DescribeActivities",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/activities",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeActivitiesRequest"
      },
      "output": {
        "shape": "DescribeActivitiesResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the user activities in a specified time period.</p>"
    },
    "DescribeComments": {
      "name": "DescribeComments",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeCommentsRequest"
      },
      "output": {
        "shape": "DescribeCommentsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>List all the comments for the specified document version.</p>"
    },
    "DescribeDocumentVersions": {
      "name": "DescribeDocumentVersions",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/documents/{DocumentId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeDocumentVersionsRequest"
      },
      "output": {
        "shape": "DescribeDocumentVersionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ProhibitedStateException"
        }
      ],
      "documentation": "<p>Retrieves the document versions for the specified document.</p> <p>By default, only active versions are returned.</p>"
    },
    "DescribeFolderContents": {
      "name": "DescribeFolderContents",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/folders/{FolderId}/contents",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeFolderContentsRequest"
      },
      "output": {
        "shape": "DescribeFolderContentsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ProhibitedStateException"
        }
      ],
      "documentation": "<p>Describes the contents of the specified folder, including its documents and subfolders.</p> <p>By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.</p>"
    },
    "DescribeGroups": {
      "name": "DescribeGroups",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/groups",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeGroupsRequest"
      },
      "output": {
        "shape": "DescribeGroupsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the groups specified by the query. Groups are defined by the underlying Active Directory.</p>"
    },
    "DescribeNotificationSubscriptions": {
      "name": "DescribeNotificationSubscriptions",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/organizations/{OrganizationId}/subscriptions",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeNotificationSubscriptionsRequest"
      },
      "output": {
        "shape": "DescribeNotificationSubscriptionsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Lists the specified notification subscriptions.</p>"
    },
    "DescribeResourcePermissions": {
      "name": "DescribeResourcePermissions",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/resources/{ResourceId}/permissions",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeResourcePermissionsRequest"
      },
      "output": {
        "shape": "DescribeResourcePermissionsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the permissions of a specified resource.</p>"
    },
    "DescribeRootFolders": {
      "name": "DescribeRootFolders",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/me/root",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeRootFoldersRequest"
      },
      "output": {
        "shape": "DescribeRootFoldersResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the current user's special folders; the <code>RootFolder</code> and the <code>RecycleBin</code>. <code>RootFolder</code> is the root of user's files and folders and <code>RecycleBin</code> is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients.</p> <p>This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see <a href=\"https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html\">Authentication and Access Control for User Applications</a> in the <i>Amazon WorkDocs Developer Guide</i>.</p>"
    },
    "DescribeUsers": {
      "name": "DescribeUsers",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/users",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeUsersRequest"
      },
      "output": {
        "shape": "DescribeUsersResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "RequestedEntityTooLargeException"
        }
      ],
      "documentation": "<p>Describes the specified users. You can describe all users or filter the results (for example, by status or organization).</p> <p>By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.</p>"
    },
    "GetCurrentUser": {
      "name": "GetCurrentUser",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/me",
        "responseCode": 200
      },
      "input": {
        "shape": "GetCurrentUserRequest"
      },
      "output": {
        "shape": "GetCurrentUserResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients.</p> <p>This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see <a href=\"https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html\">Authentication and Access Control for User Applications</a> in the <i>Amazon WorkDocs Developer Guide</i>.</p>"
    },
    "GetDocument": {
      "name": "GetDocument",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/documents/{DocumentId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDocumentRequest"
      },
      "output": {
        "shape": "GetDocumentResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidPasswordException"
        }
      ],
      "documentation": "<p>Retrieves details of a document.</p>"
    },
    "GetDocumentPath": {
      "name": "GetDocumentPath",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/documents/{DocumentId}/path",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDocumentPathRequest"
      },
      "output": {
        "shape": "GetDocumentPathResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Retrieves the path information (the hierarchy from the root folder) for the requested document.</p> <p>By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.</p>"
    },
    "GetDocumentVersion": {
      "name": "GetDocumentVersion",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/documents/{DocumentId}/versions/{VersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDocumentVersionRequest"
      },
      "output": {
        "shape": "GetDocumentVersionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "InvalidPasswordException"
        }
      ],
      "documentation": "<p>Retrieves version metadata for the specified document.</p>"
    },
    "GetFolder": {
      "name": "GetFolder",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/folders/{FolderId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFolderRequest"
      },
      "output": {
        "shape": "GetFolderResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ProhibitedStateException"
        }
      ],
      "documentation": "<p>Retrieves the metadata of the specified folder.</p>"
    },
    "GetFolderPath": {
      "name": "GetFolderPath",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/folders/{FolderId}/path",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFolderPathRequest"
      },
      "output": {
        "shape": "GetFolderPathResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Retrieves the path information (the hierarchy from the root folder) for the specified folder.</p> <p>By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.</p>"
    },
    "GetResources": {
      "name": "GetResources",
      "http": {
        "method": "GET",
        "requestUri": "/api/v1/resources",
        "responseCode": 200
      },
      "input": {
        "shape": "GetResourcesRequest"
      },
      "output": {
        "shape": "GetResourcesResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Retrieves a collection of resources, including folders and documents. The only <code>CollectionType</code> supported is <code>SHARED_WITH_ME</code>.</p>"
    },
    "InitiateDocumentVersionUpload": {
      "name": "InitiateDocumentVersionUpload",
      "http": {
        "method": "POST",
        "requestUri": "/api/v1/documents",
        "responseCode": 201
      },
      "input": {
        "shape": "InitiateDocumentVersionUploadRequest"
      },
      "output": {
        "shape": "InitiateDocumentVersionUploadResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "StorageLimitExceededException"
        },
        {
          "shape": "StorageLimitWillExceedException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "DraftUploadOutOfSyncException"
        },
        {
          "shape": "ResourceAlreadyCheckedOutException"
        }
      ],
      "documentation": "<p>Creates a new document object and version object.</p> <p>The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call <a>UpdateDocumentVersion</a>.</p> <p>To cancel the document upload, call <a>AbortDocumentVersionUpload</a>.</p>"
    },
    "RemoveAllResourcePermissions": {
      "name": "RemoveAllResourcePermissions",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/resources/{ResourceId}/permissions",
        "responseCode": 204
      },
      "input": {
        "shape": "RemoveAllResourcePermissionsRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Removes all the permissions from the specified resource.</p>"
    },
    "RemoveResourcePermission": {
      "name": "RemoveResourcePermission",
      "http": {
        "method": "DELETE",
        "requestUri": "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}",
        "responseCode": 204
      },
      "input": {
        "shape": "RemoveResourcePermissionRequest"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Removes the permission for the specified principal from the specified resource.</p>"
    },
    "UpdateDocument": {
      "name": "UpdateDocument",
      "http": {
        "method": "PATCH",
        "requestUri": "/api/v1/documents/{DocumentId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDocumentRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.</p>"
    },
    "UpdateDocumentVersion": {
      "name": "UpdateDocumentVersion",
      "http": {
        "method": "PATCH",
        "requestUri": "/api/v1/documents/{DocumentId}/versions/{VersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDocumentVersionRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Changes the status of the document version to ACTIVE. </p> <p>Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by <a>InitiateDocumentVersionUpload</a>. </p>"
    },
    "UpdateFolder": {
      "name": "UpdateFolder",
      "http": {
        "method": "PATCH",
        "requestUri": "/api/v1/folders/{FolderId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateFolderRequest"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "ProhibitedStateException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.</p>"
    },
    "UpdateUser": {
      "name": "UpdateUser",
      "http": {
        "method": "PATCH",
        "requestUri": "/api/v1/users/{UserId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateUserRequest"
      },
      "output": {
        "shape": "UpdateUserResponse"
      },
      "errors": [
        {
          "shape": "EntityNotExistsException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "UnauthorizedResourceAccessException"
        },
        {
          "shape": "IllegalUserStateException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "DeactivatingLastSystemUserException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.</p>"
    }
  },
  "shapes": {
    "AbortDocumentVersionUploadRequest": {
      "type": "structure",
      "required": [
        "DocumentId",
        "VersionId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The ID of the version.</p>",
          "location": "uri",
          "locationName": "VersionId"
        }
      }
    },
    "ActivateUserRequest": {
      "type": "structure",
      "required": [
        "UserId"
      ],
      "members": {
        "UserId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user.</p>",
          "location": "uri",
          "locationName": "UserId"
        },
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        }
      }
    },
    "ActivateUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The user information.</p>"
        }
      }
    },
    "Activity": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "ActivityType",
          "documentation": "<p>The activity type.</p>"
        },
        "TimeStamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp when the action was performed.</p>"
        },
        "IsIndirectActivity": {
          "shape": "BooleanType",
          "documentation": "<p>Indicates whether an activity is indirect or direct. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity).</p>"
        },
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>"
        },
        "Initiator": {
          "shape": "UserMetadata",
          "documentation": "<p>The user who performed the action.</p>"
        },
        "Participants": {
          "shape": "Participants",
          "documentation": "<p>The list of users or groups impacted by this action. This is an optional field and is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED, DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.</p>"
        },
        "ResourceMetadata": {
          "shape": "ResourceMetadata",
          "documentation": "<p>The metadata of the resource involved in the user action.</p>"
        },
        "OriginalParent": {
          "shape": "ResourceMetadata",
          "documentation": "<p>The original parent of the resource. This is an optional field and is filled for move activities.</p>"
        },
        "CommentMetadata": {
          "shape": "CommentMetadata",
          "documentation": "<p>Metadata of the commenting activity. This is an optional field and is filled for commenting activities.</p>"
        }
      },
      "documentation": "<p>Describes the activity information.</p>"
    },
    "ActivityNamesFilterType": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[\\w,]+"
    },
    "ActivityType": {
      "type": "string",
      "enum": [
        "DOCUMENT_CHECKED_IN",
        "DOCUMENT_CHECKED_OUT",
        "DOCUMENT_RENAMED",
        "DOCUMENT_VERSION_UPLOADED",
        "DOCUMENT_VERSION_DELETED",
        "DOCUMENT_VERSION_VIEWED",
        "DOCUMENT_VERSION_DOWNLOADED",
        "DOCUMENT_RECYCLED",
        "DOCUMENT_RESTORED",
        "DOCUMENT_REVERTED",
        "DOCUMENT_SHARED",
        "DOCUMENT_UNSHARED",
        "DOCUMENT_SHARE_PERMISSION_CHANGED",
        "DOCUMENT_SHAREABLE_LINK_CREATED",
        "DOCUMENT_SHAREABLE_LINK_REMOVED",
        "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED",
        "DOCUMENT_MOVED",
        "DOCUMENT_COMMENT_ADDED",
        "DOCUMENT_COMMENT_DELETED",
        "DOCUMENT_ANNOTATION_ADDED",
        "DOCUMENT_ANNOTATION_DELETED",
        "FOLDER_CREATED",
        "FOLDER_DELETED",
        "FOLDER_RENAMED",
        "FOLDER_RECYCLED",
        "FOLDER_RESTORED",
        "FOLDER_SHARED",
        "FOLDER_UNSHARED",
        "FOLDER_SHARE_PERMISSION_CHANGED",
        "FOLDER_SHAREABLE_LINK_CREATED",
        "FOLDER_SHAREABLE_LINK_REMOVED",
        "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED",
        "FOLDER_MOVED"
      ]
    },
    "AddResourcePermissionsRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "Principals"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "Principals": {
          "shape": "SharePrincipalList",
          "documentation": "<p>The users, groups, or organization being granted permission.</p>"
        },
        "NotificationOptions": {
          "shape": "NotificationOptions",
          "documentation": "<p>The notification options.</p>"
        }
      }
    },
    "AddResourcePermissionsResponse": {
      "type": "structure",
      "members": {
        "ShareResults": {
          "shape": "ShareResultsList",
          "documentation": "<p>The share results.</p>"
        }
      }
    },
    "AuthenticationHeaderType": {
      "type": "string",
      "max": 8199,
      "min": 1,
      "sensitive": true
    },
    "BooleanEnumType": {
      "type": "string",
      "enum": [
        "TRUE",
        "FALSE"
      ]
    },
    "BooleanType": {
      "type": "boolean"
    },
    "Comment": {
      "type": "structure",
      "required": [
        "CommentId"
      ],
      "members": {
        "CommentId": {
          "shape": "CommentIdType",
          "documentation": "<p>The ID of the comment.</p>"
        },
        "ParentId": {
          "shape": "CommentIdType",
          "documentation": "<p>The ID of the parent comment.</p>"
        },
        "ThreadId": {
          "shape": "CommentIdType",
          "documentation": "<p>The ID of the root comment in the thread.</p>"
        },
        "Text": {
          "shape": "CommentTextType",
          "documentation": "<p>The text of the comment.</p>"
        },
        "Contributor": {
          "shape": "User",
          "documentation": "<p>The details of the user who made the comment.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time that the comment was created.</p>"
        },
        "Status": {
          "shape": "CommentStatusType",
          "documentation": "<p>The status of the comment.</p>"
        },
        "Visibility": {
          "shape": "CommentVisibilityType",
          "documentation": "<p>The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.</p>"
        },
        "RecipientId": {
          "shape": "IdType",
          "documentation": "<p>If the comment is a reply to another user's comment, this field contains the user ID of the user being replied to.</p>"
        }
      },
      "documentation": "<p>Describes a comment.</p>"
    },
    "CommentIdType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+-.@]+"
    },
    "CommentList": {
      "type": "list",
      "member": {
        "shape": "Comment"
      }
    },
    "CommentMetadata": {
      "type": "structure",
      "members": {
        "CommentId": {
          "shape": "CommentIdType",
          "documentation": "<p>The ID of the comment.</p>"
        },
        "Contributor": {
          "shape": "User",
          "documentation": "<p>The user who made the comment.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp that the comment was created.</p>"
        },
        "CommentStatus": {
          "shape": "CommentStatusType",
          "documentation": "<p>The status of the comment.</p>"
        },
        "RecipientId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user being replied to.</p>"
        }
      },
      "documentation": "<p>Describes the metadata of a comment.</p>"
    },
    "CommentStatusType": {
      "type": "string",
      "enum": [
        "DRAFT",
        "PUBLISHED",
        "DELETED"
      ]
    },
    "CommentTextType": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "sensitive": true
    },
    "CommentVisibilityType": {
      "type": "string",
      "enum": [
        "PUBLIC",
        "PRIVATE"
      ]
    },
    "CreateCommentRequest": {
      "type": "structure",
      "required": [
        "DocumentId",
        "VersionId",
        "Text"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The ID of the document version.</p>",
          "location": "uri",
          "locationName": "VersionId"
        },
        "ParentId": {
          "shape": "CommentIdType",
          "documentation": "<p>The ID of the parent comment.</p>"
        },
        "ThreadId": {
          "shape": "CommentIdType",
          "documentation": "<p>The ID of the root comment in the thread.</p>"
        },
        "Text": {
          "shape": "CommentTextType",
          "documentation": "<p>The text of the comment.</p>"
        },
        "Visibility": {
          "shape": "CommentVisibilityType",
          "documentation": "<p>The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.</p>"
        },
        "NotifyCollaborators": {
          "shape": "BooleanType",
          "documentation": "<p>Set this parameter to TRUE to send an email out to the document collaborators after the comment is created.</p>"
        }
      }
    },
    "CreateCommentResponse": {
      "type": "structure",
      "members": {
        "Comment": {
          "shape": "Comment",
          "documentation": "<p>The comment that has been created.</p>"
        }
      }
    },
    "CreateCustomMetadataRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "CustomMetadata"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The ID of the version, if the custom metadata is being added to a document version.</p>",
          "location": "querystring",
          "locationName": "versionid"
        },
        "CustomMetadata": {
          "shape": "CustomMetadataMap",
          "documentation": "<p>Custom metadata in the form of name-value pairs.</p>"
        }
      }
    },
    "CreateCustomMetadataResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateFolderRequest": {
      "type": "structure",
      "required": [
        "ParentFolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the new folder.</p>"
        },
        "ParentFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the parent folder.</p>"
        }
      }
    },
    "CreateFolderResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "FolderMetadata",
          "documentation": "<p>The metadata of the folder.</p>"
        }
      }
    },
    "CreateLabelsRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "Labels"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "Labels": {
          "shape": "SharedLabels",
          "documentation": "<p>List of labels to add to the resource.</p>"
        },
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        }
      }
    },
    "CreateLabelsResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateNotificationSubscriptionRequest": {
      "type": "structure",
      "required": [
        "OrganizationId",
        "Endpoint",
        "Protocol",
        "SubscriptionType"
      ],
      "members": {
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>",
          "location": "uri",
          "locationName": "OrganizationId"
        },
        "Endpoint": {
          "shape": "SubscriptionEndPointType",
          "documentation": "<p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with <code>https</code>.</p>"
        },
        "Protocol": {
          "shape": "SubscriptionProtocolType",
          "documentation": "<p>The protocol to use. The supported value is https, which delivers JSON-encoded messages using HTTPS POST.</p>"
        },
        "SubscriptionType": {
          "shape": "SubscriptionType",
          "documentation": "<p>The notification type.</p>"
        }
      }
    },
    "CreateNotificationSubscriptionResponse": {
      "type": "structure",
      "members": {
        "Subscription": {
          "shape": "Subscription",
          "documentation": "<p>The subscription.</p>"
        }
      }
    },
    "CreateUserRequest": {
      "type": "structure",
      "required": [
        "Username",
        "GivenName",
        "Surname",
        "Password"
      ],
      "members": {
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>"
        },
        "Username": {
          "shape": "UsernameType",
          "documentation": "<p>The login name of the user.</p>"
        },
        "EmailAddress": {
          "shape": "EmailAddressType",
          "documentation": "<p>The email address of the user.</p>"
        },
        "GivenName": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The given name of the user.</p>"
        },
        "Surname": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The surname of the user.</p>"
        },
        "Password": {
          "shape": "PasswordType",
          "documentation": "<p>The password of the user.</p>"
        },
        "TimeZoneId": {
          "shape": "TimeZoneIdType",
          "documentation": "<p>The time zone ID of the user.</p>"
        },
        "StorageRule": {
          "shape": "StorageRuleType",
          "documentation": "<p>The amount of storage for the user.</p>"
        },
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        }
      }
    },
    "CreateUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The user information.</p>"
        }
      }
    },
    "CustomMetadataKeyList": {
      "type": "list",
      "member": {
        "shape": "CustomMetadataKeyType"
      },
      "max": 8
    },
    "CustomMetadataKeyType": {
      "type": "string",
      "max": 56,
      "min": 1,
      "pattern": "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*"
    },
    "CustomMetadataMap": {
      "type": "map",
      "key": {
        "shape": "CustomMetadataKeyType"
      },
      "value": {
        "shape": "CustomMetadataValueType"
      },
      "max": 8,
      "min": 1
    },
    "CustomMetadataValueType": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*"
    },
    "DeactivateUserRequest": {
      "type": "structure",
      "required": [
        "UserId"
      ],
      "members": {
        "UserId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user.</p>",
          "location": "uri",
          "locationName": "UserId"
        },
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        }
      }
    },
    "DeleteCommentRequest": {
      "type": "structure",
      "required": [
        "DocumentId",
        "VersionId",
        "CommentId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The ID of the document version.</p>",
          "location": "uri",
          "locationName": "VersionId"
        },
        "CommentId": {
          "shape": "CommentIdType",
          "documentation": "<p>The ID of the comment.</p>",
          "location": "uri",
          "locationName": "CommentId"
        }
      }
    },
    "DeleteCustomMetadataRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource, either a document or folder.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The ID of the version, if the custom metadata is being deleted from a document version.</p>",
          "location": "querystring",
          "locationName": "versionId"
        },
        "Keys": {
          "shape": "CustomMetadataKeyList",
          "documentation": "<p>List of properties to remove.</p>",
          "location": "querystring",
          "locationName": "keys"
        },
        "DeleteAll": {
          "shape": "BooleanType",
          "documentation": "<p>Flag to indicate removal of all custom metadata properties from the specified resource.</p>",
          "location": "querystring",
          "locationName": "deleteAll"
        }
      }
    },
    "DeleteCustomMetadataResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteDocumentRequest": {
      "type": "structure",
      "required": [
        "DocumentId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        }
      }
    },
    "DeleteFolderContentsRequest": {
      "type": "structure",
      "required": [
        "FolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "FolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the folder.</p>",
          "location": "uri",
          "locationName": "FolderId"
        }
      }
    },
    "DeleteFolderRequest": {
      "type": "structure",
      "required": [
        "FolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "FolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the folder.</p>",
          "location": "uri",
          "locationName": "FolderId"
        }
      }
    },
    "DeleteLabelsRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "Labels": {
          "shape": "SharedLabels",
          "documentation": "<p>List of labels to delete from the resource.</p>",
          "location": "querystring",
          "locationName": "labels"
        },
        "DeleteAll": {
          "shape": "BooleanType",
          "documentation": "<p>Flag to request removal of all labels from the specified resource.</p>",
          "location": "querystring",
          "locationName": "deleteAll"
        }
      }
    },
    "DeleteLabelsResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteNotificationSubscriptionRequest": {
      "type": "structure",
      "required": [
        "SubscriptionId",
        "OrganizationId"
      ],
      "members": {
        "SubscriptionId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the subscription.</p>",
          "location": "uri",
          "locationName": "SubscriptionId"
        },
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>",
          "location": "uri",
          "locationName": "OrganizationId"
        }
      }
    },
    "DeleteUserRequest": {
      "type": "structure",
      "required": [
        "UserId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "UserId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user.</p>",
          "location": "uri",
          "locationName": "UserId"
        }
      }
    },
    "DescribeActivitiesRequest": {
      "type": "structure",
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "StartTime": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp that determines the starting time of the activities. The response includes the activities performed after the specified timestamp.</p>",
          "location": "querystring",
          "locationName": "startTime"
        },
        "EndTime": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp that determines the end time of the activities. The response includes the activities performed before the specified timestamp.</p>",
          "location": "querystring",
          "locationName": "endTime"
        },
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.</p>",
          "location": "querystring",
          "locationName": "organizationId"
        },
        "ActivityTypes": {
          "shape": "ActivityNamesFilterType",
          "documentation": "<p>Specifies which activity types to include in the response. If this field is left empty, all activity types are returned.</p>",
          "location": "querystring",
          "locationName": "activityTypes"
        },
        "ResourceId": {
          "shape": "IdType",
          "documentation": "<p>The document or folder ID for which to describe activity types.</p>",
          "location": "querystring",
          "locationName": "resourceId"
        },
        "UserId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.</p>",
          "location": "querystring",
          "locationName": "userId"
        },
        "IncludeIndirectActivities": {
          "shape": "BooleanType",
          "documentation": "<p>Includes indirect activities. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity).</p>",
          "location": "querystring",
          "locationName": "includeIndirectActivities"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of items to return.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Marker": {
          "shape": "MarkerType",
          "documentation": "<p>The marker for the next set of results.</p>",
          "location": "querystring",
          "locationName": "marker"
        }
      }
    },
    "DescribeActivitiesResponse": {
      "type": "structure",
      "members": {
        "UserActivities": {
          "shape": "UserActivities",
          "documentation": "<p>The list of activities for the specified user and time period.</p>"
        },
        "Marker": {
          "shape": "MarkerType",
          "documentation": "<p>The marker for the next set of results.</p>"
        }
      }
    },
    "DescribeCommentsRequest": {
      "type": "structure",
      "required": [
        "DocumentId",
        "VersionId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The ID of the document version.</p>",
          "location": "uri",
          "locationName": "VersionId"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of items to return.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Marker": {
          "shape": "MarkerType",
          "documentation": "<p>The marker for the next set of results. This marker was received from a previous call.</p>",
          "location": "querystring",
          "locationName": "marker"
        }
      }
    },
    "DescribeCommentsResponse": {
      "type": "structure",
      "members": {
        "Comments": {
          "shape": "CommentList",
          "documentation": "<p>The list of comments for the specified document version.</p>"
        },
        "Marker": {
          "shape": "MarkerType",
          "documentation": "<p>The marker for the next set of results. This marker was received from a previous call.</p>"
        }
      }
    },
    "DescribeDocumentVersionsRequest": {
      "type": "structure",
      "required": [
        "DocumentId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of versions to return with this call.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Include": {
          "shape": "FieldNamesType",
          "documentation": "<p>A comma-separated list of values. Specify \"INITIALIZED\" to include incomplete versions.</p>",
          "location": "querystring",
          "locationName": "include"
        },
        "Fields": {
          "shape": "FieldNamesType",
          "documentation": "<p>Specify \"SOURCE\" to include initialized versions and a URL for the source document.</p>",
          "location": "querystring",
          "locationName": "fields"
        }
      }
    },
    "DescribeDocumentVersionsResponse": {
      "type": "structure",
      "members": {
        "DocumentVersions": {
          "shape": "DocumentVersionMetadataList",
          "documentation": "<p>The document versions.</p>"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
        }
      }
    },
    "DescribeFolderContentsRequest": {
      "type": "structure",
      "required": [
        "FolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "FolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the folder.</p>",
          "location": "uri",
          "locationName": "FolderId"
        },
        "Sort": {
          "shape": "ResourceSortType",
          "documentation": "<p>The sorting criteria.</p>",
          "location": "querystring",
          "locationName": "sort"
        },
        "Order": {
          "shape": "OrderType",
          "documentation": "<p>The order for the contents of the folder.</p>",
          "location": "querystring",
          "locationName": "order"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of items to return with this call.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results. This marker was received from a previous call.</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "Type": {
          "shape": "FolderContentType",
          "documentation": "<p>The type of items.</p>",
          "location": "querystring",
          "locationName": "type"
        },
        "Include": {
          "shape": "FieldNamesType",
          "documentation": "<p>The contents to include. Specify \"INITIALIZED\" to include initialized documents.</p>",
          "location": "querystring",
          "locationName": "include"
        }
      }
    },
    "DescribeFolderContentsResponse": {
      "type": "structure",
      "members": {
        "Folders": {
          "shape": "FolderMetadataList",
          "documentation": "<p>The subfolders in the specified folder.</p>"
        },
        "Documents": {
          "shape": "DocumentMetadataList",
          "documentation": "<p>The documents in the specified folder.</p>"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
        }
      }
    },
    "DescribeGroupsRequest": {
      "type": "structure",
      "required": [
        "SearchQuery"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "SearchQuery": {
          "shape": "SearchQueryType",
          "documentation": "<p>A query to describe groups by group name.</p>",
          "location": "querystring",
          "locationName": "searchQuery"
        },
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>",
          "location": "querystring",
          "locationName": "organizationId"
        },
        "Marker": {
          "shape": "MarkerType",
          "documentation": "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "Limit": {
          "shape": "PositiveIntegerType",
          "documentation": "<p>The maximum number of items to return with this call.</p>",
          "location": "querystring",
          "locationName": "limit"
        }
      }
    },
    "DescribeGroupsResponse": {
      "type": "structure",
      "members": {
        "Groups": {
          "shape": "GroupMetadataList",
          "documentation": "<p>The list of groups.</p>"
        },
        "Marker": {
          "shape": "MarkerType",
          "documentation": "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
        }
      }
    },
    "DescribeNotificationSubscriptionsRequest": {
      "type": "structure",
      "required": [
        "OrganizationId"
      ],
      "members": {
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>",
          "location": "uri",
          "locationName": "OrganizationId"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of items to return with this call.</p>",
          "location": "querystring",
          "locationName": "limit"
        }
      }
    },
    "DescribeNotificationSubscriptionsResponse": {
      "type": "structure",
      "members": {
        "Subscriptions": {
          "shape": "SubscriptionList",
          "documentation": "<p>The subscriptions.</p>"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
        }
      }
    },
    "DescribeResourcePermissionsRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "PrincipalId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the principal to filter permissions by.</p>",
          "location": "querystring",
          "locationName": "principalId"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of items to return with this call.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results. (You received this marker from a previous call)</p>",
          "location": "querystring",
          "locationName": "marker"
        }
      }
    },
    "DescribeResourcePermissionsResponse": {
      "type": "structure",
      "members": {
        "Principals": {
          "shape": "PrincipalList",
          "documentation": "<p>The principals.</p>"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
        }
      }
    },
    "DescribeRootFoldersRequest": {
      "type": "structure",
      "required": [
        "AuthenticationToken"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of items to return.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>",
          "location": "querystring",
          "locationName": "marker"
        }
      }
    },
    "DescribeRootFoldersResponse": {
      "type": "structure",
      "members": {
        "Folders": {
          "shape": "FolderMetadataList",
          "documentation": "<p>The user's special folders.</p>"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results.</p>"
        }
      }
    },
    "DescribeUsersRequest": {
      "type": "structure",
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>",
          "location": "querystring",
          "locationName": "organizationId"
        },
        "UserIds": {
          "shape": "UserIdsType",
          "documentation": "<p>The IDs of the users.</p>",
          "location": "querystring",
          "locationName": "userIds"
        },
        "Query": {
          "shape": "SearchQueryType",
          "documentation": "<p>A query to filter users by user name.</p>",
          "location": "querystring",
          "locationName": "query"
        },
        "Include": {
          "shape": "UserFilterType",
          "documentation": "<p>The state of the users. Specify \"ALL\" to include inactive users.</p>",
          "location": "querystring",
          "locationName": "include"
        },
        "Order": {
          "shape": "OrderType",
          "documentation": "<p>The order for the results.</p>",
          "location": "querystring",
          "locationName": "order"
        },
        "Sort": {
          "shape": "UserSortType",
          "documentation": "<p>The sorting criteria.</p>",
          "location": "querystring",
          "locationName": "sort"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>",
          "location": "querystring",
          "locationName": "marker"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of items to return.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Fields": {
          "shape": "FieldNamesType",
          "documentation": "<p>A comma-separated list of values. Specify \"STORAGE_METADATA\" to include the user storage quota and utilization information.</p>",
          "location": "querystring",
          "locationName": "fields"
        }
      }
    },
    "DescribeUsersResponse": {
      "type": "structure",
      "members": {
        "Users": {
          "shape": "OrganizationUserList",
          "documentation": "<p>The users.</p>"
        },
        "TotalNumberOfUsers": {
          "shape": "SizeType",
          "documentation": "<p>The total number of users included in the results.</p>",
          "deprecated": true
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
        }
      }
    },
    "DocumentContentType": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "DocumentMetadata": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>"
        },
        "CreatorId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the creator.</p>"
        },
        "ParentFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the parent folder.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time when the document was created.</p>"
        },
        "ModifiedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time when the document was updated.</p>"
        },
        "LatestVersionMetadata": {
          "shape": "DocumentVersionMetadata",
          "documentation": "<p>The latest version of the document.</p>"
        },
        "ResourceState": {
          "shape": "ResourceStateType",
          "documentation": "<p>The resource state.</p>"
        },
        "Labels": {
          "shape": "SharedLabels",
          "documentation": "<p>List of labels on the document.</p>"
        }
      },
      "documentation": "<p>Describes the document.</p>"
    },
    "DocumentMetadataList": {
      "type": "list",
      "member": {
        "shape": "DocumentMetadata"
      }
    },
    "DocumentSourceType": {
      "type": "string",
      "enum": [
        "ORIGINAL",
        "WITH_COMMENTS"
      ]
    },
    "DocumentSourceUrlMap": {
      "type": "map",
      "key": {
        "shape": "DocumentSourceType"
      },
      "value": {
        "shape": "UrlType"
      }
    },
    "DocumentStatusType": {
      "type": "string",
      "enum": [
        "INITIALIZED",
        "ACTIVE"
      ]
    },
    "DocumentThumbnailType": {
      "type": "string",
      "enum": [
        "SMALL",
        "SMALL_HQ",
        "LARGE"
      ]
    },
    "DocumentThumbnailUrlMap": {
      "type": "map",
      "key": {
        "shape": "DocumentThumbnailType"
      },
      "value": {
        "shape": "UrlType"
      }
    },
    "DocumentVersionIdType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+-.@]+"
    },
    "DocumentVersionMetadata": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The ID of the version.</p>"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the version.</p>"
        },
        "ContentType": {
          "shape": "DocumentContentType",
          "documentation": "<p>The content type of the document.</p>"
        },
        "Size": {
          "shape": "SizeType",
          "documentation": "<p>The size of the document, in bytes.</p>"
        },
        "Signature": {
          "shape": "HashType",
          "documentation": "<p>The signature of the document.</p>"
        },
        "Status": {
          "shape": "DocumentStatusType",
          "documentation": "<p>The status of the document.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp when the document was first uploaded.</p>"
        },
        "ModifiedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp when the document was last uploaded.</p>"
        },
        "ContentCreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp when the content of the document was originally created.</p>"
        },
        "ContentModifiedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp when the content of the document was modified.</p>"
        },
        "CreatorId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the creator.</p>"
        },
        "Thumbnail": {
          "shape": "DocumentThumbnailUrlMap",
          "documentation": "<p>The thumbnail of the document.</p>"
        },
        "Source": {
          "shape": "DocumentSourceUrlMap",
          "documentation": "<p>The source of the document.</p>"
        }
      },
      "documentation": "<p>Describes a version of a document.</p>"
    },
    "DocumentVersionMetadataList": {
      "type": "list",
      "member": {
        "shape": "DocumentVersionMetadata"
      }
    },
    "DocumentVersionStatus": {
      "type": "string",
      "enum": [
        "ACTIVE"
      ]
    },
    "EmailAddressType": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"
    },
    "FieldNamesType": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\w,]+"
    },
    "FolderContentType": {
      "type": "string",
      "enum": [
        "ALL",
        "DOCUMENT",
        "FOLDER"
      ]
    },
    "FolderMetadata": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the folder.</p>"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the folder.</p>"
        },
        "CreatorId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the creator.</p>"
        },
        "ParentFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the parent folder.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time when the folder was created.</p>"
        },
        "ModifiedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time when the folder was updated.</p>"
        },
        "ResourceState": {
          "shape": "ResourceStateType",
          "documentation": "<p>The resource state of the folder.</p>"
        },
        "Signature": {
          "shape": "HashType",
          "documentation": "<p>The unique identifier created from the subfolders and documents of the folder.</p>"
        },
        "Labels": {
          "shape": "SharedLabels",
          "documentation": "<p>List of labels on the folder.</p>"
        },
        "Size": {
          "shape": "SizeType",
          "documentation": "<p>The size of the folder metadata.</p>"
        },
        "LatestVersionSize": {
          "shape": "SizeType",
          "documentation": "<p>The size of the latest version of the folder metadata.</p>"
        }
      },
      "documentation": "<p>Describes a folder.</p>"
    },
    "FolderMetadataList": {
      "type": "list",
      "member": {
        "shape": "FolderMetadata"
      }
    },
    "GetCurrentUserRequest": {
      "type": "structure",
      "required": [
        "AuthenticationToken"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token.</p>",
          "location": "header",
          "locationName": "Authentication"
        }
      }
    },
    "GetCurrentUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>Metadata of the user.</p>"
        }
      }
    },
    "GetDocumentPathRequest": {
      "type": "structure",
      "required": [
        "DocumentId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of levels in the hierarchy to return.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Fields": {
          "shape": "FieldNamesType",
          "documentation": "<p>A comma-separated list of values. Specify <code>NAME</code> to include the names of the parent folders.</p>",
          "location": "querystring",
          "locationName": "fields"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>This value is not supported.</p>",
          "location": "querystring",
          "locationName": "marker"
        }
      }
    },
    "GetDocumentPathResponse": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "ResourcePath",
          "documentation": "<p>The path information.</p>"
        }
      }
    },
    "GetDocumentRequest": {
      "type": "structure",
      "required": [
        "DocumentId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "IncludeCustomMetadata": {
          "shape": "BooleanType",
          "documentation": "<p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>",
          "location": "querystring",
          "locationName": "includeCustomMetadata"
        }
      }
    },
    "GetDocumentResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "DocumentMetadata",
          "documentation": "<p>The metadata details of the document.</p>"
        },
        "CustomMetadata": {
          "shape": "CustomMetadataMap",
          "documentation": "<p>The custom metadata on the document.</p>"
        }
      }
    },
    "GetDocumentVersionRequest": {
      "type": "structure",
      "required": [
        "DocumentId",
        "VersionId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The version ID of the document.</p>",
          "location": "uri",
          "locationName": "VersionId"
        },
        "Fields": {
          "shape": "FieldNamesType",
          "documentation": "<p>A comma-separated list of values. Specify \"SOURCE\" to include a URL for the source document.</p>",
          "location": "querystring",
          "locationName": "fields"
        },
        "IncludeCustomMetadata": {
          "shape": "BooleanType",
          "documentation": "<p>Set this to TRUE to include custom metadata in the response.</p>",
          "location": "querystring",
          "locationName": "includeCustomMetadata"
        }
      }
    },
    "GetDocumentVersionResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "DocumentVersionMetadata",
          "documentation": "<p>The version metadata.</p>"
        },
        "CustomMetadata": {
          "shape": "CustomMetadataMap",
          "documentation": "<p>The custom metadata on the document version.</p>"
        }
      }
    },
    "GetFolderPathRequest": {
      "type": "structure",
      "required": [
        "FolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "FolderId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the folder.</p>",
          "location": "uri",
          "locationName": "FolderId"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of levels in the hierarchy to return.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Fields": {
          "shape": "FieldNamesType",
          "documentation": "<p>A comma-separated list of values. Specify \"NAME\" to include the names of the parent folders.</p>",
          "location": "querystring",
          "locationName": "fields"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>This value is not supported.</p>",
          "location": "querystring",
          "locationName": "marker"
        }
      }
    },
    "GetFolderPathResponse": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "ResourcePath",
          "documentation": "<p>The path information.</p>"
        }
      }
    },
    "GetFolderRequest": {
      "type": "structure",
      "required": [
        "FolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "FolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the folder.</p>",
          "location": "uri",
          "locationName": "FolderId"
        },
        "IncludeCustomMetadata": {
          "shape": "BooleanType",
          "documentation": "<p>Set to TRUE to include custom metadata in the response.</p>",
          "location": "querystring",
          "locationName": "includeCustomMetadata"
        }
      }
    },
    "GetFolderResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "FolderMetadata",
          "documentation": "<p>The metadata of the folder.</p>"
        },
        "CustomMetadata": {
          "shape": "CustomMetadataMap",
          "documentation": "<p>The custom metadata on the folder.</p>"
        }
      }
    },
    "GetResourcesRequest": {
      "type": "structure",
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>The Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "UserId": {
          "shape": "IdType",
          "documentation": "<p>The user ID for the resource collection. This is a required field for accessing the API operation using IAM credentials.</p>",
          "location": "querystring",
          "locationName": "userId"
        },
        "CollectionType": {
          "shape": "ResourceCollectionType",
          "documentation": "<p>The collection type.</p>",
          "location": "querystring",
          "locationName": "collectionType"
        },
        "Limit": {
          "shape": "LimitType",
          "documentation": "<p>The maximum number of resources to return.</p>",
          "location": "querystring",
          "locationName": "limit"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker for the next set of results. This marker was received from a previous call.</p>",
          "location": "querystring",
          "locationName": "marker"
        }
      }
    },
    "GetResourcesResponse": {
      "type": "structure",
      "members": {
        "Folders": {
          "shape": "FolderMetadataList",
          "documentation": "<p>The folders in the specified folder.</p>"
        },
        "Documents": {
          "shape": "DocumentMetadataList",
          "documentation": "<p>The documents in the specified collection.</p>"
        },
        "Marker": {
          "shape": "PageMarkerType",
          "documentation": "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
        }
      }
    },
    "GroupMetadata": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user group.</p>"
        },
        "Name": {
          "shape": "GroupNameType",
          "documentation": "<p>The name of the group.</p>"
        }
      },
      "documentation": "<p>Describes the metadata of a user group.</p>"
    },
    "GroupMetadataList": {
      "type": "list",
      "member": {
        "shape": "GroupMetadata"
      }
    },
    "GroupNameType": {
      "type": "string"
    },
    "HashType": {
      "type": "string",
      "max": 128,
      "min": 0,
      "pattern": "[&\\w+-.@]+"
    },
    "HeaderNameType": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\w-]+"
    },
    "HeaderValueType": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "IdType": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[&\\w+-.@]+"
    },
    "InitiateDocumentVersionUploadRequest": {
      "type": "structure",
      "required": [
        "ParentFolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "Id": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the document.</p>"
        },
        "ContentCreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp when the content of the document was originally created.</p>"
        },
        "ContentModifiedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The timestamp when the content of the document was modified.</p>"
        },
        "ContentType": {
          "shape": "DocumentContentType",
          "documentation": "<p>The content type of the document.</p>"
        },
        "DocumentSizeInBytes": {
          "shape": "SizeType",
          "documentation": "<p>The size of the document, in bytes.</p>"
        },
        "ParentFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the parent folder.</p>"
        }
      }
    },
    "InitiateDocumentVersionUploadResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "DocumentMetadata",
          "documentation": "<p>The document metadata.</p>"
        },
        "UploadMetadata": {
          "shape": "UploadMetadata",
          "documentation": "<p>The upload metadata.</p>"
        }
      }
    },
    "LimitType": {
      "type": "integer",
      "max": 999,
      "min": 1
    },
    "LocaleType": {
      "type": "string",
      "enum": [
        "en",
        "fr",
        "ko",
        "de",
        "es",
        "ja",
        "ru",
        "zh_CN",
        "zh_TW",
        "pt_BR",
        "default"
      ]
    },
    "MarkerType": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\u0000-\\u00FF]+"
    },
    "MessageType": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "sensitive": true
    },
    "NotificationOptions": {
      "type": "structure",
      "members": {
        "SendEmail": {
          "shape": "BooleanType",
          "documentation": "<p>Boolean value to indicate an email notification should be sent to the receipients.</p>"
        },
        "EmailMessage": {
          "shape": "MessageType",
          "documentation": "<p>Text value to be included in the email body.</p>"
        }
      },
      "documentation": "<p>Set of options which defines notification preferences of given action.</p>"
    },
    "OrderType": {
      "type": "string",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "OrganizationUserList": {
      "type": "list",
      "member": {
        "shape": "User"
      }
    },
    "PageMarkerType": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "Participants": {
      "type": "structure",
      "members": {
        "Users": {
          "shape": "UserMetadataList",
          "documentation": "<p>The list of users.</p>"
        },
        "Groups": {
          "shape": "GroupMetadataList",
          "documentation": "<p>The list of user groups.</p>"
        }
      },
      "documentation": "<p>Describes the users or user groups.</p>"
    },
    "PasswordType": {
      "type": "string",
      "max": 32,
      "min": 4,
      "pattern": "[\\u0020-\\u00FF]+",
      "sensitive": true
    },
    "PermissionInfo": {
      "type": "structure",
      "members": {
        "Role": {
          "shape": "RoleType",
          "documentation": "<p>The role of the user.</p>"
        },
        "Type": {
          "shape": "RolePermissionType",
          "documentation": "<p>The type of permissions.</p>"
        }
      },
      "documentation": "<p>Describes the permissions.</p>"
    },
    "PermissionInfoList": {
      "type": "list",
      "member": {
        "shape": "PermissionInfo"
      }
    },
    "PositiveIntegerType": {
      "type": "integer",
      "min": 1
    },
    "PositiveSizeType": {
      "type": "long",
      "min": 0
    },
    "Principal": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "IdType",
          "documentation": "<p>The ID of the resource.</p>"
        },
        "Type": {
          "shape": "PrincipalType",
          "documentation": "<p>The type of resource.</p>"
        },
        "Roles": {
          "shape": "PermissionInfoList",
          "documentation": "<p>The permission information for the resource.</p>"
        }
      },
      "documentation": "<p>Describes a resource.</p>"
    },
    "PrincipalList": {
      "type": "list",
      "member": {
        "shape": "Principal"
      }
    },
    "PrincipalType": {
      "type": "string",
      "enum": [
        "USER",
        "GROUP",
        "INVITE",
        "ANONYMOUS",
        "ORGANIZATION"
      ]
    },
    "RemoveAllResourcePermissionsRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        }
      }
    },
    "RemoveResourcePermissionRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "PrincipalId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "ResourceId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "PrincipalId": {
          "shape": "IdType",
          "documentation": "<p>The principal ID of the resource.</p>",
          "location": "uri",
          "locationName": "PrincipalId"
        },
        "PrincipalType": {
          "shape": "PrincipalType",
          "documentation": "<p>The principal type of the resource.</p>",
          "location": "querystring",
          "locationName": "type"
        }
      }
    },
    "ResourceCollectionType": {
      "type": "string",
      "enum": [
        "SHARED_WITH_ME"
      ]
    },
    "ResourceIdType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+-.@]+"
    },
    "ResourceMetadata": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource.</p>"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the resource.</p>"
        },
        "OriginalName": {
          "shape": "ResourceNameType",
          "documentation": "<p>The original name of the resource before a rename operation.</p>"
        },
        "Id": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource.</p>"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The version ID of the resource. This is an optional field and is filled for action on document version.</p>"
        },
        "Owner": {
          "shape": "UserMetadata",
          "documentation": "<p>The owner of the resource.</p>"
        },
        "ParentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The parent ID of the resource before a rename operation.</p>"
        }
      },
      "documentation": "<p>Describes the metadata of a resource.</p>"
    },
    "ResourceNameType": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\u202D\\u202F-\\uFFFF]+"
    },
    "ResourcePath": {
      "type": "structure",
      "members": {
        "Components": {
          "shape": "ResourcePathComponentList",
          "documentation": "<p>The components of the resource path.</p>"
        }
      },
      "documentation": "<p>Describes the path information of a resource.</p>"
    },
    "ResourcePathComponent": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "IdType",
          "documentation": "<p>The ID of the resource path.</p>"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the resource path.</p>"
        }
      },
      "documentation": "<p>Describes the resource path.</p>"
    },
    "ResourcePathComponentList": {
      "type": "list",
      "member": {
        "shape": "ResourcePathComponent"
      }
    },
    "ResourceSortType": {
      "type": "string",
      "enum": [
        "DATE",
        "NAME"
      ]
    },
    "ResourceStateType": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "RESTORING",
        "RECYCLING",
        "RECYCLED"
      ]
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "FOLDER",
        "DOCUMENT"
      ]
    },
    "RolePermissionType": {
      "type": "string",
      "enum": [
        "DIRECT",
        "INHERITED"
      ]
    },
    "RoleType": {
      "type": "string",
      "enum": [
        "VIEWER",
        "CONTRIBUTOR",
        "OWNER",
        "COOWNER"
      ]
    },
    "SearchQueryType": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "[\\u0020-\\uFFFF]+",
      "sensitive": true
    },
    "SharePrincipal": {
      "type": "structure",
      "required": [
        "Id",
        "Type",
        "Role"
      ],
      "members": {
        "Id": {
          "shape": "IdType",
          "documentation": "<p>The ID of the recipient.</p>"
        },
        "Type": {
          "shape": "PrincipalType",
          "documentation": "<p>The type of the recipient.</p>"
        },
        "Role": {
          "shape": "RoleType",
          "documentation": "<p>The role of the recipient.</p>"
        }
      },
      "documentation": "<p>Describes the recipient type and ID, if available.</p>"
    },
    "SharePrincipalList": {
      "type": "list",
      "member": {
        "shape": "SharePrincipal"
      }
    },
    "ShareResult": {
      "type": "structure",
      "members": {
        "PrincipalId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the principal.</p>"
        },
        "InviteePrincipalId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the invited user.</p>"
        },
        "Role": {
          "shape": "RoleType",
          "documentation": "<p>The role.</p>"
        },
        "Status": {
          "shape": "ShareStatusType",
          "documentation": "<p>The status.</p>"
        },
        "ShareId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the resource that was shared.</p>"
        },
        "StatusMessage": {
          "shape": "MessageType",
          "documentation": "<p>The status message.</p>"
        }
      },
      "documentation": "<p>Describes the share results of a resource.</p>"
    },
    "ShareResultsList": {
      "type": "list",
      "member": {
        "shape": "ShareResult"
      }
    },
    "ShareStatusType": {
      "type": "string",
      "enum": [
        "SUCCESS",
        "FAILURE"
      ]
    },
    "SharedLabel": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*"
    },
    "SharedLabels": {
      "type": "list",
      "member": {
        "shape": "SharedLabel"
      },
      "max": 20
    },
    "SignedHeaderMap": {
      "type": "map",
      "key": {
        "shape": "HeaderNameType"
      },
      "value": {
        "shape": "HeaderValueType"
      }
    },
    "SizeType": {
      "type": "long"
    },
    "StorageRuleType": {
      "type": "structure",
      "members": {
        "StorageAllocatedInBytes": {
          "shape": "PositiveSizeType",
          "documentation": "<p>The amount of storage allocated, in bytes.</p>"
        },
        "StorageType": {
          "shape": "StorageType",
          "documentation": "<p>The type of storage.</p>"
        }
      },
      "documentation": "<p>Describes the storage for a user.</p>"
    },
    "StorageType": {
      "type": "string",
      "enum": [
        "UNLIMITED",
        "QUOTA"
      ]
    },
    "Subscription": {
      "type": "structure",
      "members": {
        "SubscriptionId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the subscription.</p>"
        },
        "EndPoint": {
          "shape": "SubscriptionEndPointType",
          "documentation": "<p>The endpoint of the subscription.</p>"
        },
        "Protocol": {
          "shape": "SubscriptionProtocolType",
          "documentation": "<p>The protocol of the subscription.</p>"
        }
      },
      "documentation": "<p>Describes a subscription.</p>"
    },
    "SubscriptionEndPointType": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "SubscriptionList": {
      "type": "list",
      "member": {
        "shape": "Subscription"
      },
      "max": 256
    },
    "SubscriptionProtocolType": {
      "type": "string",
      "enum": [
        "HTTPS"
      ]
    },
    "SubscriptionType": {
      "type": "string",
      "enum": [
        "ALL"
      ]
    },
    "TimeZoneIdType": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "TimestampType": {
      "type": "timestamp"
    },
    "UpdateDocumentRequest": {
      "type": "structure",
      "required": [
        "DocumentId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the document.</p>"
        },
        "ParentFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the parent folder.</p>"
        },
        "ResourceState": {
          "shape": "ResourceStateType",
          "documentation": "<p>The resource state of the document. Only ACTIVE and RECYCLED are supported.</p>"
        }
      }
    },
    "UpdateDocumentVersionRequest": {
      "type": "structure",
      "required": [
        "DocumentId",
        "VersionId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "DocumentId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the document.</p>",
          "location": "uri",
          "locationName": "DocumentId"
        },
        "VersionId": {
          "shape": "DocumentVersionIdType",
          "documentation": "<p>The version ID of the document.</p>",
          "location": "uri",
          "locationName": "VersionId"
        },
        "VersionStatus": {
          "shape": "DocumentVersionStatus",
          "documentation": "<p>The status of the version.</p>"
        }
      }
    },
    "UpdateFolderRequest": {
      "type": "structure",
      "required": [
        "FolderId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "FolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the folder.</p>",
          "location": "uri",
          "locationName": "FolderId"
        },
        "Name": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the folder.</p>"
        },
        "ParentFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the parent folder.</p>"
        },
        "ResourceState": {
          "shape": "ResourceStateType",
          "documentation": "<p>The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from the API.</p>"
        }
      }
    },
    "UpdateUserRequest": {
      "type": "structure",
      "required": [
        "UserId"
      ],
      "members": {
        "AuthenticationToken": {
          "shape": "AuthenticationHeaderType",
          "documentation": "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>",
          "location": "header",
          "locationName": "Authentication"
        },
        "UserId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user.</p>",
          "location": "uri",
          "locationName": "UserId"
        },
        "GivenName": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The given name of the user.</p>"
        },
        "Surname": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The surname of the user.</p>"
        },
        "Type": {
          "shape": "UserType",
          "documentation": "<p>The type of the user.</p>"
        },
        "StorageRule": {
          "shape": "StorageRuleType",
          "documentation": "<p>The amount of storage for the user.</p>"
        },
        "TimeZoneId": {
          "shape": "TimeZoneIdType",
          "documentation": "<p>The time zone ID of the user.</p>"
        },
        "Locale": {
          "shape": "LocaleType",
          "documentation": "<p>The locale of the user.</p>"
        },
        "GrantPoweruserPrivileges": {
          "shape": "BooleanEnumType",
          "documentation": "<p>Boolean value to determine whether the user is granted Poweruser privileges.</p>"
        }
      }
    },
    "UpdateUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The user information.</p>"
        }
      }
    },
    "UploadMetadata": {
      "type": "structure",
      "members": {
        "UploadUrl": {
          "shape": "UrlType",
          "documentation": "<p>The URL of the upload.</p>"
        },
        "SignedHeaders": {
          "shape": "SignedHeaderMap",
          "documentation": "<p>The signed headers.</p>"
        }
      },
      "documentation": "<p>Describes the upload.</p>"
    },
    "UrlType": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "sensitive": true
    },
    "User": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user.</p>"
        },
        "Username": {
          "shape": "UsernameType",
          "documentation": "<p>The login name of the user.</p>"
        },
        "EmailAddress": {
          "shape": "EmailAddressType",
          "documentation": "<p>The email address of the user.</p>"
        },
        "GivenName": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The given name of the user.</p>"
        },
        "Surname": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The surname of the user.</p>"
        },
        "OrganizationId": {
          "shape": "IdType",
          "documentation": "<p>The ID of the organization.</p>"
        },
        "RootFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the root folder.</p>"
        },
        "RecycleBinFolderId": {
          "shape": "ResourceIdType",
          "documentation": "<p>The ID of the recycle bin folder.</p>"
        },
        "Status": {
          "shape": "UserStatusType",
          "documentation": "<p>The status of the user.</p>"
        },
        "Type": {
          "shape": "UserType",
          "documentation": "<p>The type of user.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time when the user was created.</p>"
        },
        "ModifiedTimestamp": {
          "shape": "TimestampType",
          "documentation": "<p>The time when the user was modified.</p>"
        },
        "TimeZoneId": {
          "shape": "TimeZoneIdType",
          "documentation": "<p>The time zone ID of the user.</p>"
        },
        "Locale": {
          "shape": "LocaleType",
          "documentation": "<p>The locale of the user.</p>"
        },
        "Storage": {
          "shape": "UserStorageMetadata",
          "documentation": "<p>The storage for the user.</p>"
        }
      },
      "documentation": "<p>Describes a user.</p>"
    },
    "UserActivities": {
      "type": "list",
      "member": {
        "shape": "Activity"
      }
    },
    "UserAttributeValueType": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "UserFilterType": {
      "type": "string",
      "enum": [
        "ALL",
        "ACTIVE_PENDING"
      ]
    },
    "UserIdsType": {
      "type": "string",
      "max": 2000,
      "min": 1,
      "pattern": "[&\\w+-.@, ]+"
    },
    "UserMetadata": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "IdType",
          "documentation": "<p>The ID of the user.</p>"
        },
        "Username": {
          "shape": "UsernameType",
          "documentation": "<p>The name of the user.</p>"
        },
        "GivenName": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The given name of the user before a rename operation.</p>"
        },
        "Surname": {
          "shape": "UserAttributeValueType",
          "documentation": "<p>The surname of the user.</p>"
        },
        "EmailAddress": {
          "shape": "EmailAddressType",
          "documentation": "<p>The email address of the user.</p>"
        }
      },
      "documentation": "<p>Describes the metadata of the user.</p>"
    },
    "UserMetadataList": {
      "type": "list",
      "member": {
        "shape": "UserMetadata"
      }
    },
    "UserSortType": {
      "type": "string",
      "enum": [
        "USER_NAME",
        "FULL_NAME",
        "STORAGE_LIMIT",
        "USER_STATUS",
        "STORAGE_USED"
      ]
    },
    "UserStatusType": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "INACTIVE",
        "PENDING"
      ]
    },
    "UserStorageMetadata": {
      "type": "structure",
      "members": {
        "StorageUtilizedInBytes": {
          "shape": "SizeType",
          "documentation": "<p>The amount of storage used, in bytes.</p>"
        },
        "StorageRule": {
          "shape": "StorageRuleType",
          "documentation": "<p>The storage for a user.</p>"
        }
      },
      "documentation": "<p>Describes the storage for a user.</p>"
    },
    "UserType": {
      "type": "string",
      "enum": [
        "USER",
        "ADMIN",
        "POWERUSER",
        "MINIMALUSER",
        "WORKSPACESUSER"
      ]
    },
    "UsernameType": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"
    }
  },
  "documentation": "<p>The WorkDocs API is designed for the following use cases:</p> <ul> <li> <p>File Migration: File migration applications are supported for users who want to migrate their files from an on-premises or off-premises file system or service. Users can insert files into a user directory structure, as well as allow for basic metadata changes, such as modifications to the permissions of files.</p> </li> <li> <p>Security: Support security applications are supported for users who have additional security needs, such as antivirus or data loss prevention. The API actions, along with AWS CloudTrail, allow these applications to detect when changes occur in Amazon WorkDocs. Then, the application can take the necessary actions and replace the target file. If the target file violates the policy, the application can also choose to email the user.</p> </li> <li> <p>eDiscovery/Analytics: General administrative applications are supported, such as eDiscovery and analytics. These applications can choose to mimic or record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to replicate data for eDiscovery, backup, or analytical applications.</p> </li> </ul> <p>All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not limited to, the ability to modify file permissions and upload any file to any user. This allows developers to perform the three use cases above, as well as give users the ability to grant access on a selective basis using the IAM model.</p>"
}
]===]))
