local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-12-19",
    "endpointPrefix": "macie",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon Macie",
    "serviceId": "Macie",
    "signatureVersion": "v4",
    "targetPrefix": "MacieService",
    "uid": "macie-2017-12-19"
  },
  "operations": {
    "AssociateMemberAccount": {
      "name": "AssociateMemberAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateMemberAccountRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Associates a specified AWS account with Amazon Macie Classic as a member account.</p>"
    },
    "AssociateS3Resources": {
      "name": "AssociateS3Resources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateS3ResourcesRequest"
      },
      "output": {
        "shape": "AssociateS3ResourcesResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Associates specified S3 resources with Amazon Macie Classic for monitoring and data classification. If memberAccountId isn't specified, the action associates specified S3 resources with Macie Classic for the current master account. If memberAccountId is specified, the action associates specified S3 resources with Macie Classic for the specified member account. </p>"
    },
    "DisassociateMemberAccount": {
      "name": "DisassociateMemberAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateMemberAccountRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Removes the specified member account from Amazon Macie Classic.</p>"
    },
    "DisassociateS3Resources": {
      "name": "DisassociateS3Resources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateS3ResourcesRequest"
      },
      "output": {
        "shape": "DisassociateS3ResourcesResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Removes specified S3 resources from being monitored by Amazon Macie Classic. If memberAccountId isn't specified, the action removes specified S3 resources from Macie Classic for the current master account. If memberAccountId is specified, the action removes specified S3 resources from Macie Classic for the specified member account.</p>"
    },
    "ListMemberAccounts": {
      "name": "ListMemberAccounts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListMemberAccountsRequest"
      },
      "output": {
        "shape": "ListMemberAccountsResult"
      },
      "errors": [
        {
          "shape": "InternalException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Lists all Amazon Macie Classic member accounts for the current Amazon Macie Classic master account.</p>"
    },
    "ListS3Resources": {
      "name": "ListS3Resources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListS3ResourcesRequest"
      },
      "output": {
        "shape": "ListS3ResourcesResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Lists all the S3 resources associated with Amazon Macie Classic. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie Classic for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie Classic for the specified member account. </p>"
    },
    "UpdateS3Resources": {
      "name": "UpdateS3Resources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateS3ResourcesRequest"
      },
      "output": {
        "shape": "UpdateS3ResourcesResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Updates the classification types for the specified S3 resources. If memberAccountId isn't specified, the action updates the classification types of the S3 resources associated with Amazon Macie Classic for the current master account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Amazon Macie Classic for the specified member account. </p>"
    }
  },
  "shapes": {
    "AWSAccountId": {
      "type": "string",
      "pattern": "[0-9]{12}"
    },
    "AssociateMemberAccountRequest": {
      "type": "structure",
      "required": [
        "memberAccountId"
      ],
      "members": {
        "memberAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The ID of the AWS account that you want to associate with Amazon Macie Classic as a member account.</p>"
        }
      }
    },
    "AssociateS3ResourcesRequest": {
      "type": "structure",
      "required": [
        "s3Resources"
      ],
      "members": {
        "memberAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The ID of the Amazon Macie Classic member account whose resources you want to associate with Macie Classic. </p>"
        },
        "s3Resources": {
          "shape": "S3ResourcesClassification",
          "documentation": "<p>The S3 resources that you want to associate with Amazon Macie Classic for monitoring and data classification. </p>"
        }
      }
    },
    "AssociateS3ResourcesResult": {
      "type": "structure",
      "members": {
        "failedS3Resources": {
          "shape": "FailedS3Resources",
          "documentation": "<p>S3 resources that couldn't be associated with Amazon Macie Classic. An error code and an error message are provided for each failed item. </p>"
        }
      }
    },
    "BucketName": {
      "type": "string",
      "max": 500
    },
    "ClassificationType": {
      "type": "structure",
      "required": [
        "oneTime",
        "continuous"
      ],
      "members": {
        "oneTime": {
          "shape": "S3OneTimeClassificationType",
          "documentation": "<p>A one-time classification of all of the existing objects in a specified S3 bucket. </p>"
        },
        "continuous": {
          "shape": "S3ContinuousClassificationType",
          "documentation": "<p>A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is successfully associated with Amazon Macie Classic. </p>"
        }
      },
      "documentation": "<p>The classification type that Amazon Macie Classic applies to the associated S3 resources. </p>"
    },
    "ClassificationTypeUpdate": {
      "type": "structure",
      "members": {
        "oneTime": {
          "shape": "S3OneTimeClassificationType",
          "documentation": "<p>A one-time classification of all of the existing objects in a specified S3 bucket. </p>"
        },
        "continuous": {
          "shape": "S3ContinuousClassificationType",
          "documentation": "<p>A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is successfully associated with Amazon Macie Classic. </p>"
        }
      },
      "documentation": "<p>The classification type that Amazon Macie Classic applies to the associated S3 resources. At least one of the classification types (oneTime or continuous) must be specified. </p>"
    },
    "DisassociateMemberAccountRequest": {
      "type": "structure",
      "required": [
        "memberAccountId"
      ],
      "members": {
        "memberAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The ID of the member account that you want to remove from Amazon Macie Classic.</p>"
        }
      }
    },
    "DisassociateS3ResourcesRequest": {
      "type": "structure",
      "required": [
        "associatedS3Resources"
      ],
      "members": {
        "memberAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The ID of the Amazon Macie Classic member account whose resources you want to remove from being monitored by Amazon Macie Classic. </p>"
        },
        "associatedS3Resources": {
          "shape": "S3Resources",
          "documentation": "<p>The S3 resources (buckets or prefixes) that you want to remove from being monitored and classified by Amazon Macie Classic. </p>"
        }
      }
    },
    "DisassociateS3ResourcesResult": {
      "type": "structure",
      "members": {
        "failedS3Resources": {
          "shape": "FailedS3Resources",
          "documentation": "<p>S3 resources that couldn't be removed from being monitored and classified by Amazon Macie Classic. An error code and an error message are provided for each failed item. </p>"
        }
      }
    },
    "ErrorCode": {
      "type": "string",
      "documentation": "Error code for the exception",
      "max": 10
    },
    "ExceptionMessage": {
      "type": "string",
      "max": 10000
    },
    "FailedS3Resource": {
      "type": "structure",
      "members": {
        "failedItem": {
          "shape": "S3Resource",
          "documentation": "<p>The failed S3 resources.</p>"
        },
        "errorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The status code of a failed item.</p>"
        },
        "errorMessage": {
          "shape": "ExceptionMessage",
          "documentation": "<p>The error message of a failed item.</p>"
        }
      },
      "documentation": "<p>Includes details about the failed S3 resources.</p>"
    },
    "FailedS3Resources": {
      "type": "list",
      "member": {
        "shape": "FailedS3Resource"
      }
    },
    "ListMemberAccountsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMemberAccounts action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. </p>"
        }
      }
    },
    "ListMemberAccountsResult": {
      "type": "structure",
      "members": {
        "memberAccounts": {
          "shape": "MemberAccounts",
          "documentation": "<p>A list of the Amazon Macie Classic member accounts returned by the action. The current master account is also included in this list. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null. </p>"
        }
      }
    },
    "ListS3ResourcesRequest": {
      "type": "structure",
      "members": {
        "memberAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The Amazon Macie Classic member account ID whose associated S3 resources you want to list. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Use this parameter when paginating results. Set its value to null on your first call to the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. </p>"
        }
      }
    },
    "ListS3ResourcesResult": {
      "type": "structure",
      "members": {
        "s3Resources": {
          "shape": "S3ResourcesClassification",
          "documentation": "<p>A list of the associated S3 resources returned by the action.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null. </p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 250
    },
    "MemberAccount": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account ID of the Amazon Macie Classic member account.</p>"
        }
      },
      "documentation": "<p>Contains information about the Amazon Macie Classic member account.</p>"
    },
    "MemberAccounts": {
      "type": "list",
      "member": {
        "shape": "MemberAccount"
      }
    },
    "NextToken": {
      "type": "string",
      "max": 500
    },
    "Prefix": {
      "type": "string",
      "max": 10000
    },
    "S3ContinuousClassificationType": {
      "type": "string",
      "enum": [
        "FULL"
      ]
    },
    "S3OneTimeClassificationType": {
      "type": "string",
      "enum": [
        "FULL",
        "NONE"
      ]
    },
    "S3Resource": {
      "type": "structure",
      "required": [
        "bucketName"
      ],
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p>The name of the S3 bucket.</p>"
        },
        "prefix": {
          "shape": "Prefix",
          "documentation": "<p>The prefix of the S3 bucket. </p>"
        }
      },
      "documentation": "<p>Contains information about the S3 resource. This data type is used as a request parameter in the DisassociateS3Resources action and can be used as a response parameter in the AssociateS3Resources and UpdateS3Resources actions. </p>"
    },
    "S3ResourceClassification": {
      "type": "structure",
      "required": [
        "bucketName",
        "classificationType"
      ],
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p>The name of the S3 bucket that you want to associate with Amazon Macie Classic.</p>"
        },
        "prefix": {
          "shape": "Prefix",
          "documentation": "<p>The prefix of the S3 bucket that you want to associate with Amazon Macie Classic.</p>"
        },
        "classificationType": {
          "shape": "ClassificationType",
          "documentation": "<p>The classification type that you want to specify for the resource associated with Amazon Macie Classic. </p>"
        }
      },
      "documentation": "<p>The S3 resources that you want to associate with Amazon Macie Classic for monitoring and data classification. This data type is used as a request parameter in the AssociateS3Resources action and a response parameter in the ListS3Resources action. </p>"
    },
    "S3ResourceClassificationUpdate": {
      "type": "structure",
      "required": [
        "bucketName",
        "classificationTypeUpdate"
      ],
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p>The name of the S3 bucket whose classification types you want to update.</p>"
        },
        "prefix": {
          "shape": "Prefix",
          "documentation": "<p>The prefix of the S3 bucket whose classification types you want to update.</p>"
        },
        "classificationTypeUpdate": {
          "shape": "ClassificationTypeUpdate",
          "documentation": "<p>The classification type that you want to update for the resource associated with Amazon Macie Classic. </p>"
        }
      },
      "documentation": "<p>The S3 resources whose classification types you want to update. This data type is used as a request parameter in the UpdateS3Resources action. </p>"
    },
    "S3Resources": {
      "type": "list",
      "member": {
        "shape": "S3Resource"
      }
    },
    "S3ResourcesClassification": {
      "type": "list",
      "member": {
        "shape": "S3ResourceClassification"
      }
    },
    "S3ResourcesClassificationUpdate": {
      "type": "list",
      "member": {
        "shape": "S3ResourceClassificationUpdate"
      }
    },
    "UpdateS3ResourcesRequest": {
      "type": "structure",
      "required": [
        "s3ResourcesUpdate"
      ],
      "members": {
        "memberAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS ID of the Amazon Macie Classic member account whose S3 resources' classification types you want to update. </p>"
        },
        "s3ResourcesUpdate": {
          "shape": "S3ResourcesClassificationUpdate",
          "documentation": "<p>The S3 resources whose classification types you want to update.</p>"
        }
      }
    },
    "UpdateS3ResourcesResult": {
      "type": "structure",
      "members": {
        "failedS3Resources": {
          "shape": "FailedS3Resources",
          "documentation": "<p>The S3 resources whose classification types can't be updated. An error code and an error message are provided for each failed item. </p>"
        }
      }
    }
  },
  "documentation": "<fullname>Amazon Macie Classic</fullname> <p>Amazon Macie Classic is a security service that uses machine learning to automatically discover, classify, and protect sensitive data in AWS. Macie Classic recognizes sensitive data such as personally identifiable information (PII) or intellectual property, and provides you with dashboards and alerts that give visibility into how this data is being accessed or moved. For more information, see the <a href=\"https://docs.aws.amazon.com/macie/latest/userguide/what-is-macie.html\">Amazon Macie Classic User Guide</a>. </p> <p>A new Amazon Macie is now available with significant design improvements and additional features, at a lower price and in most AWS Regions. We encourage you to explore and use the new and improved features, and benefit from the reduced cost. To learn about features and pricing for the new Amazon Macie, see <a href=\"https://aws.amazon.com/macie/\">Amazon Macie</a>.</p>"
}
]===]))
