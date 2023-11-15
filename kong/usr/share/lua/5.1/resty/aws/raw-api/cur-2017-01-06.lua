local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-01-06",
    "endpointPrefix": "cur",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Cost and Usage Report Service",
    "serviceId": "Cost and Usage Report Service",
    "signatureVersion": "v4",
    "signingName": "cur",
    "targetPrefix": "AWSOrigamiServiceGatewayService",
    "uid": "cur-2017-01-06"
  },
  "operations": {
    "DeleteReportDefinition": {
      "name": "DeleteReportDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReportDefinitionRequest"
      },
      "output": {
        "shape": "DeleteReportDefinitionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Deletes the specified report.</p>"
    },
    "DescribeReportDefinitions": {
      "name": "DescribeReportDefinitions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReportDefinitionsRequest"
      },
      "output": {
        "shape": "DescribeReportDefinitionsResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Lists the AWS Cost and Usage reports available to this account.</p>"
    },
    "ModifyReportDefinition": {
      "name": "ModifyReportDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyReportDefinitionRequest"
      },
      "output": {
        "shape": "ModifyReportDefinitionResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Allows you to programatically update your report preferences.</p>"
    },
    "PutReportDefinition": {
      "name": "PutReportDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutReportDefinitionRequest"
      },
      "output": {
        "shape": "PutReportDefinitionResponse"
      },
      "errors": [
        {
          "shape": "DuplicateReportNameException"
        },
        {
          "shape": "ReportLimitReachedException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Creates a new report using the description that you provide.</p>"
    }
  },
  "shapes": {
    "AWSRegion": {
      "type": "string",
      "documentation": "<p>The region of the S3 bucket that AWS delivers the report into.</p>",
      "enum": [
        "af-south-1",
        "ap-east-1",
        "ap-south-1",
        "ap-southeast-1",
        "ap-southeast-2",
        "ap-northeast-1",
        "ap-northeast-2",
        "ap-northeast-3",
        "ca-central-1",
        "eu-central-1",
        "eu-west-1",
        "eu-west-2",
        "eu-west-3",
        "eu-north-1",
        "eu-south-1",
        "me-south-1",
        "sa-east-1",
        "us-east-1",
        "us-east-2",
        "us-west-1",
        "us-west-2",
        "cn-north-1",
        "cn-northwest-1"
      ]
    },
    "AdditionalArtifact": {
      "type": "string",
      "documentation": "<p>The types of manifest that you want AWS to create for this report.</p>",
      "enum": [
        "REDSHIFT",
        "QUICKSIGHT",
        "ATHENA"
      ]
    },
    "AdditionalArtifactList": {
      "type": "list",
      "member": {
        "shape": "AdditionalArtifact"
      },
      "documentation": "<p>A list of additional artifacts.</p>"
    },
    "CompressionFormat": {
      "type": "string",
      "documentation": "<p>The compression format that AWS uses for the report.</p>",
      "enum": [
        "ZIP",
        "GZIP",
        "Parquet"
      ]
    },
    "DeleteReportDefinitionRequest": {
      "type": "structure",
      "members": {
        "ReportName": {
          "shape": "ReportName",
          "documentation": "<p>The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.</p>"
        }
      },
      "documentation": "<p>Deletes the specified report.</p>"
    },
    "DeleteReportDefinitionResponse": {
      "type": "structure",
      "members": {
        "ResponseMessage": {
          "shape": "DeleteResponseMessage"
        }
      },
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response.</p>"
    },
    "DeleteResponseMessage": {
      "type": "string",
      "documentation": "<p>Whether the deletion was successful or not.</p>"
    },
    "DescribeReportDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults"
        },
        "NextToken": {
          "shape": "GenericString"
        }
      },
      "documentation": "<p>Requests a list of AWS Cost and Usage reports owned by the account.</p>"
    },
    "DescribeReportDefinitionsResponse": {
      "type": "structure",
      "members": {
        "ReportDefinitions": {
          "shape": "ReportDefinitionList",
          "documentation": "<p>A list of AWS Cost and Usage reports owned by the account.</p>"
        },
        "NextToken": {
          "shape": "GenericString"
        }
      },
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response.</p>"
    },
    "GenericString": {
      "type": "string",
      "documentation": "<p>A generic string.</p>",
      "max": 256,
      "pattern": "[A-Za-z0-9_\\.\\-=]*"
    },
    "MaxResults": {
      "type": "integer",
      "documentation": "<p>The maximum number of results that AWS returns for the operation.</p>",
      "box": true,
      "max": 5,
      "min": 5
    },
    "ModifyReportDefinitionRequest": {
      "type": "structure",
      "required": [
        "ReportName",
        "ReportDefinition"
      ],
      "members": {
        "ReportName": {
          "shape": "ReportName"
        },
        "ReportDefinition": {
          "shape": "ReportDefinition"
        }
      }
    },
    "ModifyReportDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "PutReportDefinitionRequest": {
      "type": "structure",
      "required": [
        "ReportDefinition"
      ],
      "members": {
        "ReportDefinition": {
          "shape": "ReportDefinition",
          "documentation": "<p>Represents the output of the PutReportDefinition operation. The content consists of the detailed metadata and data file information. </p>"
        }
      },
      "documentation": "<p>Creates a Cost and Usage Report.</p>"
    },
    "PutReportDefinitionResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>"
    },
    "RefreshClosedReports": {
      "type": "boolean",
      "box": true
    },
    "ReportDefinition": {
      "type": "structure",
      "required": [
        "ReportName",
        "TimeUnit",
        "Format",
        "Compression",
        "AdditionalSchemaElements",
        "S3Bucket",
        "S3Prefix",
        "S3Region"
      ],
      "members": {
        "ReportName": {
          "shape": "ReportName"
        },
        "TimeUnit": {
          "shape": "TimeUnit"
        },
        "Format": {
          "shape": "ReportFormat"
        },
        "Compression": {
          "shape": "CompressionFormat"
        },
        "AdditionalSchemaElements": {
          "shape": "SchemaElementList",
          "documentation": "<p>A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs. </p>"
        },
        "S3Bucket": {
          "shape": "S3Bucket"
        },
        "S3Prefix": {
          "shape": "S3Prefix"
        },
        "S3Region": {
          "shape": "AWSRegion"
        },
        "AdditionalArtifacts": {
          "shape": "AdditionalArtifactList",
          "documentation": "<p>A list of manifests that you want Amazon Web Services to create for this report.</p>"
        },
        "RefreshClosedReports": {
          "shape": "RefreshClosedReports",
          "documentation": "<p>Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to previous months. These charges can include refunds, credits, or support fees.</p>"
        },
        "ReportVersioning": {
          "shape": "ReportVersioning",
          "documentation": "<p>Whether you want Amazon Web Services to overwrite the previous version of each report or to deliver the report in addition to the previous versions.</p>"
        }
      },
      "documentation": "<p>The definition of AWS Cost and Usage Report. You can specify the report name, time unit, report format, compression format, S3 bucket, additional artifacts, and schema elements in the definition. </p>"
    },
    "ReportDefinitionList": {
      "type": "list",
      "member": {
        "shape": "ReportDefinition"
      },
      "documentation": "<p>A list of report definitions.</p>"
    },
    "ReportFormat": {
      "type": "string",
      "documentation": "<p>The format that AWS saves the report in.</p>",
      "enum": [
        "textORcsv",
        "Parquet"
      ]
    },
    "ReportName": {
      "type": "string",
      "documentation": "<p>The name of the report that you want to create. The name must be unique, is case sensitive, and can't include spaces. </p>",
      "max": 256,
      "pattern": "[0-9A-Za-z!\\-_.*\\'()]+"
    },
    "ReportVersioning": {
      "type": "string",
      "enum": [
        "CREATE_NEW_REPORT",
        "OVERWRITE_REPORT"
      ]
    },
    "S3Bucket": {
      "type": "string",
      "documentation": "<p>The S3 bucket where AWS delivers the report.</p>",
      "max": 256,
      "pattern": "[A-Za-z0-9_\\.\\-]+"
    },
    "S3Prefix": {
      "type": "string",
      "documentation": "<p>The prefix that AWS adds to the report name when AWS delivers the report. Your prefix can't include spaces.</p>",
      "max": 256,
      "pattern": "[0-9A-Za-z!\\-_.*\\'()/]*"
    },
    "SchemaElement": {
      "type": "string",
      "documentation": "<p>Whether or not AWS includes resource IDs in the report. </p>",
      "enum": [
        "RESOURCES"
      ]
    },
    "SchemaElementList": {
      "type": "list",
      "member": {
        "shape": "SchemaElement"
      },
      "documentation": "<p>A list of strings that indicate the content that is included in the report, such as service or usage type.</p>"
    },
    "TimeUnit": {
      "type": "string",
      "documentation": "<p>The length of time covered by the report. </p>",
      "enum": [
        "HOURLY",
        "DAILY",
        "MONTHLY"
      ]
    }
  },
  "documentation": "<p>The AWS Cost and Usage Report API enables you to programmatically create, query, and delete AWS Cost and Usage report definitions.</p> <p>AWS Cost and Usage reports track the monthly AWS costs and usage associated with your AWS account. The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses. You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API.</p> <p>Service Endpoint</p> <p>The AWS Cost and Usage Report API provides the following endpoint:</p> <ul> <li> <p>cur.us-east-1.amazonaws.com</p> </li> </ul>"
}
]===]))
