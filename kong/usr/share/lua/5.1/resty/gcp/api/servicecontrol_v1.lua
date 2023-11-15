return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/servicecontrol"] = {
          description = "Manage your Google Service Control data",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://servicecontrol.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Service Control",
  description = "Provides admission control and telemetry reporting for services integrated with Service Infrastructure. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/service-control/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "servicecontrol:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://servicecontrol.mtls.googleapis.com/",
  name = "servicecontrol",
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
    services = {
      methods = {
        allocateQuota = {
          description = "Attempts to allocate quota for the specified consumer. It should be called before the operation is executed. This method requires the `servicemanagement.services.quota` permission on the specified service. For more information, see [Cloud IAM](https://cloud.google.com/iam). **NOTE:** The client **must** fail-open on server errors `INTERNAL`, `UNKNOWN`, `DEADLINE_EXCEEDED`, and `UNAVAILABLE`. To ensure system reliability, the server may inject these errors to prohibit any hard dependency on the quota functionality.",
          flatPath = "v1/services/{serviceName}:allocateQuota",
          httpMethod = "POST",
          id = "servicecontrol.services.allocateQuota",
          parameterOrder = {
            "serviceName",
          },
          parameters = {
            serviceName = {
              description = "Name of the service as specified in the service configuration. For example, `\"pubsub.googleapis.com\"`. See google.api.Service for the definition of a service name.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/services/{serviceName}:allocateQuota",
          request = {
            ["$ref"] = "AllocateQuotaRequest",
          },
          response = {
            ["$ref"] = "AllocateQuotaResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/servicecontrol",
          },
        },
        check = {
          description = "Checks whether an operation on a service should be allowed to proceed based on the configuration of the service and related policies. It must be called before the operation is executed. If feasible, the client should cache the check results and reuse them for 60 seconds. In case of any server errors, the client should rely on the cached results for much longer time to avoid outage. WARNING: There is general 60s delay for the configuration and policy propagation, therefore callers MUST NOT depend on the `Check` method having the latest policy information. NOTE: the CheckRequest has the size limit (wire-format byte size) of 1MB. This method requires the `servicemanagement.services.check` permission on the specified service. For more information, see [Cloud IAM](https://cloud.google.com/iam).",
          flatPath = "v1/services/{serviceName}:check",
          httpMethod = "POST",
          id = "servicecontrol.services.check",
          parameterOrder = {
            "serviceName",
          },
          parameters = {
            serviceName = {
              description = "The service name as specified in its service configuration. For example, `\"pubsub.googleapis.com\"`. See [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service) for the definition of a service name.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/services/{serviceName}:check",
          request = {
            ["$ref"] = "CheckRequest",
          },
          response = {
            ["$ref"] = "CheckResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/servicecontrol",
          },
        },
        report = {
          description = "Reports operation results to Google Service Control, such as logs and metrics. It should be called after an operation is completed. If feasible, the client should aggregate reporting data for up to 5 seconds to reduce API traffic. Limiting aggregation to 5 seconds is to reduce data loss during client crashes. Clients should carefully choose the aggregation time window to avoid data loss risk more than 0.01% for business and compliance reasons. NOTE: the ReportRequest has the size limit (wire-format byte size) of 1MB. This method requires the `servicemanagement.services.report` permission on the specified service. For more information, see [Google Cloud IAM](https://cloud.google.com/iam).",
          flatPath = "v1/services/{serviceName}:report",
          httpMethod = "POST",
          id = "servicecontrol.services.report",
          parameterOrder = {
            "serviceName",
          },
          parameters = {
            serviceName = {
              description = "The service name as specified in its service configuration. For example, `\"pubsub.googleapis.com\"`. See [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service) for the definition of a service name.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/services/{serviceName}:report",
          request = {
            ["$ref"] = "ReportRequest",
          },
          response = {
            ["$ref"] = "ReportResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/servicecontrol",
          },
        },
      },
    },
  },
  revision = "20230109",
  rootUrl = "https://servicecontrol.googleapis.com/",
  schemas = {
    AllocateInfo = {
      id = "AllocateInfo",
      properties = {
        unusedArguments = {
          description = "A list of label keys that were unused by the server in processing the request. Thus, for similar requests repeated in a certain future time window, the caller can choose to ignore these labels in the requests to achieve better client-side cache hits and quota aggregation for rate quota. This field is not populated for allocation quota checks.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AllocateQuotaRequest = {
      description = "Request message for the AllocateQuota method.",
      id = "AllocateQuotaRequest",
      properties = {
        allocateOperation = {
          ["$ref"] = "QuotaOperation",
          description = "Operation that describes the quota allocation.",
        },
        serviceConfigId = {
          description = "Specifies which version of service configuration should be used to process the request. If unspecified or no matching version can be found, the latest one will be used.",
          type = "string",
        },
      },
      type = "object",
    },
    AllocateQuotaResponse = {
      description = "Response message for the AllocateQuota method.",
      id = "AllocateQuotaResponse",
      properties = {
        allocateErrors = {
          description = "Indicates the decision of the allocate.",
          items = {
            ["$ref"] = "QuotaError",
          },
          type = "array",
        },
        allocateInfo = {
          ["$ref"] = "AllocateInfo",
          description = "WARNING: DO NOT use this field until this warning message is removed.",
        },
        operationId = {
          description = "The same operation_id value used in the AllocateQuotaRequest. Used for logging and diagnostics purposes.",
          type = "string",
        },
        quotaMetrics = {
          description = "Quota metrics to indicate the result of allocation. Depending on the request, one or more of the following metrics will be included: 1. Per quota group or per quota metric incremental usage will be specified using the following delta metric : \"serviceruntime.googleapis.com/api/consumer/quota_used_count\" 2. The quota limit reached condition will be specified using the following boolean metric : \"serviceruntime.googleapis.com/quota/exceeded\"",
          items = {
            ["$ref"] = "MetricValueSet",
          },
          type = "array",
        },
        serviceConfigId = {
          description = "ID of the actual config used to process the request.",
          type = "string",
        },
      },
      type = "object",
    },
    AttributeValue = {
      description = "The allowed types for [VALUE] in a `[KEY]:[VALUE]` attribute.",
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
      description = "A set of attributes, each in the format `[KEY]:[VALUE]`.",
      id = "Attributes",
      properties = {
        attributeMap = {
          additionalProperties = {
            ["$ref"] = "AttributeValue",
          },
          description = "The set of attributes. Each attribute's key can be up to 128 bytes long. The value can be a string up to 256 bytes, a signed 64-bit integer, or the Boolean values `true` and `false`. For example: \"/instance_id\": \"my-instance\" \"/http/user_agent\": \"\" \"/http/request_bytes\": 300 \"abc.com/myattribute\": true",
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
    AuditLog = {
      description = "Common audit log format for Google Cloud Platform API operations. ",
      id = "AuditLog",
      properties = {
        authenticationInfo = {
          ["$ref"] = "AuthenticationInfo",
          description = "Authentication information.",
        },
        authorizationInfo = {
          description = "Authorization information. If there are multiple resources or permissions involved, then there is one AuthorizationInfo element for each {resource, permission} tuple.",
          items = {
            ["$ref"] = "AuthorizationInfo",
          },
          type = "array",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Other service-specific data about the request, response, and other information associated with the current audited event.",
          type = "object",
        },
        methodName = {
          description = "The name of the service method or operation. For API calls, this should be the name of the API method. For example, \"google.cloud.bigquery.v2.TableService.InsertTable\" \"google.logging.v2.ConfigServiceV2.CreateSink\"",
          type = "string",
        },
        numResponseItems = {
          description = "The number of items returned from a List or Query API method, if applicable.",
          format = "int64",
          type = "string",
        },
        policyViolationInfo = {
          ["$ref"] = "PolicyViolationInfo",
          description = "Indicates the policy violations for this request. If the request is denied by the policy, violation information will be logged here.",
        },
        request = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The operation request. This may not include all request parameters, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.",
          type = "object",
        },
        requestMetadata = {
          ["$ref"] = "RequestMetadata",
          description = "Metadata about the operation.",
        },
        resourceLocation = {
          ["$ref"] = "ResourceLocation",
          description = "The resource location information.",
        },
        resourceName = {
          description = "The resource or collection that is the target of the operation. The name is a scheme-less URI, not including the API service name. For example: \"projects/PROJECT_ID/zones/us-central1-a/instances\" \"projects/PROJECT_ID/datasets/DATASET_ID\"",
          type = "string",
        },
        resourceOriginalState = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The resource's original state before mutation. Present only for operations which have successfully modified the targeted resource(s). In general, this field should contain all changed fields, except those that are already been included in `request`, `response`, `metadata` or `service_data` fields. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.",
          type = "object",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The operation response. This may not include all response elements, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.",
          type = "object",
        },
        serviceData = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Deprecated. Use the `metadata` field instead. Other service-specific data about the request, response, and other activities.",
          type = "object",
        },
        serviceName = {
          description = "The name of the API service performing the operation. For example, `\"compute.googleapis.com\"`.",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "The status of the overall operation.",
        },
      },
      type = "object",
    },
    Auth = {
      description = "This message defines request authentication attributes. Terminology is based on the JSON Web Token (JWT) standard, but the terms also correlate to concepts in other standards.",
      id = "Auth",
      properties = {
        accessLevels = {
          description = "A list of access level resource names that allow resources to be accessed by authenticated requester. It is part of Secure GCP processing for the incoming request. An access level string has the format: \"//{api_service_name}/accessPolicies/{policy_id}/accessLevels/{short_name}\" Example: \"//accesscontextmanager.googleapis.com/accessPolicies/MY_POLICY_ID/accessLevels/MY_LEVEL\"",
          items = {
            type = "string",
          },
          type = "array",
        },
        audiences = {
          description = "The intended audience(s) for this authentication information. Reflects the audience (`aud`) claim within a JWT. The audience value(s) depends on the `issuer`, but typically include one or more of the following pieces of information: * The services intended to receive the credential. For example, [\"https://pubsub.googleapis.com/\", \"https://storage.googleapis.com/\"]. * A set of service-based scopes. For example, [\"https://www.googleapis.com/auth/cloud-platform\"]. * The client id of an app, such as the Firebase project id for JWTs from Firebase Auth. Consult the documentation for the credential issuer to determine the information provided.",
          items = {
            type = "string",
          },
          type = "array",
        },
        claims = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Structured claims presented with the credential. JWTs include `{key: value}` pairs for standard and private claims. The following is a subset of the standard required and optional claims that would typically be presented for a Google-based JWT: {'iss': 'accounts.google.com', 'sub': '113289723416554971153', 'aud': ['123456789012', 'pubsub.googleapis.com'], 'azp': '123456789012.apps.googleusercontent.com', 'email': 'jsmith@example.com', 'iat': 1353601026, 'exp': 1353604926} SAML assertions are similarly specified, but with an identity provider dependent structure.",
          type = "object",
        },
        presenter = {
          description = "The authorized presenter of the credential. Reflects the optional Authorized Presenter (`azp`) claim within a JWT or the OAuth client id. For example, a Google Cloud Platform client id looks as follows: \"123456789012.apps.googleusercontent.com\".",
          type = "string",
        },
        principal = {
          description = "The authenticated principal. Reflects the issuer (`iss`) and subject (`sub`) claims within a JWT. The issuer and subject should be `/` delimited, with `/` percent-encoded within the subject fragment. For Google accounts, the principal format is: \"https://accounts.google.com/{id}\"",
          type = "string",
        },
      },
      type = "object",
    },
    AuthenticationInfo = {
      description = "Authentication information for the operation.",
      id = "AuthenticationInfo",
      properties = {
        authoritySelector = {
          description = "The authority selector specified by the requestor, if any. It is not guaranteed that the principal was allowed to use this authority.",
          type = "string",
        },
        principalEmail = {
          description = "The email address of the authenticated user (or service account on behalf of third party principal) making the request. For third party identity callers, the `principal_subject` field is populated instead of this field. For privacy reasons, the principal email address is sometimes redacted. For more information, see [Caller identities in audit logs](https://cloud.google.com/logging/docs/audit#user-id).",
          type = "string",
        },
        principalSubject = {
          description = "String representation of identity of requesting party. Populated for both first and third party identities.",
          type = "string",
        },
        serviceAccountDelegationInfo = {
          description = "Identity delegation history of an authenticated service account that makes the request. It contains information on the real authorities that try to access GCP resources by delegating on a service account. When multiple authorities present, they are guaranteed to be sorted based on the original ordering of the identity delegation events.",
          items = {
            ["$ref"] = "ServiceAccountDelegationInfo",
          },
          type = "array",
        },
        serviceAccountKeyName = {
          description = "The name of the service account key used to create or exchange credentials for authenticating the service account making the request. This is a scheme-less URI full resource name. For example: \"//iam.googleapis.com/projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}\"",
          type = "string",
        },
        thirdPartyPrincipal = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The third party identification (if any) of the authenticated user making the request. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.",
          type = "object",
        },
      },
      type = "object",
    },
    AuthorizationInfo = {
      description = "Authorization information for the operation.",
      id = "AuthorizationInfo",
      properties = {
        granted = {
          description = "Whether or not authorization for `resource` and `permission` was granted.",
          type = "boolean",
        },
        permission = {
          description = "The required IAM permission.",
          type = "string",
        },
        resource = {
          description = "The resource being accessed, as a REST-style or cloud resource string. For example: bigquery.googleapis.com/projects/PROJECTID/datasets/DATASETID or projects/PROJECTID/datasets/DATASETID",
          type = "string",
        },
        resourceAttributes = {
          ["$ref"] = "Resource",
          description = "Resource attributes used in IAM condition evaluation. This field contains resource attributes like resource type and resource name. To get the whole view of the attributes used in IAM condition evaluation, the user must also look into `AuditLog.request_metadata.request_attributes`.",
        },
      },
      type = "object",
    },
    CheckError = {
      description = "Defines the errors to be returned in google.api.servicecontrol.v1.CheckResponse.check_errors.",
      id = "CheckError",
      properties = {
        code = {
          description = "The error code.",
          enum = {
            "ERROR_CODE_UNSPECIFIED",
            "NOT_FOUND",
            "PERMISSION_DENIED",
            "RESOURCE_EXHAUSTED",
            "BUDGET_EXCEEDED",
            "DENIAL_OF_SERVICE_DETECTED",
            "LOAD_SHEDDING",
            "ABUSER_DETECTED",
            "SERVICE_NOT_ACTIVATED",
            "VISIBILITY_DENIED",
            "BILLING_DISABLED",
            "PROJECT_DELETED",
            "PROJECT_INVALID",
            "CONSUMER_INVALID",
            "IP_ADDRESS_BLOCKED",
            "REFERER_BLOCKED",
            "CLIENT_APP_BLOCKED",
            "API_TARGET_BLOCKED",
            "API_KEY_INVALID",
            "API_KEY_EXPIRED",
            "API_KEY_NOT_FOUND",
            "SPATULA_HEADER_INVALID",
            "LOAS_ROLE_INVALID",
            "NO_LOAS_PROJECT",
            "LOAS_PROJECT_DISABLED",
            "SECURITY_POLICY_VIOLATED",
            "INVALID_CREDENTIAL",
            "LOCATION_POLICY_VIOLATED",
            "NAMESPACE_LOOKUP_UNAVAILABLE",
            "SERVICE_STATUS_UNAVAILABLE",
            "BILLING_STATUS_UNAVAILABLE",
            "QUOTA_CHECK_UNAVAILABLE",
            "LOAS_PROJECT_LOOKUP_UNAVAILABLE",
            "CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE",
            "SECURITY_POLICY_BACKEND_UNAVAILABLE",
            "LOCATION_POLICY_BACKEND_UNAVAILABLE",
            "INJECTED_ERROR",
          },
          enumDescriptions = {
            "This is never used in `CheckResponse`.",
            "The consumer's project id, network container, or resource container was not found. Same as google.rpc.Code.NOT_FOUND.",
            "The consumer doesn't have access to the specified resource. Same as google.rpc.Code.PERMISSION_DENIED.",
            "Quota check failed. Same as google.rpc.Code.RESOURCE_EXHAUSTED.",
            "Budget check failed.",
            "The consumer's request has been flagged as a DoS attack.",
            "The consumer's request should be rejected in order to protect the service from being overloaded.",
            "The consumer has been flagged as an abuser.",
            "The consumer hasn't activated the service.",
            "The consumer cannot access the service due to visibility configuration.",
            "The consumer cannot access the service because billing is disabled.",
            "The consumer's project has been marked as deleted (soft deletion).",
            "The consumer's project number or id does not represent a valid project.",
            "The input consumer info does not represent a valid consumer folder or organization.",
            "The IP address of the consumer is invalid for the specific consumer project.",
            "The referer address of the consumer request is invalid for the specific consumer project.",
            "The client application of the consumer request is invalid for the specific consumer project.",
            "The API targeted by this request is invalid for the specified consumer project.",
            "The consumer's API key is invalid.",
            "The consumer's API Key has expired.",
            "The consumer's API Key was not found in config record.",
            "The consumer's spatula header is invalid.",
            "The consumer's LOAS role is invalid.",
            "The consumer's LOAS role has no associated project.",
            "The consumer's LOAS project is not `ACTIVE` in LoquatV2.",
            "Request is not allowed as per security policies defined in Org Policy.",
            "The credential in the request can not be verified.",
            "Request is not allowed as per location policies defined in Org Policy.",
            "The backend server for looking up project id/number is unavailable.",
            "The backend server for checking service status is unavailable.",
            "The backend server for checking billing status is unavailable.",
            "The backend server for checking quota limits is unavailable.",
            "The Spanner for looking up LOAS project is unavailable.",
            "Cloud Resource Manager backend server is unavailable.",
            "NOTE: for customers in the scope of Beta/GA of https://cloud.google.com/vpc-service-controls, this error is no longer returned. If the security backend is unavailable, rpc UNAVAILABLE status will be returned instead. It should be ignored and should not be used to reject client requests.",
            "Backend server for evaluating location policy is unavailable.",
            "Part of the project of fault injection: go/chemist-slo-validation. To distinguish between artificially injected errors and organic ones, this value will be exported for the per_service_check_error_count streamz. http://google3/apiserving/servicecontrol/server/controller_service.cc;l=196 Rpcinjectz2 works by injecting errors early in the rpc life cycle, before any of the chemist business logic runs.",
          },
          type = "string",
        },
        detail = {
          description = "Free-form text providing details on the error cause of the error.",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "Contains public information about the check error. If available, `status.code` will be non zero and client can propagate it out as public error.",
        },
        subject = {
          description = "Subject to whom this error applies. See the specific code enum for more details on this field. For example: - \"project:\" - \"folder:\" - \"organization:\"",
          type = "string",
        },
      },
      type = "object",
    },
    CheckInfo = {
      description = "Contains additional information about the check operation.",
      id = "CheckInfo",
      properties = {
        consumerInfo = {
          ["$ref"] = "ConsumerInfo",
          description = "Consumer info of this check.",
        },
        unusedArguments = {
          description = "A list of fields and label keys that are ignored by the server. The client doesn't need to send them for following requests to improve performance and allow better aggregation.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CheckRequest = {
      description = "Request message for the Check method.",
      id = "CheckRequest",
      properties = {
        operation = {
          ["$ref"] = "Operation",
          description = "The operation to be checked.",
        },
        requestProjectSettings = {
          description = "Requests the project settings to be returned as part of the check response.",
          type = "boolean",
        },
        serviceConfigId = {
          description = "Specifies which version of service configuration should be used to process the request. If unspecified or no matching version can be found, the latest one will be used.",
          type = "string",
        },
        skipActivationCheck = {
          description = "Indicates if service activation check should be skipped for this request. Default behavior is to perform the check and apply relevant quota. WARNING: Setting this flag to \"true\" will disable quota enforcement.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CheckResponse = {
      description = "Response message for the Check method.",
      id = "CheckResponse",
      properties = {
        checkErrors = {
          description = "Indicate the decision of the check. If no check errors are present, the service should process the operation. Otherwise the service should use the list of errors to determine the appropriate action.",
          items = {
            ["$ref"] = "CheckError",
          },
          type = "array",
        },
        checkInfo = {
          ["$ref"] = "CheckInfo",
          description = "Feedback data returned from the server during processing a Check request.",
        },
        operationId = {
          description = "The same operation_id value used in the CheckRequest. Used for logging and diagnostics purposes.",
          type = "string",
        },
        quotaInfo = {
          ["$ref"] = "QuotaInfo",
          description = "Quota information for the check request associated with this response. ",
        },
        serviceConfigId = {
          description = "The actual config id used to process the request.",
          type = "string",
        },
        serviceRolloutId = {
          description = "The current service rollout id used to process the request.",
          type = "string",
        },
      },
      type = "object",
    },
    ConsumerInfo = {
      description = "`ConsumerInfo` provides information about the consumer.",
      id = "ConsumerInfo",
      properties = {
        consumerNumber = {
          description = "The consumer identity number, can be Google cloud project number, folder number or organization number e.g. 1234567890. A value of 0 indicates no consumer number is found.",
          format = "int64",
          type = "string",
        },
        projectNumber = {
          description = "The Google cloud project number, e.g. 1234567890. A value of 0 indicates no project number is found. NOTE: This field is deprecated after Chemist support flexible consumer id. New code should not depend on this field anymore.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "The type of the consumer which should have been defined in [Google Resource Manager](https://cloud.google.com/resource-manager/).",
          enum = {
            "CONSUMER_TYPE_UNSPECIFIED",
            "PROJECT",
            "FOLDER",
            "ORGANIZATION",
            "SERVICE_SPECIFIC",
          },
          enumDescriptions = {
            "This is never used.",
            "The consumer is a Google Cloud Project.",
            "The consumer is a Google Cloud Folder.",
            "The consumer is a Google Cloud Organization.",
            "Service-specific resource container which is defined by the service producer to offer their users the ability to manage service control functionalities at a finer level of granularity than the PROJECT.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Distribution = {
      description = "Distribution represents a frequency distribution of double-valued sample points. It contains the size of the population of sample points plus additional optional information: * the arithmetic mean of the samples * the minimum and maximum of the samples * the sum-squared-deviation of the samples, used to compute variance * a histogram of the values of the sample points",
      id = "Distribution",
      properties = {
        bucketCounts = {
          description = "The number of samples in each histogram bucket. `bucket_counts` are optional. If present, they must sum to the `count` value. The buckets are defined below in `bucket_option`. There are N buckets. `bucket_counts[0]` is the number of samples in the underflow bucket. `bucket_counts[1]` to `bucket_counts[N-1]` are the numbers of samples in each of the finite buckets. And `bucket_counts[N] is the number of samples in the overflow bucket. See the comments of `bucket_option` below for more details. Any suffix of trailing zeros may be omitted.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        count = {
          description = "The total number of samples in the distribution. Must be >= 0.",
          format = "int64",
          type = "string",
        },
        exemplars = {
          description = "Example points. Must be in increasing order of `value` field.",
          items = {
            ["$ref"] = "Exemplar",
          },
          type = "array",
        },
        explicitBuckets = {
          ["$ref"] = "ExplicitBuckets",
          description = "Buckets with arbitrary user-provided width.",
        },
        exponentialBuckets = {
          ["$ref"] = "ExponentialBuckets",
          description = "Buckets with exponentially growing width.",
        },
        linearBuckets = {
          ["$ref"] = "LinearBuckets",
          description = "Buckets with constant width.",
        },
        maximum = {
          description = "The maximum of the population of values. Ignored if `count` is zero.",
          format = "double",
          type = "number",
        },
        mean = {
          description = "The arithmetic mean of the samples in the distribution. If `count` is zero then this field must be zero.",
          format = "double",
          type = "number",
        },
        minimum = {
          description = "The minimum of the population of values. Ignored if `count` is zero.",
          format = "double",
          type = "number",
        },
        sumOfSquaredDeviation = {
          description = "The sum of squared deviations from the mean: Sum[i=1..count]((x_i - mean)^2) where each x_i is a sample values. If `count` is zero then this field must be zero, otherwise validation of the request fails.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Exemplar = {
      description = "Exemplars are example points that may be used to annotate aggregated distribution values. They are metadata that gives information about a particular value added to a Distribution bucket, such as a trace ID that was active when a value was added. They may contain further information, such as a example values and timestamps, origin, etc.",
      id = "Exemplar",
      properties = {
        attachments = {
          description = "Contextual information about the example value. Examples are: Trace: type.googleapis.com/google.monitoring.v3.SpanContext Literal string: type.googleapis.com/google.protobuf.StringValue Labels dropped during aggregation: type.googleapis.com/google.monitoring.v3.DroppedLabels There may be only a single attachment of any given message type in a single exemplar, and this is enforced by the system.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        timestamp = {
          description = "The observation (sampling) time of the above value.",
          format = "google-datetime",
          type = "string",
        },
        value = {
          description = "Value of the exemplar point. This value determines to which bucket the exemplar belongs.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ExplicitBuckets = {
      description = "Describing buckets with arbitrary user-provided width.",
      id = "ExplicitBuckets",
      properties = {
        bounds = {
          description = "'bound' is a list of strictly increasing boundaries between buckets. Note that a list of length N-1 defines N buckets because of fenceposting. See comments on `bucket_options` for details. The i'th finite bucket covers the interval [bound[i-1], bound[i]) where i ranges from 1 to bound_size() - 1. Note that there are no finite buckets at all if 'bound' only contains a single element; in that special case the single bound defines the boundary between the underflow and overflow buckets. bucket number lower bound upper bound i == 0 (underflow) -inf bound[i] 0 < i < bound_size() bound[i-1] bound[i] i == bound_size() (overflow) bound[i-1] +inf",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ExponentialBuckets = {
      description = "Describing buckets with exponentially growing width.",
      id = "ExponentialBuckets",
      properties = {
        growthFactor = {
          description = "The i'th exponential bucket covers the interval [scale * growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to num_finite_buckets inclusive. Must be larger than 1.0.",
          format = "double",
          type = "number",
        },
        numFiniteBuckets = {
          description = "The number of finite buckets. With the underflow and overflow buckets, the total number of buckets is `num_finite_buckets` + 2. See comments on `bucket_options` for details.",
          format = "int32",
          type = "integer",
        },
        scale = {
          description = "The i'th exponential bucket covers the interval [scale * growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to num_finite_buckets inclusive. Must be > 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    FirstPartyPrincipal = {
      description = "First party identity principal.",
      id = "FirstPartyPrincipal",
      properties = {
        principalEmail = {
          description = "The email address of a Google account. .",
          type = "string",
        },
        serviceMetadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Metadata about the service that uses the service account. .",
          type = "object",
        },
      },
      type = "object",
    },
    HttpRequest = {
      description = "A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.",
      id = "HttpRequest",
      properties = {
        cacheFillBytes = {
          description = "The number of HTTP response bytes inserted into cache. Set only when a cache fill was attempted.",
          format = "int64",
          type = "string",
        },
        cacheHit = {
          description = "Whether or not an entity was served from cache (with or without validation).",
          type = "boolean",
        },
        cacheLookup = {
          description = "Whether or not a cache lookup was attempted.",
          type = "boolean",
        },
        cacheValidatedWithOriginServer = {
          description = "Whether or not the response was validated with the origin server before being served from cache. This field is only meaningful if `cache_hit` is True.",
          type = "boolean",
        },
        latency = {
          description = "The request processing latency on the server, from the time the request was received until the response was sent.",
          format = "google-duration",
          type = "string",
        },
        protocol = {
          description = "Protocol used for the request. Examples: \"HTTP/1.1\", \"HTTP/2\", \"websocket\"",
          type = "string",
        },
        referer = {
          description = "The referer URL of the request, as defined in [HTTP/1.1 Header Field Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).",
          type = "string",
        },
        remoteIp = {
          description = "The IP address (IPv4 or IPv6) of the client that issued the HTTP request. Examples: `\"192.168.1.1\"`, `\"FE80::0202:B3FF:FE1E:8329\"`.",
          type = "string",
        },
        requestMethod = {
          description = "The request method. Examples: `\"GET\"`, `\"HEAD\"`, `\"PUT\"`, `\"POST\"`.",
          type = "string",
        },
        requestSize = {
          description = "The size of the HTTP request message in bytes, including the request headers and the request body.",
          format = "int64",
          type = "string",
        },
        requestUrl = {
          description = "The scheme (http, https), the host name, the path, and the query portion of the URL that was requested. Example: `\"http://example.com/some/info?color=red\"`.",
          type = "string",
        },
        responseSize = {
          description = "The size of the HTTP response message sent back to the client, in bytes, including the response headers and the response body.",
          format = "int64",
          type = "string",
        },
        serverIp = {
          description = "The IP address (IPv4 or IPv6) of the origin server that the request was sent to.",
          type = "string",
        },
        status = {
          description = "The response code indicating the status of the response. Examples: 200, 404.",
          format = "int32",
          type = "integer",
        },
        userAgent = {
          description = "The user agent sent by the client. Example: `\"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    LinearBuckets = {
      description = "Describing buckets with constant width.",
      id = "LinearBuckets",
      properties = {
        numFiniteBuckets = {
          description = "The number of finite buckets. With the underflow and overflow buckets, the total number of buckets is `num_finite_buckets` + 2. See comments on `bucket_options` for details.",
          format = "int32",
          type = "integer",
        },
        offset = {
          description = "The i'th linear bucket covers the interval [offset + (i-1) * width, offset + i * width) where i ranges from 1 to num_finite_buckets, inclusive.",
          format = "double",
          type = "number",
        },
        width = {
          description = "The i'th linear bucket covers the interval [offset + (i-1) * width, offset + i * width) where i ranges from 1 to num_finite_buckets, inclusive. Must be strictly positive.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    LogEntry = {
      description = "An individual log entry.",
      id = "LogEntry",
      properties = {
        httpRequest = {
          ["$ref"] = "HttpRequest",
          description = "Optional. Information about the HTTP request associated with this log entry, if applicable.",
        },
        insertId = {
          description = "A unique ID for the log entry used for deduplication. If omitted, the implementation will generate one based on operation_id.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of user-defined (key, value) data that provides additional information about the log entry.",
          type = "object",
        },
        name = {
          description = "Required. The log to which this log entry belongs. Examples: `\"syslog\"`, `\"book_log\"`.",
          type = "string",
        },
        operation = {
          ["$ref"] = "LogEntryOperation",
          description = "Optional. Information about an operation associated with the log entry, if applicable.",
        },
        protoPayload = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The log entry payload, represented as a protocol buffer that is expressed as a JSON object. The only accepted type currently is AuditLog.",
          type = "object",
        },
        severity = {
          description = "The severity of the log entry. The default value is `LogSeverity.DEFAULT`.",
          enum = {
            "DEFAULT",
            "DEBUG",
            "INFO",
            "NOTICE",
            "WARNING",
            "ERROR",
            "CRITICAL",
            "ALERT",
            "EMERGENCY",
          },
          enumDescriptions = {
            "(0) The log entry has no assigned severity level.",
            "(100) Debug or trace information.",
            "(200) Routine information, such as ongoing status or performance.",
            "(300) Normal but significant events, such as start up, shut down, or a configuration change.",
            "(400) Warning events might cause problems.",
            "(500) Error events are likely to cause problems.",
            "(600) Critical events cause more severe problems or outages.",
            "(700) A person must take an action immediately.",
            "(800) One or more systems are unusable.",
          },
          type = "string",
        },
        sourceLocation = {
          ["$ref"] = "LogEntrySourceLocation",
          description = "Optional. Source code location information associated with the log entry, if any.",
        },
        structPayload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The log entry payload, represented as a structure that is expressed as a JSON object.",
          type = "object",
        },
        textPayload = {
          description = "The log entry payload, represented as a Unicode string (UTF-8).",
          type = "string",
        },
        timestamp = {
          description = "The time the event described by the log entry occurred. If omitted, defaults to operation start time.",
          format = "google-datetime",
          type = "string",
        },
        trace = {
          description = "Optional. Resource name of the trace associated with the log entry, if any. If this field contains a relative resource name, you can assume the name is relative to `//tracing.googleapis.com`. Example: `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`",
          type = "string",
        },
      },
      type = "object",
    },
    LogEntryOperation = {
      description = "Additional information about a potentially long-running operation with which a log entry is associated.",
      id = "LogEntryOperation",
      properties = {
        first = {
          description = "Optional. Set this to True if this is the first log entry in the operation.",
          type = "boolean",
        },
        id = {
          description = "Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to be part of the same operation.",
          type = "string",
        },
        last = {
          description = "Optional. Set this to True if this is the last log entry in the operation.",
          type = "boolean",
        },
        producer = {
          description = "Optional. An arbitrary producer identifier. The combination of `id` and `producer` must be globally unique. Examples for `producer`: `\"MyDivision.MyBigCompany.com\"`, `\"github.com/MyProject/MyApplication\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    LogEntrySourceLocation = {
      description = "Additional information about the source code location that produced the log entry.",
      id = "LogEntrySourceLocation",
      properties = {
        file = {
          description = "Optional. Source file name. Depending on the runtime environment, this might be a simple name or a fully-qualified name.",
          type = "string",
        },
        ["function"] = {
          description = "Optional. Human-readable name of the function or method being invoked, with optional context such as the class or package name. This information may be used in contexts such as the logs viewer, where a file and line number are less meaningful. The format can vary by language. For example: `qual.if.ied.Class.method` (Java), `dir/package.func` (Go), `function` (Python).",
          type = "string",
        },
        line = {
          description = "Optional. Line within the source file. 1-based; 0 indicates no line number available.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MetricValue = {
      description = "Represents a single metric value.",
      id = "MetricValue",
      properties = {
        boolValue = {
          description = "A boolean value.",
          type = "boolean",
        },
        distributionValue = {
          ["$ref"] = "Distribution",
          description = "A distribution value.",
        },
        doubleValue = {
          description = "A double precision floating point value.",
          format = "double",
          type = "number",
        },
        endTime = {
          description = "The end of the time period over which this metric value's measurement applies. If not specified, google.api.servicecontrol.v1.Operation.end_time will be used.",
          format = "google-datetime",
          type = "string",
        },
        int64Value = {
          description = "A signed 64-bit integer value.",
          format = "int64",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels describing the metric value. See comments on google.api.servicecontrol.v1.Operation.labels for the overriding relationship. Note that this map must not contain monitored resource labels.",
          type = "object",
        },
        moneyValue = {
          ["$ref"] = "Money",
          description = "A money value.",
        },
        startTime = {
          description = "The start of the time period over which this metric value's measurement applies. The time period has different semantics for different metric types (cumulative, delta, and gauge). See the metric definition documentation in the service configuration for details. If not specified, google.api.servicecontrol.v1.Operation.start_time will be used.",
          format = "google-datetime",
          type = "string",
        },
        stringValue = {
          description = "A text string value.",
          type = "string",
        },
      },
      type = "object",
    },
    MetricValueSet = {
      description = "Represents a set of metric values in the same metric. Each metric value in the set should have a unique combination of start time, end time, and label values.",
      id = "MetricValueSet",
      properties = {
        metricName = {
          description = "The metric name defined in the service configuration.",
          type = "string",
        },
        metricValues = {
          description = "The values in this metric.",
          items = {
            ["$ref"] = "MetricValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Money = {
      description = "Represents an amount of money with its currency type.",
      id = "Money",
      properties = {
        currencyCode = {
          description = "The three-letter currency code defined in ISO 4217.",
          type = "string",
        },
        nanos = {
          description = "Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.",
          format = "int32",
          type = "integer",
        },
        units = {
          description = "The whole units of the amount. For example if `currencyCode` is `\"USD\"`, then 1 unit is one US dollar.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "Represents information regarding an operation.",
      id = "Operation",
      properties = {
        consumerId = {
          description = "Identity of the consumer who is using the service. This field should be filled in for the operations initiated by a consumer, but not for service-initiated operations that are not related to a specific consumer. - This can be in one of the following formats: - project:PROJECT_ID, - project`_`number:PROJECT_NUMBER, - projects/PROJECT_ID or PROJECT_NUMBER, - folders/FOLDER_NUMBER, - organizations/ORGANIZATION_NUMBER, - api`_`key:API_KEY.",
          type = "string",
        },
        endTime = {
          description = "End time of the operation. Required when the operation is used in ServiceController.Report, but optional when the operation is used in ServiceController.Check.",
          format = "google-datetime",
          type = "string",
        },
        importance = {
          description = "DO NOT USE. This is an experimental field.",
          enum = {
            "LOW",
            "HIGH",
            "DEBUG",
          },
          enumDescriptions = {
            "Allows data caching, batching, and aggregation. It provides higher performance with higher data loss risk.",
            "Disables data aggregation to minimize data loss. It is for operations that contains significant monetary value or audit trail. This feature only applies to the client libraries.",
            "Deprecated. Do not use. Disables data aggregation and enables additional validation logic. It should only be used during the onboarding process. It is only available to Google internal services, and the service must be approved by chemist-dev@google.com in order to use this level.",
          },
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels describing the operation. Only the following labels are allowed: - Labels describing monitored resources as defined in the service configuration. - Default labels of metric values. When specified, labels defined in the metric value override these default. - The following labels defined by Google Cloud Platform: - `cloud.googleapis.com/location` describing the location where the operation happened, - `servicecontrol.googleapis.com/user_agent` describing the user agent of the API request, - `servicecontrol.googleapis.com/service_agent` describing the service used to handle the API request (e.g. ESP), - `servicecontrol.googleapis.com/platform` describing the platform where the API is served, such as App Engine, Compute Engine, or Kubernetes Engine.",
          type = "object",
        },
        logEntries = {
          description = "Represents information to be logged.",
          items = {
            ["$ref"] = "LogEntry",
          },
          type = "array",
        },
        metricValueSets = {
          description = "Represents information about this operation. Each MetricValueSet corresponds to a metric defined in the service configuration. The data type used in the MetricValueSet must agree with the data type specified in the metric definition. Within a single operation, it is not allowed to have more than one MetricValue instances that have the same metric names and identical label value combinations. If a request has such duplicated MetricValue instances, the entire request is rejected with an invalid argument error.",
          items = {
            ["$ref"] = "MetricValueSet",
          },
          type = "array",
        },
        operationId = {
          description = "Identity of the operation. This must be unique within the scope of the service that generated the operation. If the service calls Check() and Report() on the same operation, the two calls should carry the same id. UUID version 4 is recommended, though not required. In scenarios where an operation is computed from existing information and an idempotent id is desirable for deduplication purpose, UUID version 5 is recommended. See RFC 4122 for details.",
          type = "string",
        },
        operationName = {
          description = "Fully qualified name of the operation. Reserved for future use.",
          type = "string",
        },
        quotaProperties = {
          ["$ref"] = "QuotaProperties",
          description = "Represents the properties needed for quota check. Applicable only if this operation is for a quota check request. If this is not specified, no quota check will be performed.",
        },
        resources = {
          description = "The resources that are involved in the operation. The maximum supported number of entries in this field is 100.",
          items = {
            ["$ref"] = "ResourceInfo",
          },
          type = "array",
        },
        startTime = {
          description = "Required. Start time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        traceSpans = {
          description = "Unimplemented. A list of Cloud Trace spans. The span names shall contain the id of the destination project which can be either the produce or the consumer project.",
          items = {
            ["$ref"] = "TraceSpan",
          },
          type = "array",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Private Preview. This feature is only available for approved services. User defined labels for the resource that this operation is associated with.",
          type = "object",
        },
      },
      type = "object",
    },
    OrgPolicyViolationInfo = {
      description = "Represents OrgPolicy Violation information.",
      id = "OrgPolicyViolationInfo",
      properties = {
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Optional. Resource payload that is currently in scope and is subjected to orgpolicy conditions. This payload may be the subset of the actual Resource that may come in the request. This payload should not contain any core content.",
          type = "object",
        },
        resourceTags = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Tags referenced on the resource at the time of evaluation. These also include the federated tags, if they are supplied in the CheckOrgPolicy or CheckCustomConstraints Requests. Optional field as of now. These tags are the Cloud tags that are available on the resource during the policy evaluation and will be available as part of the OrgPolicy check response for logging purposes.",
          type = "object",
        },
        resourceType = {
          description = "Optional. Resource type that the orgpolicy is checked against. Example: compute.googleapis.com/Instance, store.googleapis.com/bucket",
          type = "string",
        },
        violationInfo = {
          description = "Optional. Policy violations",
          items = {
            ["$ref"] = "ViolationInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Peer = {
      description = "This message defines attributes for a node that handles a network request. The node can be either a service or an application that sends, forwards, or receives the request. Service peers should fill in `principal` and `labels` as appropriate.",
      id = "Peer",
      properties = {
        ip = {
          description = "The IP address of the peer.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with the peer.",
          type = "object",
        },
        port = {
          description = "The network port of the peer.",
          format = "int64",
          type = "string",
        },
        principal = {
          description = "The identity of this peer. Similar to `Request.auth.principal`, but relative to the peer instead of the request. For example, the identity associated with a load balancer that forwarded the request.",
          type = "string",
        },
        regionCode = {
          description = "The CLDR country/region code associated with the above IP address. If the IP address is private, the `region_code` should reflect the physical location where this peer is running.",
          type = "string",
        },
      },
      type = "object",
    },
    PolicyViolationInfo = {
      description = "Information related to policy violations for this request.",
      id = "PolicyViolationInfo",
      properties = {
        orgPolicyViolationInfo = {
          ["$ref"] = "OrgPolicyViolationInfo",
          description = "Indicates the orgpolicy violations for this resource.",
        },
      },
      type = "object",
    },
    QuotaError = {
      description = "Represents error information for QuotaOperation.",
      id = "QuotaError",
      properties = {
        code = {
          description = "Error code.",
          enum = {
            "UNSPECIFIED",
            "RESOURCE_EXHAUSTED",
            "OUT_OF_RANGE",
            "BILLING_NOT_ACTIVE",
            "PROJECT_DELETED",
            "API_KEY_INVALID",
            "API_KEY_EXPIRED",
            "SPATULA_HEADER_INVALID",
            "LOAS_ROLE_INVALID",
            "NO_LOAS_PROJECT",
            "PROJECT_STATUS_UNAVAILABLE",
            "SERVICE_STATUS_UNAVAILABLE",
            "BILLING_STATUS_UNAVAILABLE",
            "QUOTA_SYSTEM_UNAVAILABLE",
          },
          enumDescriptions = {
            "This is never used.",
            "Quota allocation failed. Same as google.rpc.Code.RESOURCE_EXHAUSTED.",
            "Quota release failed. This error is ONLY returned on a NORMAL release. More formally: if a user requests a release of 10 tokens, but only 5 tokens were previously allocated, in a BEST_EFFORT release, this will be considered a success, 5 tokens will be released, and the result will be \"Ok\". If this is done in NORMAL mode, no tokens will be released, and an OUT_OF_RANGE error will be returned. Same as google.rpc.Code.OUT_OF_RANGE.",
            "Consumer cannot access the service because the service requires active billing.",
            "Consumer's project has been marked as deleted (soft deletion).",
            "Specified API key is invalid.",
            "Specified API Key has expired.",
            "Consumer's spatula header is invalid.",
            "The consumer's LOAS role is invalid.",
            "The consumer's LOAS role has no associated project.",
            "The backend server for looking up project id/number is unavailable.",
            "The backend server for checking service status is unavailable.",
            "The backend server for checking billing status is unavailable.",
            "The backend server for checking quota limits is unavailable.",
          },
          type = "string",
        },
        description = {
          description = "Free-form text that provides details on the cause of the error.",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "Contains additional information about the quota error. If available, `status.code` will be non zero.",
        },
        subject = {
          description = "Subject to whom this error applies. See the specific enum for more details on this field. For example, \"clientip:\" or \"project:\".",
          type = "string",
        },
      },
      type = "object",
    },
    QuotaInfo = {
      description = "Contains the quota information for a quota check response.",
      id = "QuotaInfo",
      properties = {
        limitExceeded = {
          description = "Quota Metrics that have exceeded quota limits. For QuotaGroup-based quota, this is QuotaGroup.name For QuotaLimit-based quota, this is QuotaLimit.name See: google.api.Quota Deprecated: Use quota_metrics to get per quota group limit exceeded status.",
          items = {
            type = "string",
          },
          type = "array",
        },
        quotaConsumed = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "Map of quota group name to the actual number of tokens consumed. If the quota check was not successful, then this will not be populated due to no quota consumption. We are not merging this field with 'quota_metrics' field because of the complexity of scaling in Chemist client code base. For simplicity, we will keep this field for Castor (that scales quota usage) and 'quota_metrics' for SuperQuota (that doesn't scale quota usage). ",
          type = "object",
        },
        quotaMetrics = {
          description = "Quota metrics to indicate the usage. Depending on the check request, one or more of the following metrics will be included: 1. For rate quota, per quota group or per quota metric incremental usage will be specified using the following delta metric: \"serviceruntime.googleapis.com/api/consumer/quota_used_count\" 2. For allocation quota, per quota metric total usage will be specified using the following gauge metric: \"serviceruntime.googleapis.com/allocation/consumer/quota_used_count\" 3. For both rate quota and allocation quota, the quota limit reached condition will be specified using the following boolean metric: \"serviceruntime.googleapis.com/quota/exceeded\"",
          items = {
            ["$ref"] = "MetricValueSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    QuotaOperation = {
      description = "Represents information regarding a quota operation.",
      id = "QuotaOperation",
      properties = {
        consumerId = {
          description = "Identity of the consumer for whom this quota operation is being performed. This can be in one of the following formats: project:, project_number:, api_key:.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels describing the operation.",
          type = "object",
        },
        methodName = {
          description = "Fully qualified name of the API method for which this quota operation is requested. This name is used for matching quota rules or metric rules and billing status rules defined in service configuration. This field should not be set if any of the following is true: (1) the quota operation is performed on non-API resources. (2) quota_metrics is set because the caller is doing quota override. Example of an RPC method name: google.example.library.v1.LibraryService.CreateShelf",
          type = "string",
        },
        operationId = {
          description = "Identity of the operation. For Allocation Quota, this is expected to be unique within the scope of the service that generated the operation, and guarantees idempotency in case of retries. In order to ensure best performance and latency in the Quota backends, operation_ids are optimally associated with time, so that related operations can be accessed fast in storage. For this reason, the recommended token for services that intend to operate at a high QPS is Unix time in nanos + UUID",
          type = "string",
        },
        quotaMetrics = {
          description = "Represents information about this operation. Each MetricValueSet corresponds to a metric defined in the service configuration. The data type used in the MetricValueSet must agree with the data type specified in the metric definition. Within a single operation, it is not allowed to have more than one MetricValue instances that have the same metric names and identical label value combinations. If a request has such duplicated MetricValue instances, the entire request is rejected with an invalid argument error. This field is mutually exclusive with method_name.",
          items = {
            ["$ref"] = "MetricValueSet",
          },
          type = "array",
        },
        quotaMode = {
          description = "Quota mode for this operation.",
          enum = {
            "UNSPECIFIED",
            "NORMAL",
            "BEST_EFFORT",
            "CHECK_ONLY",
            "ADJUST_ONLY",
          },
          enumDescriptions = {
            "Guard against implicit default. Must not be used.",
            "For AllocateQuota request, allocates quota for the amount specified in the service configuration or specified using the quota metrics. If the amount is higher than the available quota, allocation error will be returned and no quota will be allocated. If multiple quotas are part of the request, and one fails, none of the quotas are allocated or released.",
            "The operation allocates quota for the amount specified in the service configuration or specified using the quota metrics. If the amount is higher than the available quota, request does not fail but all available quota will be allocated. For rate quota, BEST_EFFORT will continue to deduct from other groups even if one does not have enough quota. For allocation, it will find the minimum available amount across all groups and deduct that amount from all the affected groups.",
            "For AllocateQuota request, only checks if there is enough quota available and does not change the available quota. No lock is placed on the available quota either.",
            "The operation allocates quota for the amount specified in the service configuration or specified using the quota metrics. If the requested amount is higher than the available quota, request does not fail and remaining quota would become negative (going over the limit). Not supported for Rate Quota.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    QuotaProperties = {
      description = "Represents the properties needed for quota operations.",
      id = "QuotaProperties",
      properties = {
        quotaMode = {
          description = "Quota mode for this operation.",
          enum = {
            "ACQUIRE",
            "ACQUIRE_BEST_EFFORT",
            "CHECK",
          },
          enumDescriptions = {
            "Decreases available quota by the cost specified for the operation. If cost is higher than available quota, operation fails and returns error.",
            "Decreases available quota by the cost specified for the operation. If cost is higher than available quota, operation does not fail and available quota goes down to zero but it returns error.",
            "Does not change any available quota. Only checks if there is enough quota. No lock is placed on the checked tokens neither.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReportError = {
      description = "Represents the processing error of one Operation in the request.",
      id = "ReportError",
      properties = {
        operationId = {
          description = "The Operation.operation_id value from the request.",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "Details of the error when processing the Operation.",
        },
      },
      type = "object",
    },
    ReportRequest = {
      description = "Request message for the Report method.",
      id = "ReportRequest",
      properties = {
        operations = {
          description = "Operations to be reported. Typically the service should report one operation per request. Putting multiple operations into a single request is allowed, but should be used only when multiple operations are natually available at the time of the report. There is no limit on the number of operations in the same ReportRequest, however the ReportRequest size should be no larger than 1MB. See ReportResponse.report_errors for partial failure behavior.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
        serviceConfigId = {
          description = "Specifies which version of service config should be used to process the request. If unspecified or no matching version can be found, the latest one will be used.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportResponse = {
      description = "Response message for the Report method.",
      id = "ReportResponse",
      properties = {
        reportErrors = {
          description = "Partial failures, one for each `Operation` in the request that failed processing. There are three possible combinations of the RPC status: 1. The combination of a successful RPC status and an empty `report_errors` list indicates a complete success where all `Operations` in the request are processed successfully. 2. The combination of a successful RPC status and a non-empty `report_errors` list indicates a partial success where some `Operations` in the request succeeded. Each `Operation` that failed processing has a corresponding item in this list. 3. A failed RPC status indicates a general non-deterministic failure. When this happens, it's impossible to know which of the 'Operations' in the request succeeded or failed.",
          items = {
            ["$ref"] = "ReportError",
          },
          type = "array",
        },
        serviceConfigId = {
          description = "The actual config id used to process the request.",
          type = "string",
        },
        serviceRolloutId = {
          description = "The current service rollout id used to process the request.",
          type = "string",
        },
      },
      type = "object",
    },
    Request = {
      description = "This message defines attributes for an HTTP request. If the actual request is not an HTTP request, the runtime system should try to map the actual request to an equivalent HTTP request.",
      id = "Request",
      properties = {
        auth = {
          ["$ref"] = "Auth",
          description = "The request authentication. May be absent for unauthenticated requests. Derived from the HTTP request `Authorization` header or equivalent.",
        },
        headers = {
          additionalProperties = {
            type = "string",
          },
          description = "The HTTP request headers. If multiple headers share the same key, they must be merged according to the HTTP spec. All header keys must be lowercased, because HTTP header keys are case-insensitive.",
          type = "object",
        },
        host = {
          description = "The HTTP request `Host` header value.",
          type = "string",
        },
        id = {
          description = "The unique ID for a request, which can be propagated to downstream systems. The ID should have low probability of collision within a single day for a specific service.",
          type = "string",
        },
        method = {
          description = "The HTTP request method, such as `GET`, `POST`.",
          type = "string",
        },
        path = {
          description = "The HTTP URL path, excluding the query parameters.",
          type = "string",
        },
        protocol = {
          description = "The network protocol used with the request, such as \"http/1.1\", \"spdy/3\", \"h2\", \"h2c\", \"webrtc\", \"tcp\", \"udp\", \"quic\". See https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids for details.",
          type = "string",
        },
        query = {
          description = "The HTTP URL query in the format of `name1=value1&name2=value2`, as it appears in the first line of the HTTP request. No decoding is performed.",
          type = "string",
        },
        reason = {
          description = "A special parameter for request reason. It is used by security systems to associate auditing information with a request.",
          type = "string",
        },
        scheme = {
          description = "The HTTP URL scheme, such as `http` and `https`.",
          type = "string",
        },
        size = {
          description = "The HTTP request size in bytes. If unknown, it must be -1.",
          format = "int64",
          type = "string",
        },
        time = {
          description = "The timestamp when the `destination` service receives the last byte of the request.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    RequestMetadata = {
      description = "Metadata about the request.",
      id = "RequestMetadata",
      properties = {
        callerIp = {
          description = "The IP address of the caller. For a caller from the internet, this will be the public IPv4 or IPv6 address. For calls made from inside Google's internal production network from one GCP service to another, `caller_ip` will be redacted to \"private\". For a caller from a Compute Engine VM with a external IP address, `caller_ip` will be the VM's external IP address. For a caller from a Compute Engine VM without a external IP address, if the VM is in the same organization (or project) as the accessed resource, `caller_ip` will be the VM's internal IPv4 address, otherwise `caller_ip` will be redacted to \"gce-internal-ip\". See https://cloud.google.com/compute/docs/vpc/ for more information.",
          type = "string",
        },
        callerNetwork = {
          description = "The network of the caller. Set only if the network host project is part of the same GCP organization (or project) as the accessed resource. See https://cloud.google.com/compute/docs/vpc/ for more information. This is a scheme-less URI full resource name. For example: \"//compute.googleapis.com/projects/PROJECT_ID/global/networks/NETWORK_ID\"",
          type = "string",
        },
        callerSuppliedUserAgent = {
          description = "The user agent of the caller. This information is not authenticated and should be treated accordingly. For example: + `google-api-python-client/1.4.0`: The request was made by the Google API client for Python. + `Cloud SDK Command Line Tool apitools-client/1.0 gcloud/0.9.62`: The request was made by the Google Cloud SDK CLI (gcloud). + `AppEngine-Google; (+http://code.google.com/appengine; appid: s~my-project`: The request was made from the `my-project` App Engine app.",
          type = "string",
        },
        destinationAttributes = {
          ["$ref"] = "Peer",
          description = "The destination of a network activity, such as accepting a TCP connection. In a multi hop network activity, the destination represents the receiver of the last hop. Only two fields are used in this message, Peer.port and Peer.ip. These fields are optionally populated by those services utilizing the IAM condition feature.",
        },
        requestAttributes = {
          ["$ref"] = "Request",
          description = "Request attributes used in IAM condition evaluation. This field contains request attributes like request time and access levels associated with the request. To get the whole view of the attributes used in IAM condition evaluation, the user must also look into `AuditLog.authentication_info.resource_attributes`.",
        },
      },
      type = "object",
    },
    Resource = {
      description = "This message defines core attributes for a resource. A resource is an addressable (named) entity provided by the destination service. For example, a file stored on a network storage service.",
      id = "Resource",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Annotations is an unstructured key-value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https://kubernetes.io/docs/user-guide/annotations",
          type = "object",
        },
        createTime = {
          description = "Output only. The timestamp when the resource was created. This may be either the time creation was initiated or when it was completed.",
          format = "google-datetime",
          type = "string",
        },
        deleteTime = {
          description = "Output only. The timestamp when the resource was deleted. If the resource is not deleted, this must be empty.",
          format = "google-datetime",
          type = "string",
        },
        displayName = {
          description = "Mutable. The display name set by clients. Must be <= 63 characters.",
          type = "string",
        },
        etag = {
          description = "Output only. An opaque value that uniquely identifies a version or generation of a resource. It can be used to confirm that the client and server agree on the ordering of a resource being written.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels or tags on the resource, such as AWS resource tags and Kubernetes resource labels.",
          type = "object",
        },
        location = {
          description = "Immutable. The location of the resource. The location encoding is specific to the service provider, and new encoding may be introduced as the service evolves. For Google Cloud products, the encoding is what is used by Google Cloud APIs, such as `us-east1`, `aws-us-east-1`, and `azure-eastus2`. The semantics of `location` is identical to the `cloud.googleapis.com/location` label used by some Google Cloud APIs.",
          type = "string",
        },
        name = {
          description = "The stable identifier (name) of a resource on the `service`. A resource can be logically identified as \"//{resource.service}/{resource.name}\". The differences between a resource name and a URI are: * Resource name is a logical identifier, independent of network protocol and API version. For example, `//pubsub.googleapis.com/projects/123/topics/news-feed`. * URI often includes protocol and version information, so it can be used directly by applications. For example, `https://pubsub.googleapis.com/v1/projects/123/topics/news-feed`. See https://cloud.google.com/apis/design/resource_names for details.",
          type = "string",
        },
        service = {
          description = "The name of the service that this resource belongs to, such as `pubsub.googleapis.com`. The service may be different from the DNS hostname that actually serves the request.",
          type = "string",
        },
        type = {
          description = "The type of the resource. The syntax is platform-specific because different platforms define their resources differently. For Google APIs, the type format must be \"{service}/{kind}\", such as \"pubsub.googleapis.com/Topic\".",
          type = "string",
        },
        uid = {
          description = "The unique identifier of the resource. UID is unique in the time and space for this resource within the scope of the service. It is typically generated by the server on successful creation of a resource and must not be changed. UID is used to uniquely identify resources with resource name reuses. This should be a UUID4.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was last updated. Any change to the resource made by users must refresh this value. Changes to a resource made by the service should refresh this value.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceInfo = {
      description = "Describes a resource associated with this operation.",
      id = "ResourceInfo",
      properties = {
        permission = {
          description = "The resource permission required for this request.",
          type = "string",
        },
        resourceContainer = {
          description = "The identifier of the parent of this resource instance. Must be in one of the following formats: - `projects/` - `folders/` - `organizations/`",
          type = "string",
        },
        resourceLocation = {
          description = "The location of the resource. If not empty, the resource will be checked against location policy. The value must be a valid zone, region or multiregion. For example: \"europe-west4\" or \"northamerica-northeast1-a\"",
          type = "string",
        },
        resourceName = {
          description = "Name of the resource. This is used for auditing purposes.",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceLocation = {
      description = "Location information about a resource.",
      id = "ResourceLocation",
      properties = {
        currentLocations = {
          description = "The locations of a resource after the execution of the operation. Requests to create or delete a location based resource must populate the 'current_locations' field and not the 'original_locations' field. For example: \"europe-west1-a\" \"us-east1\" \"nam3\"",
          items = {
            type = "string",
          },
          type = "array",
        },
        originalLocations = {
          description = "The locations of a resource prior to the execution of the operation. Requests that mutate the resource's location must populate both the 'original_locations' as well as the 'current_locations' fields. For example: \"europe-west1-a\" \"us-east1\" \"nam3\"",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ServiceAccountDelegationInfo = {
      description = "Identity delegation history of an authenticated service account.",
      id = "ServiceAccountDelegationInfo",
      properties = {
        firstPartyPrincipal = {
          ["$ref"] = "FirstPartyPrincipal",
          description = "First party (Google) identity as the real authority.",
        },
        principalSubject = {
          description = "A string representing the principal_subject associated with the identity. For most identities, the format will be `principal://iam.googleapis.com/{identity pool name}/subject/{subject)` except for some GKE identities (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy format `serviceAccount:{identity pool name}[{subject}]`",
          type = "string",
        },
        thirdPartyPrincipal = {
          ["$ref"] = "ThirdPartyPrincipal",
          description = "Third party identity as the real authority.",
        },
      },
      type = "object",
    },
    SpanContext = {
      description = "The context of a span. This is attached to an Exemplar in Distribution values during aggregation. It contains the name of a span with format: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]",
      id = "SpanContext",
      properties = {
        spanName = {
          description = "The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID] `[TRACE_ID]` is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. `[SPAN_ID]` is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array.",
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
    ThirdPartyPrincipal = {
      description = "Third party identity principal.",
      id = "ThirdPartyPrincipal",
      properties = {
        thirdPartyClaims = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Metadata about third party identity.",
          type = "object",
        },
      },
      type = "object",
    },
    TraceSpan = {
      description = "A span represents a single operation within a trace. Spans can be nested to form a trace tree. Often, a trace contains a root span that describes the end-to-end latency, and one or more subspans for its sub-operations. A trace can also contain multiple root spans, or none at all. Spans do not need to be contiguous—there may be gaps or overlaps between spans in a trace.",
      id = "TraceSpan",
      properties = {
        attributes = {
          ["$ref"] = "Attributes",
          description = "A set of attributes on the span. You can have up to 32 attributes per span.",
        },
        childSpanCount = {
          description = "An optional number of child spans that were generated while this span was active. If set, allows implementation to detect missing child spans.",
          format = "int32",
          type = "integer",
        },
        displayName = {
          ["$ref"] = "TruncatableString",
          description = "A description of the span's operation (up to 128 bytes). Stackdriver Trace displays the description in the Google Cloud Platform Console. For example, the display name can be a qualified method name or a file name and a line number where the operation is called. A best practice is to use the same display name within an application and at the same call point. This makes it easier to correlate spans in different traces.",
        },
        endTime = {
          description = "The end time of the span. On the client side, this is the time kept by the local machine where the span execution ends. On the server side, this is the time when the server application handler stops running.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The resource name of the span in the following format: projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/SPAN_ID is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. [SPAN_ID] is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array.",
          type = "string",
        },
        parentSpanId = {
          description = "The [SPAN_ID] of this span's parent span. If this is a root span, then this field must be empty.",
          type = "string",
        },
        sameProcessAsParentSpan = {
          description = "(Optional) Set this parameter to indicate whether this span is in the same process as its parent. If you do not set this parameter, Stackdriver Trace is unable to take advantage of this helpful information.",
          type = "boolean",
        },
        spanId = {
          description = "The [SPAN_ID] portion of the span's resource name.",
          type = "string",
        },
        spanKind = {
          description = "Distinguishes between spans generated in a particular context. For example, two spans with the same name may be distinguished using `CLIENT` (caller) and `SERVER` (callee) to identify an RPC call.",
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
        startTime = {
          description = "The start time of the span. On the client side, this is the time kept by the local machine where the span execution starts. On the server side, this is the time when the server's application handler starts running.",
          format = "google-datetime",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "An optional final status for this span.",
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
    V1HttpRequest = {
      description = "A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.",
      id = "V1HttpRequest",
      properties = {
        cacheFillBytes = {
          description = "The number of HTTP response bytes inserted into cache. Set only when a cache fill was attempted.",
          format = "int64",
          type = "string",
        },
        cacheHit = {
          description = "Whether or not an entity was served from cache (with or without validation).",
          type = "boolean",
        },
        cacheLookup = {
          description = "Whether or not a cache lookup was attempted.",
          type = "boolean",
        },
        cacheValidatedWithOriginServer = {
          description = "Whether or not the response was validated with the origin server before being served from cache. This field is only meaningful if `cache_hit` is True.",
          type = "boolean",
        },
        latency = {
          description = "The request processing latency on the server, from the time the request was received until the response was sent.",
          format = "google-duration",
          type = "string",
        },
        protocol = {
          description = "Protocol used for the request. Examples: \"HTTP/1.1\", \"HTTP/2\", \"websocket\"",
          type = "string",
        },
        referer = {
          description = "The referer URL of the request, as defined in [HTTP/1.1 Header Field Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).",
          type = "string",
        },
        remoteIp = {
          description = "The IP address (IPv4 or IPv6) of the client that issued the HTTP request. Examples: `\"192.168.1.1\"`, `\"FE80::0202:B3FF:FE1E:8329\"`.",
          type = "string",
        },
        requestMethod = {
          description = "The request method. Examples: `\"GET\"`, `\"HEAD\"`, `\"PUT\"`, `\"POST\"`.",
          type = "string",
        },
        requestSize = {
          description = "The size of the HTTP request message in bytes, including the request headers and the request body.",
          format = "int64",
          type = "string",
        },
        requestUrl = {
          description = "The scheme (http, https), the host name, the path, and the query portion of the URL that was requested. Example: `\"http://example.com/some/info?color=red\"`.",
          type = "string",
        },
        responseSize = {
          description = "The size of the HTTP response message sent back to the client, in bytes, including the response headers and the response body.",
          format = "int64",
          type = "string",
        },
        serverIp = {
          description = "The IP address (IPv4 or IPv6) of the origin server that the request was sent to.",
          type = "string",
        },
        status = {
          description = "The response code indicating the status of the response. Examples: 200, 404.",
          format = "int32",
          type = "integer",
        },
        userAgent = {
          description = "The user agent sent by the client. Example: `\"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    V1LogEntry = {
      description = "An individual log entry.",
      id = "V1LogEntry",
      properties = {
        httpRequest = {
          ["$ref"] = "V1HttpRequest",
          description = "Optional. Information about the HTTP request associated with this log entry, if applicable.",
        },
        insertId = {
          description = "A unique ID for the log entry used for deduplication. If omitted, the implementation will generate one based on operation_id.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of user-defined (key, value) data that provides additional information about the log entry.",
          type = "object",
        },
        monitoredResourceLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of user-defined (key, value) data that provides additional information about the moniotored resource that the log entry belongs to.",
          type = "object",
        },
        name = {
          description = "Required. The log to which this log entry belongs. Examples: `\"syslog\"`, `\"book_log\"`.",
          type = "string",
        },
        operation = {
          ["$ref"] = "V1LogEntryOperation",
          description = "Optional. Information about an operation associated with the log entry, if applicable.",
        },
        protoPayload = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The log entry payload, represented as a protocol buffer that is expressed as a JSON object. The only accepted type currently is AuditLog.",
          type = "object",
        },
        severity = {
          description = "The severity of the log entry. The default value is `LogSeverity.DEFAULT`.",
          enum = {
            "DEFAULT",
            "DEBUG",
            "INFO",
            "NOTICE",
            "WARNING",
            "ERROR",
            "CRITICAL",
            "ALERT",
            "EMERGENCY",
          },
          enumDescriptions = {
            "(0) The log entry has no assigned severity level.",
            "(100) Debug or trace information.",
            "(200) Routine information, such as ongoing status or performance.",
            "(300) Normal but significant events, such as start up, shut down, or a configuration change.",
            "(400) Warning events might cause problems.",
            "(500) Error events are likely to cause problems.",
            "(600) Critical events cause more severe problems or outages.",
            "(700) A person must take an action immediately.",
            "(800) One or more systems are unusable.",
          },
          type = "string",
        },
        sourceLocation = {
          ["$ref"] = "V1LogEntrySourceLocation",
          description = "Optional. Source code location information associated with the log entry, if any.",
        },
        structPayload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The log entry payload, represented as a structure that is expressed as a JSON object.",
          type = "object",
        },
        textPayload = {
          description = "The log entry payload, represented as a Unicode string (UTF-8).",
          type = "string",
        },
        timestamp = {
          description = "The time the event described by the log entry occurred. If omitted, defaults to operation start time.",
          format = "google-datetime",
          type = "string",
        },
        trace = {
          description = "Optional. Resource name of the trace associated with the log entry, if any. If this field contains a relative resource name, you can assume the name is relative to `//tracing.googleapis.com`. Example: `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`",
          type = "string",
        },
      },
      type = "object",
    },
    V1LogEntryOperation = {
      description = "Additional information about a potentially long-running operation with which a log entry is associated.",
      id = "V1LogEntryOperation",
      properties = {
        first = {
          description = "Optional. Set this to True if this is the first log entry in the operation.",
          type = "boolean",
        },
        id = {
          description = "Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to be part of the same operation.",
          type = "string",
        },
        last = {
          description = "Optional. Set this to True if this is the last log entry in the operation.",
          type = "boolean",
        },
        producer = {
          description = "Optional. An arbitrary producer identifier. The combination of `id` and `producer` must be globally unique. Examples for `producer`: `\"MyDivision.MyBigCompany.com\"`, `\"github.com/MyProject/MyApplication\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    V1LogEntrySourceLocation = {
      description = "Additional information about the source code location that produced the log entry.",
      id = "V1LogEntrySourceLocation",
      properties = {
        file = {
          description = "Optional. Source file name. Depending on the runtime environment, this might be a simple name or a fully-qualified name.",
          type = "string",
        },
        ["function"] = {
          description = "Optional. Human-readable name of the function or method being invoked, with optional context such as the class or package name. This information may be used in contexts such as the logs viewer, where a file and line number are less meaningful. The format can vary by language. For example: `qual.if.ied.Class.method` (Java), `dir/package.func` (Go), `function` (Python).",
          type = "string",
        },
        line = {
          description = "Optional. Line within the source file. 1-based; 0 indicates no line number available.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ViolationInfo = {
      description = "Provides information about the Policy violation info for this request.",
      id = "ViolationInfo",
      properties = {
        checkedValue = {
          description = "Optional. Value that is being checked for the policy. This could be in encrypted form (if pii sensitive). This field will only be emitted in LIST_POLICY types",
          type = "string",
        },
        constraint = {
          description = "Optional. Constraint name",
          type = "string",
        },
        errorMessage = {
          description = "Optional. Error message that policy is indicating.",
          type = "string",
        },
        policyType = {
          description = "Optional. Indicates the type of the policy.",
          enum = {
            "POLICY_TYPE_UNSPECIFIED",
            "BOOLEAN_CONSTRAINT",
            "LIST_CONSTRAINT",
            "CUSTOM_CONSTRAINT",
          },
          enumDescriptions = {
            "Default value. This value should not be used.",
            "Indicates boolean policy constraint",
            "Indicates list policy constraint",
            "Indicates custom policy constraint",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Service Control API",
  version = "v1",
  version_module = true,
}
