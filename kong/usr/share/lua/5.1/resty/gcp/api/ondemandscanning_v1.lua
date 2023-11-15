return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://ondemandscanning.googleapis.com/",
  batchPath = "batch",
  canonicalName = "On-Demand Scanning",
  description = "A service to scan container images for vulnerabilities.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/container-analysis/docs/on-demand-scanning/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "ondemandscanning:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://ondemandscanning.mtls.googleapis.com/",
  name = "ondemandscanning",
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
    projects = {
      resources = {
        locations = {
          resources = {
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "ondemandscanning.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "ondemandscanning.projects.locations.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "ondemandscanning.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "ondemandscanning.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                wait = {
                  description = "Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:wait",
                  httpMethod = "POST",
                  id = "ondemandscanning.projects.locations.operations.wait",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to wait on.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    timeout = {
                      description = "The maximum duration to wait before timing out. If left blank, the wait will be at most the time permitted by the underlying HTTP/RPC protocol. If RPC context deadline is also specified, the shorter one will be used.",
                      format = "google-duration",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:wait",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            scans = {
              methods = {
                analyzePackages = {
                  description = "Initiates an analysis of the provided packages.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/scans:analyzePackages",
                  httpMethod = "POST",
                  id = "ondemandscanning.projects.locations.scans.analyzePackages",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent of the resource for which analysis is requested. Format: projects/[project_name]/locations/[location]",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/scans:analyzePackages",
                  request = {
                    ["$ref"] = "AnalyzePackagesRequestV1",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                vulnerabilities = {
                  methods = {
                    list = {
                      description = "Lists vulnerabilities resulting from a successfully completed scan.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/scans/{scansId}/vulnerabilities",
                      httpMethod = "GET",
                      id = "ondemandscanning.projects.locations.scans.vulnerabilities.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The number of vulnerabilities to retrieve.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The page token, resulting from a previous call to ListVulnerabilities.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent of the collection of Vulnerabilities being requested. Format: projects/[project_name]/locations/[location]/scans/[scan_id]",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/scans/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/vulnerabilities",
                      response = {
                        ["$ref"] = "ListVulnerabilitiesResponseV1",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230109",
  rootUrl = "https://ondemandscanning.googleapis.com/",
  schemas = {
    AliasContext = {
      description = "An alias to a repo revision.",
      id = "AliasContext",
      properties = {
        kind = {
          description = "The alias kind.",
          enum = {
            "KIND_UNSPECIFIED",
            "FIXED",
            "MOVABLE",
            "OTHER",
          },
          enumDescriptions = {
            "Unknown.",
            "Git tag.",
            "Git branch.",
            "Used to specify non-standard aliases. For example, if a Git repo has a ref named \"refs/foo/bar\".",
          },
          type = "string",
        },
        name = {
          description = "The alias name.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalysisCompleted = {
      description = "Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.",
      id = "AnalysisCompleted",
      properties = {
        analysisType = {
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnalyzePackagesMetadata = {
      description = "AnalyzePackagesMetadata contains metadata for an active scan of a container image.",
      id = "AnalyzePackagesMetadata",
      properties = {
        createTime = {
          description = "When the scan was created.",
          format = "google-datetime",
          type = "string",
        },
        resourceUri = {
          description = "The resource URI of the container image being scanned.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzePackagesMetadataV1 = {
      description = "AnalyzePackagesMetadata contains metadata for an active scan of a container image.",
      id = "AnalyzePackagesMetadataV1",
      properties = {
        createTime = {
          description = "When the scan was created.",
          format = "google-datetime",
          type = "string",
        },
        resourceUri = {
          description = "The resource URI of the container image being scanned.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzePackagesRequestV1 = {
      description = "AnalyzePackagesRequest is the request to analyze a list of packages and create Vulnerability Occurrences for it.",
      id = "AnalyzePackagesRequestV1",
      properties = {
        includeOsvData = {
          description = "[DEPRECATED] Whether to include OSV data in the scan. For backwards compatibility reasons, this field can be neither removed nor renamed.",
          type = "boolean",
        },
        packages = {
          description = "The packages to analyze.",
          items = {
            ["$ref"] = "PackageData",
          },
          type = "array",
        },
        resourceUri = {
          description = "Required. The resource URI of the container image being scanned.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzePackagesResponse = {
      description = "AnalyzePackagesResponse contains the information necessary to find results for the given scan.",
      id = "AnalyzePackagesResponse",
      properties = {
        scan = {
          description = "The name of the scan resource created by this successful scan.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzePackagesResponseV1 = {
      description = "AnalyzePackagesResponse contains the information necessary to find results for the given scan.",
      id = "AnalyzePackagesResponseV1",
      properties = {
        scan = {
          description = "The name of the scan resource created by this successful scan.",
          type = "string",
        },
      },
      type = "object",
    },
    Artifact = {
      description = "Artifact describes a build product.",
      id = "Artifact",
      properties = {
        checksum = {
          description = "Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.",
          type = "string",
        },
        id = {
          description = "Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/imagename@sha256:123456`.",
          type = "string",
        },
        names = {
          description = "Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AttestationOccurrence = {
      description = "Occurrence that represents a single \"attestation\". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.",
      id = "AttestationOccurrence",
      properties = {
        jwts = {
          description = "One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the `serialized_payload` field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the `serialized_payload` SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `resource_uri` of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.",
          items = {
            ["$ref"] = "Jwt",
          },
          type = "array",
        },
        serializedPayload = {
          description = "Required. The serialized payload that is verified by one or more `signatures`.",
          format = "byte",
          type = "string",
        },
        signatures = {
          description = "One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.",
          items = {
            ["$ref"] = "Signature",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BuildOccurrence = {
      description = "Details of a build occurrence.",
      id = "BuildOccurrence",
      properties = {
        intotoProvenance = {
          ["$ref"] = "InTotoProvenance",
          description = "Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.",
        },
        intotoStatement = {
          ["$ref"] = "InTotoStatement",
          description = "In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence's envelope.",
        },
        provenance = {
          ["$ref"] = "BuildProvenance",
          description = "The actual provenance for the build.",
        },
        provenanceBytes = {
          description = "Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildProvenance = {
      description = "Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.",
      id = "BuildProvenance",
      properties = {
        buildOptions = {
          additionalProperties = {
            type = "string",
          },
          description = "Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.",
          type = "object",
        },
        builderVersion = {
          description = "Version string of the builder at the time this build was executed.",
          type = "string",
        },
        builtArtifacts = {
          description = "Output of the build.",
          items = {
            ["$ref"] = "Artifact",
          },
          type = "array",
        },
        commands = {
          description = "Commands requested by the build.",
          items = {
            ["$ref"] = "Command",
          },
          type = "array",
        },
        createTime = {
          description = "Time at which the build was created.",
          format = "google-datetime",
          type = "string",
        },
        creator = {
          description = "E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.",
          type = "string",
        },
        endTime = {
          description = "Time at which execution of the build was finished.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "Required. Unique identifier of the build.",
          type = "string",
        },
        logsUri = {
          description = "URI where any logs for this provenance were written.",
          type = "string",
        },
        projectId = {
          description = "ID of the project.",
          type = "string",
        },
        sourceProvenance = {
          ["$ref"] = "Source",
          description = "Details of the Source input to the build.",
        },
        startTime = {
          description = "Time at which execution of the build was started.",
          format = "google-datetime",
          type = "string",
        },
        triggerId = {
          description = "Trigger identifier if the build was triggered automatically; empty if not.",
          type = "string",
        },
      },
      type = "object",
    },
    BuilderConfig = {
      id = "BuilderConfig",
      properties = {
        id = {
          type = "string",
        },
      },
      type = "object",
    },
    CVSS = {
      description = "Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.",
      id = "CVSS",
      properties = {
        attackComplexity = {
          enum = {
            "ATTACK_COMPLEXITY_UNSPECIFIED",
            "ATTACK_COMPLEXITY_LOW",
            "ATTACK_COMPLEXITY_HIGH",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        attackVector = {
          description = "Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.",
          enum = {
            "ATTACK_VECTOR_UNSPECIFIED",
            "ATTACK_VECTOR_NETWORK",
            "ATTACK_VECTOR_ADJACENT",
            "ATTACK_VECTOR_LOCAL",
            "ATTACK_VECTOR_PHYSICAL",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        authentication = {
          enum = {
            "AUTHENTICATION_UNSPECIFIED",
            "AUTHENTICATION_MULTIPLE",
            "AUTHENTICATION_SINGLE",
            "AUTHENTICATION_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        availabilityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        baseScore = {
          description = "The base score is a function of the base metric scores.",
          format = "float",
          type = "number",
        },
        confidentialityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        exploitabilityScore = {
          format = "float",
          type = "number",
        },
        impactScore = {
          format = "float",
          type = "number",
        },
        integrityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        privilegesRequired = {
          enum = {
            "PRIVILEGES_REQUIRED_UNSPECIFIED",
            "PRIVILEGES_REQUIRED_NONE",
            "PRIVILEGES_REQUIRED_LOW",
            "PRIVILEGES_REQUIRED_HIGH",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        scope = {
          enum = {
            "SCOPE_UNSPECIFIED",
            "SCOPE_UNCHANGED",
            "SCOPE_CHANGED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        userInteraction = {
          enum = {
            "USER_INTERACTION_UNSPECIFIED",
            "USER_INTERACTION_NONE",
            "USER_INTERACTION_REQUIRED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Category = {
      description = "The category to which the update belongs.",
      id = "Category",
      properties = {
        categoryId = {
          description = "The identifier of the category.",
          type = "string",
        },
        name = {
          description = "The localized name of the category.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudRepoSourceContext = {
      description = "A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.",
      id = "CloudRepoSourceContext",
      properties = {
        aliasContext = {
          ["$ref"] = "AliasContext",
          description = "An alias, which may be a branch or tag.",
        },
        repoId = {
          ["$ref"] = "RepoId",
          description = "The ID of the repo.",
        },
        revisionId = {
          description = "A revision ID.",
          type = "string",
        },
      },
      type = "object",
    },
    Command = {
      description = "Command describes a step performed as part of the build pipeline.",
      id = "Command",
      properties = {
        args = {
          description = "Command-line arguments used when executing this command.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dir = {
          description = "Working directory (relative to project source root) used when running this command.",
          type = "string",
        },
        env = {
          description = "Environment variables set before running this command.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "Optional unique identifier for this command, used in wait_for to reference this command as a dependency.",
          type = "string",
        },
        name = {
          description = "Required. Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.",
          type = "string",
        },
        waitFor = {
          description = "The ID(s) of the command(s) that this command depends on.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Completeness = {
      description = "Indicates that the builder claims certain fields in this message to be complete.",
      id = "Completeness",
      properties = {
        arguments = {
          description = "If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.",
          type = "boolean",
        },
        environment = {
          description = "If true, the builder claims that recipe.environment is claimed to be complete.",
          type = "boolean",
        },
        materials = {
          description = "If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called \"hermetic\".",
          type = "boolean",
        },
      },
      type = "object",
    },
    ComplianceOccurrence = {
      description = "An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.",
      id = "ComplianceOccurrence",
      properties = {
        nonComplianceReason = {
          type = "string",
        },
        nonCompliantFiles = {
          items = {
            ["$ref"] = "NonCompliantFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DSSEAttestationOccurrence = {
      description = "Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.",
      id = "DSSEAttestationOccurrence",
      properties = {
        envelope = {
          ["$ref"] = "Envelope",
          description = "If doing something security critical, make sure to verify the signatures in this metadata.",
        },
        statement = {
          ["$ref"] = "InTotoStatement",
        },
      },
      type = "object",
    },
    DeploymentOccurrence = {
      description = "The period during which some deployable was active in a runtime.",
      id = "DeploymentOccurrence",
      properties = {
        address = {
          description = "Address of the runtime element hosting this deployment.",
          type = "string",
        },
        config = {
          description = "Configuration used to create this deployment.",
          type = "string",
        },
        deployTime = {
          description = "Required. Beginning of the lifetime of this deployment.",
          format = "google-datetime",
          type = "string",
        },
        platform = {
          description = "Platform hosting this deployment.",
          enum = {
            "PLATFORM_UNSPECIFIED",
            "GKE",
            "FLEX",
            "CUSTOM",
          },
          enumDescriptions = {
            "Unknown.",
            "Google Container Engine.",
            "Google App Engine: Flexible Environment.",
            "Custom user-defined platform.",
          },
          type = "string",
        },
        resourceUri = {
          description = "Output only. Resource URI for the artifact being deployed taken from the deployable field with the same name.",
          items = {
            type = "string",
          },
          type = "array",
        },
        undeployTime = {
          description = "End of the lifetime of this deployment.",
          format = "google-datetime",
          type = "string",
        },
        userEmail = {
          description = "Identity of the user that triggered this deployment.",
          type = "string",
        },
      },
      type = "object",
    },
    DiscoveryOccurrence = {
      description = "Provides information about the analysis status of a discovered resource.",
      id = "DiscoveryOccurrence",
      properties = {
        analysisCompleted = {
          ["$ref"] = "AnalysisCompleted",
        },
        analysisError = {
          description = "Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
        analysisStatus = {
          description = "The status of discovery for the resource.",
          enum = {
            "ANALYSIS_STATUS_UNSPECIFIED",
            "PENDING",
            "SCANNING",
            "FINISHED_SUCCESS",
            "COMPLETE",
            "FINISHED_FAILED",
            "FINISHED_UNSUPPORTED",
          },
          enumDescriptions = {
            "Unknown.",
            "Resource is known but no action has been taken yet.",
            "Resource is being analyzed.",
            "Analysis has finished successfully.",
            "Analysis has completed.",
            "Analysis has finished unsuccessfully, the analysis itself is in a bad state.",
            "The resource is known not to be supported.",
          },
          type = "string",
        },
        analysisStatusError = {
          ["$ref"] = "Status",
          description = "When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.",
        },
        archiveTime = {
          description = "Output only. The time occurrences related to this discovery occurrence were archived.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        continuousAnalysis = {
          description = "Whether the resource is continuously analyzed.",
          enum = {
            "CONTINUOUS_ANALYSIS_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "Unknown.",
            "The resource is continuously analyzed.",
            "The resource is ignored for continuous analysis.",
          },
          type = "string",
        },
        cpe = {
          description = "The CPE of the resource being scanned.",
          type = "string",
        },
        lastScanTime = {
          description = "The last time this resource was scanned.",
          format = "google-datetime",
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
    Envelope = {
      description = "MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.",
      id = "Envelope",
      properties = {
        payload = {
          format = "byte",
          type = "string",
        },
        payloadType = {
          type = "string",
        },
        signatures = {
          items = {
            ["$ref"] = "EnvelopeSignature",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnvelopeSignature = {
      id = "EnvelopeSignature",
      properties = {
        keyid = {
          type = "string",
        },
        sig = {
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    FileHashes = {
      description = "Container message for hashes of byte content of files, used in source messages to verify integrity of source input to the build.",
      id = "FileHashes",
      properties = {
        fileHash = {
          description = "Required. Collection of file hashes.",
          items = {
            ["$ref"] = "Hash",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FileLocation = {
      description = "Indicates the location at which a package was found.",
      id = "FileLocation",
      properties = {
        filePath = {
          description = "For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.",
          type = "string",
        },
      },
      type = "object",
    },
    Fingerprint = {
      description = "A set of properties that uniquely identify a given Docker image.",
      id = "Fingerprint",
      properties = {
        v1Name = {
          description = "Required. The layer ID of the final layer in the Docker image's v1 representation.",
          type = "string",
        },
        v2Blob = {
          description = "Required. The ordered list of v2 blobs that represent a given image.",
          items = {
            type = "string",
          },
          type = "array",
        },
        v2Name = {
          description = "Output only. The name of the image's v2 blobs computed via: [bottom] := v2_blobbottom := sha256(v2_blob[N] + \" \" + v2_name[N+1]) Only the name of the final blob is kept.",
          type = "string",
        },
      },
      type = "object",
    },
    GerritSourceContext = {
      description = "A SourceContext referring to a Gerrit project.",
      id = "GerritSourceContext",
      properties = {
        aliasContext = {
          ["$ref"] = "AliasContext",
          description = "An alias, which may be a branch or tag.",
        },
        gerritProject = {
          description = "The full project name within the host. Projects may be nested, so \"project/subproject\" is a valid project name. The \"repo name\" is the hostURI/project.",
          type = "string",
        },
        hostUri = {
          description = "The URI of a running Gerrit instance.",
          type = "string",
        },
        revisionId = {
          description = "A revision (commit) ID.",
          type = "string",
        },
      },
      type = "object",
    },
    GitSourceContext = {
      description = "A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).",
      id = "GitSourceContext",
      properties = {
        revisionId = {
          description = "Git commit hash.",
          type = "string",
        },
        url = {
          description = "Git repository URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1FileLocation = {
      description = "Indicates the location at which a package was found.",
      id = "GrafeasV1FileLocation",
      properties = {
        filePath = {
          description = "For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.",
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder = {
      description = "Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder",
      properties = {
        id = {
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness = {
      description = "Indicates that the builder claims certain fields in this message to be complete.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness",
      properties = {
        environment = {
          type = "boolean",
        },
        materials = {
          type = "boolean",
        },
        parameters = {
          type = "boolean",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource = {
      description = "Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          type = "object",
        },
        entryPoint = {
          type = "string",
        },
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation = {
      description = "Identifies the event that kicked off the build.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation",
      properties = {
        configSource = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource",
        },
        environment = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          type = "object",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          type = "object",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial = {
      description = "The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          type = "object",
        },
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata = {
      description = "Other properties of the build.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata",
      properties = {
        buildFinishedOn = {
          format = "google-datetime",
          type = "string",
        },
        buildInvocationId = {
          type = "string",
        },
        buildStartedOn = {
          format = "google-datetime",
          type = "string",
        },
        completeness = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness",
        },
        reproducible = {
          type = "boolean",
        },
      },
      type = "object",
    },
    Hash = {
      description = "Container message for hash values.",
      id = "Hash",
      properties = {
        type = {
          description = "Required. The type of hash that was performed, e.g. \"SHA-256\".",
          type = "string",
        },
        value = {
          description = "Required. The hash value.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    Identity = {
      description = "The unique identifier of the update.",
      id = "Identity",
      properties = {
        revision = {
          description = "The revision number of the update.",
          format = "int32",
          type = "integer",
        },
        updateId = {
          description = "The revision independent identifier of the update.",
          type = "string",
        },
      },
      type = "object",
    },
    ImageOccurrence = {
      description = "Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .",
      id = "ImageOccurrence",
      properties = {
        baseResourceUrl = {
          description = "Output only. This contains the base image URL for the derived image occurrence.",
          type = "string",
        },
        distance = {
          description = "Output only. The number of layers by which this image differs from the associated image basis.",
          format = "int32",
          type = "integer",
        },
        fingerprint = {
          ["$ref"] = "Fingerprint",
          description = "Required. The fingerprint of the derived image.",
        },
        layerInfo = {
          description = "This contains layer-specific metadata, if populated it has length \"distance\" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.",
          items = {
            ["$ref"] = "Layer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InTotoProvenance = {
      id = "InTotoProvenance",
      properties = {
        builderConfig = {
          ["$ref"] = "BuilderConfig",
          description = "required",
        },
        materials = {
          description = "The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "Metadata",
        },
        recipe = {
          ["$ref"] = "Recipe",
          description = "Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required",
        },
      },
      type = "object",
    },
    InTotoStatement = {
      description = "Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always \"application/vnd.in-toto+json\".",
      id = "InTotoStatement",
      properties = {
        _type = {
          description = "Always `https://in-toto.io/Statement/v0.1`.",
          type = "string",
        },
        predicateType = {
          description = "`https://slsa.dev/provenance/v0.1` for SlsaProvenance.",
          type = "string",
        },
        provenance = {
          ["$ref"] = "InTotoProvenance",
        },
        slsaProvenance = {
          ["$ref"] = "SlsaProvenance",
        },
        slsaProvenanceZeroTwo = {
          ["$ref"] = "SlsaProvenanceZeroTwo",
        },
        subject = {
          items = {
            ["$ref"] = "Subject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Jwt = {
      id = "Jwt",
      properties = {
        compactJwt = {
          description = "The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1",
          type = "string",
        },
      },
      type = "object",
    },
    LanguagePackageDependency = {
      description = "Indicates a language package available between this package and the customer's resource artifact.",
      id = "LanguagePackageDependency",
      properties = {
        package = {
          type = "string",
        },
        version = {
          type = "string",
        },
      },
      type = "object",
    },
    Layer = {
      description = "Layer holds metadata specific to a layer of a Docker image.",
      id = "Layer",
      properties = {
        arguments = {
          description = "The recovered arguments to the Dockerfile directive.",
          type = "string",
        },
        directive = {
          description = "Required. The recovered Dockerfile directive used to construct this layer. See https://docs.docker.com/engine/reference/builder/ for more information.",
          type = "string",
        },
      },
      type = "object",
    },
    License = {
      description = "License information.",
      id = "License",
      properties = {
        comments = {
          description = "Comments",
          type = "string",
        },
        expression = {
          description = "Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: \"LGPL-2.1-only OR MIT\", \"LGPL-2.1-only AND MIT\", \"GPL-2.0-or-later WITH Bison-exception-2.2\".",
          type = "string",
        },
      },
      type = "object",
    },
    ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVulnerabilitiesResponseV1 = {
      description = "ListVulnerabilitiesResponse contains a single page of vulnerabilities resulting from a scan.",
      id = "ListVulnerabilitiesResponseV1",
      properties = {
        nextPageToken = {
          description = "A page token that can be used in a subsequent call to ListVulnerabilities to continue retrieving results.",
          type = "string",
        },
        occurrences = {
          description = "The list of Vulnerability Occurrences resulting from a scan.",
          items = {
            ["$ref"] = "Occurrence",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.",
      id = "Location",
      properties = {
        cpeUri = {
          description = "Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)",
          type = "string",
        },
        path = {
          description = "The path from which we gathered that this package/version is installed.",
          type = "string",
        },
        version = {
          ["$ref"] = "Version",
          description = "Deprecated. The version installed at this location.",
        },
      },
      type = "object",
    },
    Material = {
      id = "Material",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          type = "object",
        },
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    Metadata = {
      description = "Other properties of the build.",
      id = "Metadata",
      properties = {
        buildFinishedOn = {
          description = "The timestamp of when the build completed.",
          format = "google-datetime",
          type = "string",
        },
        buildInvocationId = {
          description = "Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.",
          type = "string",
        },
        buildStartedOn = {
          description = "The timestamp of when the build started.",
          format = "google-datetime",
          type = "string",
        },
        completeness = {
          ["$ref"] = "Completeness",
          description = "Indicates that the builder claims certain fields in this message to be complete.",
        },
        reproducible = {
          description = "If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.",
          type = "boolean",
        },
      },
      type = "object",
    },
    NonCompliantFile = {
      description = "Details about files that caused a compliance check to fail. display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'.",
      id = "NonCompliantFile",
      properties = {
        displayCommand = {
          description = "Command to display the non-compliant files.",
          type = "string",
        },
        path = {
          description = "Empty if `display_command` is set.",
          type = "string",
        },
        reason = {
          description = "Explains why a file is non compliant for a CIS check.",
          type = "string",
        },
      },
      type = "object",
    },
    Occurrence = {
      description = "An instance of an analysis type that has been found on a resource.",
      id = "Occurrence",
      properties = {
        attestation = {
          ["$ref"] = "AttestationOccurrence",
          description = "Describes an attestation of an artifact.",
        },
        build = {
          ["$ref"] = "BuildOccurrence",
          description = "Describes a verifiable build.",
        },
        compliance = {
          ["$ref"] = "ComplianceOccurrence",
          description = "Describes a compliance violation on a linked resource.",
        },
        createTime = {
          description = "Output only. The time this occurrence was created.",
          format = "google-datetime",
          type = "string",
        },
        deployment = {
          ["$ref"] = "DeploymentOccurrence",
          description = "Describes the deployment of an artifact on a runtime.",
        },
        discovery = {
          ["$ref"] = "DiscoveryOccurrence",
          description = "Describes when a resource was discovered.",
        },
        dsseAttestation = {
          ["$ref"] = "DSSEAttestationOccurrence",
          description = "Describes an attestation of an artifact using dsse.",
        },
        envelope = {
          ["$ref"] = "Envelope",
          description = "https://github.com/secure-systems-lab/dsse",
        },
        image = {
          ["$ref"] = "ImageOccurrence",
          description = "Describes how this resource derives from the basis in the associated note.",
        },
        kind = {
          description = "Output only. This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.",
          enum = {
            "NOTE_KIND_UNSPECIFIED",
            "VULNERABILITY",
            "BUILD",
            "IMAGE",
            "PACKAGE",
            "DEPLOYMENT",
            "DISCOVERY",
            "ATTESTATION",
            "UPGRADE",
            "COMPLIANCE",
            "DSSE_ATTESTATION",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The note and occurrence represent a package vulnerability.",
            "The note and occurrence assert build provenance.",
            "This represents an image basis relationship.",
            "This represents a package installed via a package manager.",
            "The note and occurrence track deployment events.",
            "The note and occurrence track the initial discovery status of a resource.",
            "This represents a logical \"role\" that can attest to artifacts.",
            "This represents an available package upgrade.",
            "This represents a Compliance Note",
            "This represents a DSSE attestation Note",
          },
          type = "string",
        },
        name = {
          description = "Output only. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.",
          type = "string",
        },
        noteName = {
          description = "Required. Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.",
          type = "string",
        },
        package = {
          ["$ref"] = "PackageOccurrence",
          description = "Describes the installation of a package on the linked resource.",
        },
        remediation = {
          description = "A description of actions that can be taken to remedy the note.",
          type = "string",
        },
        resourceUri = {
          description = "Required. Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time this occurrence was last updated.",
          format = "google-datetime",
          type = "string",
        },
        upgrade = {
          ["$ref"] = "UpgradeOccurrence",
          description = "Describes an available package upgrade on the linked resource.",
        },
        vulnerability = {
          ["$ref"] = "VulnerabilityOccurrence",
          description = "Describes a security vulnerability.",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.",
          type = "object",
        },
        name = {
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.",
          type = "object",
        },
      },
      type = "object",
    },
    PackageData = {
      id = "PackageData",
      properties = {
        cpeUri = {
          description = "The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which the vulnerability may manifest. Examples include distro or storage location for vulnerable jar.",
          type = "string",
        },
        dependencyChain = {
          description = "The dependency chain between this package and the user's artifact. List in order from the customer's package under review first, to the current package last. Inclusive of the original package and the current package.",
          items = {
            ["$ref"] = "LanguagePackageDependency",
          },
          type = "array",
        },
        fileLocation = {
          description = "The path to the jar file / go binary file.",
          items = {
            ["$ref"] = "FileLocation",
          },
          type = "array",
        },
        hashDigest = {
          description = "HashDigest stores the SHA512 hash digest of the jar file if the package is of type Maven. This field will be unset for non Maven packages.",
          type = "string",
        },
        os = {
          description = "The OS affected by a vulnerability Used to generate the cpe_uri for OS packages",
          type = "string",
        },
        osVersion = {
          description = "The version of the OS Used to generate the cpe_uri for OS packages",
          type = "string",
        },
        package = {
          description = "The package being analysed for vulnerabilities",
          type = "string",
        },
        packageType = {
          description = "The type of package: os, maven, go, etc.",
          enum = {
            "PACKAGE_TYPE_UNSPECIFIED",
            "OS",
            "MAVEN",
            "GO",
            "GO_STDLIB",
            "PYPI",
            "NPM",
          },
          enumDescriptions = {
            "",
            "Operating System",
            "Java packages from Maven.",
            "Go third-party packages.",
            "Go toolchain + standard library packages.",
            "Python packages.",
            "NPM packages.",
          },
          type = "string",
        },
        patchedCve = {
          description = "CVEs that this package is no longer vulnerable to go/drydock-dd-custom-binary-scanning",
          items = {
            type = "string",
          },
          type = "array",
        },
        unused = {
          type = "string",
        },
        version = {
          description = "The version of the package being analysed",
          type = "string",
        },
      },
      type = "object",
    },
    PackageIssue = {
      description = "A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).",
      id = "PackageIssue",
      properties = {
        affectedCpeUri = {
          description = "Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.",
          type = "string",
        },
        affectedPackage = {
          description = "Required. The package this vulnerability was found in.",
          type = "string",
        },
        affectedVersion = {
          ["$ref"] = "Version",
          description = "Required. The version of the package that is installed on the resource affected by this vulnerability.",
        },
        effectiveSeverity = {
          description = "Output only. The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          readOnly = true,
          type = "string",
        },
        fileLocation = {
          description = "The location at which this package was found.",
          items = {
            ["$ref"] = "GrafeasV1FileLocation",
          },
          type = "array",
        },
        fixAvailable = {
          description = "Output only. Whether a fix is available for this package.",
          type = "boolean",
        },
        fixedCpeUri = {
          description = "The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.",
          type = "string",
        },
        fixedPackage = {
          description = "The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.",
          type = "string",
        },
        fixedVersion = {
          ["$ref"] = "Version",
          description = "Required. The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.",
        },
        packageType = {
          description = "The type of package (e.g. OS, MAVEN, GO).",
          type = "string",
        },
      },
      type = "object",
    },
    PackageOccurrence = {
      description = "Details on how a particular software package was installed on a system.",
      id = "PackageOccurrence",
      properties = {
        architecture = {
          description = "Output only. The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.",
          enum = {
            "ARCHITECTURE_UNSPECIFIED",
            "X86",
            "X64",
          },
          enumDescriptions = {
            "Unknown architecture.",
            "X86 architecture.",
            "X64 architecture.",
          },
          readOnly = true,
          type = "string",
        },
        cpeUri = {
          description = "Output only. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.",
          readOnly = true,
          type = "string",
        },
        license = {
          ["$ref"] = "License",
          description = "Licenses that have been declared by the authors of the package.",
        },
        location = {
          description = "All of the places within the filesystem versions of this package have been found.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        name = {
          description = "Required. Output only. The name of the installed package.",
          readOnly = true,
          type = "string",
        },
        packageType = {
          description = "Output only. The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).",
          readOnly = true,
          type = "string",
        },
        version = {
          ["$ref"] = "Version",
          description = "Output only. The version of the package.",
          readOnly = true,
        },
      },
      type = "object",
    },
    ProjectRepoId = {
      description = "Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.",
      id = "ProjectRepoId",
      properties = {
        projectId = {
          description = "The ID of the project.",
          type = "string",
        },
        repoName = {
          description = "The name of the repo. Leave empty for the default repo.",
          type = "string",
        },
      },
      type = "object",
    },
    Recipe = {
      description = "Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.",
      id = "Recipe",
      properties = {
        arguments = {
          description = "Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were \"make\", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Since the arguments field can greatly vary in structure, depending on the builder and recipe type, this is of form \"Any\".",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        definedInMaterial = {
          description = "Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were \"make\", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn't come from a material, as zero is default unset value for int64.",
          format = "int64",
          type = "string",
        },
        entryPoint = {
          description = "String identifying the entry point into the build. This is often a path to a configuration file and/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were \"make\", then this would reference the directory in which to run make as well as which target to use.",
          type = "string",
        },
        environment = {
          description = "Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Since the environment field can greatly vary in structure, depending on the builder and recipe type, this is of form \"Any\".",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        type = {
          description = "URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.",
          type = "string",
        },
      },
      type = "object",
    },
    RelatedUrl = {
      description = "Metadata for any related URL information.",
      id = "RelatedUrl",
      properties = {
        label = {
          description = "Label to describe usage of the URL.",
          type = "string",
        },
        url = {
          description = "Specific URL associated with the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    RepoId = {
      description = "A unique identifier for a Cloud Repo.",
      id = "RepoId",
      properties = {
        projectRepoId = {
          ["$ref"] = "ProjectRepoId",
          description = "A combination of a project ID and a repo name.",
        },
        uid = {
          description = "A server-assigned, globally unique identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    Signature = {
      description = "Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to the trust anchors defined in policy (e.g. a Kritis policy). Typically this means that the verifier has been configured with a map from `public_key_id` to public key material (and any required parameters, e.g. signing algorithm). In particular, verification implementations MUST NOT treat the signature `public_key_id` as anything more than a key lookup hint. The `public_key_id` DOES NOT validate or authenticate a public key; it only provides a mechanism for quickly selecting a public key ALREADY CONFIGURED on the verifier through a trusted channel. Verification implementations MUST reject signatures in any of the following circumstances: * The `public_key_id` is not recognized by the verifier. * The public key that `public_key_id` refers to does not verify the signature with respect to the payload. The `signature` contents SHOULD NOT be \"attached\" (where the payload is included with the serialized `signature` bytes). Verifiers MUST ignore any \"attached\" payload and only verify signatures with respect to explicitly provided payload (e.g. a `payload` field on the proto message that holds this Signature, or the canonical serialization of the proto message that holds this signature).",
      id = "Signature",
      properties = {
        publicKeyId = {
          description = "The identifier for the public key that verifies this signature. * The `public_key_id` is required. * The `public_key_id` SHOULD be an RFC3986 conformant URI. * When possible, the `public_key_id` SHOULD be an immutable reference, such as a cryptographic digest. Examples of valid `public_key_id`s: OpenPGP V4 public key fingerprint: * \"openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA\" See https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr for more details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER serialization): * \"ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU\" * \"nih:///sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5\"",
          type = "string",
        },
        signature = {
          description = "The content of the signature, an opaque bytestring. The payload that this signature verifies MUST be unambiguously provided with the Signature during verification. A wrapper message might provide the payload explicitly. Alternatively, a message might have a canonical serialization that can always be unambiguously computed to derive the payload.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    SlsaBuilder = {
      id = "SlsaBuilder",
      properties = {
        id = {
          type = "string",
        },
      },
      type = "object",
    },
    SlsaCompleteness = {
      description = "Indicates that the builder claims certain fields in this message to be complete.",
      id = "SlsaCompleteness",
      properties = {
        arguments = {
          description = "If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.",
          type = "boolean",
        },
        environment = {
          description = "If true, the builder claims that recipe.environment is claimed to be complete.",
          type = "boolean",
        },
        materials = {
          description = "If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called \"hermetic\".",
          type = "boolean",
        },
      },
      type = "object",
    },
    SlsaMetadata = {
      description = "Other properties of the build.",
      id = "SlsaMetadata",
      properties = {
        buildFinishedOn = {
          description = "The timestamp of when the build completed.",
          format = "google-datetime",
          type = "string",
        },
        buildInvocationId = {
          description = "Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.",
          type = "string",
        },
        buildStartedOn = {
          description = "The timestamp of when the build started.",
          format = "google-datetime",
          type = "string",
        },
        completeness = {
          ["$ref"] = "SlsaCompleteness",
          description = "Indicates that the builder claims certain fields in this message to be complete.",
        },
        reproducible = {
          description = "If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SlsaProvenance = {
      id = "SlsaProvenance",
      properties = {
        builder = {
          ["$ref"] = "SlsaBuilder",
          description = "required",
        },
        materials = {
          description = "The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.",
          items = {
            ["$ref"] = "Material",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "SlsaMetadata",
        },
        recipe = {
          ["$ref"] = "SlsaRecipe",
          description = "Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required",
        },
      },
      type = "object",
    },
    SlsaProvenanceZeroTwo = {
      description = "See full explanation of fields at slsa.dev/provenance/v0.2.",
      id = "SlsaProvenanceZeroTwo",
      properties = {
        buildConfig = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          type = "object",
        },
        buildType = {
          type = "string",
        },
        builder = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder",
        },
        invocation = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation",
        },
        materials = {
          items = {
            ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata",
        },
      },
      type = "object",
    },
    SlsaRecipe = {
      description = "Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.",
      id = "SlsaRecipe",
      properties = {
        arguments = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were \"make\", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Depending on the recipe Type, the structure may be different.",
          type = "object",
        },
        definedInMaterial = {
          description = "Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were \"make\", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn't come from a material, as zero is default unset value for int64.",
          format = "int64",
          type = "string",
        },
        entryPoint = {
          description = "String identifying the entry point into the build. This is often a path to a configuration file and/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were \"make\", then this would reference the directory in which to run make as well as which target to use.",
          type = "string",
        },
        environment = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Depending on the recipe Type, the structure may be different.",
          type = "object",
        },
        type = {
          description = "URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.",
          type = "string",
        },
      },
      type = "object",
    },
    Source = {
      description = "Source describes the location of the source used for the build.",
      id = "Source",
      properties = {
        additionalContexts = {
          description = "If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.",
          items = {
            ["$ref"] = "SourceContext",
          },
          type = "array",
        },
        artifactStorageSourceUri = {
          description = "If provided, the input binary artifacts for the build came from this location.",
          type = "string",
        },
        context = {
          ["$ref"] = "SourceContext",
          description = "If provided, the source code used for the build came from this location.",
        },
        fileHashes = {
          additionalProperties = {
            ["$ref"] = "FileHashes",
          },
          description = "Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.",
          type = "object",
        },
      },
      type = "object",
    },
    SourceContext = {
      description = "A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.",
      id = "SourceContext",
      properties = {
        cloudRepo = {
          ["$ref"] = "CloudRepoSourceContext",
          description = "A SourceContext referring to a revision in a Google Cloud Source Repo.",
        },
        gerrit = {
          ["$ref"] = "GerritSourceContext",
          description = "A SourceContext referring to a Gerrit project.",
        },
        git = {
          ["$ref"] = "GitSourceContext",
          description = "A SourceContext referring to any third party Git repo (e.g., GitHub).",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels with user defined metadata.",
          type = "object",
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
    Subject = {
      id = "Subject",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          description = "`\"\": \"\"` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet",
          type = "object",
        },
        name = {
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeDistribution = {
      description = "The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.",
      id = "UpgradeDistribution",
      properties = {
        classification = {
          description = "The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)",
          type = "string",
        },
        cpeUri = {
          description = "Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.",
          type = "string",
        },
        cve = {
          description = "The cve tied to this Upgrade.",
          items = {
            type = "string",
          },
          type = "array",
        },
        severity = {
          description = "The severity as specified by the upstream operating system.",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeOccurrence = {
      description = "An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows_update contain information for the Windows update.",
      id = "UpgradeOccurrence",
      properties = {
        distribution = {
          ["$ref"] = "UpgradeDistribution",
          description = "Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.",
        },
        package = {
          description = "Required for non-Windows OS. The package this Upgrade is for.",
          type = "string",
        },
        parsedVersion = {
          ["$ref"] = "Version",
          description = "Required for non-Windows OS. The version of the package in a machine + human readable form.",
        },
        windowsUpdate = {
          ["$ref"] = "WindowsUpdate",
          description = "Required for Windows OS. Represents the metadata about the Windows update.",
        },
      },
      type = "object",
    },
    Version = {
      description = "Version contains structured information about the version of a package.",
      id = "Version",
      properties = {
        epoch = {
          description = "Used to correct mistakes in the version numbering scheme.",
          format = "int32",
          type = "integer",
        },
        fullName = {
          description = "Human readable version string. This string is of the form :- and is only set when kind is NORMAL.",
          type = "string",
        },
        inclusive = {
          description = "Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.",
          type = "boolean",
        },
        kind = {
          description = "Required. Distinguishes between sentinel MIN/MAX versions and normal versions.",
          enum = {
            "VERSION_KIND_UNSPECIFIED",
            "NORMAL",
            "MINIMUM",
            "MAXIMUM",
          },
          enumDescriptions = {
            "Unknown.",
            "A standard package version.",
            "A special version representing negative infinity.",
            "A special version representing positive infinity.",
          },
          type = "string",
        },
        name = {
          description = "Required only when version kind is NORMAL. The main part of the version name.",
          type = "string",
        },
        revision = {
          description = "The iteration of the package build from the above version.",
          type = "string",
        },
      },
      type = "object",
    },
    VulnerabilityOccurrence = {
      description = "An occurrence of a severity vulnerability on a resource.",
      id = "VulnerabilityOccurrence",
      properties = {
        cvssScore = {
          description = "Output only. The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10 indicates high severity.",
          format = "float",
          type = "number",
        },
        cvssVersion = {
          description = "Output only. CVSS version used to populate cvss_score and severity.",
          enum = {
            "CVSS_VERSION_UNSPECIFIED",
            "CVSS_VERSION_2",
            "CVSS_VERSION_3",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        cvssv3 = {
          ["$ref"] = "CVSS",
          description = "The cvss v3 score for the vulnerability.",
        },
        effectiveSeverity = {
          description = "The distro assigned severity for this vulnerability when it is available, otherwise this is the note provider assigned severity. When there are multiple PackageIssues for this vulnerability, they can have different effective severities because some might be provided by the distro while others are provided by the language ecosystem for a language pack. For this reason, it is advised to use the effective severity on the PackageIssue level. In the case where multiple PackageIssues have differing effective severities, this field should be the highest severity for any of the PackageIssues.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          type = "string",
        },
        fixAvailable = {
          description = "Output only. Whether at least one of the affected packages has a fix available.",
          type = "boolean",
        },
        longDescription = {
          description = "Output only. A detailed description of this vulnerability.",
          type = "string",
        },
        packageIssue = {
          description = "Required. The set of affected locations and their fixes (if available) within the associated resource.",
          items = {
            ["$ref"] = "PackageIssue",
          },
          type = "array",
        },
        relatedUrls = {
          description = "Output only. URLs related to this vulnerability.",
          items = {
            ["$ref"] = "RelatedUrl",
          },
          type = "array",
        },
        severity = {
          description = "Output only. The note provider assigned severity of this vulnerability.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          type = "string",
        },
        shortDescription = {
          description = "Output only. A one sentence description of this vulnerability.",
          type = "string",
        },
        type = {
          description = "The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).",
          type = "string",
        },
      },
      type = "object",
    },
    WindowsUpdate = {
      description = "Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.",
      id = "WindowsUpdate",
      properties = {
        categories = {
          description = "The list of categories to which the update belongs.",
          items = {
            ["$ref"] = "Category",
          },
          type = "array",
        },
        description = {
          description = "The localized description of the update.",
          type = "string",
        },
        identity = {
          ["$ref"] = "Identity",
          description = "Required - The unique identifier for the update.",
        },
        kbArticleIds = {
          description = "The Microsoft Knowledge Base article IDs that are associated with the update.",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastPublishedTimestamp = {
          description = "The last published timestamp of the update.",
          format = "google-datetime",
          type = "string",
        },
        supportUrl = {
          description = "The hyperlink to the support information for the update.",
          type = "string",
        },
        title = {
          description = "The localized title of the update.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "On-Demand Scanning API",
  version = "v1",
  version_module = true,
}
