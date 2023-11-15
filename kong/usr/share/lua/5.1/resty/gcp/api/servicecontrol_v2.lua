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
  id = "servicecontrol:v2",
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
        check = {
          description = "Private Preview. This feature is only available for approved services. This method provides admission control for services that are integrated with [Service Infrastructure](https://cloud.google.com/service-infrastructure). It checks whether an operation should be allowed based on the service configuration and relevant policies. It must be called before the operation is executed. For more information, see [Admission Control](https://cloud.google.com/service-infrastructure/docs/admission-control). NOTE: The admission control has an expected policy propagation delay of 60s. The caller **must** not depend on the most recent policy changes. NOTE: The admission control has a hard limit of 1 referenced resources per call. If an operation refers to more than 1 resources, the caller must call the Check method multiple times. This method requires the `servicemanagement.services.check` permission on the specified service. For more information, see [Service Control API Access Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).",
          flatPath = "v2/services/{serviceName}:check",
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
          path = "v2/services/{serviceName}:check",
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
          description = "Private Preview. This feature is only available for approved services. This method provides telemetry reporting for services that are integrated with [Service Infrastructure](https://cloud.google.com/service-infrastructure). It reports a list of operations that have occurred on a service. It must be called after the operations have been executed. For more information, see [Telemetry Reporting](https://cloud.google.com/service-infrastructure/docs/telemetry-reporting). NOTE: The telemetry reporting has a hard limit of 1000 operations and 1MB per Report call. It is recommended to have no more than 100 operations per call. This method requires the `servicemanagement.services.report` permission on the specified service. For more information, see [Service Control API Access Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).",
          flatPath = "v2/services/{serviceName}:report",
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
          path = "v2/services/{serviceName}:report",
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
    Api = {
      description = "This message defines attributes associated with API operations, such as a network API request. The terminology is based on the conventions used by Google APIs, Istio, and OpenAPI.",
      id = "Api",
      properties = {
        operation = {
          description = "The API operation name. For gRPC requests, it is the fully qualified API method name, such as \"google.pubsub.v1.Publisher.Publish\". For OpenAPI requests, it is the `operationId`, such as \"getPet\".",
          type = "string",
        },
        protocol = {
          description = "The API protocol used for sending the request, such as \"http\", \"https\", \"grpc\", or \"internal\".",
          type = "string",
        },
        service = {
          description = "The API service name. It is a logical identifier for a networked API, such as \"pubsub.googleapis.com\". The naming syntax depends on the API management system being used for handling the request.",
          type = "string",
        },
        version = {
          description = "The API version associated with the API operation above, such as \"v1\" or \"v1alpha1\".",
          type = "string",
        },
      },
      type = "object",
    },
    AttributeContext = {
      description = "This message defines the standard attribute vocabulary for Google APIs. An attribute is a piece of metadata that describes an activity on a network service. For example, the size of an HTTP request, or the status code of an HTTP response. Each attribute has a type and a name, which is logically defined as a proto message field in `AttributeContext`. The field type becomes the attribute type, and the field path becomes the attribute name. For example, the attribute `source.ip` maps to field `AttributeContext.source.ip`. This message definition is guaranteed not to have any wire breaking change. So you can use it directly for passing attributes across different systems. NOTE: Different system may generate different subset of attributes. Please verify the system specification before relying on an attribute generated a system.",
      id = "AttributeContext",
      properties = {
        api = {
          ["$ref"] = "Api",
          description = "Represents an API operation that is involved to a network activity.",
        },
        destination = {
          ["$ref"] = "Peer",
          description = "The destination of a network activity, such as accepting a TCP connection. In a multi hop network activity, the destination represents the receiver of the last hop.",
        },
        extensions = {
          description = "Supports extensions for advanced use cases, such as logs and metrics.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        origin = {
          ["$ref"] = "Peer",
          description = "The origin of a network activity. In a multi hop network activity, the origin represents the sender of the first hop. For the first hop, the `source` and the `origin` must have the same content.",
        },
        request = {
          ["$ref"] = "Request",
          description = "Represents a network request, such as an HTTP request.",
        },
        resource = {
          ["$ref"] = "Resource",
          description = "Represents a target resource that is involved with a network activity. If multiple resources are involved with an activity, this must be the primary one.",
        },
        response = {
          ["$ref"] = "Response",
          description = "Represents a network response, such as an HTTP response.",
        },
        source = {
          ["$ref"] = "Peer",
          description = "The source of a network activity, such as starting a TCP connection. In a multi hop network activity, the source represents the sender of the last hop.",
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
    CheckRequest = {
      description = "Request message for the Check method.",
      id = "CheckRequest",
      properties = {
        attributes = {
          ["$ref"] = "AttributeContext",
          description = "Describes attributes about the operation being executed by the service.",
        },
        flags = {
          description = "Optional. Contains a comma-separated list of flags.",
          type = "string",
        },
        resources = {
          description = "Describes the resources and the policies applied to each resource.",
          items = {
            ["$ref"] = "ResourceInfo",
          },
          type = "array",
        },
        serviceConfigId = {
          description = "Specifies the version of the service configuration that should be used to process the request. Must not be empty. Set this field to 'latest' to specify using the latest configuration.",
          type = "string",
        },
      },
      type = "object",
    },
    CheckResponse = {
      description = "Response message for the Check method.",
      id = "CheckResponse",
      properties = {
        headers = {
          additionalProperties = {
            type = "string",
          },
          description = "Returns a set of request contexts generated from the `CheckRequest`.",
          type = "object",
        },
        status = {
          ["$ref"] = "Status",
          description = "Operation is allowed when this field is not set. Any non-'OK' status indicates a denial; google.rpc.Status.details would contain additional details about the denial.",
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
    ReportRequest = {
      description = "Request message for the Report method.",
      id = "ReportRequest",
      properties = {
        operations = {
          description = "Describes the list of operations to be reported. Each operation is represented as an AttributeContext, and contains all attributes around an API access.",
          items = {
            ["$ref"] = "AttributeContext",
          },
          type = "array",
        },
        serviceConfigId = {
          description = "Specifies the version of the service configuration that should be used to process the request. Must not be empty. Set this field to 'latest' to specify using the latest configuration.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportResponse = {
      description = "Response message for the Report method. If the request contains any invalid data, the server returns an RPC error.",
      id = "ReportResponse",
      properties = {},
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
      description = "Describes a resource referenced in the request.",
      id = "ResourceInfo",
      properties = {
        container = {
          description = "Optional. The identifier of the container of this resource. For Google Cloud APIs, the resource container must be one of the following formats: - `projects/` - `folders/` - `organizations/` For the policy enforcement on the container level (VPCSC and Location Policy check), this field takes precedence on the container extracted from name when presents.",
          type = "string",
        },
        location = {
          description = "Optional. The location of the resource. The value must be a valid zone, region or multiregion. For example: \"europe-west4\" or \"northamerica-northeast1-a\"",
          type = "string",
        },
        name = {
          description = "The name of the resource referenced in the request.",
          type = "string",
        },
        permission = {
          description = "The resource permission needed for this request. The format must be \"{service}/{plural}.{verb}\".",
          type = "string",
        },
        type = {
          description = "The resource type in the format of \"{service}/{kind}\".",
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
    Response = {
      description = "This message defines attributes for a typical network response. It generally models semantics of an HTTP response.",
      id = "Response",
      properties = {
        backendLatency = {
          description = "The amount of time it takes the backend service to fully respond to a request. Measured from when the destination service starts to send the request to the backend until when the destination service receives the complete response from the backend.",
          format = "google-duration",
          type = "string",
        },
        code = {
          description = "The HTTP response status code, such as `200` and `404`.",
          format = "int64",
          type = "string",
        },
        headers = {
          additionalProperties = {
            type = "string",
          },
          description = "The HTTP response headers. If multiple headers share the same key, they must be merged according to HTTP spec. All header keys must be lowercased, because HTTP header keys are case-insensitive.",
          type = "object",
        },
        size = {
          description = "The HTTP response size in bytes. If unknown, it must be -1.",
          format = "int64",
          type = "string",
        },
        time = {
          description = "The timestamp when the `destination` service sends the last byte of the response.",
          format = "google-datetime",
          type = "string",
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
    V2HttpRequest = {
      description = "A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.",
      id = "V2HttpRequest",
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
    V2LogEntry = {
      description = "An individual log entry.",
      id = "V2LogEntry",
      properties = {
        httpRequest = {
          ["$ref"] = "V2HttpRequest",
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
          ["$ref"] = "V2LogEntryOperation",
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
          ["$ref"] = "V2LogEntrySourceLocation",
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
    V2LogEntryOperation = {
      description = "Additional information about a potentially long-running operation with which a log entry is associated.",
      id = "V2LogEntryOperation",
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
    V2LogEntrySourceLocation = {
      description = "Additional information about the source code location that produced the log entry.",
      id = "V2LogEntrySourceLocation",
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
  version = "v2",
  version_module = true,
}
