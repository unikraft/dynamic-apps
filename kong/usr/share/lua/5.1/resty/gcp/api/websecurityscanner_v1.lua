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
  baseUrl = "https://websecurityscanner.googleapis.com/",
  batchPath = "batch",
  canonicalName = "WebSecurityScanner",
  description = "Scans your Compute and App Engine apps for common web vulnerabilities.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "websecurityscanner:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://websecurityscanner.mtls.googleapis.com/",
  name = "websecurityscanner",
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
        scanConfigs = {
          methods = {
            create = {
              description = "Creates a new ScanConfig.",
              flatPath = "v1/projects/{projectsId}/scanConfigs",
              httpMethod = "POST",
              id = "websecurityscanner.projects.scanConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource name where the scan is created, which should be a project resource name in the format 'projects/{projectId}'.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/scanConfigs",
              request = {
                ["$ref"] = "ScanConfig",
              },
              response = {
                ["$ref"] = "ScanConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing ScanConfig and its child resources.",
              flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}",
              httpMethod = "DELETE",
              id = "websecurityscanner.projects.scanConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the ScanConfig to be deleted. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}'.",
                  location = "path",
                  pattern = "^projects/[^/]+/scanConfigs/[^/]+$",
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
              description = "Gets a ScanConfig.",
              flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}",
              httpMethod = "GET",
              id = "websecurityscanner.projects.scanConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the ScanConfig to be returned. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}'.",
                  location = "path",
                  pattern = "^projects/[^/]+/scanConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "ScanConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists ScanConfigs under a given project.",
              flatPath = "v1/projects/{projectsId}/scanConfigs",
              httpMethod = "GET",
              id = "websecurityscanner.projects.scanConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of ScanConfigs to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previous List request. If unspecified, the first page of results is returned.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource name, which should be a project resource name in the format 'projects/{projectId}'.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/scanConfigs",
              response = {
                ["$ref"] = "ListScanConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a ScanConfig. This method support partial update of a ScanConfig.",
              flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}",
              httpMethod = "PATCH",
              id = "websecurityscanner.projects.scanConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the ScanConfig. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are generated by the system.",
                  location = "path",
                  pattern = "^projects/[^/]+/scanConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "ScanConfig",
              },
              response = {
                ["$ref"] = "ScanConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            start = {
              description = "Start a ScanRun according to the given ScanConfig.",
              flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}:start",
              httpMethod = "POST",
              id = "websecurityscanner.projects.scanConfigs.start",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the ScanConfig to be used. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}'.",
                  location = "path",
                  pattern = "^projects/[^/]+/scanConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:start",
              request = {
                ["$ref"] = "StartScanRunRequest",
              },
              response = {
                ["$ref"] = "ScanRun",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            scanRuns = {
              methods = {
                get = {
                  description = "Gets a ScanRun.",
                  flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}/scanRuns/{scanRunsId}",
                  httpMethod = "GET",
                  id = "websecurityscanner.projects.scanConfigs.scanRuns.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the ScanRun to be returned. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.",
                      location = "path",
                      pattern = "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ScanRun",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists ScanRuns under a given ScanConfig, in descending order of ScanRun stop time.",
                  flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}/scanRuns",
                  httpMethod = "GET",
                  id = "websecurityscanner.projects.scanConfigs.scanRuns.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of ScanRuns to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previous List request. If unspecified, the first page of results is returned.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name, which should be a scan resource name in the format 'projects/{projectId}/scanConfigs/{scanConfigId}'.",
                      location = "path",
                      pattern = "^projects/[^/]+/scanConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/scanRuns",
                  response = {
                    ["$ref"] = "ListScanRunsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                stop = {
                  description = "Stops a ScanRun. The stopped ScanRun is returned.",
                  flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}/scanRuns/{scanRunsId}:stop",
                  httpMethod = "POST",
                  id = "websecurityscanner.projects.scanConfigs.scanRuns.stop",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the ScanRun to be stopped. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.",
                      location = "path",
                      pattern = "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:stop",
                  request = {
                    ["$ref"] = "StopScanRunRequest",
                  },
                  response = {
                    ["$ref"] = "ScanRun",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                crawledUrls = {
                  methods = {
                    list = {
                      description = "List CrawledUrls under a given ScanRun.",
                      flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}/scanRuns/{scanRunsId}/crawledUrls",
                      httpMethod = "GET",
                      id = "websecurityscanner.projects.scanConfigs.scanRuns.crawledUrls.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of CrawledUrls to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previous List request. If unspecified, the first page of results is returned.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name, which should be a scan run resource name in the format 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.",
                          location = "path",
                          pattern = "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/crawledUrls",
                      response = {
                        ["$ref"] = "ListCrawledUrlsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                findingTypeStats = {
                  methods = {
                    list = {
                      description = "List all FindingTypeStats under a given ScanRun.",
                      flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}/scanRuns/{scanRunsId}/findingTypeStats",
                      httpMethod = "GET",
                      id = "websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent resource name, which should be a scan run resource name in the format 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.",
                          location = "path",
                          pattern = "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/findingTypeStats",
                      response = {
                        ["$ref"] = "ListFindingTypeStatsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                findings = {
                  methods = {
                    get = {
                      description = "Gets a Finding.",
                      flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}/scanRuns/{scanRunsId}/findings/{findingsId}",
                      httpMethod = "GET",
                      id = "websecurityscanner.projects.scanConfigs.scanRuns.findings.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the Finding to be returned. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}/findings/{findingId}'.",
                          location = "path",
                          pattern = "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+/findings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Finding",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "List Findings under a given ScanRun.",
                      flatPath = "v1/projects/{projectsId}/scanConfigs/{scanConfigsId}/scanRuns/{scanRunsId}/findings",
                      httpMethod = "GET",
                      id = "websecurityscanner.projects.scanConfigs.scanRuns.findings.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "The filter expression. The expression must be in the format: . Supported field: 'finding_type'. Supported operator: '='.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of Findings to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previous List request. If unspecified, the first page of results is returned.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name, which should be a scan run resource name in the format 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.",
                          location = "path",
                          pattern = "^projects/[^/]+/scanConfigs/[^/]+/scanRuns/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/findings",
                      response = {
                        ["$ref"] = "ListFindingsResponse",
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
  revision = "20230107",
  rootUrl = "https://websecurityscanner.googleapis.com/",
  schemas = {
    Authentication = {
      description = "Scan authentication configuration.",
      id = "Authentication",
      properties = {
        customAccount = {
          ["$ref"] = "CustomAccount",
          description = "Authentication using a custom account.",
        },
        googleAccount = {
          ["$ref"] = "GoogleAccount",
          description = "Authentication using a Google account.",
        },
        iapCredential = {
          ["$ref"] = "IapCredential",
          description = "Authentication using Identity-Aware-Proxy (IAP).",
        },
      },
      type = "object",
    },
    CrawledUrl = {
      description = "A CrawledUrl resource represents a URL that was crawled during a ScanRun. Web Security Scanner Service crawls the web applications, following all links within the scope of sites, to find the URLs to test against.",
      id = "CrawledUrl",
      properties = {
        body = {
          description = "Output only. The body of the request that was used to visit the URL.",
          type = "string",
        },
        httpMethod = {
          description = "Output only. The http method of the request that was used to visit the URL, in uppercase.",
          type = "string",
        },
        url = {
          description = "Output only. The URL that was crawled.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomAccount = {
      description = "Describes authentication configuration that uses a custom account.",
      id = "CustomAccount",
      properties = {
        loginUrl = {
          description = "Required. The login form URL of the website.",
          type = "string",
        },
        password = {
          description = "Required. Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.",
          type = "string",
        },
        username = {
          description = "Required. The user name of the custom account.",
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
    Finding = {
      description = "A Finding resource represents a vulnerability instance identified during a ScanRun.",
      id = "Finding",
      properties = {
        body = {
          description = "Output only. The body of the request that triggered the vulnerability.",
          type = "string",
        },
        description = {
          description = "Output only. The description of the vulnerability.",
          type = "string",
        },
        finalUrl = {
          description = "Output only. The URL where the browser lands when the vulnerability is detected.",
          type = "string",
        },
        findingType = {
          description = "Output only. The type of the Finding. Detailed and up-to-date information on findings can be found here: https://cloud.google.com/security-command-center/docs/how-to-remediate-web-security-scanner-findings",
          type = "string",
        },
        form = {
          ["$ref"] = "Form",
          description = "Output only. An addon containing information reported for a vulnerability with an HTML form, if any.",
        },
        frameUrl = {
          description = "Output only. If the vulnerability was originated from nested IFrame, the immediate parent IFrame is reported.",
          type = "string",
        },
        fuzzedUrl = {
          description = "Output only. The URL produced by the server-side fuzzer and used in the request that triggered the vulnerability.",
          type = "string",
        },
        httpMethod = {
          description = "Output only. The http method of the request that triggered the vulnerability, in uppercase.",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the Finding. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}'. The finding IDs are generated by the system.",
          type = "string",
        },
        outdatedLibrary = {
          ["$ref"] = "OutdatedLibrary",
          description = "Output only. An addon containing information about outdated libraries.",
        },
        reproductionUrl = {
          description = "Output only. The URL containing human-readable payload that user can leverage to reproduce the vulnerability.",
          type = "string",
        },
        severity = {
          description = "Output only. The severity level of the reported vulnerability.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "CRITICAL",
            "HIGH",
            "MEDIUM",
            "LOW",
          },
          enumDescriptions = {
            "No severity specified. The default value.",
            "Critical severity.",
            "High severity.",
            "Medium severity.",
            "Low severity.",
          },
          readOnly = true,
          type = "string",
        },
        trackingId = {
          description = "Output only. The tracking ID uniquely identifies a vulnerability instance across multiple ScanRuns.",
          type = "string",
        },
        violatingResource = {
          ["$ref"] = "ViolatingResource",
          description = "Output only. An addon containing detailed information regarding any resource causing the vulnerability such as JavaScript sources, image, audio files, etc.",
        },
        vulnerableHeaders = {
          ["$ref"] = "VulnerableHeaders",
          description = "Output only. An addon containing information about vulnerable or missing HTTP headers.",
        },
        vulnerableParameters = {
          ["$ref"] = "VulnerableParameters",
          description = "Output only. An addon containing information about request parameters which were found to be vulnerable.",
        },
        xss = {
          ["$ref"] = "Xss",
          description = "Output only. An addon containing information reported for an XSS, if any.",
        },
        xxe = {
          ["$ref"] = "Xxe",
          description = "Output only. An addon containing information reported for an XXE, if any.",
          readOnly = true,
        },
      },
      type = "object",
    },
    FindingTypeStats = {
      description = "A FindingTypeStats resource represents stats regarding a specific FindingType of Findings under a given ScanRun.",
      id = "FindingTypeStats",
      properties = {
        findingCount = {
          description = "Output only. The count of findings belonging to this finding type.",
          format = "int32",
          type = "integer",
        },
        findingType = {
          description = "Output only. The finding type associated with the stats.",
          type = "string",
        },
      },
      type = "object",
    },
    Form = {
      description = "! Information about a vulnerability with an HTML.",
      id = "Form",
      properties = {
        actionUri = {
          description = "! The URI where to send the form when it's submitted.",
          type = "string",
        },
        fields = {
          description = "! The names of form fields related to the vulnerability.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAccount = {
      description = "Describes authentication configuration that uses a Google account.",
      id = "GoogleAccount",
      properties = {
        password = {
          description = "Required. Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.",
          type = "string",
        },
        username = {
          description = "Required. The user name of the Google account.",
          type = "string",
        },
      },
      type = "object",
    },
    Header = {
      description = "Describes a HTTP Header.",
      id = "Header",
      properties = {
        name = {
          description = "Header name.",
          type = "string",
        },
        value = {
          description = "Header value.",
          type = "string",
        },
      },
      type = "object",
    },
    IapCredential = {
      description = "Describes authentication configuration for Identity-Aware-Proxy (IAP).",
      id = "IapCredential",
      properties = {
        iapTestServiceAccountInfo = {
          ["$ref"] = "IapTestServiceAccountInfo",
          description = "Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.",
        },
      },
      type = "object",
    },
    IapTestServiceAccountInfo = {
      description = "Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.",
      id = "IapTestServiceAccountInfo",
      properties = {
        targetAudienceClientId = {
          description = "Required. Describes OAuth2 client id of resources protected by Identity-Aware-Proxy (IAP).",
          type = "string",
        },
      },
      type = "object",
    },
    ListCrawledUrlsResponse = {
      description = "Response for the `ListCrawledUrls` method.",
      id = "ListCrawledUrlsResponse",
      properties = {
        crawledUrls = {
          description = "The list of CrawledUrls returned.",
          items = {
            ["$ref"] = "CrawledUrl",
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
    ListFindingTypeStatsResponse = {
      description = "Response for the `ListFindingTypeStats` method.",
      id = "ListFindingTypeStatsResponse",
      properties = {
        findingTypeStats = {
          description = "The list of FindingTypeStats returned.",
          items = {
            ["$ref"] = "FindingTypeStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListFindingsResponse = {
      description = "Response for the `ListFindings` method.",
      id = "ListFindingsResponse",
      properties = {
        findings = {
          description = "The list of Findings returned.",
          items = {
            ["$ref"] = "Finding",
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
    ListScanConfigsResponse = {
      description = "Response for the `ListScanConfigs` method.",
      id = "ListScanConfigsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        scanConfigs = {
          description = "The list of ScanConfigs returned.",
          items = {
            ["$ref"] = "ScanConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListScanRunsResponse = {
      description = "Response for the `ListScanRuns` method.",
      id = "ListScanRunsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        scanRuns = {
          description = "The list of ScanRuns returned.",
          items = {
            ["$ref"] = "ScanRun",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OutdatedLibrary = {
      description = "Information reported for an outdated library.",
      id = "OutdatedLibrary",
      properties = {
        learnMoreUrls = {
          description = "URLs to learn more information about the vulnerabilities in the library.",
          items = {
            type = "string",
          },
          type = "array",
        },
        libraryName = {
          description = "The name of the outdated library.",
          type = "string",
        },
        version = {
          description = "The version number.",
          type = "string",
        },
      },
      type = "object",
    },
    ScanConfig = {
      description = "A ScanConfig resource contains the configurations to launch a scan.",
      id = "ScanConfig",
      properties = {
        authentication = {
          ["$ref"] = "Authentication",
          description = "The authentication configuration. If specified, service will use the authentication configuration during scanning.",
        },
        blacklistPatterns = {
          description = "The excluded URL patterns as described in https://cloud.google.com/security-command-center/docs/how-to-use-web-security-scanner#excluding_urls",
          items = {
            type = "string",
          },
          type = "array",
        },
        displayName = {
          description = "Required. The user provided display name of the ScanConfig.",
          type = "string",
        },
        exportToSecurityCommandCenter = {
          description = "Controls export of scan configurations and results to Security Command Center.",
          enum = {
            "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED",
            "ENABLED",
            "DISABLED",
          },
          enumDescriptions = {
            "Use default, which is ENABLED.",
            "Export results of this scan to Security Command Center.",
            "Do not export results of this scan to Security Command Center.",
          },
          type = "string",
        },
        ignoreHttpStatusErrors = {
          description = "Whether to keep scanning even if most requests return HTTP error codes.",
          type = "boolean",
        },
        managedScan = {
          description = "Whether the scan config is managed by Web Security Scanner, output only.",
          type = "boolean",
        },
        maxQps = {
          description = "The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively. If the field is unspecified or its value is set 0, server will default to 15. Other values outside of [5, 20] range will be rejected with INVALID_ARGUMENT error.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The resource name of the ScanConfig. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}'. The ScanConfig IDs are generated by the system.",
          type = "string",
        },
        riskLevel = {
          description = "The risk level selected for the scan",
          enum = {
            "RISK_LEVEL_UNSPECIFIED",
            "NORMAL",
            "LOW",
          },
          enumDescriptions = {
            "Use default, which is NORMAL.",
            "Normal scanning (Recommended)",
            "Lower impact scanning",
          },
          type = "string",
        },
        schedule = {
          ["$ref"] = "Schedule",
          description = "The schedule of the ScanConfig.",
        },
        startingUrls = {
          description = "Required. The starting URLs from which the scanner finds site pages.",
          items = {
            type = "string",
          },
          type = "array",
        },
        staticIpScan = {
          description = "Whether the scan configuration has enabled static IP address scan feature. If enabled, the scanner will access applications from static IP addresses.",
          type = "boolean",
        },
        userAgent = {
          description = "The user agent used during scanning.",
          enum = {
            "USER_AGENT_UNSPECIFIED",
            "CHROME_LINUX",
            "CHROME_ANDROID",
            "SAFARI_IPHONE",
          },
          enumDescriptions = {
            "The user agent is unknown. Service will default to CHROME_LINUX.",
            "Chrome on Linux. This is the service default if unspecified.",
            "Chrome on Android.",
            "Safari on IPhone.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ScanConfigError = {
      description = "Defines a custom error message used by CreateScanConfig and UpdateScanConfig APIs when scan configuration validation fails. It is also reported as part of a ScanRunErrorTrace message if scan validation fails due to a scan configuration error.",
      id = "ScanConfigError",
      properties = {
        code = {
          description = "Output only. Indicates the reason code for a configuration failure.",
          enum = {
            "CODE_UNSPECIFIED",
            "OK",
            "INTERNAL_ERROR",
            "APPENGINE_API_BACKEND_ERROR",
            "APPENGINE_API_NOT_ACCESSIBLE",
            "APPENGINE_DEFAULT_HOST_MISSING",
            "CANNOT_USE_GOOGLE_COM_ACCOUNT",
            "CANNOT_USE_OWNER_ACCOUNT",
            "COMPUTE_API_BACKEND_ERROR",
            "COMPUTE_API_NOT_ACCESSIBLE",
            "CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT",
            "CUSTOM_LOGIN_URL_MALFORMED",
            "CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS",
            "CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS",
            "CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS",
            "CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS",
            "DUPLICATE_SCAN_NAME",
            "INVALID_FIELD_VALUE",
            "FAILED_TO_AUTHENTICATE_TO_TARGET",
            "FINDING_TYPE_UNSPECIFIED",
            "FORBIDDEN_TO_SCAN_COMPUTE",
            "FORBIDDEN_UPDATE_TO_MANAGED_SCAN",
            "MALFORMED_FILTER",
            "MALFORMED_RESOURCE_NAME",
            "PROJECT_INACTIVE",
            "REQUIRED_FIELD",
            "RESOURCE_NAME_INCONSISTENT",
            "SCAN_ALREADY_RUNNING",
            "SCAN_NOT_RUNNING",
            "SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT",
            "SEED_URL_MALFORMED",
            "SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS",
            "SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS",
            "SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS",
            "SEED_URL_HAS_UNRESERVED_IP_ADDRESS",
            "SERVICE_ACCOUNT_NOT_CONFIGURED",
            "TOO_MANY_SCANS",
            "UNABLE_TO_RESOLVE_PROJECT_INFO",
            "UNSUPPORTED_BLACKLIST_PATTERN_FORMAT",
            "UNSUPPORTED_FILTER",
            "UNSUPPORTED_FINDING_TYPE",
            "UNSUPPORTED_URL_SCHEME",
          },
          enumDescriptions = {
            "There is no error.",
            "There is no error.",
            "Indicates an internal server error. Please DO NOT USE THIS ERROR CODE unless the root cause is truly unknown.",
            "One of the seed URLs is an App Engine URL but we cannot validate the scan settings due to an App Engine API backend error.",
            "One of the seed URLs is an App Engine URL but we cannot access the App Engine API to validate scan settings.",
            "One of the seed URLs is an App Engine URL but the Default Host of the App Engine is not set.",
            "Google corporate accounts can not be used for scanning.",
            "The account of the scan creator can not be used for scanning.",
            "This scan targets Compute Engine, but we cannot validate scan settings due to a Compute Engine API backend error.",
            "This scan targets Compute Engine, but we cannot access the Compute Engine API to validate the scan settings.",
            "The Custom Login URL does not belong to the current project.",
            "The Custom Login URL is malformed (can not be parsed).",
            "The Custom Login URL is mapped to a non-routable IP address in DNS.",
            "The Custom Login URL is mapped to an IP address which is not reserved for the current project.",
            "The Custom Login URL has a non-routable IP address.",
            "The Custom Login URL has an IP address which is not reserved for the current project.",
            "Another scan with the same name (case-sensitive) already exists.",
            "A field is set to an invalid value.",
            "There was an error trying to authenticate to the scan target.",
            "Finding type value is not specified in the list findings request.",
            "Scan targets Compute Engine, yet current project was not whitelisted for Google Compute Engine Scanning Alpha access.",
            "User tries to update managed scan",
            "The supplied filter is malformed. For example, it can not be parsed, does not have a filter type in expression, or the same filter type appears more than once.",
            "The supplied resource name is malformed (can not be parsed).",
            "The current project is not in an active state.",
            "A required field is not set.",
            "Project id, scanconfig id, scanrun id, or finding id are not consistent with each other in resource name.",
            "The scan being requested to start is already running.",
            "The scan that was requested to be stopped is not running.",
            "One of the seed URLs does not belong to the current project.",
            "One of the seed URLs is malformed (can not be parsed).",
            "One of the seed URLs is mapped to a non-routable IP address in DNS.",
            "One of the seed URLs is mapped to an IP address which is not reserved for the current project.",
            "One of the seed URLs has on-routable IP address.",
            "One of the seed URLs has an IP address that is not reserved for the current project.",
            "The Web Security Scanner service account is not configured under the project.",
            "A project has reached the maximum number of scans.",
            "Resolving the details of the current project fails.",
            "One or more blacklist patterns were in the wrong format.",
            "The supplied filter is not supported.",
            "The supplied finding type is not supported. For example, we do not provide findings of the given finding type.",
            "The URL scheme of one or more of the supplied URLs is not supported.",
          },
          type = "string",
        },
        fieldName = {
          description = "Output only. Indicates the full name of the ScanConfig field that triggers this error, for example \"scan_config.max_qps\". This field is provided for troubleshooting purposes only and its actual value can change in the future.",
          type = "string",
        },
      },
      type = "object",
    },
    ScanRun = {
      description = "A ScanRun is a output-only resource representing an actual run of the scan. Next id: 12",
      id = "ScanRun",
      properties = {
        endTime = {
          description = "Output only. The time at which the ScanRun reached termination state - that the ScanRun is either finished or stopped by user.",
          format = "google-datetime",
          type = "string",
        },
        errorTrace = {
          ["$ref"] = "ScanRunErrorTrace",
          description = "Output only. If result_state is an ERROR, this field provides the primary reason for scan's termination and more details, if such are available.",
        },
        executionState = {
          description = "Output only. The execution state of the ScanRun.",
          enum = {
            "EXECUTION_STATE_UNSPECIFIED",
            "QUEUED",
            "SCANNING",
            "FINISHED",
          },
          enumDescriptions = {
            "Represents an invalid state caused by internal server error. This value should never be returned.",
            "The scan is waiting in the queue.",
            "The scan is in progress.",
            "The scan is either finished or stopped by user.",
          },
          type = "string",
        },
        hasVulnerabilities = {
          description = "Output only. Whether the scan run has found any vulnerabilities.",
          type = "boolean",
        },
        name = {
          description = "Output only. The resource name of the ScanRun. The name follows the format of 'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'. The ScanRun IDs are generated by the system.",
          type = "string",
        },
        progressPercent = {
          description = "Output only. The percentage of total completion ranging from 0 to 100. If the scan is in queue, the value is 0. If the scan is running, the value ranges from 0 to 100. If the scan is finished, the value is 100.",
          format = "int32",
          type = "integer",
        },
        resultState = {
          description = "Output only. The result state of the ScanRun. This field is only available after the execution state reaches \"FINISHED\".",
          enum = {
            "RESULT_STATE_UNSPECIFIED",
            "SUCCESS",
            "ERROR",
            "KILLED",
          },
          enumDescriptions = {
            "Default value. This value is returned when the ScanRun is not yet finished.",
            "The scan finished without errors.",
            "The scan finished with errors.",
            "The scan was terminated by user.",
          },
          type = "string",
        },
        startTime = {
          description = "Output only. The time at which the ScanRun started.",
          format = "google-datetime",
          type = "string",
        },
        urlsCrawledCount = {
          description = "Output only. The number of URLs crawled during this ScanRun. If the scan is in progress, the value represents the number of URLs crawled up to now.",
          format = "int64",
          type = "string",
        },
        urlsTestedCount = {
          description = "Output only. The number of URLs tested during this ScanRun. If the scan is in progress, the value represents the number of URLs tested up to now. The number of URLs tested is usually larger than the number URLS crawled because typically a crawled URL is tested with multiple test payloads.",
          format = "int64",
          type = "string",
        },
        warningTraces = {
          description = "Output only. A list of warnings, if such are encountered during this scan run.",
          items = {
            ["$ref"] = "ScanRunWarningTrace",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ScanRunErrorTrace = {
      description = "Output only. Defines an error trace message for a ScanRun.",
      id = "ScanRunErrorTrace",
      properties = {
        code = {
          description = "Output only. Indicates the error reason code.",
          enum = {
            "CODE_UNSPECIFIED",
            "INTERNAL_ERROR",
            "SCAN_CONFIG_ISSUE",
            "AUTHENTICATION_CONFIG_ISSUE",
            "TIMED_OUT_WHILE_SCANNING",
            "TOO_MANY_REDIRECTS",
            "TOO_MANY_HTTP_ERRORS",
            "STARTING_URLS_CRAWL_HTTP_ERRORS",
          },
          enumDescriptions = {
            "Default value is never used.",
            "Indicates that the scan run failed due to an internal server error.",
            "Indicates a scan configuration error, usually due to outdated ScanConfig settings, such as starting_urls or the DNS configuration.",
            "Indicates an authentication error, usually due to outdated ScanConfig authentication settings.",
            "Indicates a scan operation timeout, usually caused by a very large site.",
            "Indicates that a scan encountered excessive redirects, either to authentication or some other page outside of the scan scope.",
            "Indicates that a scan encountered numerous errors from the web site pages. When available, most_common_http_error_code field indicates the most common HTTP error code encountered during the scan.",
            "Indicates that some of the starting web urls returned HTTP errors during the scan.",
          },
          type = "string",
        },
        mostCommonHttpErrorCode = {
          description = "Output only. If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.",
          format = "int32",
          type = "integer",
        },
        scanConfigError = {
          ["$ref"] = "ScanConfigError",
          description = "Output only. If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.",
        },
      },
      type = "object",
    },
    ScanRunWarningTrace = {
      description = "Output only. Defines a warning trace message for ScanRun. Warning traces provide customers with useful information that helps make the scanning process more effective.",
      id = "ScanRunWarningTrace",
      properties = {
        code = {
          description = "Output only. Indicates the warning code.",
          enum = {
            "CODE_UNSPECIFIED",
            "INSUFFICIENT_CRAWL_RESULTS",
            "TOO_MANY_CRAWL_RESULTS",
            "TOO_MANY_FUZZ_TASKS",
            "BLOCKED_BY_IAP",
            "NO_STARTING_URL_FOUND_FOR_MANAGED_SCAN",
          },
          enumDescriptions = {
            "Default value is never used.",
            "Indicates that a scan discovered an unexpectedly low number of URLs. This is sometimes caused by complex navigation features or by using a single URL for numerous pages.",
            "Indicates that a scan discovered too many URLs to test, or excessive redundant URLs.",
            "Indicates that too many tests have been generated for the scan. Customer should try reducing the number of starting URLs, increasing the QPS rate, or narrowing down the scope of the scan using the excluded patterns.",
            "Indicates that a scan is blocked by IAP.",
            "Indicates that no seeds is found for a scan",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Schedule = {
      description = "Scan schedule configuration.",
      id = "Schedule",
      properties = {
        intervalDurationDays = {
          description = "Required. The duration of time between executions in days.",
          format = "int32",
          type = "integer",
        },
        scheduleTime = {
          description = "A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    StartScanRunRequest = {
      description = "Request for the `StartScanRun` method.",
      id = "StartScanRunRequest",
      properties = {},
      type = "object",
    },
    StopScanRunRequest = {
      description = "Request for the `StopScanRun` method.",
      id = "StopScanRunRequest",
      properties = {},
      type = "object",
    },
    ViolatingResource = {
      description = "Information regarding any resource causing the vulnerability such as JavaScript sources, image, audio files, etc.",
      id = "ViolatingResource",
      properties = {
        contentType = {
          description = "The MIME type of this resource.",
          type = "string",
        },
        resourceUrl = {
          description = "URL of this violating resource.",
          type = "string",
        },
      },
      type = "object",
    },
    VulnerableHeaders = {
      description = "Information about vulnerable or missing HTTP Headers.",
      id = "VulnerableHeaders",
      properties = {
        headers = {
          description = "List of vulnerable headers.",
          items = {
            ["$ref"] = "Header",
          },
          type = "array",
        },
        missingHeaders = {
          description = "List of missing headers.",
          items = {
            ["$ref"] = "Header",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VulnerableParameters = {
      description = "Information about vulnerable request parameters.",
      id = "VulnerableParameters",
      properties = {
        parameterNames = {
          description = "The vulnerable parameter names.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Xss = {
      description = "Information reported for an XSS.",
      id = "Xss",
      properties = {
        attackVector = {
          description = "The attack vector of the payload triggering this XSS.",
          enum = {
            "ATTACK_VECTOR_UNSPECIFIED",
            "LOCAL_STORAGE",
            "SESSION_STORAGE",
            "WINDOW_NAME",
            "REFERRER",
            "FORM_INPUT",
            "COOKIE",
            "POST_MESSAGE",
            "GET_PARAMETERS",
            "URL_FRAGMENT",
            "HTML_COMMENT",
            "POST_PARAMETERS",
            "PROTOCOL",
            "STORED_XSS",
            "SAME_ORIGIN",
            "USER_CONTROLLABLE_URL",
          },
          enumDescriptions = {
            "Unknown attack vector.",
            "The attack comes from fuzzing the browser's localStorage.",
            "The attack comes from fuzzing the browser's sessionStorage.",
            "The attack comes from fuzzing the window's name property.",
            "The attack comes from fuzzing the referrer property.",
            "The attack comes from fuzzing an input element.",
            "The attack comes from fuzzing the browser's cookies.",
            "The attack comes from hijacking the post messaging mechanism.",
            "The attack comes from fuzzing parameters in the url.",
            "The attack comes from fuzzing the fragment in the url.",
            "The attack comes from fuzzing the HTML comments.",
            "The attack comes from fuzzing the POST parameters.",
            "The attack comes from fuzzing the protocol.",
            "The attack comes from the server side and is stored.",
            "The attack is a Same-Origin Method Execution attack via a GET parameter.",
            "The attack payload is received from a third-party host via a URL that is user-controllable",
          },
          type = "string",
        },
        errorMessage = {
          description = "An error message generated by a javascript breakage.",
          type = "string",
        },
        stackTraces = {
          description = "Stack traces leading to the point where the XSS occurred.",
          items = {
            type = "string",
          },
          type = "array",
        },
        storedXssSeedingUrl = {
          description = "The reproduction url for the seeding POST request of a Stored XSS.",
          type = "string",
        },
      },
      type = "object",
    },
    Xxe = {
      description = "Information reported for an XXE.",
      id = "Xxe",
      properties = {
        payloadLocation = {
          description = "Location within the request where the payload was placed.",
          enum = {
            "LOCATION_UNSPECIFIED",
            "COMPLETE_REQUEST_BODY",
          },
          enumDescriptions = {
            "Unknown Location.",
            "The XML payload replaced the complete request body.",
          },
          type = "string",
        },
        payloadValue = {
          description = "The XML string that triggered the XXE vulnerability. Non-payload values might be redacted.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Web Security Scanner API",
  version = "v1",
  version_module = true,
}
