local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2020-08-23",
    "endpointPrefix": "appflow",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Appflow",
    "serviceId": "Appflow",
    "signatureVersion": "v4",
    "signingName": "appflow",
    "uid": "appflow-2020-08-23"
  },
  "operations": {
    "CreateConnectorProfile": {
      "name": "CreateConnectorProfile",
      "http": {
        "method": "POST",
        "requestUri": "/create-connector-profile"
      },
      "input": {
        "shape": "CreateConnectorProfileRequest"
      },
      "output": {
        "shape": "CreateConnectorProfileResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ConnectorAuthenticationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Creates a new connector profile associated with your AWS account. There is a soft quota of 100 connector profiles per AWS account. If you need more connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel. </p>"
    },
    "CreateFlow": {
      "name": "CreateFlow",
      "http": {
        "method": "POST",
        "requestUri": "/create-flow"
      },
      "input": {
        "shape": "CreateFlowRequest"
      },
      "output": {
        "shape": "CreateFlowResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ConnectorAuthenticationException"
        },
        {
          "shape": "ConnectorServerException"
        }
      ],
      "documentation": "<p> Enables your application to create a new flow using Amazon AppFlow. You must create a connector profile before calling this API. Please note that the Request Syntax below shows syntax for multiple destinations, however, you can only transfer data to one item in this list at a time. Amazon AppFlow does not currently support flows to multiple destinations at once. </p>"
    },
    "DeleteConnectorProfile": {
      "name": "DeleteConnectorProfile",
      "http": {
        "method": "POST",
        "requestUri": "/delete-connector-profile"
      },
      "input": {
        "shape": "DeleteConnectorProfileRequest"
      },
      "output": {
        "shape": "DeleteConnectorProfileResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Enables you to delete an existing connector profile. </p>"
    },
    "DeleteFlow": {
      "name": "DeleteFlow",
      "http": {
        "method": "POST",
        "requestUri": "/delete-flow"
      },
      "input": {
        "shape": "DeleteFlowRequest"
      },
      "output": {
        "shape": "DeleteFlowResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can delete flows one at a time. </p>"
    },
    "DescribeConnectorEntity": {
      "name": "DescribeConnectorEntity",
      "http": {
        "method": "POST",
        "requestUri": "/describe-connector-entity"
      },
      "input": {
        "shape": "DescribeConnectorEntityRequest"
      },
      "output": {
        "shape": "DescribeConnectorEntityResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConnectorAuthenticationException"
        },
        {
          "shape": "ConnectorServerException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Provides details regarding the entity used with the connector, with a description of the data model for each entity. </p>"
    },
    "DescribeConnectorProfiles": {
      "name": "DescribeConnectorProfiles",
      "http": {
        "method": "POST",
        "requestUri": "/describe-connector-profiles"
      },
      "input": {
        "shape": "DescribeConnectorProfilesRequest"
      },
      "output": {
        "shape": "DescribeConnectorProfilesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Returns a list of <code>connector-profile</code> details matching the provided <code>connector-profile</code> names and <code>connector-types</code>. Both input lists are optional, and you can use them to filter the result. </p> <p>If no names or <code>connector-types</code> are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.</p>"
    },
    "DescribeConnectors": {
      "name": "DescribeConnectors",
      "http": {
        "method": "POST",
        "requestUri": "/describe-connectors"
      },
      "input": {
        "shape": "DescribeConnectorsRequest"
      },
      "output": {
        "shape": "DescribeConnectorsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a <code>nextToken</code> object, which can be be passed in to the next call to the <code>DescribeConnectors</code> API operation to retrieve the next page. </p>"
    },
    "DescribeFlow": {
      "name": "DescribeFlow",
      "http": {
        "method": "POST",
        "requestUri": "/describe-flow"
      },
      "input": {
        "shape": "DescribeFlowRequest"
      },
      "output": {
        "shape": "DescribeFlowResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Provides a description of the specified flow. </p>"
    },
    "DescribeFlowExecutionRecords": {
      "name": "DescribeFlowExecutionRecords",
      "http": {
        "method": "POST",
        "requestUri": "/describe-flow-execution-records"
      },
      "input": {
        "shape": "DescribeFlowExecutionRecordsRequest"
      },
      "output": {
        "shape": "DescribeFlowExecutionRecordsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Fetches the execution history of the flow. </p>"
    },
    "ListConnectorEntities": {
      "name": "ListConnectorEntities",
      "http": {
        "method": "POST",
        "requestUri": "/list-connector-entities"
      },
      "input": {
        "shape": "ListConnectorEntitiesRequest"
      },
      "output": {
        "shape": "ListConnectorEntitiesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConnectorAuthenticationException"
        },
        {
          "shape": "ConnectorServerException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Returns the list of available connector entities supported by Amazon AppFlow. For example, you can query Salesforce for <i>Account</i> and <i>Opportunity</i> entities, or query ServiceNow for the <i>Incident</i> entity. </p>"
    },
    "ListFlows": {
      "name": "ListFlows",
      "http": {
        "method": "POST",
        "requestUri": "/list-flows"
      },
      "input": {
        "shape": "ListFlowsRequest"
      },
      "output": {
        "shape": "ListFlowsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Lists all of the flows associated with your account. </p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Retrieves the tags that are associated with a specified flow. </p>"
    },
    "StartFlow": {
      "name": "StartFlow",
      "http": {
        "method": "POST",
        "requestUri": "/start-flow"
      },
      "input": {
        "shape": "StartFlowRequest"
      },
      "output": {
        "shape": "StartFlowResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p> Activates an existing flow. For on-demand flows, this operation runs the flow immediately. For schedule and event-triggered flows, this operation activates the flow. </p>"
    },
    "StopFlow": {
      "name": "StopFlow",
      "http": {
        "method": "POST",
        "requestUri": "/stop-flow"
      },
      "input": {
        "shape": "StopFlowRequest"
      },
      "output": {
        "shape": "StopFlowResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Deactivates the existing flow. For on-demand flows, this operation returns an <code>unsupportedOperationException</code> error message. For schedule and event-triggered flows, this operation deactivates the flow. </p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Applies a tag to the specified flow. </p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Removes a tag from the specified flow. </p>"
    },
    "UpdateConnectorProfile": {
      "name": "UpdateConnectorProfile",
      "http": {
        "method": "POST",
        "requestUri": "/update-connector-profile"
      },
      "input": {
        "shape": "UpdateConnectorProfileRequest"
      },
      "output": {
        "shape": "UpdateConnectorProfileResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ConnectorAuthenticationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Updates a given connector profile associated with your account. </p>"
    },
    "UpdateFlow": {
      "name": "UpdateFlow",
      "http": {
        "method": "POST",
        "requestUri": "/update-flow"
      },
      "input": {
        "shape": "UpdateFlowRequest"
      },
      "output": {
        "shape": "UpdateFlowResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ConnectorAuthenticationException"
        },
        {
          "shape": "ConnectorServerException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Updates an existing flow. </p>"
    }
  },
  "shapes": {
    "ARN": {
      "type": "string",
      "max": 512,
      "pattern": "arn:aws:.*:.*:[0-9]+:.*"
    },
    "AccessKeyId": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+",
      "sensitive": true
    },
    "AccessToken": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+",
      "sensitive": true
    },
    "AccountName": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "AggregationConfig": {
      "type": "structure",
      "members": {
        "aggregationType": {
          "shape": "AggregationType",
          "documentation": "<p> Specifies whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated. </p>"
        }
      },
      "documentation": "<p> The aggregation settings that you can use to customize the output format of your flow data. </p>"
    },
    "AggregationType": {
      "type": "string",
      "enum": [
        "None",
        "SingleFile"
      ]
    },
    "AmplitudeConnectorOperator": {
      "type": "string",
      "enum": [
        "BETWEEN"
      ]
    },
    "AmplitudeConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "apiKey",
        "secretKey"
      ],
      "members": {
        "apiKey": {
          "shape": "ApiKey",
          "documentation": "<p> A unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API. </p>"
        },
        "secretKey": {
          "shape": "SecretKey",
          "documentation": "<p> The Secret Access Key portion of the credentials. </p>"
        }
      },
      "documentation": "<p> The connector-specific credentials required when using Amplitude. </p>"
    },
    "AmplitudeConnectorProfileProperties": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector-specific profile properties required when using Amplitude. </p>"
    },
    "AmplitudeMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Amplitude. </p>"
    },
    "AmplitudeSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Amplitude flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Amplitude is being used as a source. </p>"
    },
    "ApiKey": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+"
    },
    "ApiSecretKey": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+",
      "sensitive": true
    },
    "ApiToken": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+"
    },
    "ApplicationKey": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "AuthCode": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BucketName": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "\\S+"
    },
    "BucketPrefix": {
      "type": "string",
      "max": 512,
      "pattern": ".*"
    },
    "ClientId": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "ClientSecret": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+",
      "sensitive": true
    },
    "ConnectionMode": {
      "type": "string",
      "enum": [
        "Public",
        "Private"
      ]
    },
    "ConnectorConfiguration": {
      "type": "structure",
      "members": {
        "canUseAsSource": {
          "shape": "Boolean",
          "documentation": "<p> Specifies whether the connector can be used as a source. </p>"
        },
        "canUseAsDestination": {
          "shape": "Boolean",
          "documentation": "<p> Specifies whether the connector can be used as a destination. </p>"
        },
        "supportedDestinationConnectors": {
          "shape": "ConnectorTypeList",
          "documentation": "<p> Lists the connectors that are available for use as destinations. </p>"
        },
        "supportedSchedulingFrequencies": {
          "shape": "SchedulingFrequencyTypeList",
          "documentation": "<p> Specifies the supported flow frequency for that connector. </p>"
        },
        "isPrivateLinkEnabled": {
          "shape": "Boolean",
          "documentation": "<p> Specifies if PrivateLink is enabled for that connector. </p>"
        },
        "isPrivateLinkEndpointUrlRequired": {
          "shape": "Boolean",
          "documentation": "<p> Specifies if a PrivateLink endpoint URL is required. </p>"
        },
        "supportedTriggerTypes": {
          "shape": "TriggerTypeList",
          "documentation": "<p> Specifies the supported trigger types for the flow. </p>"
        },
        "connectorMetadata": {
          "shape": "ConnectorMetadata",
          "documentation": "<p> Specifies connector-specific metadata such as <code>oAuthScopes</code>, <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on. </p>"
        }
      },
      "documentation": "<p> The configuration settings related to a given connector. </p>"
    },
    "ConnectorConfigurationsMap": {
      "type": "map",
      "key": {
        "shape": "ConnectorType"
      },
      "value": {
        "shape": "ConnectorConfiguration"
      }
    },
    "ConnectorEntity": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p> The name of the connector entity. </p>"
        },
        "label": {
          "shape": "Label",
          "documentation": "<p> The label applied to the connector entity. </p>"
        },
        "hasNestedEntities": {
          "shape": "Boolean",
          "documentation": "<p> Specifies whether the connector entity is a parent or a category and has more entities nested underneath it. If another call is made with <code>entitiesPath = \"the_current_entity_name_with_hasNestedEntities_true\"</code>, then it returns the nested entities underneath it. This provides a way to retrieve all supported entities in a recursive fashion. </p>"
        }
      },
      "documentation": "<p> The high-level entity that can be queried in Amazon AppFlow. For example, a Salesforce entity might be an <i>Account</i> or <i>Opportunity</i>, whereas a ServiceNow entity might be an <i>Incident</i>. </p>"
    },
    "ConnectorEntityField": {
      "type": "structure",
      "required": [
        "identifier"
      ],
      "members": {
        "identifier": {
          "shape": "Identifier",
          "documentation": "<p> The unique identifier of the connector field. </p>"
        },
        "label": {
          "shape": "Label",
          "documentation": "<p> The label applied to a connector entity field. </p>"
        },
        "supportedFieldTypeDetails": {
          "shape": "SupportedFieldTypeDetails",
          "documentation": "<p> Contains details regarding the supported <code>FieldType</code>, including the corresponding <code>filterOperators</code> and <code>supportedValues</code>. </p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p> A description of the connector entity field. </p>"
        },
        "sourceProperties": {
          "shape": "SourceFieldProperties",
          "documentation": "<p> The properties that can be applied to a field when the connector is being used as a source. </p>"
        },
        "destinationProperties": {
          "shape": "DestinationFieldProperties",
          "documentation": "<p> The properties applied to a field when the connector is being used as a destination. </p>"
        }
      },
      "documentation": "<p> Describes the data model of a connector field. For example, for an <i>account</i> entity, the fields would be <i>account name</i>, <i>account ID</i>, and so on. </p>"
    },
    "ConnectorEntityFieldList": {
      "type": "list",
      "member": {
        "shape": "ConnectorEntityField"
      }
    },
    "ConnectorEntityList": {
      "type": "list",
      "member": {
        "shape": "ConnectorEntity"
      }
    },
    "ConnectorEntityMap": {
      "type": "map",
      "key": {
        "shape": "Group"
      },
      "value": {
        "shape": "ConnectorEntityList"
      }
    },
    "ConnectorMetadata": {
      "type": "structure",
      "members": {
        "Amplitude": {
          "shape": "AmplitudeMetadata",
          "documentation": "<p> The connector metadata specific to Amplitude. </p>"
        },
        "Datadog": {
          "shape": "DatadogMetadata",
          "documentation": "<p> The connector metadata specific to Datadog. </p>"
        },
        "Dynatrace": {
          "shape": "DynatraceMetadata",
          "documentation": "<p> The connector metadata specific to Dynatrace. </p>"
        },
        "GoogleAnalytics": {
          "shape": "GoogleAnalyticsMetadata",
          "documentation": "<p> The connector metadata specific to Google Analytics. </p>"
        },
        "InforNexus": {
          "shape": "InforNexusMetadata",
          "documentation": "<p> The connector metadata specific to Infor Nexus. </p>"
        },
        "Marketo": {
          "shape": "MarketoMetadata",
          "documentation": "<p> The connector metadata specific to Marketo. </p>"
        },
        "Redshift": {
          "shape": "RedshiftMetadata",
          "documentation": "<p> The connector metadata specific to Amazon Redshift. </p>"
        },
        "S3": {
          "shape": "S3Metadata",
          "documentation": "<p> The connector metadata specific to Amazon S3. </p>"
        },
        "Salesforce": {
          "shape": "SalesforceMetadata",
          "documentation": "<p> The connector metadata specific to Salesforce. </p>"
        },
        "ServiceNow": {
          "shape": "ServiceNowMetadata",
          "documentation": "<p> The connector metadata specific to ServiceNow. </p>"
        },
        "Singular": {
          "shape": "SingularMetadata",
          "documentation": "<p> The connector metadata specific to Singular. </p>"
        },
        "Slack": {
          "shape": "SlackMetadata",
          "documentation": "<p> The connector metadata specific to Slack. </p>"
        },
        "Snowflake": {
          "shape": "SnowflakeMetadata",
          "documentation": "<p> The connector metadata specific to Snowflake. </p>"
        },
        "Trendmicro": {
          "shape": "TrendmicroMetadata",
          "documentation": "<p> The connector metadata specific to Trend Micro. </p>"
        },
        "Veeva": {
          "shape": "VeevaMetadata",
          "documentation": "<p> The connector metadata specific to Veeva. </p>"
        },
        "Zendesk": {
          "shape": "ZendeskMetadata",
          "documentation": "<p> The connector metadata specific to Zendesk. </p>"
        },
        "EventBridge": {
          "shape": "EventBridgeMetadata",
          "documentation": "<p> The connector metadata specific to Amazon EventBridge. </p>"
        }
      },
      "documentation": "<p> A structure to specify connector-specific metadata such as <code>oAuthScopes</code>, <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on. </p>"
    },
    "ConnectorOAuthRequest": {
      "type": "structure",
      "members": {
        "authCode": {
          "shape": "AuthCode",
          "documentation": "<p> The code provided by the connector when it has been authenticated via the connected app. </p>"
        },
        "redirectUri": {
          "shape": "RedirectUri",
          "documentation": "<p> The URL to which the authentication server redirects the browser after authorization has been granted. </p>"
        }
      },
      "documentation": "<p> Used by select connectors for which the OAuth workflow is supported, such as Salesforce, Google Analytics, Marketo, Zendesk, and Slack. </p>"
    },
    "ConnectorOperator": {
      "type": "structure",
      "members": {
        "Amplitude": {
          "shape": "AmplitudeConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Amplitude source fields. </p>"
        },
        "Datadog": {
          "shape": "DatadogConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Datadog source fields. </p>"
        },
        "Dynatrace": {
          "shape": "DynatraceConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Dynatrace source fields. </p>"
        },
        "GoogleAnalytics": {
          "shape": "GoogleAnalyticsConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Google Analytics source fields. </p>"
        },
        "InforNexus": {
          "shape": "InforNexusConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Infor Nexus source fields. </p>"
        },
        "Marketo": {
          "shape": "MarketoConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Marketo source fields. </p>"
        },
        "S3": {
          "shape": "S3ConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Amazon S3 source fields. </p>"
        },
        "Salesforce": {
          "shape": "SalesforceConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Salesforce source fields. </p>"
        },
        "ServiceNow": {
          "shape": "ServiceNowConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided ServiceNow source fields. </p>"
        },
        "Singular": {
          "shape": "SingularConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Singular source fields. </p>"
        },
        "Slack": {
          "shape": "SlackConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Slack source fields. </p>"
        },
        "Trendmicro": {
          "shape": "TrendmicroConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Trend Micro source fields. </p>"
        },
        "Veeva": {
          "shape": "VeevaConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Veeva source fields. </p>"
        },
        "Zendesk": {
          "shape": "ZendeskConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided Zendesk source fields. </p>"
        }
      },
      "documentation": "<p> The operation to be performed on the provided source fields. </p>"
    },
    "ConnectorProfile": {
      "type": "structure",
      "members": {
        "connectorProfileArn": {
          "shape": "ConnectorProfileArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the connector profile. </p>"
        },
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account. </p>"
        },
        "connectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> The type of connector, such as Salesforce, Amplitude, and so on. </p>"
        },
        "connectionMode": {
          "shape": "ConnectionMode",
          "documentation": "<p> Indicates the connection mode and if it is public or private. </p>"
        },
        "credentialsArn": {
          "shape": "ARN",
          "documentation": "<p> The Amazon Resource Name (ARN) of the connector profile credentials. </p>"
        },
        "connectorProfileProperties": {
          "shape": "ConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties of the profile configuration. </p>"
        },
        "createdAt": {
          "shape": "Date",
          "documentation": "<p> Specifies when the connector profile was created. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Date",
          "documentation": "<p> Specifies when the connector profile was last updated. </p>"
        }
      },
      "documentation": "<p> Describes an instance of a connector. This includes the provided name, credentials ARN, connection-mode, and so on. To keep the API intuitive and extensible, the fields that are common to all types of connector profiles are explicitly specified at the top level. The rest of the connector-specific properties are available via the <code>connectorProfileProperties</code> field. </p>"
    },
    "ConnectorProfileArn": {
      "type": "string",
      "max": 512,
      "pattern": "arn:aws:kms:.*:[0-9]+:.*"
    },
    "ConnectorProfileConfig": {
      "type": "structure",
      "required": [
        "connectorProfileProperties",
        "connectorProfileCredentials"
      ],
      "members": {
        "connectorProfileProperties": {
          "shape": "ConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties of the profile configuration. </p>"
        },
        "connectorProfileCredentials": {
          "shape": "ConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required by each connector. </p>"
        }
      },
      "documentation": "<p> Defines the connector-specific configuration and credentials for the connector profile. </p>"
    },
    "ConnectorProfileCredentials": {
      "type": "structure",
      "members": {
        "Amplitude": {
          "shape": "AmplitudeConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Amplitude. </p>"
        },
        "Datadog": {
          "shape": "DatadogConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Datadog. </p>"
        },
        "Dynatrace": {
          "shape": "DynatraceConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Dynatrace. </p>"
        },
        "GoogleAnalytics": {
          "shape": "GoogleAnalyticsConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Google Analytics. </p>"
        },
        "InforNexus": {
          "shape": "InforNexusConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Infor Nexus. </p>"
        },
        "Marketo": {
          "shape": "MarketoConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Marketo. </p>"
        },
        "Redshift": {
          "shape": "RedshiftConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Amazon Redshift. </p>"
        },
        "Salesforce": {
          "shape": "SalesforceConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Salesforce. </p>"
        },
        "ServiceNow": {
          "shape": "ServiceNowConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using ServiceNow. </p>"
        },
        "Singular": {
          "shape": "SingularConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Singular. </p>"
        },
        "Slack": {
          "shape": "SlackConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Slack. </p>"
        },
        "Snowflake": {
          "shape": "SnowflakeConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Snowflake. </p>"
        },
        "Trendmicro": {
          "shape": "TrendmicroConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Trend Micro. </p>"
        },
        "Veeva": {
          "shape": "VeevaConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Veeva. </p>"
        },
        "Zendesk": {
          "shape": "ZendeskConnectorProfileCredentials",
          "documentation": "<p> The connector-specific credentials required when using Zendesk. </p>"
        }
      },
      "documentation": "<p> The connector-specific credentials required by a connector. </p>"
    },
    "ConnectorProfileDetailList": {
      "type": "list",
      "member": {
        "shape": "ConnectorProfile"
      }
    },
    "ConnectorProfileName": {
      "type": "string",
      "max": 256,
      "pattern": "[\\w/!@#+=.-]+"
    },
    "ConnectorProfileNameList": {
      "type": "list",
      "member": {
        "shape": "ConnectorProfileName"
      },
      "max": 100,
      "min": 0
    },
    "ConnectorProfileProperties": {
      "type": "structure",
      "members": {
        "Amplitude": {
          "shape": "AmplitudeConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Amplitude. </p>"
        },
        "Datadog": {
          "shape": "DatadogConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Datadog. </p>"
        },
        "Dynatrace": {
          "shape": "DynatraceConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Dynatrace. </p>"
        },
        "GoogleAnalytics": {
          "shape": "GoogleAnalyticsConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required Google Analytics. </p>"
        },
        "InforNexus": {
          "shape": "InforNexusConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Infor Nexus. </p>"
        },
        "Marketo": {
          "shape": "MarketoConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Marketo. </p>"
        },
        "Redshift": {
          "shape": "RedshiftConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Amazon Redshift. </p>"
        },
        "Salesforce": {
          "shape": "SalesforceConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Salesforce. </p>"
        },
        "ServiceNow": {
          "shape": "ServiceNowConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by serviceNow. </p>"
        },
        "Singular": {
          "shape": "SingularConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Singular. </p>"
        },
        "Slack": {
          "shape": "SlackConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Slack. </p>"
        },
        "Snowflake": {
          "shape": "SnowflakeConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Snowflake. </p>"
        },
        "Trendmicro": {
          "shape": "TrendmicroConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Trend Micro. </p>"
        },
        "Veeva": {
          "shape": "VeevaConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Veeva. </p>"
        },
        "Zendesk": {
          "shape": "ZendeskConnectorProfileProperties",
          "documentation": "<p> The connector-specific properties required by Zendesk. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required by each connector. </p>"
    },
    "ConnectorType": {
      "type": "string",
      "enum": [
        "Salesforce",
        "Singular",
        "Slack",
        "Redshift",
        "S3",
        "Marketo",
        "Googleanalytics",
        "Zendesk",
        "Servicenow",
        "Datadog",
        "Trendmicro",
        "Snowflake",
        "Dynatrace",
        "Infornexus",
        "Amplitude",
        "Veeva",
        "EventBridge"
      ]
    },
    "ConnectorTypeList": {
      "type": "list",
      "member": {
        "shape": "ConnectorType"
      },
      "max": 100,
      "min": 0
    },
    "CreateConnectorProfileRequest": {
      "type": "structure",
      "required": [
        "connectorProfileName",
        "connectorType",
        "connectionMode",
        "connectorProfileConfig"
      ],
      "members": {
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in your AWS account. </p>"
        },
        "kmsArn": {
          "shape": "KMSArn",
          "documentation": "<p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>"
        },
        "connectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> The type of connector, such as Salesforce, Amplitude, and so on. </p>"
        },
        "connectionMode": {
          "shape": "ConnectionMode",
          "documentation": "<p> Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. </p>"
        },
        "connectorProfileConfig": {
          "shape": "ConnectorProfileConfig",
          "documentation": "<p> Defines the connector-specific configuration and credentials. </p>"
        }
      }
    },
    "CreateConnectorProfileResponse": {
      "type": "structure",
      "members": {
        "connectorProfileArn": {
          "shape": "ConnectorProfileArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the connector profile. </p>"
        }
      }
    },
    "CreateFlowRequest": {
      "type": "structure",
      "required": [
        "flowName",
        "triggerConfig",
        "sourceFlowConfig",
        "destinationFlowConfigList",
        "tasks"
      ],
      "members": {
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        },
        "description": {
          "shape": "FlowDescription",
          "documentation": "<p> A description of the flow you want to create. </p>"
        },
        "kmsArn": {
          "shape": "KMSArn",
          "documentation": "<p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>"
        },
        "triggerConfig": {
          "shape": "TriggerConfig",
          "documentation": "<p> The trigger settings that determine how and when the flow runs. </p>"
        },
        "sourceFlowConfig": {
          "shape": "SourceFlowConfig",
          "documentation": "<p> The configuration that controls how Amazon AppFlow retrieves data from the source connector. </p>"
        },
        "destinationFlowConfigList": {
          "shape": "DestinationFlowConfigList",
          "documentation": "<p> The configuration that controls how Amazon AppFlow places data in the destination connector. </p>"
        },
        "tasks": {
          "shape": "Tasks",
          "documentation": "<p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow run. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags used to organize, track, or control access for your flow. </p>"
        }
      }
    },
    "CreateFlowResponse": {
      "type": "structure",
      "members": {
        "flowArn": {
          "shape": "FlowArn",
          "documentation": "<p> The flow's Amazon Resource Name (ARN). </p>"
        },
        "flowStatus": {
          "shape": "FlowStatus",
          "documentation": "<p> Indicates the current status of the flow. </p>"
        }
      }
    },
    "CreatedBy": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+"
    },
    "DataPullMode": {
      "type": "string",
      "enum": [
        "Incremental",
        "Complete"
      ]
    },
    "DatabaseUrl": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "DatadogConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "BETWEEN",
        "EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "DatadogConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "apiKey",
        "applicationKey"
      ],
      "members": {
        "apiKey": {
          "shape": "ApiKey",
          "documentation": "<p> A unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API. </p>"
        },
        "applicationKey": {
          "shape": "ApplicationKey",
          "documentation": "<p> Application keys, in conjunction with your API key, give you full access to Datadog’s programmatic API. Application keys are associated with the user account that created them. The application key is used to log all requests made to the API. </p>"
        }
      },
      "documentation": "<p> The connector-specific credentials required by Datadog. </p>"
    },
    "DatadogConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Datadog resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required by Datadog. </p>"
    },
    "DatadogMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Datadog. </p>"
    },
    "DatadogSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Datadog flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Datadog is being used as a source. </p>"
    },
    "Date": {
      "type": "timestamp"
    },
    "DeleteConnectorProfileRequest": {
      "type": "structure",
      "required": [
        "connectorProfileName"
      ],
      "members": {
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in your account. </p>"
        },
        "forceDelete": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether Amazon AppFlow should delete the profile, even if it is currently in use in one or more flows. </p>"
        }
      }
    },
    "DeleteConnectorProfileResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteFlowRequest": {
      "type": "structure",
      "required": [
        "flowName"
      ],
      "members": {
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        },
        "forceDelete": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether Amazon AppFlow should delete the flow, even if it is currently in use. </p>"
        }
      }
    },
    "DeleteFlowResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeConnectorEntityRequest": {
      "type": "structure",
      "required": [
        "connectorEntityName"
      ],
      "members": {
        "connectorEntityName": {
          "shape": "Name",
          "documentation": "<p> The entity name for that connector. </p>"
        },
        "connectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> The type of connector application, such as Salesforce, Amplitude, and so on. </p>"
        },
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account. </p>"
        }
      }
    },
    "DescribeConnectorEntityResponse": {
      "type": "structure",
      "required": [
        "connectorEntityFields"
      ],
      "members": {
        "connectorEntityFields": {
          "shape": "ConnectorEntityFieldList",
          "documentation": "<p> Describes the fields for that connector entity. For example, for an <i>account</i> entity, the fields would be <i>account name</i>, <i>account ID</i>, and so on. </p>"
        }
      }
    },
    "DescribeConnectorProfilesRequest": {
      "type": "structure",
      "members": {
        "connectorProfileNames": {
          "shape": "ConnectorProfileNameList",
          "documentation": "<p> The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account. </p>"
        },
        "connectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> The type of connector, such as Salesforce, Amplitude, and so on. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p> Specifies the maximum number of items that should be returned in the result set. The default for <code>maxResults</code> is 20 (for all paginated API operations). </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for the next page of data. </p>"
        }
      }
    },
    "DescribeConnectorProfilesResponse": {
      "type": "structure",
      "members": {
        "connectorProfileDetails": {
          "shape": "ConnectorProfileDetailList",
          "documentation": "<p> Returns information about the connector profiles associated with the flow. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for the next page of data. If <code>nextToken=null</code>, this means that all records have been fetched. </p>"
        }
      }
    },
    "DescribeConnectorsRequest": {
      "type": "structure",
      "members": {
        "connectorTypes": {
          "shape": "ConnectorTypeList",
          "documentation": "<p> The type of connector, such as Salesforce, Amplitude, and so on. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for the next page of data. </p>"
        }
      }
    },
    "DescribeConnectorsResponse": {
      "type": "structure",
      "members": {
        "connectorConfigurations": {
          "shape": "ConnectorConfigurationsMap",
          "documentation": "<p> The configuration that is applied to the connectors used in the flow. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for the next page of data. </p>"
        }
      }
    },
    "DescribeFlowExecutionRecordsRequest": {
      "type": "structure",
      "required": [
        "flowName"
      ],
      "members": {
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p> Specifies the maximum number of items that should be returned in the result set. The default for <code>maxResults</code> is 20 (for all paginated API operations). </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for the next page of data. </p>"
        }
      }
    },
    "DescribeFlowExecutionRecordsResponse": {
      "type": "structure",
      "members": {
        "flowExecutions": {
          "shape": "FlowExecutionList",
          "documentation": "<p> Returns a list of all instances when this flow was run. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for the next page of data. </p>"
        }
      }
    },
    "DescribeFlowRequest": {
      "type": "structure",
      "required": [
        "flowName"
      ],
      "members": {
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        }
      }
    },
    "DescribeFlowResponse": {
      "type": "structure",
      "members": {
        "flowArn": {
          "shape": "FlowArn",
          "documentation": "<p> The flow's Amazon Resource Name (ARN). </p>"
        },
        "description": {
          "shape": "FlowDescription",
          "documentation": "<p> A description of the flow. </p>"
        },
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        },
        "kmsArn": {
          "shape": "KMSArn",
          "documentation": "<p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>"
        },
        "flowStatus": {
          "shape": "FlowStatus",
          "documentation": "<p> Indicates the current status of the flow. </p>"
        },
        "flowStatusMessage": {
          "shape": "FlowStatusMessage",
          "documentation": "<p> Contains an error message if the flow status is in a suspended or error state. This applies only to scheduled or event-triggered flows. </p>"
        },
        "sourceFlowConfig": {
          "shape": "SourceFlowConfig",
          "documentation": "<p> The configuration that controls how Amazon AppFlow retrieves data from the source connector. </p>"
        },
        "destinationFlowConfigList": {
          "shape": "DestinationFlowConfigList",
          "documentation": "<p> The configuration that controls how Amazon AppFlow transfers data to the destination connector. </p>"
        },
        "lastRunExecutionDetails": {
          "shape": "ExecutionDetails",
          "documentation": "<p> Describes the details of the most recent flow run. </p>"
        },
        "triggerConfig": {
          "shape": "TriggerConfig",
          "documentation": "<p> The trigger settings that determine how and when the flow runs. </p>"
        },
        "tasks": {
          "shape": "Tasks",
          "documentation": "<p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow run. </p>"
        },
        "createdAt": {
          "shape": "Date",
          "documentation": "<p> Specifies when the flow was created. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Date",
          "documentation": "<p> Specifies when the flow was last updated. </p>"
        },
        "createdBy": {
          "shape": "CreatedBy",
          "documentation": "<p> The ARN of the user who created the flow. </p>"
        },
        "lastUpdatedBy": {
          "shape": "UpdatedBy",
          "documentation": "<p> Specifies the user name of the account that performed the most recent update. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags used to organize, track, or control access for your flow. </p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 1024,
      "pattern": "[\\s\\w/!@#+=.-]*"
    },
    "DestinationConnectorProperties": {
      "type": "structure",
      "members": {
        "Redshift": {
          "shape": "RedshiftDestinationProperties",
          "documentation": "<p> The properties required to query Amazon Redshift. </p>"
        },
        "S3": {
          "shape": "S3DestinationProperties",
          "documentation": "<p> The properties required to query Amazon S3. </p>"
        },
        "Salesforce": {
          "shape": "SalesforceDestinationProperties",
          "documentation": "<p> The properties required to query Salesforce. </p>"
        },
        "Snowflake": {
          "shape": "SnowflakeDestinationProperties",
          "documentation": "<p> The properties required to query Snowflake. </p>"
        },
        "EventBridge": {
          "shape": "EventBridgeDestinationProperties",
          "documentation": "<p> The properties required to query Amazon EventBridge. </p>"
        }
      },
      "documentation": "<p> This stores the information that is required to query a particular connector. </p>"
    },
    "DestinationField": {
      "type": "string",
      "max": 256,
      "pattern": ".*"
    },
    "DestinationFieldProperties": {
      "type": "structure",
      "members": {
        "isCreatable": {
          "shape": "Boolean",
          "documentation": "<p> Specifies if the destination field can be created by the current user. </p>"
        },
        "isNullable": {
          "shape": "Boolean",
          "documentation": "<p> Specifies if the destination field can have a null value. </p>"
        },
        "isUpsertable": {
          "shape": "Boolean",
          "documentation": "<p> Specifies if the flow run can either insert new rows in the destination field if they do not already exist, or update them if they do. </p>"
        }
      },
      "documentation": "<p> The properties that can be applied to a field when connector is being used as a destination. </p>"
    },
    "DestinationFlowConfig": {
      "type": "structure",
      "required": [
        "connectorType",
        "destinationConnectorProperties"
      ],
      "members": {
        "connectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> The type of connector, such as Salesforce, Amplitude, and so on. </p>"
        },
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile. This name must be unique for each connector profile in the AWS account. </p>"
        },
        "destinationConnectorProperties": {
          "shape": "DestinationConnectorProperties",
          "documentation": "<p> This stores the information that is required to query a particular connector. </p>"
        }
      },
      "documentation": "<p> Contains information about the configuration of destination connectors present in the flow. </p>"
    },
    "DestinationFlowConfigList": {
      "type": "list",
      "member": {
        "shape": "DestinationFlowConfig"
      }
    },
    "DynatraceConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "BETWEEN",
        "EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "DynatraceConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "apiToken"
      ],
      "members": {
        "apiToken": {
          "shape": "ApiToken",
          "documentation": "<p> The API tokens used by Dynatrace API to authenticate various API calls. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required by Dynatrace. </p>"
    },
    "DynatraceConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Dynatrace resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required by Dynatrace. </p>"
    },
    "DynatraceMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Dynatrace. </p>"
    },
    "DynatraceSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Dynatrace flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Dynatrace is being used as a source. </p>"
    },
    "EntitiesPath": {
      "type": "string",
      "max": 256,
      "pattern": "[\\s\\w/!@#+=.-]*"
    },
    "ErrorHandlingConfig": {
      "type": "structure",
      "members": {
        "failOnFirstDestinationError": {
          "shape": "Boolean",
          "documentation": "<p> Specifies if the flow should fail after the first instance of a failure when attempting to place data in the destination. </p>"
        },
        "bucketPrefix": {
          "shape": "BucketPrefix",
          "documentation": "<p> Specifies the Amazon S3 bucket prefix. </p>"
        },
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p> Specifies the name of the Amazon S3 bucket. </p>"
        }
      },
      "documentation": "<p> The settings that determine how Amazon AppFlow handles an error when placing data in the destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details. </p>"
    },
    "ErrorInfo": {
      "type": "structure",
      "members": {
        "putFailuresCount": {
          "shape": "Long",
          "documentation": "<p> Specifies the failure count for the attempted flow. </p>"
        },
        "executionMessage": {
          "shape": "ExecutionMessage",
          "documentation": "<p> Specifies the error message that appears if a flow fails. </p>"
        }
      },
      "documentation": "<p> Provides details in the event of a failed flow, including the failure count and the related error messages. </p>"
    },
    "EventBridgeDestinationProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Amazon EventBridge flow destination. </p>"
        },
        "errorHandlingConfig": {
          "shape": "ErrorHandlingConfig"
        }
      },
      "documentation": "<p> The properties that are applied when Amazon EventBridge is being used as a destination. </p>"
    },
    "EventBridgeMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Amazon EventBridge. </p>"
    },
    "ExecutionDetails": {
      "type": "structure",
      "members": {
        "mostRecentExecutionMessage": {
          "shape": "MostRecentExecutionMessage",
          "documentation": "<p> Describes the details of the most recent flow run. </p>"
        },
        "mostRecentExecutionTime": {
          "shape": "Date",
          "documentation": "<p> Specifies the time of the most recent flow run. </p>"
        },
        "mostRecentExecutionStatus": {
          "shape": "ExecutionStatus",
          "documentation": "<p> Specifies the status of the most recent flow run. </p>"
        }
      },
      "documentation": "<p> Describes the details of the flow run, including the timestamp, status, and message. </p>"
    },
    "ExecutionId": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+"
    },
    "ExecutionMessage": {
      "type": "string",
      "max": 2048,
      "pattern": "[\\s\\w/!@#+=.-]*"
    },
    "ExecutionRecord": {
      "type": "structure",
      "members": {
        "executionId": {
          "shape": "ExecutionId",
          "documentation": "<p> Specifies the identifier of the given flow run. </p>"
        },
        "executionStatus": {
          "shape": "ExecutionStatus",
          "documentation": "<p> Specifies the flow run status and whether it is in progress, has completed successfully, or has failed. </p>"
        },
        "executionResult": {
          "shape": "ExecutionResult",
          "documentation": "<p> Describes the result of the given flow run. </p>"
        },
        "startedAt": {
          "shape": "Date",
          "documentation": "<p> Specifies the start time of the flow run. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Date",
          "documentation": "<p> Specifies the time of the most recent update. </p>"
        }
      },
      "documentation": "<p> Specifies information about the past flow run instances for a given flow. </p>"
    },
    "ExecutionResult": {
      "type": "structure",
      "members": {
        "errorInfo": {
          "shape": "ErrorInfo",
          "documentation": "<p> Provides any error message information related to the flow run. </p>"
        },
        "bytesProcessed": {
          "shape": "Long",
          "documentation": "<p> The total number of bytes processed by the flow run. </p>"
        },
        "bytesWritten": {
          "shape": "Long",
          "documentation": "<p> The total number of bytes written as a result of the flow run. </p>"
        },
        "recordsProcessed": {
          "shape": "Long",
          "documentation": "<p> The number of records processed in the flow run. </p>"
        }
      },
      "documentation": "<p> Specifies the end result of the flow run. </p>"
    },
    "ExecutionStatus": {
      "type": "string",
      "enum": [
        "InProgress",
        "Successful",
        "Error"
      ]
    },
    "FieldType": {
      "type": "string"
    },
    "FieldTypeDetails": {
      "type": "structure",
      "required": [
        "fieldType",
        "filterOperators"
      ],
      "members": {
        "fieldType": {
          "shape": "FieldType",
          "documentation": "<p> The type of field, such as string, integer, date, and so on. </p>"
        },
        "filterOperators": {
          "shape": "FilterOperatorList",
          "documentation": "<p> The list of operators supported by a field. </p>"
        },
        "supportedValues": {
          "shape": "SupportedValueList",
          "documentation": "<p> The list of values that a field can contain. For example, a Boolean <code>fieldType</code> can have two values: \"true\" and \"false\". </p>"
        }
      },
      "documentation": "<p> Contains details regarding the supported field type and the operators that can be applied for filtering. </p>"
    },
    "FileType": {
      "type": "string",
      "enum": [
        "CSV",
        "JSON",
        "PARQUET"
      ]
    },
    "FilterOperatorList": {
      "type": "list",
      "member": {
        "shape": "Operator"
      }
    },
    "FlowArn": {
      "type": "string",
      "max": 512,
      "pattern": "arn:aws:appflow:.*:[0-9]+:.*"
    },
    "FlowDefinition": {
      "type": "structure",
      "members": {
        "flowArn": {
          "shape": "FlowArn",
          "documentation": "<p> The flow's Amazon Resource Name (ARN). </p>"
        },
        "description": {
          "shape": "FlowDescription",
          "documentation": "<p> A user-entered description of the flow. </p>"
        },
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        },
        "flowStatus": {
          "shape": "FlowStatus",
          "documentation": "<p> Indicates the current status of the flow. </p>"
        },
        "sourceConnectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> Specifies the source connector type, such as Salesforce, Amazon S3, Amplitude, and so on. </p>"
        },
        "destinationConnectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> Specifies the destination connector type, such as Salesforce, Amazon S3, Amplitude, and so on. </p>"
        },
        "triggerType": {
          "shape": "TriggerType",
          "documentation": "<p> Specifies the type of flow trigger. This can be <code>OnDemand</code>, <code>Scheduled</code>, or <code>Event</code>. </p>"
        },
        "createdAt": {
          "shape": "Date",
          "documentation": "<p> Specifies when the flow was created. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Date",
          "documentation": "<p> Specifies when the flow was last updated. </p>"
        },
        "createdBy": {
          "shape": "CreatedBy",
          "documentation": "<p> The ARN of the user who created the flow. </p>"
        },
        "lastUpdatedBy": {
          "shape": "UpdatedBy",
          "documentation": "<p> Specifies the account user name that most recently updated the flow. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags used to organize, track, or control access for your flow. </p>"
        },
        "lastRunExecutionDetails": {
          "shape": "ExecutionDetails",
          "documentation": "<p> Describes the details of the most recent flow run. </p>"
        }
      },
      "documentation": "<p> The properties of the flow, such as its source, destination, trigger type, and so on. </p>"
    },
    "FlowDescription": {
      "type": "string",
      "max": 2048,
      "pattern": "[\\w!@#\\-.?,\\s]*"
    },
    "FlowExecutionList": {
      "type": "list",
      "member": {
        "shape": "ExecutionRecord"
      }
    },
    "FlowList": {
      "type": "list",
      "member": {
        "shape": "FlowDefinition"
      }
    },
    "FlowName": {
      "type": "string",
      "max": 256,
      "pattern": "[a-zA-Z0-9][\\w!@#.-]+"
    },
    "FlowStatus": {
      "type": "string",
      "enum": [
        "Active",
        "Deprecated",
        "Deleted",
        "Draft",
        "Errored",
        "Suspended"
      ]
    },
    "FlowStatusMessage": {
      "type": "string",
      "max": 2048,
      "pattern": "[\\s\\w/!@#+=.-]*"
    },
    "GoogleAnalyticsConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "BETWEEN"
      ]
    },
    "GoogleAnalyticsConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "clientId",
        "clientSecret"
      ],
      "members": {
        "clientId": {
          "shape": "ClientId",
          "documentation": "<p> The identifier for the desired client. </p>"
        },
        "clientSecret": {
          "shape": "ClientSecret",
          "documentation": "<p> The client secret used by the oauth client to authenticate to the authorization server. </p>"
        },
        "accessToken": {
          "shape": "AccessToken",
          "documentation": "<p> The credentials used to access protected Google Analytics resources. </p>"
        },
        "refreshToken": {
          "shape": "RefreshToken",
          "documentation": "<p> The credentials used to acquire new access tokens. This is required only for OAuth2 access tokens, and is not required for OAuth1 access tokens. </p>"
        },
        "oAuthRequest": {
          "shape": "ConnectorOAuthRequest",
          "documentation": "<p> The oauth requirement needed to request security tokens from the connector endpoint. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required by Google Analytics. </p>"
    },
    "GoogleAnalyticsConnectorProfileProperties": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector-specific profile properties required by Google Analytics. </p>"
    },
    "GoogleAnalyticsMetadata": {
      "type": "structure",
      "members": {
        "oAuthScopes": {
          "shape": "OAuthScopeList",
          "documentation": "<p> The desired authorization scope for the Google Analytics account. </p>"
        }
      },
      "documentation": "<p> The connector metadata specific to Google Analytics. </p>"
    },
    "GoogleAnalyticsSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Google Analytics flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Google Analytics is being used as a source. </p>"
    },
    "Group": {
      "type": "string",
      "max": 128,
      "pattern": "\\S+"
    },
    "Identifier": {
      "type": "string",
      "max": 128,
      "pattern": "\\S+"
    },
    "InforNexusConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "BETWEEN",
        "EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "InforNexusConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "accessKeyId",
        "userId",
        "secretAccessKey",
        "datakey"
      ],
      "members": {
        "accessKeyId": {
          "shape": "AccessKeyId",
          "documentation": "<p> The Access Key portion of the credentials. </p>"
        },
        "userId": {
          "shape": "Username",
          "documentation": "<p> The identifier for the user. </p>"
        },
        "secretAccessKey": {
          "shape": "Key",
          "documentation": "<p> The secret key used to sign requests. </p>"
        },
        "datakey": {
          "shape": "Key",
          "documentation": "<p> The encryption keys used to encrypt data. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required by Infor Nexus. </p>"
    },
    "InforNexusConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Infor Nexus resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required by Infor Nexus. </p>"
    },
    "InforNexusMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Infor Nexus. </p>"
    },
    "InforNexusSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Infor Nexus flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Infor Nexus is being used as a source. </p>"
    },
    "InstanceUrl": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+"
    },
    "KMSArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:aws:kms:.*:[0-9]+:.*"
    },
    "Key": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "Label": {
      "type": "string",
      "max": 128,
      "pattern": ".*"
    },
    "ListConnectorEntitiesRequest": {
      "type": "structure",
      "members": {
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account, and is used to query the downstream connector. </p>"
        },
        "connectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> The type of connector, such as Salesforce, Amplitude, and so on. </p>"
        },
        "entitiesPath": {
          "shape": "EntitiesPath",
          "documentation": "<p> This optional parameter is specific to connector implementation. Some connectors support multiple levels or categories of entities. You can find out the list of roots for such providers by sending a request without the <code>entitiesPath</code> parameter. If the connector supports entities at different roots, this initial request returns the list of roots. Otherwise, this request returns all entities supported by the provider. </p>"
        }
      }
    },
    "ListConnectorEntitiesResponse": {
      "type": "structure",
      "required": [
        "connectorEntityMap"
      ],
      "members": {
        "connectorEntityMap": {
          "shape": "ConnectorEntityMap",
          "documentation": "<p> The response of <code>ListConnectorEntities</code> lists entities grouped by category. This map's key represents the group name, and its value contains the list of entities belonging to that group. </p>"
        }
      }
    },
    "ListFlowsRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p> Specifies the maximum number of items that should be returned in the result set. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for next page of data. </p>"
        }
      }
    },
    "ListFlowsResponse": {
      "type": "structure",
      "members": {
        "flows": {
          "shape": "FlowList",
          "documentation": "<p> The list of flows associated with your account. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> The pagination token for next page of data. </p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "ARN",
          "documentation": "<p> The Amazon Resource Name (ARN) of the specified flow. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags used to organize, track, or control access for your flow. </p>"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "MarketoConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "LESS_THAN",
        "GREATER_THAN",
        "BETWEEN",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "MarketoConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "clientId",
        "clientSecret"
      ],
      "members": {
        "clientId": {
          "shape": "ClientId",
          "documentation": "<p> The identifier for the desired client. </p>"
        },
        "clientSecret": {
          "shape": "ClientSecret",
          "documentation": "<p> The client secret used by the oauth client to authenticate to the authorization server. </p>"
        },
        "accessToken": {
          "shape": "AccessToken",
          "documentation": "<p> The credentials used to access protected Marketo resources. </p>"
        },
        "oAuthRequest": {
          "shape": "ConnectorOAuthRequest",
          "documentation": "<p> The oauth requirement needed to request security tokens from the connector endpoint. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required by Marketo. </p>"
    },
    "MarketoConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Marketo resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required when using Marketo. </p>"
    },
    "MarketoMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Marketo. </p>"
    },
    "MarketoSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Marketo flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Marketo is being used as a source. </p>"
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MostRecentExecutionMessage": {
      "type": "string",
      "max": 2048,
      "pattern": "[\\w!@#\\-.?,\\s]*"
    },
    "Name": {
      "type": "string",
      "max": 128,
      "pattern": "\\S+"
    },
    "NextToken": {
      "type": "string",
      "max": 2048,
      "pattern": "\\S+"
    },
    "OAuthScope": {
      "type": "string",
      "max": 128,
      "pattern": "[\\w]*"
    },
    "OAuthScopeList": {
      "type": "list",
      "member": {
        "shape": "OAuthScope"
      }
    },
    "Object": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "Operator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "LESS_THAN",
        "GREATER_THAN",
        "CONTAINS",
        "BETWEEN",
        "LESS_THAN_OR_EQUAL_TO",
        "GREATER_THAN_OR_EQUAL_TO",
        "EQUAL_TO",
        "NOT_EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "OperatorPropertiesKeys": {
      "type": "string",
      "enum": [
        "VALUE",
        "VALUES",
        "DATA_TYPE",
        "UPPER_BOUND",
        "LOWER_BOUND",
        "SOURCE_DATA_TYPE",
        "DESTINATION_DATA_TYPE",
        "VALIDATION_ACTION",
        "MASK_VALUE",
        "MASK_LENGTH",
        "TRUNCATE_LENGTH",
        "MATH_OPERATION_FIELDS_ORDER",
        "CONCAT_FORMAT",
        "SUBFIELD_CATEGORY_MAP"
      ]
    },
    "Password": {
      "type": "string",
      "max": 512,
      "pattern": ".*",
      "sensitive": true
    },
    "PrefixConfig": {
      "type": "structure",
      "members": {
        "prefixType": {
          "shape": "PrefixType",
          "documentation": "<p> Determines the level of granularity that's included in the prefix. </p>"
        },
        "prefixFormat": {
          "shape": "PrefixFormat",
          "documentation": "<p> Determines the format of the prefix, and whether it applies to the file name, file path, or both. </p>"
        }
      },
      "documentation": "<p> Determines the prefix that Amazon AppFlow applies to the destination folder name. You can name your destination folders according to the flow frequency and date. </p>"
    },
    "PrefixFormat": {
      "type": "string",
      "enum": [
        "YEAR",
        "MONTH",
        "DAY",
        "HOUR",
        "MINUTE"
      ]
    },
    "PrefixType": {
      "type": "string",
      "enum": [
        "FILENAME",
        "PATH",
        "PATH_AND_FILENAME"
      ]
    },
    "PrivateLinkServiceName": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "Property": {
      "type": "string",
      "max": 2048,
      "pattern": ".+"
    },
    "RedirectUri": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "RedshiftConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "username",
        "password"
      ],
      "members": {
        "username": {
          "shape": "Username",
          "documentation": "<p> The name of the user. </p>"
        },
        "password": {
          "shape": "Password",
          "documentation": "<p> The password that corresponds to the user name. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Amazon Redshift. </p>"
    },
    "RedshiftConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "databaseUrl",
        "bucketName",
        "roleArn"
      ],
      "members": {
        "databaseUrl": {
          "shape": "DatabaseUrl",
          "documentation": "<p> The JDBC URL of the Amazon Redshift cluster. </p>"
        },
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p> A name for the associated Amazon S3 bucket. </p>"
        },
        "bucketPrefix": {
          "shape": "BucketPrefix",
          "documentation": "<p> The object key for the destination bucket in which Amazon AppFlow places the files. </p>"
        },
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the IAM role. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties when using Amazon Redshift. </p>"
    },
    "RedshiftDestinationProperties": {
      "type": "structure",
      "required": [
        "object",
        "intermediateBucketName"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Amazon Redshift flow destination. </p>"
        },
        "intermediateBucketName": {
          "shape": "BucketName",
          "documentation": "<p> The intermediate bucket that Amazon AppFlow uses when moving data into Amazon Redshift. </p>"
        },
        "bucketPrefix": {
          "shape": "BucketPrefix",
          "documentation": "<p> The object key for the bucket in which Amazon AppFlow places the destination files. </p>"
        },
        "errorHandlingConfig": {
          "shape": "ErrorHandlingConfig",
          "documentation": "<p> The settings that determine how Amazon AppFlow handles an error when placing data in the Amazon Redshift destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Amazon Redshift is being used as a destination. </p>"
    },
    "RedshiftMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Amazon Redshift. </p>"
    },
    "RefreshToken": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "Region": {
      "type": "string",
      "max": 64,
      "pattern": "\\S+"
    },
    "RegionList": {
      "type": "list",
      "member": {
        "shape": "Region"
      }
    },
    "RoleArn": {
      "type": "string",
      "max": 512,
      "pattern": "arn:aws:iam:.*:[0-9]+:.*"
    },
    "S3ConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "LESS_THAN",
        "GREATER_THAN",
        "BETWEEN",
        "LESS_THAN_OR_EQUAL_TO",
        "GREATER_THAN_OR_EQUAL_TO",
        "EQUAL_TO",
        "NOT_EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "S3DestinationProperties": {
      "type": "structure",
      "required": [
        "bucketName"
      ],
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p> The Amazon S3 bucket name in which Amazon AppFlow places the transferred data. </p>"
        },
        "bucketPrefix": {
          "shape": "BucketPrefix",
          "documentation": "<p> The object key for the destination bucket in which Amazon AppFlow places the files. </p>"
        },
        "s3OutputFormatConfig": {
          "shape": "S3OutputFormatConfig"
        }
      },
      "documentation": "<p> The properties that are applied when Amazon S3 is used as a destination. </p>"
    },
    "S3Metadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Amazon S3. </p>"
    },
    "S3OutputFormatConfig": {
      "type": "structure",
      "members": {
        "fileType": {
          "shape": "FileType",
          "documentation": "<p> Indicates the file type that Amazon AppFlow places in the Amazon S3 bucket. </p>"
        },
        "prefixConfig": {
          "shape": "PrefixConfig",
          "documentation": "<p> Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. </p>"
        },
        "aggregationConfig": {
          "shape": "AggregationConfig"
        }
      },
      "documentation": "<p> The configuration that determines how Amazon AppFlow should format the flow output data when Amazon S3 is used as the destination. </p>"
    },
    "S3SourceProperties": {
      "type": "structure",
      "required": [
        "bucketName"
      ],
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p> The Amazon S3 bucket name where the source files are stored. </p>"
        },
        "bucketPrefix": {
          "shape": "BucketPrefix",
          "documentation": "<p> The object key for the Amazon S3 bucket in which the source files are stored. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Amazon S3 is being used as the flow source. </p>"
    },
    "SalesforceConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "LESS_THAN",
        "CONTAINS",
        "GREATER_THAN",
        "BETWEEN",
        "LESS_THAN_OR_EQUAL_TO",
        "GREATER_THAN_OR_EQUAL_TO",
        "EQUAL_TO",
        "NOT_EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "SalesforceConnectorProfileCredentials": {
      "type": "structure",
      "members": {
        "accessToken": {
          "shape": "AccessToken",
          "documentation": "<p> The credentials used to access protected Salesforce resources. </p>"
        },
        "refreshToken": {
          "shape": "RefreshToken",
          "documentation": "<p> The credentials used to acquire new access tokens. </p>"
        },
        "oAuthRequest": {
          "shape": "ConnectorOAuthRequest",
          "documentation": "<p> The oauth requirement needed to request security tokens from the connector endpoint. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Salesforce. </p>"
    },
    "SalesforceConnectorProfileProperties": {
      "type": "structure",
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Salesforce resource. </p>"
        },
        "isSandboxEnvironment": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether the connector profile applies to a sandbox or production environment. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required when using Salesforce. </p>"
    },
    "SalesforceDestinationProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Salesforce flow destination. </p>"
        },
        "errorHandlingConfig": {
          "shape": "ErrorHandlingConfig",
          "documentation": "<p> The settings that determine how Amazon AppFlow handles an error when placing data in the Salesforce destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Salesforce is being used as a destination. </p>"
    },
    "SalesforceMetadata": {
      "type": "structure",
      "members": {
        "oAuthScopes": {
          "shape": "OAuthScopeList",
          "documentation": "<p> The desired authorization scope for the Salesforce account. </p>"
        }
      },
      "documentation": "<p> The connector metadata specific to Salesforce. </p>"
    },
    "SalesforceSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Salesforce flow source. </p>"
        },
        "enableDynamicFieldUpdate": {
          "shape": "Boolean",
          "documentation": "<p> The flag that enables dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow. </p>"
        },
        "includeDeletedRecords": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether Amazon AppFlow includes deleted files in the flow run. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Salesforce is being used as a source. </p>"
    },
    "ScheduleExpression": {
      "type": "string",
      "max": 256,
      "pattern": ".*"
    },
    "ScheduleFrequencyType": {
      "type": "string",
      "enum": [
        "BYMINUTE",
        "HOURLY",
        "DAILY",
        "WEEKLY",
        "MONTHLY",
        "ONCE"
      ]
    },
    "ScheduledTriggerProperties": {
      "type": "structure",
      "required": [
        "scheduleExpression"
      ],
      "members": {
        "scheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p> The scheduling expression that determines when and how often the rule runs. </p>"
        },
        "dataPullMode": {
          "shape": "DataPullMode",
          "documentation": "<p> Specifies whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. </p>"
        },
        "scheduleStartTime": {
          "shape": "Date",
          "documentation": "<p> Specifies the scheduled start time for a schedule-triggered flow. </p>"
        },
        "scheduleEndTime": {
          "shape": "Date",
          "documentation": "<p> Specifies the scheduled end time for a schedule-triggered flow. </p>"
        },
        "timezone": {
          "shape": "Timezone",
          "documentation": "<p> Specifies the time zone used when referring to the date and time of a scheduled-triggered flow. </p>"
        }
      },
      "documentation": "<p> Specifies the configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the <code>Scheduled</code> trigger type. </p>"
    },
    "SchedulingFrequencyTypeList": {
      "type": "list",
      "member": {
        "shape": "ScheduleFrequencyType"
      }
    },
    "SecretKey": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+",
      "sensitive": true
    },
    "ServiceNowConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "CONTAINS",
        "LESS_THAN",
        "GREATER_THAN",
        "BETWEEN",
        "LESS_THAN_OR_EQUAL_TO",
        "GREATER_THAN_OR_EQUAL_TO",
        "EQUAL_TO",
        "NOT_EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "ServiceNowConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "username",
        "password"
      ],
      "members": {
        "username": {
          "shape": "Username",
          "documentation": "<p> The name of the user. </p>"
        },
        "password": {
          "shape": "Password",
          "documentation": "<p> The password that corresponds to the user name. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using ServiceNow. </p>"
    },
    "ServiceNowConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the ServiceNow resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required when using ServiceNow. </p>"
    },
    "ServiceNowMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to ServiceNow. </p>"
    },
    "ServiceNowSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the ServiceNow flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when ServiceNow is being used as a source. </p>"
    },
    "SingularConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "SingularConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "apiKey"
      ],
      "members": {
        "apiKey": {
          "shape": "ApiKey",
          "documentation": "<p> A unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Singular. </p>"
    },
    "SingularConnectorProfileProperties": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector-specific profile properties required when using Singular. </p>"
    },
    "SingularMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Singular. </p>"
    },
    "SingularSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Singular flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Singular is being used as a source. </p>"
    },
    "SlackConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "LESS_THAN",
        "GREATER_THAN",
        "BETWEEN",
        "LESS_THAN_OR_EQUAL_TO",
        "GREATER_THAN_OR_EQUAL_TO",
        "EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "SlackConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "clientId",
        "clientSecret"
      ],
      "members": {
        "clientId": {
          "shape": "ClientId",
          "documentation": "<p> The identifier for the client. </p>"
        },
        "clientSecret": {
          "shape": "ClientSecret",
          "documentation": "<p> The client secret used by the oauth client to authenticate to the authorization server. </p>"
        },
        "accessToken": {
          "shape": "AccessToken",
          "documentation": "<p> The credentials used to access protected Slack resources. </p>"
        },
        "oAuthRequest": {
          "shape": "ConnectorOAuthRequest",
          "documentation": "<p> The oauth requirement needed to request security tokens from the connector endpoint. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Slack. </p>"
    },
    "SlackConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Slack resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required when using Slack. </p>"
    },
    "SlackMetadata": {
      "type": "structure",
      "members": {
        "oAuthScopes": {
          "shape": "OAuthScopeList",
          "documentation": "<p> The desired authorization scope for the Slack account. </p>"
        }
      },
      "documentation": "<p> The connector metadata specific to Slack. </p>"
    },
    "SlackSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Slack flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Slack is being used as a source. </p>"
    },
    "SnowflakeConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "username",
        "password"
      ],
      "members": {
        "username": {
          "shape": "Username",
          "documentation": "<p> The name of the user. </p>"
        },
        "password": {
          "shape": "Password",
          "documentation": "<p> The password that corresponds to the user name. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Snowflake. </p>"
    },
    "SnowflakeConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "warehouse",
        "stage",
        "bucketName"
      ],
      "members": {
        "warehouse": {
          "shape": "Warehouse",
          "documentation": "<p> The name of the Snowflake warehouse. </p>"
        },
        "stage": {
          "shape": "Stage",
          "documentation": "<p> The name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: &lt; Database&gt;&lt; Schema&gt;&lt;Stage Name&gt;. </p>"
        },
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p> The name of the Amazon S3 bucket associated with Snowflake. </p>"
        },
        "bucketPrefix": {
          "shape": "BucketPrefix",
          "documentation": "<p> The bucket path that refers to the Amazon S3 bucket associated with Snowflake. </p>"
        },
        "privateLinkServiceName": {
          "shape": "PrivateLinkServiceName",
          "documentation": "<p> The Snowflake Private Link service name to be used for private data transfers. </p>"
        },
        "accountName": {
          "shape": "AccountName",
          "documentation": "<p> The name of the account. </p>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p> The AWS Region of the Snowflake account. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required when using Snowflake. </p>"
    },
    "SnowflakeDestinationProperties": {
      "type": "structure",
      "required": [
        "object",
        "intermediateBucketName"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Snowflake flow destination. </p>"
        },
        "intermediateBucketName": {
          "shape": "BucketName",
          "documentation": "<p> The intermediate bucket that Amazon AppFlow uses when moving data into Snowflake. </p>"
        },
        "bucketPrefix": {
          "shape": "BucketPrefix",
          "documentation": "<p> The object key for the destination bucket in which Amazon AppFlow places the files. </p>"
        },
        "errorHandlingConfig": {
          "shape": "ErrorHandlingConfig",
          "documentation": "<p> The settings that determine how Amazon AppFlow handles an error when placing data in the Snowflake destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when Snowflake is being used as a destination. </p>"
    },
    "SnowflakeMetadata": {
      "type": "structure",
      "members": {
        "supportedRegions": {
          "shape": "RegionList",
          "documentation": "<p> Specifies the supported AWS Regions when using Snowflake. </p>"
        }
      },
      "documentation": "<p> The connector metadata specific to Snowflake. </p>"
    },
    "SourceConnectorProperties": {
      "type": "structure",
      "members": {
        "Amplitude": {
          "shape": "AmplitudeSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Amplitude. </p>"
        },
        "Datadog": {
          "shape": "DatadogSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Datadog. </p>"
        },
        "Dynatrace": {
          "shape": "DynatraceSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Dynatrace. </p>"
        },
        "GoogleAnalytics": {
          "shape": "GoogleAnalyticsSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Google Analytics. </p>"
        },
        "InforNexus": {
          "shape": "InforNexusSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Infor Nexus. </p>"
        },
        "Marketo": {
          "shape": "MarketoSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Marketo. </p>"
        },
        "S3": {
          "shape": "S3SourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Amazon S3. </p>"
        },
        "Salesforce": {
          "shape": "SalesforceSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Salesforce. </p>"
        },
        "ServiceNow": {
          "shape": "ServiceNowSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying ServiceNow. </p>"
        },
        "Singular": {
          "shape": "SingularSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Singular. </p>"
        },
        "Slack": {
          "shape": "SlackSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Slack. </p>"
        },
        "Trendmicro": {
          "shape": "TrendmicroSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Trend Micro. </p>"
        },
        "Veeva": {
          "shape": "VeevaSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Veeva. </p>"
        },
        "Zendesk": {
          "shape": "ZendeskSourceProperties",
          "documentation": "<p> Specifies the information that is required for querying Zendesk. </p>"
        }
      },
      "documentation": "<p> Specifies the information that is required to query a particular connector. </p>"
    },
    "SourceFieldProperties": {
      "type": "structure",
      "members": {
        "isRetrievable": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether the field can be returned in a search result. </p>"
        },
        "isQueryable": {
          "shape": "Boolean",
          "documentation": "<p> Indicates if the field can be queried. </p>"
        }
      },
      "documentation": "<p> The properties that can be applied to a field when the connector is being used as a source. </p>"
    },
    "SourceFields": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SourceFlowConfig": {
      "type": "structure",
      "required": [
        "connectorType",
        "sourceConnectorProperties"
      ],
      "members": {
        "connectorType": {
          "shape": "ConnectorType",
          "documentation": "<p> The type of connector, such as Salesforce, Amplitude, and so on. </p>"
        },
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile. This name must be unique for each connector profile in the AWS account. </p>"
        },
        "sourceConnectorProperties": {
          "shape": "SourceConnectorProperties",
          "documentation": "<p> Specifies the information that is required to query a particular source connector. </p>"
        }
      },
      "documentation": "<p> Contains information about the configuration of the source connector used in the flow. </p>"
    },
    "Stage": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "StartFlowRequest": {
      "type": "structure",
      "required": [
        "flowName"
      ],
      "members": {
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        }
      }
    },
    "StartFlowResponse": {
      "type": "structure",
      "members": {
        "flowArn": {
          "shape": "FlowArn",
          "documentation": "<p> The flow's Amazon Resource Name (ARN). </p>"
        },
        "flowStatus": {
          "shape": "FlowStatus",
          "documentation": "<p> Indicates the current status of the flow. </p>"
        }
      }
    },
    "StopFlowRequest": {
      "type": "structure",
      "required": [
        "flowName"
      ],
      "members": {
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        }
      }
    },
    "StopFlowResponse": {
      "type": "structure",
      "members": {
        "flowArn": {
          "shape": "FlowArn",
          "documentation": "<p> The flow's Amazon Resource Name (ARN). </p>"
        },
        "flowStatus": {
          "shape": "FlowStatus",
          "documentation": "<p> Indicates the current status of the flow. </p>"
        }
      }
    },
    "String": {
      "type": "string",
      "max": 2048,
      "pattern": ".*"
    },
    "SupportedFieldTypeDetails": {
      "type": "structure",
      "required": [
        "v1"
      ],
      "members": {
        "v1": {
          "shape": "FieldTypeDetails",
          "documentation": "<p> The initial supported version for <code>fieldType</code>. If this is later changed to a different version, v2 will be introduced. </p>"
        }
      },
      "documentation": "<p> Contains details regarding all the supported <code>FieldTypes</code> and their corresponding <code>filterOperators</code> and <code>supportedValues</code>. </p>"
    },
    "SupportedValueList": {
      "type": "list",
      "member": {
        "shape": "Value"
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^(?!aws:)[a-zA-Z+-=._:/]+$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 0
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 50,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ARN",
          "documentation": "<p> The Amazon Resource Name (ARN) of the flow that you want to tag. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags used to organize, track, or control access for your flow. </p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "pattern": "[\\s\\w+-=\\.:/@]*"
    },
    "Task": {
      "type": "structure",
      "required": [
        "sourceFields",
        "taskType"
      ],
      "members": {
        "sourceFields": {
          "shape": "SourceFields",
          "documentation": "<p> The source fields to which a particular task is applied. </p>"
        },
        "connectorOperator": {
          "shape": "ConnectorOperator",
          "documentation": "<p> The operation to be performed on the provided source fields. </p>"
        },
        "destinationField": {
          "shape": "DestinationField",
          "documentation": "<p> A field in a destination connector, or a field value against which Amazon AppFlow validates a source field. </p>"
        },
        "taskType": {
          "shape": "TaskType",
          "documentation": "<p> Specifies the particular task implementation that Amazon AppFlow performs. </p>"
        },
        "taskProperties": {
          "shape": "TaskPropertiesMap",
          "documentation": "<p> A map used to store task-related information. The execution service looks for particular information based on the <code>TaskType</code>. </p>"
        }
      },
      "documentation": "<p> A class for modeling different type of tasks. Task implementation varies based on the <code>TaskType</code>. </p>"
    },
    "TaskPropertiesMap": {
      "type": "map",
      "key": {
        "shape": "OperatorPropertiesKeys"
      },
      "value": {
        "shape": "Property"
      }
    },
    "TaskType": {
      "type": "string",
      "enum": [
        "Arithmetic",
        "Filter",
        "Map",
        "Mask",
        "Merge",
        "Truncate",
        "Validate"
      ]
    },
    "Tasks": {
      "type": "list",
      "member": {
        "shape": "Task"
      }
    },
    "Timezone": {
      "type": "string",
      "max": 256
    },
    "TrendmicroConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "TrendmicroConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "apiSecretKey"
      ],
      "members": {
        "apiSecretKey": {
          "shape": "ApiSecretKey",
          "documentation": "<p> The Secret Access Key portion of the credentials. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Trend Micro. </p>"
    },
    "TrendmicroConnectorProfileProperties": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector-specific profile properties required when using Trend Micro. </p>"
    },
    "TrendmicroMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Trend Micro. </p>"
    },
    "TrendmicroSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Trend Micro flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when using Trend Micro as a flow source. </p>"
    },
    "TriggerConfig": {
      "type": "structure",
      "required": [
        "triggerType"
      ],
      "members": {
        "triggerType": {
          "shape": "TriggerType",
          "documentation": "<p> Specifies the type of flow trigger. This can be <code>OnDemand</code>, <code>Scheduled</code>, or <code>Event</code>. </p>"
        },
        "triggerProperties": {
          "shape": "TriggerProperties",
          "documentation": "<p> Specifies the configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the <code>Scheduled</code> trigger type. </p>"
        }
      },
      "documentation": "<p> The trigger settings that determine how and when Amazon AppFlow runs the specified flow. </p>"
    },
    "TriggerProperties": {
      "type": "structure",
      "members": {
        "Scheduled": {
          "shape": "ScheduledTriggerProperties",
          "documentation": "<p> Specifies the configuration details of a schedule-triggered flow as defined by the user. </p>"
        }
      },
      "documentation": "<p> Specifies the configuration details that control the trigger for a flow. Currently, these settings only apply to the <code>Scheduled</code> trigger type. </p>"
    },
    "TriggerType": {
      "type": "string",
      "enum": [
        "Scheduled",
        "Event",
        "OnDemand"
      ]
    },
    "TriggerTypeList": {
      "type": "list",
      "member": {
        "shape": "TriggerType"
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ARN",
          "documentation": "<p> The Amazon Resource Name (ARN) of the flow that you want to untag. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p> The tag keys associated with the tag that you want to remove from your flow. </p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateConnectorProfileRequest": {
      "type": "structure",
      "required": [
        "connectorProfileName",
        "connectionMode",
        "connectorProfileConfig"
      ],
      "members": {
        "connectorProfileName": {
          "shape": "ConnectorProfileName",
          "documentation": "<p> The name of the connector profile and is unique for each <code>ConnectorProfile</code> in the AWS Account. </p>"
        },
        "connectionMode": {
          "shape": "ConnectionMode",
          "documentation": "<p> Indicates the connection mode and if it is public or private. </p>"
        },
        "connectorProfileConfig": {
          "shape": "ConnectorProfileConfig",
          "documentation": "<p> Defines the connector-specific profile configuration and credentials. </p>"
        }
      }
    },
    "UpdateConnectorProfileResponse": {
      "type": "structure",
      "members": {
        "connectorProfileArn": {
          "shape": "ConnectorProfileArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the connector profile. </p>"
        }
      }
    },
    "UpdateFlowRequest": {
      "type": "structure",
      "required": [
        "flowName",
        "triggerConfig",
        "destinationFlowConfigList",
        "tasks"
      ],
      "members": {
        "flowName": {
          "shape": "FlowName",
          "documentation": "<p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. </p>"
        },
        "description": {
          "shape": "FlowDescription",
          "documentation": "<p> A description of the flow. </p>"
        },
        "triggerConfig": {
          "shape": "TriggerConfig",
          "documentation": "<p> The trigger settings that determine how and when the flow runs. </p>"
        },
        "sourceFlowConfig": {
          "shape": "SourceFlowConfig"
        },
        "destinationFlowConfigList": {
          "shape": "DestinationFlowConfigList",
          "documentation": "<p> The configuration that controls how Amazon AppFlow transfers data to the destination connector. </p>"
        },
        "tasks": {
          "shape": "Tasks",
          "documentation": "<p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow run. </p>"
        }
      }
    },
    "UpdateFlowResponse": {
      "type": "structure",
      "members": {
        "flowStatus": {
          "shape": "FlowStatus",
          "documentation": "<p>Indicates the current status of the flow. </p>"
        }
      }
    },
    "UpdatedBy": {
      "type": "string",
      "max": 256,
      "pattern": "\\S+"
    },
    "Username": {
      "type": "string",
      "max": 512,
      "pattern": "\\S+"
    },
    "Value": {
      "type": "string",
      "max": 128,
      "pattern": "\\S+"
    },
    "VeevaConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "LESS_THAN",
        "GREATER_THAN",
        "CONTAINS",
        "BETWEEN",
        "LESS_THAN_OR_EQUAL_TO",
        "GREATER_THAN_OR_EQUAL_TO",
        "EQUAL_TO",
        "NOT_EQUAL_TO",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "VeevaConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "username",
        "password"
      ],
      "members": {
        "username": {
          "shape": "Username",
          "documentation": "<p> The name of the user. </p>"
        },
        "password": {
          "shape": "Password",
          "documentation": "<p> The password that corresponds to the user name. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Veeva. </p>"
    },
    "VeevaConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Veeva resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required when using Veeva. </p>"
    },
    "VeevaMetadata": {
      "type": "structure",
      "members": {},
      "documentation": "<p> The connector metadata specific to Veeva. </p>"
    },
    "VeevaSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Veeva flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when using Veeva as a flow source. </p>"
    },
    "Warehouse": {
      "type": "string",
      "max": 512,
      "pattern": "[\\s\\w/!@#+=.-]*"
    },
    "ZendeskConnectorOperator": {
      "type": "string",
      "enum": [
        "PROJECTION",
        "GREATER_THAN",
        "ADDITION",
        "MULTIPLICATION",
        "DIVISION",
        "SUBTRACTION",
        "MASK_ALL",
        "MASK_FIRST_N",
        "MASK_LAST_N",
        "VALIDATE_NON_NULL",
        "VALIDATE_NON_ZERO",
        "VALIDATE_NON_NEGATIVE",
        "VALIDATE_NUMERIC",
        "NO_OP"
      ]
    },
    "ZendeskConnectorProfileCredentials": {
      "type": "structure",
      "required": [
        "clientId",
        "clientSecret"
      ],
      "members": {
        "clientId": {
          "shape": "ClientId",
          "documentation": "<p> The identifier for the desired client. </p>"
        },
        "clientSecret": {
          "shape": "ClientSecret",
          "documentation": "<p> The client secret used by the oauth client to authenticate to the authorization server. </p>"
        },
        "accessToken": {
          "shape": "AccessToken",
          "documentation": "<p> The credentials used to access protected Zendesk resources. </p>"
        },
        "oAuthRequest": {
          "shape": "ConnectorOAuthRequest",
          "documentation": "<p> The oauth requirement needed to request security tokens from the connector endpoint. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile credentials required when using Zendesk. </p>"
    },
    "ZendeskConnectorProfileProperties": {
      "type": "structure",
      "required": [
        "instanceUrl"
      ],
      "members": {
        "instanceUrl": {
          "shape": "InstanceUrl",
          "documentation": "<p> The location of the Zendesk resource. </p>"
        }
      },
      "documentation": "<p> The connector-specific profile properties required when using Zendesk. </p>"
    },
    "ZendeskMetadata": {
      "type": "structure",
      "members": {
        "oAuthScopes": {
          "shape": "OAuthScopeList",
          "documentation": "<p> The desired authorization scope for the Zendesk account. </p>"
        }
      },
      "documentation": "<p> The connector metadata specific to Zendesk. </p>"
    },
    "ZendeskSourceProperties": {
      "type": "structure",
      "required": [
        "object"
      ],
      "members": {
        "object": {
          "shape": "Object",
          "documentation": "<p> The object specified in the Zendesk flow source. </p>"
        }
      },
      "documentation": "<p> The properties that are applied when using Zendesk as a flow source. </p>"
    }
  },
  "documentation": "<p>Welcome to the Amazon AppFlow API reference. This guide is for developers who need detailed information about the Amazon AppFlow API operations, data types, and errors. </p> <p>Amazon AppFlow is a fully managed integration service that enables you to securely transfer data between software as a service (SaaS) applications like Salesforce, Marketo, Slack, and ServiceNow, and AWS services like Amazon S3 and Amazon Redshift. </p> <p>Use the following links to get started on the Amazon AppFlow API:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html\">Actions</a>: An alphabetical list of all Amazon AppFlow API operations.</p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html\">Data types</a>: An alphabetical list of all Amazon AppFlow data types.</p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html\">Common parameters</a>: Parameters that all Query operations can use.</p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html\">Common errors</a>: Client and server errors that all operations can return.</p> </li> </ul> <p>If you're new to Amazon AppFlow, we recommend that you review the <a href=\"https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html\">Amazon AppFlow User Guide</a>.</p> <p>Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and include applicable OAuth attributes (such as <code>auth-code</code> and <code>redirecturi</code>) with the connector-specific <code>ConnectorProfileProperties</code> when creating a new connector profile using Amazon AppFlow API operations. For example, Salesforce users can refer to the <a href=\"https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm\"> <i>Authorize Apps with OAuth</i> </a> documentation.</p>"
}
]===]))
