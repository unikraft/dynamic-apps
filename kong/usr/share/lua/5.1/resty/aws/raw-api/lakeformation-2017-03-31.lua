local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-03-31",
    "endpointPrefix": "lakeformation",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Lake Formation",
    "serviceId": "LakeFormation",
    "signatureVersion": "v4",
    "signingName": "lakeformation",
    "targetPrefix": "AWSLakeFormation",
    "uid": "lakeformation-2017-03-31"
  },
  "operations": {
    "BatchGrantPermissions": {
      "name": "BatchGrantPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGrantPermissionsRequest"
      },
      "output": {
        "shape": "BatchGrantPermissionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Batch operation to grant permissions to the principal.</p>"
    },
    "BatchRevokePermissions": {
      "name": "BatchRevokePermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchRevokePermissionsRequest"
      },
      "output": {
        "shape": "BatchRevokePermissionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Batch operation to revoke permissions from the principal.</p>"
    },
    "DeregisterResource": {
      "name": "DeregisterResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterResourceRequest"
      },
      "output": {
        "shape": "DeregisterResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Deregisters the resource as managed by the Data Catalog.</p> <p>When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.</p>"
    },
    "DescribeResource": {
      "name": "DescribeResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeResourceRequest"
      },
      "output": {
        "shape": "DescribeResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the current data access role for the given resource registered in AWS Lake Formation.</p>"
    },
    "GetDataLakeSettings": {
      "name": "GetDataLakeSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDataLakeSettingsRequest"
      },
      "output": {
        "shape": "GetDataLakeSettingsResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the list of the data lake administrators of a Lake Formation-managed data lake. </p>"
    },
    "GetEffectivePermissionsForPath": {
      "name": "GetEffectivePermissionsForPath",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEffectivePermissionsForPathRequest"
      },
      "output": {
        "shape": "GetEffectivePermissionsForPathResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. <code>GetEffectivePermissionsForPath</code> will not return databases and tables if the catalog is encrypted.</p>"
    },
    "GrantPermissions": {
      "name": "GrantPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GrantPermissionsRequest"
      },
      "output": {
        "shape": "GrantPermissionsResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.</p> <p>For information about permissions, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html\">Security and Access Control to Metadata and Data</a>.</p>"
    },
    "ListPermissions": {
      "name": "ListPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPermissionsRequest"
      },
      "output": {
        "shape": "ListPermissionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER.</p> <p>This operation returns only those permissions that have been explicitly granted.</p> <p>For information about permissions, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html\">Security and Access Control to Metadata and Data</a>.</p>"
    },
    "ListResources": {
      "name": "ListResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourcesRequest"
      },
      "output": {
        "shape": "ListResourcesResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Lists the resources registered to be managed by the Data Catalog.</p>"
    },
    "PutDataLakeSettings": {
      "name": "PutDataLakeSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutDataLakeSettingsRequest"
      },
      "output": {
        "shape": "PutDataLakeSettingsResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation. For more information on admin privileges, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html\">Granting Lake Formation Permissions</a>.</p> <p>This API replaces the current list of data lake admins with the new list being passed. To add an admin, fetch the current list and add the new admin to that list and pass that list in this API.</p>"
    },
    "RegisterResource": {
      "name": "RegisterResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterResourceRequest"
      },
      "output": {
        "shape": "RegisterResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "AlreadyExistsException"
        }
      ],
      "documentation": "<p>Registers the resource as managed by the Data Catalog.</p> <p>To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy.</p> <p>The following request registers a new location and gives AWS Lake Formation permission to use the service-linked role to access that location.</p> <p> <code>ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true</code> </p> <p>If <code>UseServiceLinkedRole</code> is not set to true, you must provide or set the <code>RoleArn</code>:</p> <p> <code>arn:aws:iam::12345:role/my-data-access-role</code> </p>"
    },
    "RevokePermissions": {
      "name": "RevokePermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokePermissionsRequest"
      },
      "output": {
        "shape": "RevokePermissionsResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.</p>"
    },
    "UpdateResource": {
      "name": "UpdateResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateResourceRequest"
      },
      "output": {
        "shape": "UpdateResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Updates the data access role used for vending access to the given (registered) resource in AWS Lake Formation. </p>"
    }
  },
  "shapes": {
    "BatchGrantPermissionsRequest": {
      "type": "structure",
      "required": [
        "Entries"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "Entries": {
          "shape": "BatchPermissionsRequestEntryList",
          "documentation": "<p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>"
        }
      }
    },
    "BatchGrantPermissionsResponse": {
      "type": "structure",
      "members": {
        "Failures": {
          "shape": "BatchPermissionsFailureList",
          "documentation": "<p>A list of failures to grant permissions to the resources.</p>"
        }
      }
    },
    "BatchPermissionsFailureEntry": {
      "type": "structure",
      "members": {
        "RequestEntry": {
          "shape": "BatchPermissionsRequestEntry",
          "documentation": "<p>An identifier for an entry of the batch request.</p>"
        },
        "Error": {
          "shape": "ErrorDetail",
          "documentation": "<p>An error message that applies to the failure of the entry.</p>"
        }
      },
      "documentation": "<p>A list of failures when performing a batch grant or batch revoke operation.</p>"
    },
    "BatchPermissionsFailureList": {
      "type": "list",
      "member": {
        "shape": "BatchPermissionsFailureEntry"
      }
    },
    "BatchPermissionsRequestEntry": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "Identifier",
          "documentation": "<p>A unique identifier for the batch permissions request entry.</p>"
        },
        "Principal": {
          "shape": "DataLakePrincipal",
          "documentation": "<p>The principal to be granted a permission.</p>"
        },
        "Resource": {
          "shape": "Resource",
          "documentation": "<p>The resource to which the principal is to be granted a permission.</p>"
        },
        "Permissions": {
          "shape": "PermissionList",
          "documentation": "<p>The permissions to be granted.</p>"
        },
        "PermissionsWithGrantOption": {
          "shape": "PermissionList",
          "documentation": "<p>Indicates if the option to pass permissions is granted.</p>"
        }
      },
      "documentation": "<p>A permission to a resource granted by batch operation to the principal.</p>"
    },
    "BatchPermissionsRequestEntryList": {
      "type": "list",
      "member": {
        "shape": "BatchPermissionsRequestEntry"
      }
    },
    "BatchRevokePermissionsRequest": {
      "type": "structure",
      "required": [
        "Entries"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "Entries": {
          "shape": "BatchPermissionsRequestEntryList",
          "documentation": "<p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>"
        }
      }
    },
    "BatchRevokePermissionsResponse": {
      "type": "structure",
      "members": {
        "Failures": {
          "shape": "BatchPermissionsFailureList",
          "documentation": "<p>A list of failures to revoke permissions to the resources.</p>"
        }
      }
    },
    "CatalogIdString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "CatalogResource": {
      "type": "structure",
      "members": {},
      "documentation": "<p>A structure for the catalog object.</p>"
    },
    "ColumnNames": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "ColumnWildcard": {
      "type": "structure",
      "members": {
        "ExcludedColumnNames": {
          "shape": "ColumnNames",
          "documentation": "<p>Excludes column names. Any column with this name will be excluded.</p>"
        }
      },
      "documentation": "<p>A wildcard object, consisting of an optional list of excluded column names or indexes.</p>"
    },
    "ComparisonOperator": {
      "type": "string",
      "enum": [
        "EQ",
        "NE",
        "LE",
        "LT",
        "GE",
        "GT",
        "CONTAINS",
        "NOT_CONTAINS",
        "BEGINS_WITH",
        "IN",
        "BETWEEN"
      ]
    },
    "DataLakePrincipal": {
      "type": "structure",
      "members": {
        "DataLakePrincipalIdentifier": {
          "shape": "DataLakePrincipalString",
          "documentation": "<p>An identifier for the AWS Lake Formation principal.</p>"
        }
      },
      "documentation": "<p>The AWS Lake Formation principal. Supported principals are IAM users or IAM roles.</p>"
    },
    "DataLakePrincipalList": {
      "type": "list",
      "member": {
        "shape": "DataLakePrincipal"
      },
      "max": 10,
      "min": 0
    },
    "DataLakePrincipalString": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "DataLakeResourceType": {
      "type": "string",
      "enum": [
        "CATALOG",
        "DATABASE",
        "TABLE",
        "DATA_LOCATION"
      ]
    },
    "DataLakeSettings": {
      "type": "structure",
      "members": {
        "DataLakeAdmins": {
          "shape": "DataLakePrincipalList",
          "documentation": "<p>A list of AWS Lake Formation principals. Supported principals are IAM users or IAM roles.</p>"
        },
        "CreateDatabaseDefaultPermissions": {
          "shape": "PrincipalPermissionsList",
          "documentation": "<p>A structure representing a list of up to three principal permissions entries for default create database permissions.</p>"
        },
        "CreateTableDefaultPermissions": {
          "shape": "PrincipalPermissionsList",
          "documentation": "<p>A structure representing a list of up to three principal permissions entries for default create table permissions.</p>"
        },
        "TrustedResourceOwners": {
          "shape": "TrustedResourceOwners",
          "documentation": "<p>A list of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs). The user ARNs can be logged in the resource owner's AWS CloudTrail log.</p> <p>You may want to specify this property when you are in a high-trust boundary, such as the same team or company. </p>"
        }
      },
      "documentation": "<p>A structure representing a list of AWS Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.</p>"
    },
    "DataLocationResource": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog where the location is registered with AWS Lake Formation. By default, it is the account ID of the caller.</p>"
        },
        "ResourceArn": {
          "shape": "ResourceArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) that uniquely identifies the data location resource.</p>"
        }
      },
      "documentation": "<p>A structure for a data location object where permissions are granted or revoked. </p>"
    },
    "DatabaseResource": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the database resource. Unique to the Data Catalog.</p>"
        }
      },
      "documentation": "<p>A structure for the database object.</p>"
    },
    "DeregisterResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>"
        }
      }
    },
    "DeregisterResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArnString",
          "documentation": "<p>The resource ARN.</p>"
        }
      }
    },
    "DescribeResourceResponse": {
      "type": "structure",
      "members": {
        "ResourceInfo": {
          "shape": "ResourceInfo",
          "documentation": "<p>A structure containing information about an AWS Lake Formation resource.</p>"
        }
      }
    },
    "DescriptionString": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "DetailsMap": {
      "type": "structure",
      "members": {
        "ResourceShare": {
          "shape": "ResourceShareList",
          "documentation": "<p>A share resource ARN for a catalog resource shared through AWS Resource Access Manager (AWS RAM).</p>"
        }
      },
      "documentation": "<p>A structure containing the additional details to be returned in the <code>AdditionalDetails</code> attribute of <code>PrincipalResourcePermissions</code>.</p> <p>If a catalog resource is shared through AWS Resource Access Manager (AWS RAM), then there will exist a corresponding RAM share resource ARN.</p>"
    },
    "ErrorDetail": {
      "type": "structure",
      "members": {
        "ErrorCode": {
          "shape": "NameString",
          "documentation": "<p>The code associated with this error.</p>"
        },
        "ErrorMessage": {
          "shape": "DescriptionString",
          "documentation": "<p>A message describing the error.</p>"
        }
      },
      "documentation": "<p>Contains details about an error.</p>"
    },
    "FieldNameString": {
      "type": "string",
      "enum": [
        "RESOURCE_ARN",
        "ROLE_ARN",
        "LAST_MODIFIED"
      ]
    },
    "FilterCondition": {
      "type": "structure",
      "members": {
        "Field": {
          "shape": "FieldNameString",
          "documentation": "<p>The field to filter in the filter condition.</p>"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperator",
          "documentation": "<p>The comparison operator used in the filter condition.</p>"
        },
        "StringValueList": {
          "shape": "StringValueList",
          "documentation": "<p>A string with values used in evaluating the filter condition.</p>"
        }
      },
      "documentation": "<p>This structure describes the filtering of columns in a table based on a filter condition.</p>"
    },
    "FilterConditionList": {
      "type": "list",
      "member": {
        "shape": "FilterCondition"
      },
      "max": 20,
      "min": 1
    },
    "GetDataLakeSettingsRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        }
      }
    },
    "GetDataLakeSettingsResponse": {
      "type": "structure",
      "members": {
        "DataLakeSettings": {
          "shape": "DataLakeSettings",
          "documentation": "<p>A structure representing a list of AWS Lake Formation principals designated as data lake administrators.</p>"
        }
      }
    },
    "GetEffectivePermissionsForPathRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "ResourceArn": {
          "shape": "ResourceArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call to retrieve this list.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        }
      }
    },
    "GetEffectivePermissionsForPathResponse": {
      "type": "structure",
      "members": {
        "Permissions": {
          "shape": "PrincipalResourcePermissionsList",
          "documentation": "<p>A list of the permissions for the specified table or database resource located at the path in Amazon S3.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call to retrieve this list.</p>"
        }
      }
    },
    "GrantPermissionsRequest": {
      "type": "structure",
      "required": [
        "Principal",
        "Resource",
        "Permissions"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "Principal": {
          "shape": "DataLakePrincipal",
          "documentation": "<p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p> <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>"
        },
        "Resource": {
          "shape": "Resource",
          "documentation": "<p>The resource to which permissions are to be granted. Resources in AWS Lake Formation are the Data Catalog, databases, and tables.</p>"
        },
        "Permissions": {
          "shape": "PermissionList",
          "documentation": "<p>The permissions granted to the principal on the resource. AWS Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. AWS Lake Formation requires that each principal be authorized to perform a specific task on AWS Lake Formation resources. </p>"
        },
        "PermissionsWithGrantOption": {
          "shape": "PermissionList",
          "documentation": "<p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>"
        }
      }
    },
    "GrantPermissionsResponse": {
      "type": "structure",
      "members": {}
    },
    "IAMRoleArn": {
      "type": "string",
      "pattern": "arn:aws:iam::[0-9]*:role/.*"
    },
    "Identifier": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "LastModifiedTimestamp": {
      "type": "timestamp"
    },
    "ListPermissionsRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "Principal": {
          "shape": "DataLakePrincipal",
          "documentation": "<p>Specifies a principal to filter the permissions returned.</p>"
        },
        "ResourceType": {
          "shape": "DataLakeResourceType",
          "documentation": "<p>Specifies a resource type to filter the permissions returned.</p>"
        },
        "Resource": {
          "shape": "Resource",
          "documentation": "<p>A resource where you will get a list of the principal permissions.</p> <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call to retrieve this list.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        }
      }
    },
    "ListPermissionsResponse": {
      "type": "structure",
      "members": {
        "PrincipalResourcePermissions": {
          "shape": "PrincipalResourcePermissionsList",
          "documentation": "<p>A list of principals and their permissions on the resource for the specified principal and resource types.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call to retrieve this list.</p>"
        }
      }
    },
    "ListResourcesRequest": {
      "type": "structure",
      "members": {
        "FilterConditionList": {
          "shape": "FilterConditionList",
          "documentation": "<p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of resource results.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"
        }
      }
    },
    "ListResourcesResponse": {
      "type": "structure",
      "members": {
        "ResourceInfoList": {
          "shape": "ResourceInfoList",
          "documentation": "<p>A summary of the data lake resources.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"
        }
      }
    },
    "NameString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "NullableBoolean": {
      "type": "boolean",
      "box": true
    },
    "PageSize": {
      "type": "integer",
      "box": true,
      "max": 1000,
      "min": 1
    },
    "Permission": {
      "type": "string",
      "enum": [
        "ALL",
        "SELECT",
        "ALTER",
        "DROP",
        "DELETE",
        "INSERT",
        "DESCRIBE",
        "CREATE_DATABASE",
        "CREATE_TABLE",
        "DATA_LOCATION_ACCESS"
      ]
    },
    "PermissionList": {
      "type": "list",
      "member": {
        "shape": "Permission"
      }
    },
    "PrincipalPermissions": {
      "type": "structure",
      "members": {
        "Principal": {
          "shape": "DataLakePrincipal",
          "documentation": "<p>The principal who is granted permissions.</p>"
        },
        "Permissions": {
          "shape": "PermissionList",
          "documentation": "<p>The permissions that are granted to the principal.</p>"
        }
      },
      "documentation": "<p>Permissions granted to a principal.</p>"
    },
    "PrincipalPermissionsList": {
      "type": "list",
      "member": {
        "shape": "PrincipalPermissions"
      }
    },
    "PrincipalResourcePermissions": {
      "type": "structure",
      "members": {
        "Principal": {
          "shape": "DataLakePrincipal",
          "documentation": "<p>The Data Lake principal to be granted or revoked permissions.</p>"
        },
        "Resource": {
          "shape": "Resource",
          "documentation": "<p>The resource where permissions are to be granted or revoked.</p>"
        },
        "Permissions": {
          "shape": "PermissionList",
          "documentation": "<p>The permissions to be granted or revoked on the resource.</p>"
        },
        "PermissionsWithGrantOption": {
          "shape": "PermissionList",
          "documentation": "<p>Indicates whether to grant the ability to grant permissions (as a subset of permissions granted).</p>"
        },
        "AdditionalDetails": {
          "shape": "DetailsMap",
          "documentation": "<p>This attribute can be used to return any additional details of <code>PrincipalResourcePermissions</code>. Currently returns only as a RAM share resource ARN.</p>"
        }
      },
      "documentation": "<p>The permissions granted or revoked on a resource.</p>"
    },
    "PrincipalResourcePermissionsList": {
      "type": "list",
      "member": {
        "shape": "PrincipalResourcePermissions"
      }
    },
    "PutDataLakeSettingsRequest": {
      "type": "structure",
      "required": [
        "DataLakeSettings"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "DataLakeSettings": {
          "shape": "DataLakeSettings",
          "documentation": "<p>A structure representing a list of AWS Lake Formation principals designated as data lake administrators.</p>"
        }
      }
    },
    "PutDataLakeSettingsResponse": {
      "type": "structure",
      "members": {}
    },
    "RAMResourceShareArn": {
      "type": "string"
    },
    "RegisterResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>"
        },
        "UseServiceLinkedRole": {
          "shape": "NullableBoolean",
          "documentation": "<p>Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p> <p>For more information, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html\">Using Service-Linked Roles for Lake Formation</a>.</p>"
        },
        "RoleArn": {
          "shape": "IAMRoleArn",
          "documentation": "<p>The identifier for the role that registers the resource.</p>"
        }
      }
    },
    "RegisterResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "Resource": {
      "type": "structure",
      "members": {
        "Catalog": {
          "shape": "CatalogResource",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "Database": {
          "shape": "DatabaseResource",
          "documentation": "<p>The database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. </p>"
        },
        "Table": {
          "shape": "TableResource",
          "documentation": "<p>The table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
        },
        "TableWithColumns": {
          "shape": "TableWithColumnsResource",
          "documentation": "<p>The table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3.</p>"
        },
        "DataLocation": {
          "shape": "DataLocationResource",
          "documentation": "<p>The location of an Amazon S3 path where permissions are granted or revoked. </p>"
        }
      },
      "documentation": "<p>A structure for the resource.</p>"
    },
    "ResourceArnString": {
      "type": "string"
    },
    "ResourceInfo": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "ResourceArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "RoleArn": {
          "shape": "IAMRoleArn",
          "documentation": "<p>The IAM role that registered a resource.</p>"
        },
        "LastModified": {
          "shape": "LastModifiedTimestamp",
          "documentation": "<p>The date and time the resource was last modified.</p>"
        }
      },
      "documentation": "<p>A structure containing information about an AWS Lake Formation resource.</p>"
    },
    "ResourceInfoList": {
      "type": "list",
      "member": {
        "shape": "ResourceInfo"
      }
    },
    "ResourceShareList": {
      "type": "list",
      "member": {
        "shape": "RAMResourceShareArn"
      }
    },
    "RevokePermissionsRequest": {
      "type": "structure",
      "required": [
        "Principal",
        "Resource",
        "Permissions"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
        },
        "Principal": {
          "shape": "DataLakePrincipal",
          "documentation": "<p>The principal to be revoked permissions on the resource.</p>"
        },
        "Resource": {
          "shape": "Resource",
          "documentation": "<p>The resource to which permissions are to be revoked.</p>"
        },
        "Permissions": {
          "shape": "PermissionList",
          "documentation": "<p>The permissions revoked to the principal on the resource. For information about permissions, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html\">Security and Access Control to Metadata and Data</a>.</p>"
        },
        "PermissionsWithGrantOption": {
          "shape": "PermissionList",
          "documentation": "<p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>"
        }
      }
    },
    "RevokePermissionsResponse": {
      "type": "structure",
      "members": {}
    },
    "StringValue": {
      "type": "string"
    },
    "StringValueList": {
      "type": "list",
      "member": {
        "shape": "StringValue"
      }
    },
    "TableResource": {
      "type": "structure",
      "required": [
        "DatabaseName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the table.</p>"
        },
        "TableWildcard": {
          "shape": "TableWildcard",
          "documentation": "<p>A wildcard object representing every table under a database.</p> <p>At least one of <code>TableResource$Name</code> or <code>TableResource$TableWildcard</code> is required.</p>"
        }
      },
      "documentation": "<p>A structure for the table object. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
    },
    "TableWildcard": {
      "type": "structure",
      "members": {},
      "documentation": "<p>A wildcard object representing every table under a database.</p>"
    },
    "TableWithColumnsResource": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "Name"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
        },
        "ColumnNames": {
          "shape": "ColumnNames",
          "documentation": "<p>The list of column names for the table. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"
        },
        "ColumnWildcard": {
          "shape": "ColumnWildcard",
          "documentation": "<p>A wildcard specified by a <code>ColumnWildcard</code> object. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"
        }
      },
      "documentation": "<p>A structure for a table with columns object. This object is only used when granting a SELECT permission.</p> <p>This object must take a value for at least one of <code>ColumnsNames</code>, <code>ColumnsIndexes</code>, or <code>ColumnsWildcard</code>.</p>"
    },
    "Token": {
      "type": "string"
    },
    "TrustedResourceOwners": {
      "type": "list",
      "member": {
        "shape": "CatalogIdString"
      }
    },
    "UpdateResourceRequest": {
      "type": "structure",
      "required": [
        "RoleArn",
        "ResourceArn"
      ],
      "members": {
        "RoleArn": {
          "shape": "IAMRoleArn",
          "documentation": "<p>The new role to use for the given resource registered in AWS Lake Formation.</p>"
        },
        "ResourceArn": {
          "shape": "ResourceArnString",
          "documentation": "<p>The resource ARN.</p>"
        }
      }
    },
    "UpdateResourceResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<fullname>AWS Lake Formation</fullname> <p>Defines the public endpoint for the AWS Lake Formation service.</p>"
}
]===]))
