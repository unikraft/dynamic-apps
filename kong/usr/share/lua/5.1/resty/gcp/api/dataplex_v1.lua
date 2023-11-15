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
  baseUrl = "https://dataplex.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Dataplex",
  description = "Dataplex API is used to manage the lifecycle of data lakes.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dataplex/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "dataplex:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://dataplex.mtls.googleapis.com/",
  name = "dataplex",
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
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "dataplex.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudLocationLocation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "dataplex.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/locations",
              response = {
                ["$ref"] = "GoogleCloudLocationListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            dataAttributeBindings = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataAttributeBindings/{dataAttributeBindingsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.dataAttributeBindings.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataAttributeBindings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataAttributeBindings/{dataAttributeBindingsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataAttributeBindings.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataAttributeBindings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataAttributeBindings/{dataAttributeBindingsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataAttributeBindings.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataAttributeBindings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            dataScans = {
              methods = {
                create = {
                  description = "Creates a DataScan resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataScans.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dataScanId = {
                      description = "Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the parent location: projects/{project}/locations/{location_id} where project refers to a project_id or project_number and location_id refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/dataScans",
                  request = {
                    ["$ref"] = "GoogleCloudDataplexV1DataScan",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a DataScan resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}",
                  httpMethod = "DELETE",
                  id = "dataplex.projects.locations.dataScans.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the dataScan: projects/{project}/locations/{location_id}/dataScans/{data_scan_id} where project refers to a project_id or project_number and location_id refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a DataScan resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.dataScans.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the dataScan: projects/{project}/locations/{location_id}/dataScans/{data_scan_id} where project refers to a project_id or project_number and location_id refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "Optional. Select the DataScan view to return. Defaults to BASIC.",
                      enum = {
                        "DATA_SCAN_VIEW_UNSPECIFIED",
                        "BASIC",
                        "FULL",
                      },
                      enumDescriptions = {
                        "The API will default to the BASIC view.",
                        "Basic view that does not include spec and result.",
                        "Include everything.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDataplexV1DataScan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.dataScans.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists DataScans.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.dataScans.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Order by fields (name or create_time) for the result. If not specified, the ordering is undefined.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Maximum number of dataScans to return. The service may return fewer than this value. If unspecified, at most 10 scans will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Page token received from a previous ListDataScans call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListDataScans must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the parent location: projects/{project}/locations/{location_id} where project refers to a project_id or project_number and location_id refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/dataScans",
                  response = {
                    ["$ref"] = "GoogleCloudDataplexV1ListDataScansResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a DataScan resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}",
                  httpMethod = "PATCH",
                  id = "dataplex.projects.locations.dataScans.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDataplexV1DataScan",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                run = {
                  description = "Runs an on-demand execution of a DataScan",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}:run",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataScans.run",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the DataScan: projects/{project}/locations/{location_id}/dataScans/{data_scan_id}. where project refers to a project_id or project_number and location_id refers to a GCP region.Only OnDemand data scans are allowed.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:run",
                  request = {
                    ["$ref"] = "GoogleCloudDataplexV1RunDataScanRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDataplexV1RunDataScanResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataScans.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataScans.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                jobs = {
                  methods = {
                    get = {
                      description = "Gets a DataScanJob resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}/jobs/{jobsId}",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.dataScans.jobs.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the DataScanJob: projects/{project}/locations/{location_id}/dataScans/{data_scan_id}/dataScanJobs/{data_scan_job_id} where project refers to a project_id or project_number and location_id refers to a GCP region.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+/jobs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. Select the DataScanJob view to return. Defaults to BASIC.",
                          enum = {
                            "DATA_SCAN_JOB_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The API will default to the BASIC view.",
                            "Basic view that does not include spec and result.",
                            "Include everything.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1DataScanJob",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists DataScanJobs under the given DataScan.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataScans/{dataScansId}/jobs",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.dataScans.jobs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. Maximum number of DataScanJobs to return. The service may return fewer than this value. If unspecified, at most 10 DataScanJobs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token received from a previous ListDataScanJobs call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListDataScanJobs must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent environment: projects/{project}/locations/{location_id}/dataScans/{data_scan_id} where project refers to a project_id or project_number and location_id refers to a GCP region.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataScans/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/jobs",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1ListDataScanJobsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            dataTaxonomies = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataTaxonomies/{dataTaxonomiesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.dataTaxonomies.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataTaxonomies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataTaxonomies/{dataTaxonomiesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataTaxonomies.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataTaxonomies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataTaxonomies/{dataTaxonomiesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.dataTaxonomies.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataTaxonomies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                attributes = {
                  methods = {
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataTaxonomies/{dataTaxonomiesId}/attributes/{attributesId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.dataTaxonomies.attributes.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        ["options.requestedPolicyVersion"] = {
                          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataTaxonomies/[^/]+/attributes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataTaxonomies/{dataTaxonomiesId}/attributes/{attributesId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.dataTaxonomies.attributes.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataTaxonomies/[^/]+/attributes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataTaxonomies/{dataTaxonomiesId}/attributes/{attributesId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.dataTaxonomies.attributes.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataTaxonomies/[^/]+/attributes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            lakes = {
              methods = {
                create = {
                  description = "Creates a lake resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.lakes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    lakeId = {
                      description = "Required. Lake identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the customer project / location.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the lake location, of the form: projects/{project_number}/locations/{location_id} where location_id refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/lakes",
                  request = {
                    ["$ref"] = "GoogleCloudDataplexV1Lake",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a lake resource. All zones within the lake must be deleted before the lake can be deleted.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}",
                  httpMethod = "DELETE",
                  id = "dataplex.projects.locations.lakes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Retrieves a lake resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.lakes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDataplexV1Lake",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.lakes.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists lake resources in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.lakes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Maximum number of Lakes to return. The service may return fewer than this value. If unspecified, at most 10 lakes will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Page token received from a previous ListLakes call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListLakes must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the lake location, of the form: projects/{project_number}/locations/{location_id} where location_id refers to a GCP region.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/lakes",
                  response = {
                    ["$ref"] = "GoogleCloudDataplexV1ListLakesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a lake resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}",
                  httpMethod = "PATCH",
                  id = "dataplex.projects.locations.lakes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The relative resource name of the lake, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Mask of fields to update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDataplexV1Lake",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.lakes.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.lakes.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                actions = {
                  methods = {
                    list = {
                      description = "Lists action resources in a lake.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/actions",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.actions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. Maximum number of actions to return. The service may return fewer than this value. If unspecified, at most 10 actions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token received from a previous ListLakeActions call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListLakeActions must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/actions",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1ListActionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                content = {
                  methods = {
                    create = {
                      description = "Create a content.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.content.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/content",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Delete a content.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content/{contentId}",
                      httpMethod = "DELETE",
                      id = "dataplex.projects.locations.lakes.content.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/content/.*$",
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
                      description = "Get a content resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content/{contentId}",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.content.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/content/.*$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. Specify content view to make a partial request.",
                          enum = {
                            "CONTENT_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "Content view not specified. Defaults to BASIC. The API will default to the BASIC view.",
                            "Will not return the data_text field.",
                            "Returns the complete proto.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content/{contentId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.content.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        ["options.requestedPolicyVersion"] = {
                          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/content/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "List content.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.content.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter request. Filters are case-sensitive. The following formats are supported:labels.key1 = \"value1\" labels:key1 type = \"NOTEBOOK\" type = \"SQL_SCRIPT\"These restrictions can be coinjoined with AND, OR and NOT conjunctions.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Maximum number of content to return. The service may return fewer than this value. If unspecified, at most 10 content will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token received from a previous ListContent call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListContent must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/content",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1ListContentResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update a content. Only supports full resource update.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content/{contentId}",
                      httpMethod = "PATCH",
                      id = "dataplex.projects.locations.lakes.content.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/content/.*$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified contentitem resource. Replaces any existing policy.Caller must have Google IAM dataplex.content.setIamPolicy permission on the resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content/{contentId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.content.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/content/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns the caller's permissions on a resource. If the resource does not exist, an empty set of permissions is returned (a NOT_FOUND error is not returned).A caller is not required to have Google IAM permission to make this request.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/content/{contentId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.content.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/content/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                contentitems = {
                  methods = {
                    create = {
                      description = "Create a content.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.contentitems.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/contentitems",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Delete a content.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems/{contentitemsId}",
                      httpMethod = "DELETE",
                      id = "dataplex.projects.locations.lakes.contentitems.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/contentitems/.*$",
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
                      description = "Get a content resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems/{contentitemsId}",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.contentitems.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the content: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/contentitems/.*$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Optional. Specify content view to make a partial request.",
                          enum = {
                            "CONTENT_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "Content view not specified. Defaults to BASIC. The API will default to the BASIC view.",
                            "Will not return the data_text field.",
                            "Returns the complete proto.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems/{contentitemsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.contentitems.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        ["options.requestedPolicyVersion"] = {
                          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/contentitems/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "List content.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.contentitems.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter request. Filters are case-sensitive. The following formats are supported:labels.key1 = \"value1\" labels:key1 type = \"NOTEBOOK\" type = \"SQL_SCRIPT\"These restrictions can be coinjoined with AND, OR and NOT conjunctions.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Maximum number of content to return. The service may return fewer than this value. If unspecified, at most 10 content will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token received from a previous ListContent call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListContent must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/contentitems",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1ListContentResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update a content. Only supports full resource update.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems/{contentitemsId}",
                      httpMethod = "PATCH",
                      id = "dataplex.projects.locations.lakes.contentitems.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/contentitems/.*$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Content",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified contentitem resource. Replaces any existing policy.Caller must have Google IAM dataplex.content.setIamPolicy permission on the resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems/{contentitemsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.contentitems.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/contentitems/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns the caller's permissions on a resource. If the resource does not exist, an empty set of permissions is returned (a NOT_FOUND error is not returned).A caller is not required to have Google IAM permission to make this request.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/contentitems/{contentitemsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.contentitems.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/contentitems/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                environments = {
                  methods = {
                    create = {
                      description = "Create an environment resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.environments.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        environmentId = {
                          description = "Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/environments",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Environment",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Delete the environment resource. All the child resources must have been deleted before environment deletion can be initiated.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments/{environmentsId}",
                      httpMethod = "DELETE",
                      id = "dataplex.projects.locations.lakes.environments.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the environment: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environments/{environment_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Get environment resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments/{environmentsId}",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.environments.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the environment: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environments/{environment_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Environment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments/{environmentsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.environments.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        ["options.requestedPolicyVersion"] = {
                          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists environments under the given lake.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.environments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter request.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Order by fields for the result.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Maximum number of environments to return. The service may return fewer than this value. If unspecified, at most 10 environments will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token received from a previous ListEnvironments call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListEnvironments must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_id}/locations/{location_id}/lakes/{lake_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/environments",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1ListEnvironmentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update the environment resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments/{environmentsId}",
                      httpMethod = "PATCH",
                      id = "dataplex.projects.locations.lakes.environments.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Environment",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments/{environmentsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.environments.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments/{environmentsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.environments.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    sessions = {
                      methods = {
                        list = {
                          description = "Lists session resources in an environment.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/environments/{environmentsId}/sessions",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.environments.sessions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Filter request. The following mode filter is supported to return only the sessions belonging to the requester when the mode is USER and return sessions of all the users when the mode is ADMIN. When no filter is sent default to USER mode. NOTE: When the mode is ADMIN, the requester should have dataplex.environments.listAllSessions permission to list all sessions, in absence of the permission, the request fails.mode = ADMIN | USER",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Maximum number of sessions to return. The service may return fewer than this value. If unspecified, at most 10 sessions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Page token received from a previous ListSessions call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListSessions must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the parent environment: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/environments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/sessions",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1ListSessionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                tasks = {
                  methods = {
                    create = {
                      description = "Creates a task resource within a lake.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.tasks.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        taskId = {
                          description = "Required. Task identifier.",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/tasks",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Task",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Delete the task resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}",
                      httpMethod = "DELETE",
                      id = "dataplex.projects.locations.lakes.tasks.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the task: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/task/{task_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Get task resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.tasks.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the task: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{tasks_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Task",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.tasks.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        ["options.requestedPolicyVersion"] = {
                          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists tasks under the given lake.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.tasks.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter request.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Order by fields for the result.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Maximum number of tasks to return. The service may return fewer than this value. If unspecified, at most 10 tasks will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token received from a previous ListZones call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListZones must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/tasks",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1ListTasksResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update the task resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}",
                      httpMethod = "PATCH",
                      id = "dataplex.projects.locations.lakes.tasks.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Task",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    run = {
                      description = "Run an on demand execution of a Task.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}:run",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.tasks.run",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the task: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:run",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1RunTaskRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1RunTaskResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.tasks.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.tasks.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    jobs = {
                      methods = {
                        cancel = {
                          description = "Cancel jobs running for the task resource.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}/jobs/{jobsId}:cancel",
                          httpMethod = "POST",
                          id = "dataplex.projects.locations.lakes.tasks.jobs.cancel",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the job: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/task/{task_id}/job/{job_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+/jobs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:cancel",
                          request = {
                            ["$ref"] = "GoogleCloudDataplexV1CancelJobRequest",
                          },
                          response = {
                            ["$ref"] = "Empty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Get job resource.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}/jobs/{jobsId}",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.tasks.jobs.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the job: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+/jobs/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1Job",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists Jobs under the given task.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/tasks/{tasksId}/jobs",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.tasks.jobs.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Optional. Maximum number of jobs to return. The service may return fewer than this value. If unspecified, at most 10 jobs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Page token received from a previous ListJobs call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListJobs must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the parent environment: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/tasks/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/jobs",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1ListJobsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                zones = {
                  methods = {
                    create = {
                      description = "Creates a zone resource within a lake.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.zones.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                        zoneId = {
                          description = "Required. Zone identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique across all lakes from all locations in a project. * Must not be one of the reserved IDs (i.e. \"default\", \"global-temp\")",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/zones",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Zone",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a zone resource. All assets within a zone must be deleted before the zone can be deleted.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}",
                      httpMethod = "DELETE",
                      id = "dataplex.projects.locations.lakes.zones.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Retrieves a zone resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.zones.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1Zone",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.zones.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        ["options.requestedPolicyVersion"] = {
                          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists zone resources in a lake.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones",
                      httpMethod = "GET",
                      id = "dataplex.projects.locations.lakes.zones.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter request.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Order by fields for the result.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Maximum number of zones to return. The service may return fewer than this value. If unspecified, at most 10 zones will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token received from a previous ListZones call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListZones must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the parent lake: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/zones",
                      response = {
                        ["$ref"] = "GoogleCloudDataplexV1ListZonesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a zone resource.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}",
                      httpMethod = "PATCH",
                      id = "dataplex.projects.locations.lakes.zones.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDataplexV1Zone",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.zones.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "dataplex.projects.locations.lakes.zones.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    actions = {
                      methods = {
                        list = {
                          description = "Lists action resources in a zone.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/actions",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.zones.actions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Optional. Maximum number of actions to return. The service may return fewer than this value. If unspecified, at most 10 actions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Page token received from a previous ListZoneActions call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListZoneActions must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/actions",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1ListActionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    assets = {
                      methods = {
                        create = {
                          description = "Creates an asset resource.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets",
                          httpMethod = "POST",
                          id = "dataplex.projects.locations.lakes.zones.assets.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            assetId = {
                              description = "Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            validateOnly = {
                              description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v1/{+parent}/assets",
                          request = {
                            ["$ref"] = "GoogleCloudDataplexV1Asset",
                          },
                          response = {
                            ["$ref"] = "GoogleLongrunningOperation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes an asset resource. The referenced storage resource is detached (default) or deleted based on the associated Lifecycle policy.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets/{assetsId}",
                          httpMethod = "DELETE",
                          id = "dataplex.projects.locations.lakes.zones.assets.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the asset: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/assets/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleLongrunningOperation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Retrieves an asset resource.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets/{assetsId}",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.zones.assets.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the asset: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/assets/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1Asset",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getIamPolicy = {
                          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets/{assetsId}:getIamPolicy",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.zones.assets.getIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            ["options.requestedPolicyVersion"] = {
                              description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/assets/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+resource}:getIamPolicy",
                          response = {
                            ["$ref"] = "GoogleIamV1Policy",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists asset resources in a zone.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.zones.assets.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Filter request.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. Order by fields for the result.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Maximum number of asset to return. The service may return fewer than this value. If unspecified, at most 10 assets will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Page token received from a previous ListAssets call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListAssets must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/assets",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1ListAssetsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates an asset resource.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets/{assetsId}",
                          httpMethod = "PATCH",
                          id = "dataplex.projects.locations.lakes.zones.assets.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Output only. The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/assets/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. Mask of fields to update.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                            validateOnly = {
                              description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDataplexV1Asset",
                          },
                          response = {
                            ["$ref"] = "GoogleLongrunningOperation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        setIamPolicy = {
                          description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets/{assetsId}:setIamPolicy",
                          httpMethod = "POST",
                          id = "dataplex.projects.locations.lakes.zones.assets.setIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/assets/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+resource}:setIamPolicy",
                          request = {
                            ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleIamV1Policy",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        testIamPermissions = {
                          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets/{assetsId}:testIamPermissions",
                          httpMethod = "POST",
                          id = "dataplex.projects.locations.lakes.zones.assets.testIamPermissions",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/assets/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+resource}:testIamPermissions",
                          request = {
                            ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                      resources = {
                        actions = {
                          methods = {
                            list = {
                              description = "Lists action resources in an asset.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/assets/{assetsId}/actions",
                              httpMethod = "GET",
                              id = "dataplex.projects.locations.lakes.zones.assets.actions.list",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                pageSize = {
                                  description = "Optional. Maximum number of actions to return. The service may return fewer than this value. If unspecified, at most 10 actions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                                  format = "int32",
                                  location = "query",
                                  type = "integer",
                                },
                                pageToken = {
                                  description = "Optional. Page token received from a previous ListAssetActions call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListAssetActions must match the call that provided the page token.",
                                  location = "query",
                                  type = "string",
                                },
                                parent = {
                                  description = "Required. The resource name of the parent asset: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/assets/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/actions",
                              response = {
                                ["$ref"] = "GoogleCloudDataplexV1ListActionsResponse",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                          },
                        },
                      },
                    },
                    entities = {
                      methods = {
                        create = {
                          description = "Create a metadata entity.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities",
                          httpMethod = "POST",
                          id = "dataplex.projects.locations.lakes.zones.entities.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            validateOnly = {
                              description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v1/{+parent}/entities",
                          request = {
                            ["$ref"] = "GoogleCloudDataplexV1Entity",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1Entity",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Delete a metadata entity.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities/{entitiesId}",
                          httpMethod = "DELETE",
                          id = "dataplex.projects.locations.lakes.zones.entities.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            etag = {
                              description = "Required. The etag associated with the entity, which can be retrieved with a GetEntity request.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "Required. The resource name of the entity: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/entities/[^/]+$",
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
                          description = "Get a metadata entity.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities/{entitiesId}",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.zones.entities.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the entity: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/entities/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "Optional. Used to select the subset of entity information to return. Defaults to BASIC.",
                              enum = {
                                "ENTITY_VIEW_UNSPECIFIED",
                                "BASIC",
                                "SCHEMA",
                                "FULL",
                              },
                              enumDescriptions = {
                                "The API will default to the BASIC view.",
                                "Minimal view that does not include the schema.",
                                "Include basic information and schema.",
                                "Include everything. Currently, this is the same as the SCHEMA view.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1Entity",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "List metadata entities in a zone.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities",
                          httpMethod = "GET",
                          id = "dataplex.projects.locations.lakes.zones.entities.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. The following filter parameters can be added to the URL to limit the entities returned by the API: Entity ID: ?filter=\"id=entityID\" Asset ID: ?filter=\"asset=assetID\" Data path ?filter=\"data_path=gs://my-bucket\" Is HIVE compatible: ?filter=\"hive_compatible=true\" Is BigQuery compatible: ?filter=\"bigquery_compatible=true\"",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Maximum number of entities to return. The service may return fewer than this value. If unspecified, 100 entities will be returned by default. The maximum value is 500; larger values will will be truncated to 500.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Page token received from a previous ListEntities call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListEntities must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "Required. Specify the entity view to make a partial list request.",
                              enum = {
                                "ENTITY_VIEW_UNSPECIFIED",
                                "TABLES",
                                "FILESETS",
                              },
                              enumDescriptions = {
                                "The default unset value. Return both table and fileset entities if unspecified.",
                                "Only list table entities.",
                                "Only list fileset entities.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/entities",
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1ListEntitiesResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        update = {
                          description = "Update a metadata entity. Only supports full resource update.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities/{entitiesId}",
                          httpMethod = "PUT",
                          id = "dataplex.projects.locations.lakes.zones.entities.update",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Output only. The resource name of the entity, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/entities/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            validateOnly = {
                              description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDataplexV1Entity",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDataplexV1Entity",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                      resources = {
                        partitions = {
                          methods = {
                            create = {
                              description = "Create a metadata partition.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities/{entitiesId}/partitions",
                              httpMethod = "POST",
                              id = "dataplex.projects.locations.lakes.zones.entities.partitions.create",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                parent = {
                                  description = "Required. The resource name of the parent zone: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/entities/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                                validateOnly = {
                                  description = "Optional. Only validate the request, but do not perform mutations. The default is false.",
                                  location = "query",
                                  type = "boolean",
                                },
                              },
                              path = "v1/{+parent}/partitions",
                              request = {
                                ["$ref"] = "GoogleCloudDataplexV1Partition",
                              },
                              response = {
                                ["$ref"] = "GoogleCloudDataplexV1Partition",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            delete = {
                              description = "Delete a metadata partition.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities/{entitiesId}/partitions/{partitionsId}",
                              httpMethod = "DELETE",
                              id = "dataplex.projects.locations.lakes.zones.entities.partitions.delete",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                etag = {
                                  description = "Optional. The etag associated with the partition.",
                                  location = "query",
                                  type = "string",
                                },
                                name = {
                                  description = "Required. The resource name of the partition. format: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}/partitions/{partition_value_path}. The {partition_value_path} segment consists of an ordered sequence of partition values separated by \"/\". All values must be provided.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/entities/[^/]+/partitions/.*$",
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
                              description = "Get a metadata partition of an entity.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities/{entitiesId}/partitions/{partitionsId}",
                              httpMethod = "GET",
                              id = "dataplex.projects.locations.lakes.zones.entities.partitions.get",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The resource name of the partition: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}/partitions/{partition_value_path}. The {partition_value_path} segment consists of an ordered sequence of partition values separated by \"/\". All values must be provided.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/entities/[^/]+/partitions/.*$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}",
                              response = {
                                ["$ref"] = "GoogleCloudDataplexV1Partition",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            list = {
                              description = "List metadata partitions of an entity.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/lakes/{lakesId}/zones/{zonesId}/entities/{entitiesId}/partitions",
                              httpMethod = "GET",
                              id = "dataplex.projects.locations.lakes.zones.entities.partitions.list",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                filter = {
                                  description = "Optional. Filter the partitions returned to the caller using a key value pair expression. Supported operators and syntax: logic operators: AND, OR comparison operators: <, >, >=, <= ,=, != LIKE operators: The right hand of a LIKE operator supports \".\" and \"*\" for wildcard searches, for example \"value1 LIKE \".*oo.*\" parenthetical grouping: ( )Sample filter expression: `?filter=\"key1 < value1 OR key2 > value2\"Notes: Keys to the left of operators are case insensitive. Partition results are sorted first by creation time, then by lexicographic order. Up to 20 key value filter pairs are allowed, but due to performance considerations, only the first 10 will be used as a filter.",
                                  location = "query",
                                  type = "string",
                                },
                                pageSize = {
                                  description = "Optional. Maximum number of partitions to return. The service may return fewer than this value. If unspecified, 100 partitions will be returned by default. The maximum page size is 500; larger values will will be truncated to 500.",
                                  format = "int32",
                                  location = "query",
                                  type = "integer",
                                },
                                pageToken = {
                                  description = "Optional. Page token received from a previous ListPartitions call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ListPartitions must match the call that provided the page token.",
                                  location = "query",
                                  type = "string",
                                },
                                parent = {
                                  description = "Required. The resource name of the parent entity: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/lakes/[^/]+/zones/[^/]+/entities/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/partitions",
                              response = {
                                ["$ref"] = "GoogleCloudDataplexV1ListPartitionsResponse",
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
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "dataplex.projects.locations.operations.cancel",
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
                  request = {
                    ["$ref"] = "GoogleLongrunningCancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "dataplex.projects.locations.operations.delete",
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
                  id = "dataplex.projects.locations.operations.get",
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
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "dataplex.projects.locations.operations.list",
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
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
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
  revision = "20230102",
  rootUrl = "https://dataplex.googleapis.com/",
  schemas = {
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } ",
      id = "Empty",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1Action = {
      description = "Action represents an issue requiring administrator action for resolution.",
      id = "GoogleCloudDataplexV1Action",
      properties = {
        asset = {
          description = "Output only. The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.",
          readOnly = true,
          type = "string",
        },
        category = {
          description = "The category of issue associated with the action.",
          enum = {
            "CATEGORY_UNSPECIFIED",
            "RESOURCE_MANAGEMENT",
            "SECURITY_POLICY",
            "DATA_DISCOVERY",
          },
          enumDescriptions = {
            "Unspecified category.",
            "Resource management related issues.",
            "Security policy related issues.",
            "Data and discovery related issues.",
          },
          type = "string",
        },
        dataLocations = {
          description = "The list of data locations associated with this action. Cloud Storage locations are represented as URI paths(E.g. gs://bucket/table1/year=2020/month=Jan/). BigQuery locations refer to resource names(E.g. bigquery.googleapis.com/projects/project-id/datasets/dataset-id).",
          items = {
            type = "string",
          },
          type = "array",
        },
        detectTime = {
          description = "The time that the issue was detected.",
          format = "google-datetime",
          type = "string",
        },
        failedSecurityPolicyApply = {
          ["$ref"] = "GoogleCloudDataplexV1ActionFailedSecurityPolicyApply",
          description = "Details for issues related to applying security policy.",
        },
        incompatibleDataSchema = {
          ["$ref"] = "GoogleCloudDataplexV1ActionIncompatibleDataSchema",
          description = "Details for issues related to incompatible schemas detected within data.",
        },
        invalidDataFormat = {
          ["$ref"] = "GoogleCloudDataplexV1ActionInvalidDataFormat",
          description = "Details for issues related to invalid or unsupported data formats.",
        },
        invalidDataOrganization = {
          ["$ref"] = "GoogleCloudDataplexV1ActionInvalidDataOrganization",
          description = "Details for issues related to invalid data arrangement.",
        },
        invalidDataPartition = {
          ["$ref"] = "GoogleCloudDataplexV1ActionInvalidDataPartition",
          description = "Details for issues related to invalid or unsupported data partition structure.",
        },
        issue = {
          description = "Detailed description of the issue requiring action.",
          type = "string",
        },
        lake = {
          description = "Output only. The relative resource name of the lake, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
          readOnly = true,
          type = "string",
        },
        missingData = {
          ["$ref"] = "GoogleCloudDataplexV1ActionMissingData",
          description = "Details for issues related to absence of data within managed resources.",
        },
        missingResource = {
          ["$ref"] = "GoogleCloudDataplexV1ActionMissingResource",
          description = "Details for issues related to absence of a managed resource.",
        },
        name = {
          description = "Output only. The relative resource name of the action, of the form: projects/{project}/locations/{location}/lakes/{lake}/actions/{action} projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/actions/{action} projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/assets/{asset}/actions/{action}.",
          readOnly = true,
          type = "string",
        },
        unauthorizedResource = {
          ["$ref"] = "GoogleCloudDataplexV1ActionUnauthorizedResource",
          description = "Details for issues related to lack of permissions to access data resources.",
        },
        zone = {
          description = "Output only. The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ActionFailedSecurityPolicyApply = {
      description = "Failed to apply security policy to the managed resource(s) under a lake, zone or an asset. For a lake or zone resource, one or more underlying assets has a failure applying security policy to the associated managed resource.",
      id = "GoogleCloudDataplexV1ActionFailedSecurityPolicyApply",
      properties = {
        asset = {
          description = "Resource name of one of the assets with failing security policy application. Populated for a lake or zone resource only.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ActionIncompatibleDataSchema = {
      description = "Action details for incompatible schemas detected by discovery.",
      id = "GoogleCloudDataplexV1ActionIncompatibleDataSchema",
      properties = {
        existingSchema = {
          description = "The existing and expected schema of the table. The schema is provided as a JSON formatted structure listing columns and data types.",
          type = "string",
        },
        newSchema = {
          description = "The new and incompatible schema within the table. The schema is provided as a JSON formatted structured listing columns and data types.",
          type = "string",
        },
        sampledDataLocations = {
          description = "The list of data locations sampled and used for format/schema inference.",
          items = {
            type = "string",
          },
          type = "array",
        },
        schemaChange = {
          description = "Whether the action relates to a schema that is incompatible or modified.",
          enum = {
            "SCHEMA_CHANGE_UNSPECIFIED",
            "INCOMPATIBLE",
            "MODIFIED",
          },
          enumDescriptions = {
            "Schema change unspecified.",
            "Newly discovered schema is incompatible with existing schema.",
            "Newly discovered schema has changed from existing schema for data in a curated zone.",
          },
          type = "string",
        },
        table = {
          description = "The name of the table containing invalid data.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ActionInvalidDataFormat = {
      description = "Action details for invalid or unsupported data files detected by discovery.",
      id = "GoogleCloudDataplexV1ActionInvalidDataFormat",
      properties = {
        expectedFormat = {
          description = "The expected data format of the entity.",
          type = "string",
        },
        newFormat = {
          description = "The new unexpected data format within the entity.",
          type = "string",
        },
        sampledDataLocations = {
          description = "The list of data locations sampled and used for format/schema inference.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ActionInvalidDataOrganization = {
      description = "Action details for invalid data arrangement.",
      id = "GoogleCloudDataplexV1ActionInvalidDataOrganization",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1ActionInvalidDataPartition = {
      description = "Action details for invalid or unsupported partitions detected by discovery.",
      id = "GoogleCloudDataplexV1ActionInvalidDataPartition",
      properties = {
        expectedStructure = {
          description = "The issue type of InvalidDataPartition.",
          enum = {
            "PARTITION_STRUCTURE_UNSPECIFIED",
            "CONSISTENT_KEYS",
            "HIVE_STYLE_KEYS",
          },
          enumDescriptions = {
            "PartitionStructure unspecified.",
            "Consistent hive-style partition definition (both raw and curated zone).",
            "Hive style partition definition (curated zone only).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ActionMissingData = {
      description = "Action details for absence of data detected by discovery.",
      id = "GoogleCloudDataplexV1ActionMissingData",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1ActionMissingResource = {
      description = "Action details for resource references in assets that cannot be located.",
      id = "GoogleCloudDataplexV1ActionMissingResource",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1ActionUnauthorizedResource = {
      description = "Action details for unauthorized resource issues raised to indicate that the service account associated with the lake instance is not authorized to access or manage the resource associated with an asset.",
      id = "GoogleCloudDataplexV1ActionUnauthorizedResource",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1Asset = {
      description = "An asset represents a cloud resource that is being managed within a lake as a member of a zone.",
      id = "GoogleCloudDataplexV1Asset",
      properties = {
        createTime = {
          description = "Output only. The time when the asset was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the asset.",
          type = "string",
        },
        discoverySpec = {
          ["$ref"] = "GoogleCloudDataplexV1AssetDiscoverySpec",
          description = "Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.",
        },
        discoveryStatus = {
          ["$ref"] = "GoogleCloudDataplexV1AssetDiscoveryStatus",
          description = "Output only. Status of the discovery feature applied to data referenced by this asset.",
          readOnly = true,
        },
        displayName = {
          description = "Optional. User friendly display name.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User defined labels for the asset.",
          type = "object",
        },
        name = {
          description = "Output only. The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.",
          readOnly = true,
          type = "string",
        },
        resourceSpec = {
          ["$ref"] = "GoogleCloudDataplexV1AssetResourceSpec",
          description = "Required. Specification of the resource that is referenced by this asset.",
        },
        resourceStatus = {
          ["$ref"] = "GoogleCloudDataplexV1AssetResourceStatus",
          description = "Output only. Status of the resource referenced by this asset.",
          readOnly = true,
        },
        securityStatus = {
          ["$ref"] = "GoogleCloudDataplexV1AssetSecurityStatus",
          description = "Output only. Status of the security policy applied to resource referenced by this asset.",
          readOnly = true,
        },
        state = {
          description = "Output only. Current state of the asset.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "ACTION_REQUIRED",
          },
          enumDescriptions = {
            "State is not specified.",
            "Resource is active, i.e., ready to use.",
            "Resource is under creation.",
            "Resource is under deletion.",
            "Resource is active but has unresolved actions.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the asset was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetDiscoverySpec = {
      description = "Settings to manage the metadata discovery and publishing for an asset.",
      id = "GoogleCloudDataplexV1AssetDiscoverySpec",
      properties = {
        csvOptions = {
          ["$ref"] = "GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions",
          description = "Optional. Configuration for CSV data.",
        },
        enabled = {
          description = "Optional. Whether discovery is enabled.",
          type = "boolean",
        },
        excludePatterns = {
          description = "Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.",
          items = {
            type = "string",
          },
          type = "array",
        },
        includePatterns = {
          description = "Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.",
          items = {
            type = "string",
          },
          type = "array",
        },
        jsonOptions = {
          ["$ref"] = "GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions",
          description = "Optional. Configuration for Json data.",
        },
        schedule = {
          description = "Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: \"CRON_TZ=${IANA_TIME_ZONE}\" or TZ=${IANA_TIME_ZONE}\". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions = {
      description = "Describe CSV and similar semi-structured data formats.",
      id = "GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions",
      properties = {
        delimiter = {
          description = "Optional. The delimiter being used to separate values. This defaults to ','.",
          type = "string",
        },
        disableTypeInference = {
          description = "Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.",
          type = "boolean",
        },
        encoding = {
          description = "Optional. The character encoding of the data. The default is UTF-8.",
          type = "string",
        },
        headerRows = {
          description = "Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions = {
      description = "Describe JSON data format.",
      id = "GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions",
      properties = {
        disableTypeInference = {
          description = "Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).",
          type = "boolean",
        },
        encoding = {
          description = "Optional. The character encoding of the data. The default is UTF-8.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetDiscoveryStatus = {
      description = "Status of discovery for an asset.",
      id = "GoogleCloudDataplexV1AssetDiscoveryStatus",
      properties = {
        lastRunDuration = {
          description = "The duration of the last discovery run.",
          format = "google-duration",
          type = "string",
        },
        lastRunTime = {
          description = "The start time of the last discovery run.",
          format = "google-datetime",
          type = "string",
        },
        message = {
          description = "Additional information about the current state.",
          type = "string",
        },
        state = {
          description = "The current status of the discovery feature.",
          enum = {
            "STATE_UNSPECIFIED",
            "SCHEDULED",
            "IN_PROGRESS",
            "PAUSED",
            "DISABLED",
          },
          enumDescriptions = {
            "State is unspecified.",
            "Discovery for the asset is scheduled.",
            "Discovery for the asset is running.",
            "Discovery for the asset is currently paused (e.g. due to a lack of available resources). It will be automatically resumed.",
            "Discovery for the asset is disabled.",
          },
          type = "string",
        },
        stats = {
          ["$ref"] = "GoogleCloudDataplexV1AssetDiscoveryStatusStats",
          description = "Data Stats of the asset reported by discovery.",
        },
        updateTime = {
          description = "Last update time of the status.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetDiscoveryStatusStats = {
      description = "The aggregated data statistics for the asset reported by discovery.",
      id = "GoogleCloudDataplexV1AssetDiscoveryStatusStats",
      properties = {
        dataItems = {
          description = "The count of data items within the referenced resource.",
          format = "int64",
          type = "string",
        },
        dataSize = {
          description = "The number of stored data bytes within the referenced resource.",
          format = "int64",
          type = "string",
        },
        filesets = {
          description = "The count of fileset entities within the referenced resource.",
          format = "int64",
          type = "string",
        },
        tables = {
          description = "The count of table entities within the referenced resource.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetResourceSpec = {
      description = "Identifies the cloud resource that is referenced by this asset.",
      id = "GoogleCloudDataplexV1AssetResourceSpec",
      properties = {
        name = {
          description = "Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: projects/{project_number}/buckets/{bucket_id} projects/{project_number}/datasets/{dataset_id}",
          type = "string",
        },
        readAccessMode = {
          description = "Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.",
          enum = {
            "ACCESS_MODE_UNSPECIFIED",
            "DIRECT",
            "MANAGED",
          },
          enumDescriptions = {
            "Access mode unspecified.",
            "Default. Data is accessed directly using storage APIs.",
            "Data is accessed through a managed interface using BigQuery APIs.",
          },
          type = "string",
        },
        type = {
          description = "Required. Immutable. Type of resource.",
          enum = {
            "TYPE_UNSPECIFIED",
            "STORAGE_BUCKET",
            "BIGQUERY_DATASET",
          },
          enumDescriptions = {
            "Type not specified.",
            "Cloud Storage bucket.",
            "BigQuery dataset.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetResourceStatus = {
      description = "Status of the resource referenced by an asset.",
      id = "GoogleCloudDataplexV1AssetResourceStatus",
      properties = {
        message = {
          description = "Additional information about the current state.",
          type = "string",
        },
        state = {
          description = "The current state of the managed resource.",
          enum = {
            "STATE_UNSPECIFIED",
            "READY",
            "ERROR",
          },
          enumDescriptions = {
            "State unspecified.",
            "Resource does not have any errors.",
            "Resource has errors.",
          },
          type = "string",
        },
        updateTime = {
          description = "Last update time of the status.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetSecurityStatus = {
      description = "Security policy status of the asset. Data security policy, i.e., readers, writers & owners, should be specified in the lake/zone/asset IAM policy.",
      id = "GoogleCloudDataplexV1AssetSecurityStatus",
      properties = {
        message = {
          description = "Additional information about the current state.",
          type = "string",
        },
        state = {
          description = "The current state of the security policy applied to the attached resource.",
          enum = {
            "STATE_UNSPECIFIED",
            "READY",
            "APPLYING",
            "ERROR",
          },
          enumDescriptions = {
            "State unspecified.",
            "Security policy has been successfully applied to the attached resource.",
            "Security policy is in the process of being applied to the attached resource.",
            "Security policy could not be applied to the attached resource due to errors.",
          },
          type = "string",
        },
        updateTime = {
          description = "Last update time of the status.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1AssetStatus = {
      description = "Aggregated status of the underlying assets of a lake or zone.",
      id = "GoogleCloudDataplexV1AssetStatus",
      properties = {
        activeAssets = {
          description = "Number of active assets.",
          format = "int32",
          type = "integer",
        },
        securityPolicyApplyingAssets = {
          description = "Number of assets that are in process of updating the security policy on attached resources.",
          format = "int32",
          type = "integer",
        },
        updateTime = {
          description = "Last update time of the status.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1CancelJobRequest = {
      description = "Cancel task jobs.",
      id = "GoogleCloudDataplexV1CancelJobRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1Content = {
      description = "Content represents a user-visible notebook or a sql script",
      id = "GoogleCloudDataplexV1Content",
      properties = {
        createTime = {
          description = "Output only. Content creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dataText = {
          description = "Required. Content data in string format.",
          type = "string",
        },
        description = {
          description = "Optional. Description of the content.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User defined labels for the content.",
          type = "object",
        },
        name = {
          description = "Output only. The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}",
          readOnly = true,
          type = "string",
        },
        notebook = {
          ["$ref"] = "GoogleCloudDataplexV1ContentNotebook",
          description = "Notebook related configurations.",
        },
        path = {
          description = "Required. The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.",
          type = "string",
        },
        sqlScript = {
          ["$ref"] = "GoogleCloudDataplexV1ContentSqlScript",
          description = "Sql Script related configurations.",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the content. This ID will be different if the content is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the content was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ContentNotebook = {
      description = "Configuration for Notebook content.",
      id = "GoogleCloudDataplexV1ContentNotebook",
      properties = {
        kernelType = {
          description = "Required. Kernel Type of the notebook.",
          enum = {
            "KERNEL_TYPE_UNSPECIFIED",
            "PYTHON3",
          },
          enumDescriptions = {
            "Kernel Type unspecified.",
            "Python 3 Kernel.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ContentSqlScript = {
      description = "Configuration for the Sql Script content.",
      id = "GoogleCloudDataplexV1ContentSqlScript",
      properties = {
        engine = {
          description = "Required. Query Engine to be used for the Sql Query.",
          enum = {
            "QUERY_ENGINE_UNSPECIFIED",
            "SPARK",
          },
          enumDescriptions = {
            "Value was unspecified.",
            "Spark SQL Query.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResult = {
      description = "DataProfileResult defines the output of DataProfileScan. Each field of the table will have field type specific profile result.",
      id = "GoogleCloudDataplexV1DataProfileResult",
      properties = {
        profile = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileResultProfile",
          description = "The profile information per field.",
        },
        rowCount = {
          description = "The count of rows scanned.",
          format = "int64",
          type = "string",
        },
        scannedData = {
          ["$ref"] = "GoogleCloudDataplexV1ScannedData",
          description = "The data scanned for this result.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResultProfile = {
      description = "Contains name, type, mode and field type specific profile information.",
      id = "GoogleCloudDataplexV1DataProfileResultProfile",
      properties = {
        fields = {
          description = "List of fields with structural and profile information for each field.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1DataProfileResultProfileField",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResultProfileField = {
      description = "A field within a table.",
      id = "GoogleCloudDataplexV1DataProfileResultProfileField",
      properties = {
        mode = {
          description = "The mode of the field. Possible values include: REQUIRED, if it is a required field. NULLABLE, if it is an optional field. REPEATED, if it is a repeated field.",
          type = "string",
        },
        name = {
          description = "The name of the field.",
          type = "string",
        },
        profile = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo",
          description = "Profile information for the corresponding field.",
        },
        type = {
          description = "The field data type. Possible values include: STRING BYTE INT64 INT32 INT16 DOUBLE FLOAT DECIMAL BOOLEAN BINARY TIMESTAMP DATE TIME NULL RECORD",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo = {
      description = "The profile information for each field type.",
      id = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo",
      properties = {
        distinctRatio = {
          description = "Ratio of rows with distinct values against total scanned rows. Not available for complex non-groupable field type RECORD and fields with REPEATABLE mode.",
          format = "double",
          type = "number",
        },
        doubleProfile = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo",
          description = "Double type field information.",
        },
        integerProfile = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo",
          description = "Integer type field information.",
        },
        nullRatio = {
          description = "Ratio of rows with null value against total scanned rows.",
          format = "double",
          type = "number",
        },
        stringProfile = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo",
          description = "String type field information.",
        },
        topNValues = {
          description = "The list of top N non-null values and number of times they occur in the scanned data. N is 10 or equal to the number of distinct values in the field, whichever is smaller. Not available for complex non-groupable field type RECORD and fields with REPEATABLE mode.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo = {
      description = "The profile information for a double type field.",
      id = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo",
      properties = {
        average = {
          description = "Average of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "double",
          type = "number",
        },
        max = {
          description = "Maximum of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "double",
          type = "number",
        },
        min = {
          description = "Minimum of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "double",
          type = "number",
        },
        quartiles = {
          description = "A quartile divides the number of data points into four parts, or quarters, of more-or-less equal size. Three main quartiles used are: The first quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is also known as the lower or 25th empirical quartile, as 25% of the data is below this point. The second quartile (Q2) is the median of a data set. So, 50% of the data lies below this point. The third quartile (Q3) splits off the highest 25% of data from the lowest 75%. It is known as the upper or 75th empirical quartile, as 75% of the data lies below this point. Here, the quartiles is provided as an ordered list of quartile values for the scanned data, occurring in order Q1, median, Q3.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
        standardDeviation = {
          description = "Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo = {
      description = "The profile information for an integer type field.",
      id = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo",
      properties = {
        average = {
          description = "Average of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "double",
          type = "number",
        },
        max = {
          description = "Maximum of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "int64",
          type = "string",
        },
        min = {
          description = "Minimum of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "int64",
          type = "string",
        },
        quartiles = {
          description = "A quartile divides the number of data points into four parts, or quarters, of more-or-less equal size. Three main quartiles used are: The first quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is also known as the lower or 25th empirical quartile, as 25% of the data is below this point. The second quartile (Q2) is the median of a data set. So, 50% of the data lies below this point. The third quartile (Q3) splits off the highest 25% of data from the lowest 75%. It is known as the upper or 75th empirical quartile, as 75% of the data lies below this point. Here, the quartiles is provided as an ordered list of quartile values for the scanned data, occurring in order Q1, median, Q3.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        standardDeviation = {
          description = "Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo = {
      description = "The profile information for a string type field.",
      id = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo",
      properties = {
        averageLength = {
          description = "Average length of non-null values in the scanned data.",
          format = "double",
          type = "number",
        },
        maxLength = {
          description = "Maximum length of non-null values in the scanned data.",
          format = "int64",
          type = "string",
        },
        minLength = {
          description = "Minimum length of non-null values in the scanned data.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue = {
      description = "Top N non-null values in the scanned data.",
      id = "GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue",
      properties = {
        count = {
          description = "Count of the corresponding value in the scanned data.",
          format = "int64",
          type = "string",
        },
        value = {
          description = "String value of a top N non-null value.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataProfileSpec = {
      description = "DataProfileScan related setting.",
      id = "GoogleCloudDataplexV1DataProfileSpec",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityDimensionResult = {
      description = "DataQualityDimensionResult provides a more detailed, per-dimension view of the results.",
      id = "GoogleCloudDataplexV1DataQualityDimensionResult",
      properties = {
        passed = {
          description = "Whether the dimension passed or failed.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityResult = {
      description = "The output of a DataQualityScan.",
      id = "GoogleCloudDataplexV1DataQualityResult",
      properties = {
        dimensions = {
          description = "A list of results at the dimension level.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1DataQualityDimensionResult",
          },
          type = "array",
        },
        passed = {
          description = "Overall data quality result -- true if all rules passed.",
          type = "boolean",
        },
        rowCount = {
          description = "The count of rows processed.",
          format = "int64",
          type = "string",
        },
        rules = {
          description = "A list of all the rules in a job, and their results.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleResult",
          },
          type = "array",
        },
        scannedData = {
          ["$ref"] = "GoogleCloudDataplexV1ScannedData",
          description = "The data scanned for this result.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRule = {
      description = "A rule captures data quality intent about a data source.",
      id = "GoogleCloudDataplexV1DataQualityRule",
      properties = {
        column = {
          description = "Optional. The unnested column which this rule is evaluated against.",
          type = "string",
        },
        dimension = {
          description = "Required. The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are \"COMPLETENESS\", \"ACCURACY\", \"CONSISTENCY\", \"VALIDITY\", \"UNIQUENESS\", \"INTEGRITY\"",
          type = "string",
        },
        ignoreNull = {
          description = "Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.Only applicable to ColumnMap rules.",
          type = "boolean",
        },
        nonNullExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleNonNullExpectation",
          description = "ColumnMap rule which evaluates whether each column value is null.",
        },
        rangeExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleRangeExpectation",
          description = "ColumnMap rule which evaluates whether each column value lies between a specified range.",
        },
        regexExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleRegexExpectation",
          description = "ColumnMap rule which evaluates whether each column value matches a specified regex.",
        },
        rowConditionExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation",
          description = "Table rule which evaluates whether each row passes the specified condition.",
        },
        setExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleSetExpectation",
          description = "ColumnMap rule which evaluates whether each column value is contained by a specified set.",
        },
        statisticRangeExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation",
          description = "ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range.",
        },
        tableConditionExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation",
          description = "Table rule which evaluates whether the provided expression is true.",
        },
        threshold = {
          description = "Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).",
          format = "double",
          type = "number",
        },
        uniquenessExpectation = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation",
          description = "ColumnAggregate rule which evaluates whether the column has duplicates.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleNonNullExpectation = {
      description = "Evaluates whether each column value is null.",
      id = "GoogleCloudDataplexV1DataQualityRuleNonNullExpectation",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleRangeExpectation = {
      description = "Evaluates whether each column value lies between a specified range.",
      id = "GoogleCloudDataplexV1DataQualityRuleRangeExpectation",
      properties = {
        maxValue = {
          description = "Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.",
          type = "string",
        },
        minValue = {
          description = "Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.",
          type = "string",
        },
        strictMaxEnabled = {
          description = "Optional. Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.",
          type = "boolean",
        },
        strictMinEnabled = {
          description = "Optional. Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleRegexExpectation = {
      description = "Evaluates whether each column value matches a specified regex.",
      id = "GoogleCloudDataplexV1DataQualityRuleRegexExpectation",
      properties = {
        regex = {
          description = "A regular expression the column value is expected to match.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleResult = {
      description = "DataQualityRuleResult provides a more detailed, per-rule view of the results.",
      id = "GoogleCloudDataplexV1DataQualityRuleResult",
      properties = {
        evaluatedCount = {
          description = "The number of rows a rule was evaluated against. This field is only valid for ColumnMap type rules.Evaluated count can be configured to either include all rows (default) - with null rows automatically failing rule evaluation, or exclude null rows from the evaluated_count, by setting ignore_nulls = true.",
          format = "int64",
          type = "string",
        },
        failingRowsQuery = {
          description = "The query to find rows that did not pass this rule. Only applies to ColumnMap and RowCondition rules.",
          type = "string",
        },
        nullCount = {
          description = "The number of rows with null values in the specified column.",
          format = "int64",
          type = "string",
        },
        passRatio = {
          description = "The ratio of passed_count / evaluated_count. This field is only valid for ColumnMap type rules.",
          format = "double",
          type = "number",
        },
        passed = {
          description = "Whether the rule passed or failed.",
          type = "boolean",
        },
        passedCount = {
          description = "The number of rows which passed a rule evaluation. This field is only valid for ColumnMap type rules.",
          format = "int64",
          type = "string",
        },
        rule = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityRule",
          description = "The rule specified in the DataQualitySpec, as is.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation = {
      description = "Evaluates whether each row passes the specified condition.The SQL expression needs to use BigQuery standard SQL syntax and should produce a boolean value per row as the result.Example: col1 >= 0 AND col2 < 10",
      id = "GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation",
      properties = {
        sqlExpression = {
          description = "The SQL expression.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleSetExpectation = {
      description = "Evaluates whether each column value is contained by a specified set.",
      id = "GoogleCloudDataplexV1DataQualityRuleSetExpectation",
      properties = {
        values = {
          description = "Expected values for the column value.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation = {
      description = "Evaluates whether the column aggregate statistic lies between a specified range.",
      id = "GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation",
      properties = {
        maxValue = {
          description = "The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.",
          type = "string",
        },
        minValue = {
          description = "The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.",
          type = "string",
        },
        statistic = {
          enum = {
            "STATISTIC_UNDEFINED",
            "MEAN",
            "MIN",
            "MAX",
          },
          enumDescriptions = {
            "Unspecified statistic type",
            "Evaluate the column mean",
            "Evaluate the column min",
            "Evaluate the column max",
          },
          type = "string",
        },
        strictMaxEnabled = {
          description = "Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.",
          type = "boolean",
        },
        strictMinEnabled = {
          description = "Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation = {
      description = "Evaluates whether the provided expression is true.The SQL expression needs to use BigQuery standard SQL syntax and should produce a scalar boolean result.Example: MIN(col1) >= 0",
      id = "GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation",
      properties = {
        sqlExpression = {
          description = "The SQL expression.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation = {
      description = "Evaluates whether the column has duplicates.",
      id = "GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1DataQualitySpec = {
      description = "DataQualityScan related setting.",
      id = "GoogleCloudDataplexV1DataQualitySpec",
      properties = {
        rules = {
          description = "The list of rules to evaluate against a data source. At least one rule is required.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1DataQualityRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataScan = {
      description = "Represents a user-visible job which provides the insights for the related data source.For example: Data Quality: generates queries based on the rules and runs against the data to get data quality check results. Data Profile: analyzes the data in table(s) and generates insights about the structure, content and relationships (such as null percent, cardinality, min/max/mean, etc).",
      id = "GoogleCloudDataplexV1DataScan",
      properties = {
        createTime = {
          description = "Output only. The time when the scan was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        data = {
          ["$ref"] = "GoogleCloudDataplexV1DataSource",
          description = "Required. The data source for DataScan.",
        },
        dataProfileResult = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileResult",
          description = "Output only. The result of the data profile scan.",
          readOnly = true,
        },
        dataProfileSpec = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileSpec",
          description = "DataProfileScan related setting.",
        },
        dataQualityResult = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityResult",
          description = "Output only. The result of the data quality scan.",
          readOnly = true,
        },
        dataQualitySpec = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualitySpec",
          description = "DataQualityScan related setting.",
        },
        description = {
          description = "Optional. Description of the scan. Must be between 1-1024 characters.",
          type = "string",
        },
        displayName = {
          description = "Optional. User friendly display name. Must be between 1-256 characters.",
          type = "string",
        },
        executionSpec = {
          ["$ref"] = "GoogleCloudDataplexV1DataScanExecutionSpec",
          description = "Optional. DataScan execution settings.If not specified, the fields in it will use their default values.",
        },
        executionStatus = {
          ["$ref"] = "GoogleCloudDataplexV1DataScanExecutionStatus",
          description = "Output only. Status of the data scan execution.",
          readOnly = true,
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User-defined labels for the scan.",
          type = "object",
        },
        name = {
          description = "Output only. The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Current state of the DataScan.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "ACTION_REQUIRED",
          },
          enumDescriptions = {
            "State is not specified.",
            "Resource is active, i.e., ready to use.",
            "Resource is under creation.",
            "Resource is under deletion.",
            "Resource is active but has unresolved actions.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. The type of DataScan.",
          enum = {
            "DATA_SCAN_TYPE_UNSPECIFIED",
            "DATA_QUALITY",
            "DATA_PROFILE",
          },
          enumDescriptions = {
            "The DataScan type is unspecified.",
            "Data Quality scan.",
            "Data Profile scan.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the scan was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataScanEvent = {
      description = "These messages contain information about the execution of a datascan. The monitored resource is 'DataScan'",
      id = "GoogleCloudDataplexV1DataScanEvent",
      properties = {
        dataProfile = {
          ["$ref"] = "GoogleCloudDataplexV1DataScanEventDataProfileResult",
          description = "Data profile result for data profile type data scan.",
        },
        dataQuality = {
          ["$ref"] = "GoogleCloudDataplexV1DataScanEventDataQualityResult",
          description = "Data quality result for data quality type data scan.",
        },
        dataSource = {
          description = "The data source of the data scan",
          type = "string",
        },
        endTime = {
          description = "The time when the data scan job finished.",
          format = "google-datetime",
          type = "string",
        },
        jobId = {
          description = "The identifier of the specific data scan job this log entry is for.",
          type = "string",
        },
        message = {
          description = "The message describing the data scan job event.",
          type = "string",
        },
        scope = {
          description = "The scope of the data scan (e.g. full, incremental).",
          enum = {
            "SCOPE_UNSPECIFIED",
            "FULL",
            "INCREMENTAL",
          },
          enumDescriptions = {
            "An unspecified scope type.",
            "Data scan runs on all of the data.",
            "Data scan runs on incremental data.",
          },
          type = "string",
        },
        specVersion = {
          description = "A version identifier of the spec which was used to execute this job.",
          type = "string",
        },
        startTime = {
          description = "The time when the data scan job started to run.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The status of the data scan job.",
          enum = {
            "STATE_UNSPECIFIED",
            "STARTED",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified job state.",
            "Data scan started.",
            "Data scan successfully completed.",
            "Data scan was unsuccessful.",
            "Data scan was cancelled.",
          },
          type = "string",
        },
        trigger = {
          description = "The trigger type of the data scan job.",
          enum = {
            "TRIGGER_UNSPECIFIED",
            "ON_DEMAND",
            "SCHEDULE",
          },
          enumDescriptions = {
            "An unspecified trigger type.",
            "Data scan triggers on demand.",
            "Data scan triggers as per schedule.",
          },
          type = "string",
        },
        type = {
          description = "The type of the data scan.",
          enum = {
            "SCAN_TYPE_UNSPECIFIED",
            "DATA_PROFILE",
            "DATA_QUALITY",
          },
          enumDescriptions = {
            "An unspecified data scan type.",
            "Data scan for data profile.",
            "Data scan for data quality.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataScanEventDataProfileResult = {
      description = "Data profile result for data scan job.",
      id = "GoogleCloudDataplexV1DataScanEventDataProfileResult",
      properties = {
        rowCount = {
          description = "The count of rows processed in the data scan job.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataScanEventDataQualityResult = {
      description = "Data quality result for data scan job.",
      id = "GoogleCloudDataplexV1DataScanEventDataQualityResult",
      properties = {
        dimensionPassed = {
          additionalProperties = {
            type = "boolean",
          },
          description = "The result of each dimension for data quality result. The key of the map is the name of the dimension. The value is the bool value depicting whether the dimension result was pass or not.",
          type = "object",
        },
        passed = {
          description = "Whether the data quality result was pass or not.",
          type = "boolean",
        },
        rowCount = {
          description = "The count of rows processed in the data scan job.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataScanExecutionSpec = {
      description = "DataScan execution settings.",
      id = "GoogleCloudDataplexV1DataScanExecutionSpec",
      properties = {
        field = {
          description = "Immutable. The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time.If not specified, a data scan will run for all data in the table.",
          type = "string",
        },
        trigger = {
          ["$ref"] = "GoogleCloudDataplexV1Trigger",
          description = "Optional. Spec related to how often and when a scan should be triggered.If not specified, the default is OnDemand, which means the scan will not run until the user calls RunDataScan API.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataScanExecutionStatus = {
      description = "Status of the data scan execution.",
      id = "GoogleCloudDataplexV1DataScanExecutionStatus",
      properties = {
        latestJobEndTime = {
          description = "The time when the latest DataScanJob ended.",
          format = "google-datetime",
          type = "string",
        },
        latestJobStartTime = {
          description = "The time when the latest DataScanJob started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataScanJob = {
      description = "A DataScanJob represents an instance of DataScan execution.",
      id = "GoogleCloudDataplexV1DataScanJob",
      properties = {
        dataProfileResult = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileResult",
          description = "Output only. The result of the data profile scan.",
          readOnly = true,
        },
        dataProfileSpec = {
          ["$ref"] = "GoogleCloudDataplexV1DataProfileSpec",
          description = "Output only. DataProfileScan related setting.",
          readOnly = true,
        },
        dataQualityResult = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualityResult",
          description = "Output only. The result of the data quality scan.",
          readOnly = true,
        },
        dataQualitySpec = {
          ["$ref"] = "GoogleCloudDataplexV1DataQualitySpec",
          description = "Output only. DataQualityScan related setting.",
          readOnly = true,
        },
        endTime = {
          description = "Output only. The time when the DataScanJob ended.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        message = {
          description = "Output only. Additional information about the current state.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The relative resource name of the DataScanJob, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}/jobs/{job_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. The time when the DataScanJob was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Execution state for the DataScanJob.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "CANCELING",
            "CANCELLED",
            "SUCCEEDED",
            "FAILED",
            "PENDING",
          },
          enumDescriptions = {
            "The DataScanJob state is unspecified.",
            "The DataScanJob is running.",
            "The DataScanJob is canceling.",
            "The DataScanJob cancellation was successful.",
            "The DataScanJob completed successfully.",
            "The DataScanJob is no longer running due to an error.",
            "The DataScanJob has been created but not started to run yet.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. The type of the parent DataScan.",
          enum = {
            "DATA_SCAN_TYPE_UNSPECIFIED",
            "DATA_QUALITY",
            "DATA_PROFILE",
          },
          enumDescriptions = {
            "The DataScan type is unspecified.",
            "Data Quality scan.",
            "Data Profile scan.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the DataScanJob.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DataSource = {
      description = "The data source for DataScan.",
      id = "GoogleCloudDataplexV1DataSource",
      properties = {
        entity = {
          description = "Immutable. The Dataplex entity that represents the data source (e.g. BigQuery table) for DataScan, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DiscoveryEvent = {
      description = "The payload associated with Discovery data processing.",
      id = "GoogleCloudDataplexV1DiscoveryEvent",
      properties = {
        action = {
          ["$ref"] = "GoogleCloudDataplexV1DiscoveryEventActionDetails",
          description = "Details about the action associated with the event.",
        },
        assetId = {
          description = "The id of the associated asset.",
          type = "string",
        },
        config = {
          ["$ref"] = "GoogleCloudDataplexV1DiscoveryEventConfigDetails",
          description = "Details about discovery configuration in effect.",
        },
        dataLocation = {
          description = "The data location associated with the event.",
          type = "string",
        },
        entity = {
          ["$ref"] = "GoogleCloudDataplexV1DiscoveryEventEntityDetails",
          description = "Details about the entity associated with the event.",
        },
        lakeId = {
          description = "The id of the associated lake.",
          type = "string",
        },
        message = {
          description = "The log message.",
          type = "string",
        },
        partition = {
          ["$ref"] = "GoogleCloudDataplexV1DiscoveryEventPartitionDetails",
          description = "Details about the partition associated with the event.",
        },
        type = {
          description = "The type of the event being logged.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "CONFIG",
            "ENTITY_CREATED",
            "ENTITY_UPDATED",
            "ENTITY_DELETED",
            "PARTITION_CREATED",
            "PARTITION_UPDATED",
            "PARTITION_DELETED",
          },
          enumDescriptions = {
            "An unspecified event type.",
            "An event representing discovery configuration in effect.",
            "An event representing a metadata entity being created.",
            "An event representing a metadata entity being updated.",
            "An event representing a metadata entity being deleted.",
            "An event representing a partition being created.",
            "An event representing a partition being updated.",
            "An event representing a partition being deleted.",
          },
          type = "string",
        },
        zoneId = {
          description = "The id of the associated zone.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DiscoveryEventActionDetails = {
      description = "Details about the action.",
      id = "GoogleCloudDataplexV1DiscoveryEventActionDetails",
      properties = {
        type = {
          description = "The type of action. Eg. IncompatibleDataSchema, InvalidDataFormat",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DiscoveryEventConfigDetails = {
      description = "Details about configuration events.",
      id = "GoogleCloudDataplexV1DiscoveryEventConfigDetails",
      properties = {
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "A list of discovery configuration parameters in effect. The keys are the field paths within DiscoverySpec. Eg. includePatterns, excludePatterns, csvOptions.disableTypeInference, etc.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DiscoveryEventEntityDetails = {
      description = "Details about the entity.",
      id = "GoogleCloudDataplexV1DiscoveryEventEntityDetails",
      properties = {
        entity = {
          description = "The name of the entity resource. The name is the fully-qualified resource name.",
          type = "string",
        },
        type = {
          description = "The type of the entity resource.",
          enum = {
            "ENTITY_TYPE_UNSPECIFIED",
            "TABLE",
            "FILESET",
          },
          enumDescriptions = {
            "An unspecified event type.",
            "Entities representing structured data.",
            "Entities representing unstructured data.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1DiscoveryEventPartitionDetails = {
      description = "Details about the partition.",
      id = "GoogleCloudDataplexV1DiscoveryEventPartitionDetails",
      properties = {
        entity = {
          description = "The name to the containing entity resource. The name is the fully-qualified resource name.",
          type = "string",
        },
        partition = {
          description = "The name to the partition resource. The name is the fully-qualified resource name.",
          type = "string",
        },
        sampledDataLocations = {
          description = "The locations of the data items (e.g., a Cloud Storage objects) sampled for metadata inference.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "The type of the containing entity resource.",
          enum = {
            "ENTITY_TYPE_UNSPECIFIED",
            "TABLE",
            "FILESET",
          },
          enumDescriptions = {
            "An unspecified event type.",
            "Entities representing structured data.",
            "Entities representing unstructured data.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Entity = {
      description = "Represents tables and fileset metadata contained within a zone.",
      id = "GoogleCloudDataplexV1Entity",
      properties = {
        access = {
          ["$ref"] = "GoogleCloudDataplexV1StorageAccess",
          description = "Output only. Identifies the access mechanism to the entity. Not user settable.",
          readOnly = true,
        },
        asset = {
          description = "Required. Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.",
          type = "string",
        },
        catalogEntry = {
          description = "Output only. The name of the associated Data Catalog entry.",
          readOnly = true,
          type = "string",
        },
        compatibility = {
          ["$ref"] = "GoogleCloudDataplexV1EntityCompatibilityStatus",
          description = "Output only. Metadata stores that the entity is compatible with.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time when the entity was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dataPath = {
          description = "Required. Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.",
          type = "string",
        },
        dataPathPattern = {
          description = "Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.",
          type = "string",
        },
        description = {
          description = "Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.",
          type = "string",
        },
        displayName = {
          description = "Optional. Display name must be shorter than or equal to 256 characters.",
          type = "string",
        },
        etag = {
          description = "Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.",
          type = "string",
        },
        format = {
          ["$ref"] = "GoogleCloudDataplexV1StorageFormat",
          description = "Required. Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.",
        },
        id = {
          description = "Required. A user-provided entity ID. It is mutable, and will be used as the published table name. Specifying a new ID in an update entity request will override the existing value. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores. Must begin with a letter and consist of 256 or fewer characters.",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the entity, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}.",
          readOnly = true,
          type = "string",
        },
        schema = {
          ["$ref"] = "GoogleCloudDataplexV1Schema",
          description = "Required. The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.",
        },
        system = {
          description = "Required. Immutable. Identifies the storage system of the entity data.",
          enum = {
            "STORAGE_SYSTEM_UNSPECIFIED",
            "CLOUD_STORAGE",
            "BIGQUERY",
          },
          enumDescriptions = {
            "Storage system unspecified.",
            "The entity data is contained within a Cloud Storage bucket.",
            "The entity data is contained within a BigQuery dataset.",
          },
          type = "string",
        },
        type = {
          description = "Required. Immutable. The type of entity.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TABLE",
            "FILESET",
          },
          enumDescriptions = {
            "Type unspecified.",
            "Structured and semi-structured data.",
            "Unstructured data.",
          },
          type = "string",
        },
        uid = {
          description = "Output only. System generated unique ID for the Entity. This ID will be different if the Entity is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the entity was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EntityCompatibilityStatus = {
      description = "Provides compatibility information for various metadata stores.",
      id = "GoogleCloudDataplexV1EntityCompatibilityStatus",
      properties = {
        bigquery = {
          ["$ref"] = "GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility",
          description = "Output only. Whether this entity is compatible with BigQuery.",
          readOnly = true,
        },
        hiveMetastore = {
          ["$ref"] = "GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility",
          description = "Output only. Whether this entity is compatible with Hive Metastore.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility = {
      description = "Provides compatibility information for a specific metadata store.",
      id = "GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility",
      properties = {
        compatible = {
          description = "Output only. Whether the entity is compatible and can be represented in the metadata store.",
          readOnly = true,
          type = "boolean",
        },
        reason = {
          description = "Output only. Provides additional detail if the entity is incompatible with the metadata store.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Environment = {
      description = "Environment represents a user-visible compute infrastructure for analytics within a lake.",
      id = "GoogleCloudDataplexV1Environment",
      properties = {
        createTime = {
          description = "Output only. Environment creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the environment.",
          type = "string",
        },
        displayName = {
          description = "Optional. User friendly display name.",
          type = "string",
        },
        endpoints = {
          ["$ref"] = "GoogleCloudDataplexV1EnvironmentEndpoints",
          description = "Output only. URI Endpoints to access sessions associated with the Environment.",
          readOnly = true,
        },
        infrastructureSpec = {
          ["$ref"] = "GoogleCloudDataplexV1EnvironmentInfrastructureSpec",
          description = "Required. Infrastructure specification for the Environment.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User defined labels for the environment.",
          type = "object",
        },
        name = {
          description = "Output only. The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}",
          readOnly = true,
          type = "string",
        },
        sessionSpec = {
          ["$ref"] = "GoogleCloudDataplexV1EnvironmentSessionSpec",
          description = "Optional. Configuration for sessions created for this environment.",
        },
        sessionStatus = {
          ["$ref"] = "GoogleCloudDataplexV1EnvironmentSessionStatus",
          description = "Output only. Status of sessions created for this environment.",
          readOnly = true,
        },
        state = {
          description = "Output only. Current state of the environment.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "ACTION_REQUIRED",
          },
          enumDescriptions = {
            "State is not specified.",
            "Resource is active, i.e., ready to use.",
            "Resource is under creation.",
            "Resource is under deletion.",
            "Resource is active but has unresolved actions.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the environment. This ID will be different if the environment is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the environment was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EnvironmentEndpoints = {
      id = "GoogleCloudDataplexV1EnvironmentEndpoints",
      properties = {
        notebooks = {
          description = "Output only. URI to serve notebook APIs",
          readOnly = true,
          type = "string",
        },
        sql = {
          description = "Output only. URI to serve SQL APIs",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EnvironmentInfrastructureSpec = {
      description = "Configuration for the underlying infrastructure used to run workloads.",
      id = "GoogleCloudDataplexV1EnvironmentInfrastructureSpec",
      properties = {
        compute = {
          ["$ref"] = "GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources",
          description = "Optional. Compute resources needed for analyze interactive workloads.",
        },
        osImage = {
          ["$ref"] = "GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime",
          description = "Required. Software Runtime Configuration for analyze interactive workloads.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources = {
      description = "Compute resources associated with the analyze interactive workloads.",
      id = "GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources",
      properties = {
        diskSizeGb = {
          description = "Optional. Size in GB of the disk. Default is 100 GB.",
          format = "int32",
          type = "integer",
        },
        maxNodeCount = {
          description = "Optional. Max configurable nodes. If max_node_count > node_count, then auto-scaling is enabled.",
          format = "int32",
          type = "integer",
        },
        nodeCount = {
          description = "Optional. Total number of nodes in the sessions created for this environment.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime = {
      description = "Software Runtime Configuration to run Analyze.",
      id = "GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime",
      properties = {
        imageVersion = {
          description = "Required. Dataplex Image version.",
          type = "string",
        },
        javaLibraries = {
          description = "Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar",
          items = {
            type = "string",
          },
          type = "array",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Spark properties to provide configuration for use in sessions created for this environment. The properties to set on daemon config files. Property keys are specified in prefix:property format. The prefix must be \"spark\".",
          type = "object",
        },
        pythonPackages = {
          description = "Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EnvironmentSessionSpec = {
      id = "GoogleCloudDataplexV1EnvironmentSessionSpec",
      properties = {
        enableFastStartup = {
          description = "Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to \"default\", and with default configuration.",
          type = "boolean",
        },
        maxIdleDuration = {
          description = "Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1EnvironmentSessionStatus = {
      id = "GoogleCloudDataplexV1EnvironmentSessionStatus",
      properties = {
        active = {
          description = "Output only. Queries over sessions to mark whether the environment is currently active or not",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Job = {
      description = "A job represents an instance of a task.",
      id = "GoogleCloudDataplexV1Job",
      properties = {
        endTime = {
          description = "Output only. The time when the job ended.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        message = {
          description = "Output only. Additional information about the current state.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The relative resource name of the job, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}.",
          readOnly = true,
          type = "string",
        },
        retryCount = {
          description = "Output only. The number of times the job has been retried (excluding the initial attempt).",
          format = "uint32",
          readOnly = true,
          type = "integer",
        },
        service = {
          description = "Output only. The underlying service running a job.",
          enum = {
            "SERVICE_UNSPECIFIED",
            "DATAPROC",
          },
          enumDescriptions = {
            "Service used to run the job is unspecified.",
            "Dataproc service is used to run this job.",
          },
          readOnly = true,
          type = "string",
        },
        serviceJob = {
          description = "Output only. The full resource name for the job run under a particular service.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. The time when the job was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Execution state for the job.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "CANCELLING",
            "CANCELLED",
            "SUCCEEDED",
            "FAILED",
            "ABORTED",
          },
          enumDescriptions = {
            "The job state is unknown.",
            "The job is running.",
            "The job is cancelling.",
            "The job cancellation was successful.",
            "The job completed successfully.",
            "The job is no longer running due to an error.",
            "The job was cancelled outside of Dataplex.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the job.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1JobEvent = {
      description = "The payload associated with Job logs that contains events describing jobs that have run within a Lake.",
      id = "GoogleCloudDataplexV1JobEvent",
      properties = {
        endTime = {
          description = "The time when the job ended running.",
          format = "google-datetime",
          type = "string",
        },
        jobId = {
          description = "The unique id identifying the job.",
          type = "string",
        },
        message = {
          description = "The log message.",
          type = "string",
        },
        retries = {
          description = "The number of retries.",
          format = "int32",
          type = "integer",
        },
        service = {
          description = "The service used to execute the job.",
          enum = {
            "SERVICE_UNSPECIFIED",
            "DATAPROC",
          },
          enumDescriptions = {
            "Unspecified service.",
            "Cloud Dataproc.",
          },
          type = "string",
        },
        serviceJob = {
          description = "The reference to the job within the service.",
          type = "string",
        },
        startTime = {
          description = "The time when the job started running.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The job state on completion.",
          enum = {
            "STATE_UNSPECIFIED",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
            "ABORTED",
          },
          enumDescriptions = {
            "Unspecified job state.",
            "Job successfully completed.",
            "Job was unsuccessful.",
            "Job was cancelled by the user.",
            "Job was cancelled or aborted via the service executing the job.",
          },
          type = "string",
        },
        type = {
          description = "The type of the job.",
          enum = {
            "TYPE_UNSPECIFIED",
            "SPARK",
            "NOTEBOOK",
          },
          enumDescriptions = {
            "Unspecified job type.",
            "Spark jobs.",
            "Notebook jobs.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Lake = {
      description = "A lake is a centralized repository for managing enterprise data across the organization distributed across many cloud projects, and stored in a variety of storage services such as Google Cloud Storage and BigQuery. The resources attached to a lake are referred to as managed resources. Data within these managed resources can be structured or unstructured. A lake provides data admins with tools to organize, secure and manage their data at scale, and provides data scientists and data engineers an integrated experience to easily search, discover, analyze and transform data and associated metadata.",
      id = "GoogleCloudDataplexV1Lake",
      properties = {
        assetStatus = {
          ["$ref"] = "GoogleCloudDataplexV1AssetStatus",
          description = "Output only. Aggregated status of the underlying assets of the lake.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time when the lake was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the lake.",
          type = "string",
        },
        displayName = {
          description = "Optional. User friendly display name.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User-defined labels for the lake.",
          type = "object",
        },
        metastore = {
          ["$ref"] = "GoogleCloudDataplexV1LakeMetastore",
          description = "Optional. Settings to manage lake and Dataproc Metastore service instance association.",
        },
        metastoreStatus = {
          ["$ref"] = "GoogleCloudDataplexV1LakeMetastoreStatus",
          description = "Output only. Metastore status of the lake.",
          readOnly = true,
        },
        name = {
          description = "Output only. The relative resource name of the lake, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.",
          readOnly = true,
          type = "string",
        },
        serviceAccount = {
          description = "Output only. Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Current state of the lake.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "ACTION_REQUIRED",
          },
          enumDescriptions = {
            "State is not specified.",
            "Resource is active, i.e., ready to use.",
            "Resource is under creation.",
            "Resource is under deletion.",
            "Resource is active but has unresolved actions.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the lake was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1LakeMetastore = {
      description = "Settings to manage association of Dataproc Metastore with a lake.",
      id = "GoogleCloudDataplexV1LakeMetastore",
      properties = {
        service = {
          description = "Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: projects/{project_id}/locations/{location_id}/services/{service_id}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1LakeMetastoreStatus = {
      description = "Status of Lake and Dataproc Metastore service instance association.",
      id = "GoogleCloudDataplexV1LakeMetastoreStatus",
      properties = {
        endpoint = {
          description = "The URI of the endpoint used to access the Metastore service.",
          type = "string",
        },
        message = {
          description = "Additional information about the current status.",
          type = "string",
        },
        state = {
          description = "Current state of association.",
          enum = {
            "STATE_UNSPECIFIED",
            "NONE",
            "READY",
            "UPDATING",
            "ERROR",
          },
          enumDescriptions = {
            "Unspecified.",
            "A Metastore service instance is not associated with the lake.",
            "A Metastore service instance is attached to the lake.",
            "Attach/detach is in progress.",
            "Attach/detach could not be done due to errors.",
          },
          type = "string",
        },
        updateTime = {
          description = "Last update time of the metastore status of the lake.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ListActionsResponse = {
      description = "List actions response.",
      id = "GoogleCloudDataplexV1ListActionsResponse",
      properties = {
        actions = {
          description = "Actions under the given parent lake/zone/asset.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Action",
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
    GoogleCloudDataplexV1ListAssetsResponse = {
      description = "List assets response.",
      id = "GoogleCloudDataplexV1ListAssetsResponse",
      properties = {
        assets = {
          description = "Asset under the given parent zone.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Asset",
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
    GoogleCloudDataplexV1ListContentResponse = {
      description = "List content response.",
      id = "GoogleCloudDataplexV1ListContentResponse",
      properties = {
        content = {
          description = "Content under the given parent lake.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Content",
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
    GoogleCloudDataplexV1ListDataScanJobsResponse = {
      description = "List DataScanJobs response.",
      id = "GoogleCloudDataplexV1ListDataScanJobsResponse",
      properties = {
        dataScanJobs = {
          description = "DataScanJobs (BASIC view only) under a given dataScan.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1DataScanJob",
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
    GoogleCloudDataplexV1ListDataScansResponse = {
      description = "List dataScans response.",
      id = "GoogleCloudDataplexV1ListDataScansResponse",
      properties = {
        dataScans = {
          description = "DataScans (BASIC view only) under the given parent location.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1DataScan",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ListEntitiesResponse = {
      description = "List metadata entities response.",
      id = "GoogleCloudDataplexV1ListEntitiesResponse",
      properties = {
        entities = {
          description = "Entities in the specified parent zone.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Entity",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no remaining results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ListEnvironmentsResponse = {
      description = "List environments response.",
      id = "GoogleCloudDataplexV1ListEnvironmentsResponse",
      properties = {
        environments = {
          description = "Environments under the given parent lake.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Environment",
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
    GoogleCloudDataplexV1ListJobsResponse = {
      description = "List jobs response.",
      id = "GoogleCloudDataplexV1ListJobsResponse",
      properties = {
        jobs = {
          description = "Jobs under a given task.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Job",
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
    GoogleCloudDataplexV1ListLakesResponse = {
      description = "List lakes response.",
      id = "GoogleCloudDataplexV1ListLakesResponse",
      properties = {
        lakes = {
          description = "Lakes under the given parent location.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Lake",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        unreachableLocations = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ListPartitionsResponse = {
      description = "List metadata partitions response.",
      id = "GoogleCloudDataplexV1ListPartitionsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no remaining results in the list.",
          type = "string",
        },
        partitions = {
          description = "Partitions under the specified parent entity.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Partition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ListSessionsResponse = {
      description = "List sessions response.",
      id = "GoogleCloudDataplexV1ListSessionsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        sessions = {
          description = "Sessions under a given environment.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Session",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ListTasksResponse = {
      description = "List tasks response.",
      id = "GoogleCloudDataplexV1ListTasksResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        tasks = {
          description = "Tasks under the given parent lake.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Task",
          },
          type = "array",
        },
        unreachableLocations = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ListZonesResponse = {
      description = "List zones response.",
      id = "GoogleCloudDataplexV1ListZonesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        zones = {
          description = "Zones under the given parent lake.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1Zone",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1OperationMetadata = {
      description = "Represents the metadata of a long-running operation.",
      id = "GoogleCloudDataplexV1OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the operation finished running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
          readOnly = true,
          type = "boolean",
        },
        statusMessage = {
          description = "Output only. Human-readable status of the operation, if any.",
          readOnly = true,
          type = "string",
        },
        target = {
          description = "Output only. Server-defined resource path for the target of the operation.",
          readOnly = true,
          type = "string",
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Partition = {
      description = "Represents partition metadata contained within entity instances.",
      id = "GoogleCloudDataplexV1Partition",
      properties = {
        etag = {
          description = "Optional. The etag for this partition.",
          type = "string",
        },
        location = {
          description = "Required. Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/",
          type = "string",
        },
        name = {
          description = "Output only. Partition values used in the HTTP URL must be double encoded. For example, url_encode(url_encode(value)) can be used to encode \"US:CA/CA#Sunnyvale so that the request URL ends with \"/partitions/US%253ACA/CA%2523Sunnyvale\". The name field in the response retains the encoded format.",
          readOnly = true,
          type = "string",
        },
        values = {
          description = "Required. Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1RunDataScanRequest = {
      description = "Run DataScan Request",
      id = "GoogleCloudDataplexV1RunDataScanRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1RunDataScanResponse = {
      description = "Run DataScan Response.",
      id = "GoogleCloudDataplexV1RunDataScanResponse",
      properties = {
        job = {
          ["$ref"] = "GoogleCloudDataplexV1DataScanJob",
          description = "DataScanJob created by RunDataScan request.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1RunTaskRequest = {
      id = "GoogleCloudDataplexV1RunTaskRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1RunTaskResponse = {
      id = "GoogleCloudDataplexV1RunTaskResponse",
      properties = {
        job = {
          ["$ref"] = "GoogleCloudDataplexV1Job",
          description = "Jobs created by RunTask API.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ScannedData = {
      description = "The data scanned during processing (e.g. in incremental DataScan)",
      id = "GoogleCloudDataplexV1ScannedData",
      properties = {
        incrementalField = {
          ["$ref"] = "GoogleCloudDataplexV1ScannedDataIncrementalField",
          description = "The range denoted by values of an incremental field",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ScannedDataIncrementalField = {
      description = "A data range denoted by a pair of start/end values of a field.",
      id = "GoogleCloudDataplexV1ScannedDataIncrementalField",
      properties = {
        ["end"] = {
          description = "Value that marks the end of the range.",
          type = "string",
        },
        field = {
          description = "The field that contains values which monotonically increases over time (e.g. a timestamp column).",
          type = "string",
        },
        start = {
          description = "Value that marks the start of the range.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Schema = {
      description = "Schema information describing the structure and layout of the data.",
      id = "GoogleCloudDataplexV1Schema",
      properties = {
        fields = {
          description = "Optional. The sequence of fields describing data in table entities. Note: BigQuery SchemaFields are immutable.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1SchemaSchemaField",
          },
          type = "array",
        },
        partitionFields = {
          description = "Optional. The sequence of fields describing the partition structure in entities. If this field is empty, there are no partitions within the data.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1SchemaPartitionField",
          },
          type = "array",
        },
        partitionStyle = {
          description = "Optional. The structure of paths containing partition data within the entity.",
          enum = {
            "PARTITION_STYLE_UNSPECIFIED",
            "HIVE_COMPATIBLE",
          },
          enumDescriptions = {
            "PartitionStyle unspecified",
            "Partitions are hive-compatible. Examples: gs://bucket/path/to/table/dt=2019-10-31/lang=en, gs://bucket/path/to/table/dt=2019-10-31/lang=en/late.",
          },
          type = "string",
        },
        userManaged = {
          description = "Required. Set to true if user-managed or false if managed by Dataplex. The default is false (managed by Dataplex). Set to falseto enable Dataplex discovery to update the schema. including new data discovery, schema inference, and schema evolution. Users retain the ability to input and edit the schema. Dataplex treats schema input by the user as though produced by a previous Dataplex discovery operation, and it will evolve the schema and take action based on that treatment. Set to true to fully manage the entity schema. This setting guarantees that Dataplex will not change schema fields.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1SchemaPartitionField = {
      description = "Represents a key field within the entity's partition structure. You could have up to 20 partition fields, but only the first 10 partitions have the filtering ability due to performance consideration. Note: Partition fields are immutable.",
      id = "GoogleCloudDataplexV1SchemaPartitionField",
      properties = {
        name = {
          description = "Required. Partition field name must consist of letters, numbers, and underscores only, with a maximum of length of 256 characters, and must begin with a letter or underscore..",
          type = "string",
        },
        type = {
          description = "Required. Immutable. The type of field.",
          enum = {
            "TYPE_UNSPECIFIED",
            "BOOLEAN",
            "BYTE",
            "INT16",
            "INT32",
            "INT64",
            "FLOAT",
            "DOUBLE",
            "DECIMAL",
            "STRING",
            "BINARY",
            "TIMESTAMP",
            "DATE",
            "TIME",
            "RECORD",
            "NULL",
          },
          enumDescriptions = {
            "SchemaType unspecified.",
            "Boolean field.",
            "Single byte numeric field.",
            "16-bit numeric field.",
            "32-bit numeric field.",
            "64-bit numeric field.",
            "Floating point numeric field.",
            "Double precision numeric field.",
            "Real value numeric field.",
            "Sequence of characters field.",
            "Sequence of bytes field.",
            "Date and time field.",
            "Date field.",
            "Time field.",
            "Structured field. Nested fields that define the structure of the map. If all nested fields are nullable, this field represents a union.",
            "Null field that does not have values.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1SchemaSchemaField = {
      description = "Represents a column field within a table schema.",
      id = "GoogleCloudDataplexV1SchemaSchemaField",
      properties = {
        description = {
          description = "Optional. User friendly field description. Must be less than or equal to 1024 characters.",
          type = "string",
        },
        fields = {
          description = "Optional. Any nested field for complex types.",
          items = {
            ["$ref"] = "GoogleCloudDataplexV1SchemaSchemaField",
          },
          type = "array",
        },
        mode = {
          description = "Required. Additional field semantics.",
          enum = {
            "MODE_UNSPECIFIED",
            "REQUIRED",
            "NULLABLE",
            "REPEATED",
          },
          enumDescriptions = {
            "Mode unspecified.",
            "The field has required semantics.",
            "The field has optional semantics, and may be null.",
            "The field has repeated (0 or more) semantics, and is a list of values.",
          },
          type = "string",
        },
        name = {
          description = "Required. The name of the field. Must contain only letters, numbers and underscores, with a maximum length of 767 characters, and must begin with a letter or underscore.",
          type = "string",
        },
        type = {
          description = "Required. The type of field.",
          enum = {
            "TYPE_UNSPECIFIED",
            "BOOLEAN",
            "BYTE",
            "INT16",
            "INT32",
            "INT64",
            "FLOAT",
            "DOUBLE",
            "DECIMAL",
            "STRING",
            "BINARY",
            "TIMESTAMP",
            "DATE",
            "TIME",
            "RECORD",
            "NULL",
          },
          enumDescriptions = {
            "SchemaType unspecified.",
            "Boolean field.",
            "Single byte numeric field.",
            "16-bit numeric field.",
            "32-bit numeric field.",
            "64-bit numeric field.",
            "Floating point numeric field.",
            "Double precision numeric field.",
            "Real value numeric field.",
            "Sequence of characters field.",
            "Sequence of bytes field.",
            "Date and time field.",
            "Date field.",
            "Time field.",
            "Structured field. Nested fields that define the structure of the map. If all nested fields are nullable, this field represents a union.",
            "Null field that does not have values.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Session = {
      description = "Represents an active analyze session running for a user.",
      id = "GoogleCloudDataplexV1Session",
      properties = {
        createTime = {
          description = "Output only. Session start time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}/sessions/{session_id}",
          readOnly = true,
          type = "string",
        },
        state = {
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "ACTION_REQUIRED",
          },
          enumDescriptions = {
            "State is not specified.",
            "Resource is active, i.e., ready to use.",
            "Resource is under creation.",
            "Resource is under deletion.",
            "Resource is active but has unresolved actions.",
          },
          readOnly = true,
          type = "string",
        },
        userId = {
          description = "Output only. Email of user running the session.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1SessionEvent = {
      description = "These messages contain information about sessions within an environment. The monitored resource is 'Environment'.",
      id = "GoogleCloudDataplexV1SessionEvent",
      properties = {
        eventSucceeded = {
          description = "The status of the event.",
          type = "boolean",
        },
        fastStartupEnabled = {
          description = "If the session is associated with an environment with fast startup enabled, and was created before being assigned to a user.",
          type = "boolean",
        },
        message = {
          description = "The log message.",
          type = "string",
        },
        query = {
          ["$ref"] = "GoogleCloudDataplexV1SessionEventQueryDetail",
          description = "The execution details of the query.",
        },
        sessionId = {
          description = "Unique identifier for the session.",
          type = "string",
        },
        type = {
          description = "The type of the event.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "START",
            "STOP",
            "QUERY",
            "CREATE",
          },
          enumDescriptions = {
            "An unspecified event type.",
            "Event when the session is assigned to a user.",
            "Event for stop of a session.",
            "Query events in the session.",
            "Event for creation of a cluster. It is not yet assigned to a user. This comes before START in the sequence",
          },
          type = "string",
        },
        unassignedDuration = {
          description = "The idle duration of a warm pooled session before it is assigned to user.",
          format = "google-duration",
          type = "string",
        },
        userId = {
          description = "The information about the user that created the session. It will be the email address of the user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1SessionEventQueryDetail = {
      description = "Execution details of the query.",
      id = "GoogleCloudDataplexV1SessionEventQueryDetail",
      properties = {
        dataProcessedBytes = {
          description = "The data processed by the query.",
          format = "int64",
          type = "string",
        },
        duration = {
          description = "Time taken for execution of the query.",
          format = "google-duration",
          type = "string",
        },
        engine = {
          description = "Query Execution engine.",
          enum = {
            "ENGINE_UNSPECIFIED",
            "SPARK_SQL",
            "BIGQUERY",
          },
          enumDescriptions = {
            "An unspecified Engine type.",
            "Spark-sql engine is specified in Query.",
            "BigQuery engine is specified in Query.",
          },
          type = "string",
        },
        queryId = {
          description = "The unique Query id identifying the query.",
          type = "string",
        },
        queryText = {
          description = "The query text executed.",
          type = "string",
        },
        resultSizeBytes = {
          description = "The size of results the query produced.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1StorageAccess = {
      description = "Describes the access mechanism of the data within its storage location.",
      id = "GoogleCloudDataplexV1StorageAccess",
      properties = {
        read = {
          description = "Output only. Describes the read access mechanism of the data. Not user settable.",
          enum = {
            "ACCESS_MODE_UNSPECIFIED",
            "DIRECT",
            "MANAGED",
          },
          enumDescriptions = {
            "Access mode unspecified.",
            "Default. Data is accessed directly using storage APIs.",
            "Data is accessed through a managed interface using BigQuery APIs.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1StorageFormat = {
      description = "Describes the format of the data within its storage location.",
      id = "GoogleCloudDataplexV1StorageFormat",
      properties = {
        compressionFormat = {
          description = "Optional. The compression type associated with the stored data. If unspecified, the data is uncompressed.",
          enum = {
            "COMPRESSION_FORMAT_UNSPECIFIED",
            "GZIP",
            "BZIP2",
          },
          enumDescriptions = {
            "CompressionFormat unspecified. Implies uncompressed data.",
            "GZip compressed set of files.",
            "BZip2 compressed set of files.",
          },
          type = "string",
        },
        csv = {
          ["$ref"] = "GoogleCloudDataplexV1StorageFormatCsvOptions",
          description = "Optional. Additional information about CSV formatted data.",
        },
        format = {
          description = "Output only. The data format associated with the stored data, which represents content type values. The value is inferred from mime type.",
          enum = {
            "FORMAT_UNSPECIFIED",
            "PARQUET",
            "AVRO",
            "ORC",
            "CSV",
            "JSON",
            "IMAGE",
            "AUDIO",
            "VIDEO",
            "TEXT",
            "TFRECORD",
            "OTHER",
            "UNKNOWN",
          },
          enumDescriptions = {
            "Format unspecified.",
            "Parquet-formatted structured data.",
            "Avro-formatted structured data.",
            "Orc-formatted structured data.",
            "Csv-formatted semi-structured data.",
            "Json-formatted semi-structured data.",
            "Image data formats (such as jpg and png).",
            "Audio data formats (such as mp3, and wav).",
            "Video data formats (such as mp4 and mpg).",
            "Textual data formats (such as txt and xml).",
            "TensorFlow record format.",
            "Data that doesn't match a specific format.",
            "Data of an unknown format.",
          },
          readOnly = true,
          type = "string",
        },
        iceberg = {
          ["$ref"] = "GoogleCloudDataplexV1StorageFormatIcebergOptions",
          description = "Optional. Additional information about iceberg tables.",
        },
        json = {
          ["$ref"] = "GoogleCloudDataplexV1StorageFormatJsonOptions",
          description = "Optional. Additional information about CSV formatted data.",
        },
        mimeType = {
          description = "Required. The mime type descriptor for the data. Must match the pattern {type}/{subtype}. Supported values: application/x-parquet application/x-avro application/x-orc application/x-tfrecord application/x-parquet+iceberg application/x-avro+iceberg application/x-orc+iceberg application/json application/{subtypes} text/csv text/ image/{image subtype} video/{video subtype} audio/{audio subtype}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1StorageFormatCsvOptions = {
      description = "Describes CSV and similar semi-structured data formats.",
      id = "GoogleCloudDataplexV1StorageFormatCsvOptions",
      properties = {
        delimiter = {
          description = "Optional. The delimiter used to separate values. Defaults to ','.",
          type = "string",
        },
        encoding = {
          description = "Optional. The character encoding of the data. Accepts \"US-ASCII\", \"UTF-8\", and \"ISO-8859-1\". Defaults to UTF-8 if unspecified.",
          type = "string",
        },
        headerRows = {
          description = "Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. Defaults to 0.",
          format = "int32",
          type = "integer",
        },
        quote = {
          description = "Optional. The character used to quote column values. Accepts '\"' (double quotation mark) or ''' (single quotation mark). Defaults to '\"' (double quotation mark) if unspecified.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1StorageFormatIcebergOptions = {
      description = "Describes Iceberg data format.",
      id = "GoogleCloudDataplexV1StorageFormatIcebergOptions",
      properties = {
        metadataLocation = {
          description = "Optional. The location of where the iceberg metadata is present, must be within the table path",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1StorageFormatJsonOptions = {
      description = "Describes JSON data format.",
      id = "GoogleCloudDataplexV1StorageFormatJsonOptions",
      properties = {
        encoding = {
          description = "Optional. The character encoding of the data. Accepts \"US-ASCII\", \"UTF-8\" and \"ISO-8859-1\". Defaults to UTF-8 if not specified.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Task = {
      description = "A task represents a user-visible job.",
      id = "GoogleCloudDataplexV1Task",
      properties = {
        createTime = {
          description = "Output only. The time when the task was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the task.",
          type = "string",
        },
        displayName = {
          description = "Optional. User friendly display name.",
          type = "string",
        },
        executionSpec = {
          ["$ref"] = "GoogleCloudDataplexV1TaskExecutionSpec",
          description = "Required. Spec related to how a task is executed.",
        },
        executionStatus = {
          ["$ref"] = "GoogleCloudDataplexV1TaskExecutionStatus",
          description = "Output only. Status of the latest task executions.",
          readOnly = true,
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User-defined labels for the task.",
          type = "object",
        },
        name = {
          description = "Output only. The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.",
          readOnly = true,
          type = "string",
        },
        notebook = {
          ["$ref"] = "GoogleCloudDataplexV1TaskNotebookTaskConfig",
          description = "Config related to running scheduled Notebooks.",
        },
        spark = {
          ["$ref"] = "GoogleCloudDataplexV1TaskSparkTaskConfig",
          description = "Config related to running custom Spark tasks.",
        },
        state = {
          description = "Output only. Current state of the task.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "ACTION_REQUIRED",
          },
          enumDescriptions = {
            "State is not specified.",
            "Resource is active, i.e., ready to use.",
            "Resource is under creation.",
            "Resource is under deletion.",
            "Resource is active but has unresolved actions.",
          },
          readOnly = true,
          type = "string",
        },
        triggerSpec = {
          ["$ref"] = "GoogleCloudDataplexV1TaskTriggerSpec",
          description = "Required. Spec related to how often and when a task should be triggered.",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the task. This ID will be different if the task is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the task was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskExecutionSpec = {
      description = "Execution related settings, like retry and service_account.",
      id = "GoogleCloudDataplexV1TaskExecutionSpec",
      properties = {
        args = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${task_id} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument.",
          type = "object",
        },
        kmsKey = {
          description = "Optional. The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{location_id}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.",
          type = "string",
        },
        maxJobExecutionLifetime = {
          description = "Optional. The maximum duration after which the job execution is expired.",
          format = "google-duration",
          type = "string",
        },
        project = {
          description = "Optional. The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project.",
          type = "string",
        },
        serviceAccount = {
          description = "Required. Service account to use to execute a task. If not provided, the default Compute service account for the project is used.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskExecutionStatus = {
      description = "Status of the task execution (e.g. Jobs).",
      id = "GoogleCloudDataplexV1TaskExecutionStatus",
      properties = {
        latestJob = {
          ["$ref"] = "GoogleCloudDataplexV1Job",
          description = "Output only. latest job execution",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. Last update time of the status.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskInfrastructureSpec = {
      description = "Configuration for the underlying infrastructure used to run workloads.",
      id = "GoogleCloudDataplexV1TaskInfrastructureSpec",
      properties = {
        batch = {
          ["$ref"] = "GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources",
          description = "Compute resources needed for a Task when using Dataproc Serverless.",
        },
        containerImage = {
          ["$ref"] = "GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime",
          description = "Container Image Runtime Configuration.",
        },
        vpcNetwork = {
          ["$ref"] = "GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork",
          description = "Vpc network.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources = {
      description = "Batch compute resources associated with the task.",
      id = "GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources",
      properties = {
        executorsCount = {
          description = "Optional. Total number of job executors. Executor Count should be between 2 and 100. Default=2",
          format = "int32",
          type = "integer",
        },
        maxExecutorsCount = {
          description = "Optional. Max configurable executors. If max_executors_count > executors_count, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. Default=1000",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime = {
      description = "Container Image Runtime Configuration used with Batch execution.",
      id = "GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime",
      properties = {
        image = {
          description = "Optional. Container image to use.",
          type = "string",
        },
        javaJars = {
          description = "Optional. A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar",
          items = {
            type = "string",
          },
          type = "array",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).",
          type = "object",
        },
        pythonPackages = {
          description = "Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork = {
      description = "Cloud VPC Network used to run the infrastructure.",
      id = "GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork",
      properties = {
        network = {
          description = "Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.",
          type = "string",
        },
        networkTags = {
          description = "Optional. List of network tags to apply to the job.",
          items = {
            type = "string",
          },
          type = "array",
        },
        subNetwork = {
          description = "Optional. The Cloud VPC sub-network in which the job is run.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskNotebookTaskConfig = {
      description = "Config for running scheduled notebooks.",
      id = "GoogleCloudDataplexV1TaskNotebookTaskConfig",
      properties = {
        archiveUris = {
          description = "Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.",
          items = {
            type = "string",
          },
          type = "array",
        },
        infrastructureSpec = {
          ["$ref"] = "GoogleCloudDataplexV1TaskInfrastructureSpec",
          description = "Optional. Infrastructure specification for the execution.",
        },
        notebook = {
          description = "Required. Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskSparkTaskConfig = {
      description = "User-specified config for running a Spark task.",
      id = "GoogleCloudDataplexV1TaskSparkTaskConfig",
      properties = {
        archiveUris = {
          description = "Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.",
          items = {
            type = "string",
          },
          type = "array",
        },
        infrastructureSpec = {
          ["$ref"] = "GoogleCloudDataplexV1TaskInfrastructureSpec",
          description = "Optional. Infrastructure specification for the execution.",
        },
        mainClass = {
          description = "The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value).",
          type = "string",
        },
        mainJarFileUri = {
          description = "The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value).",
          type = "string",
        },
        pythonScriptFile = {
          description = "The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value).",
          type = "string",
        },
        sqlScript = {
          description = "The query text. The execution args are used to declare a set of script variables (set key=\"value\";).",
          type = "string",
        },
        sqlScriptFile = {
          description = "A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key=\"value\";).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TaskTriggerSpec = {
      description = "Task scheduling and trigger settings.",
      id = "GoogleCloudDataplexV1TaskTriggerSpec",
      properties = {
        disabled = {
          description = "Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.",
          type = "boolean",
        },
        maxRetries = {
          description = "Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.",
          format = "int32",
          type = "integer",
        },
        schedule = {
          description = "Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: \"CRON_TZ=${IANA_TIME_ZONE}\" or \"TZ=${IANA_TIME_ZONE}\". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.",
          type = "string",
        },
        startTime = {
          description = "Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.",
          format = "google-datetime",
          type = "string",
        },
        type = {
          description = "Required. Immutable. Trigger type of the user-specified Task.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ON_DEMAND",
            "RECURRING",
          },
          enumDescriptions = {
            "Unspecified trigger type.",
            "The task runs one-time shortly after Task Creation.",
            "The task is scheduled to run periodically.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Trigger = {
      description = "DataScan scheduling and trigger settings.",
      id = "GoogleCloudDataplexV1Trigger",
      properties = {
        onDemand = {
          ["$ref"] = "GoogleCloudDataplexV1TriggerOnDemand",
          description = "The scan runs once via RunDataScan API.",
        },
        schedule = {
          ["$ref"] = "GoogleCloudDataplexV1TriggerSchedule",
          description = "The scan is scheduled to run periodically.",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1TriggerOnDemand = {
      description = "The scan runs once via RunDataScan API.",
      id = "GoogleCloudDataplexV1TriggerOnDemand",
      properties = {},
      type = "object",
    },
    GoogleCloudDataplexV1TriggerSchedule = {
      description = "The scan is scheduled to run periodically.",
      id = "GoogleCloudDataplexV1TriggerSchedule",
      properties = {
        cron = {
          description = "Required. Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans periodically.To explicitly set a timezone in the cron tab, apply a prefix in the cron tab: \"CRON_TZ=${IANA_TIME_ZONE}\" or \"TZ=${IANA_TIME_ZONE}\". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database (wikipedia (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)). For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.This field is required for Schedule scans.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1Zone = {
      description = "A zone represents a logical group of related assets within a lake. A zone can be used to map to organizational structure or represent stages of data readiness from raw to curated. It provides managing behavior that is shared or inherited by all contained assets.",
      id = "GoogleCloudDataplexV1Zone",
      properties = {
        assetStatus = {
          ["$ref"] = "GoogleCloudDataplexV1AssetStatus",
          description = "Output only. Aggregated status of the underlying assets of the zone.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time when the zone was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the zone.",
          type = "string",
        },
        discoverySpec = {
          ["$ref"] = "GoogleCloudDataplexV1ZoneDiscoverySpec",
          description = "Optional. Specification of the discovery feature applied to data in this zone.",
        },
        displayName = {
          description = "Optional. User friendly display name.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User defined labels for the zone.",
          type = "object",
        },
        name = {
          description = "Output only. The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.",
          readOnly = true,
          type = "string",
        },
        resourceSpec = {
          ["$ref"] = "GoogleCloudDataplexV1ZoneResourceSpec",
          description = "Required. Specification of the resources that are referenced by the assets within this zone.",
        },
        state = {
          description = "Output only. Current state of the zone.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "CREATING",
            "DELETING",
            "ACTION_REQUIRED",
          },
          enumDescriptions = {
            "State is not specified.",
            "Resource is active, i.e., ready to use.",
            "Resource is under creation.",
            "Resource is under deletion.",
            "Resource is active but has unresolved actions.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Required. Immutable. The type of the zone.",
          enum = {
            "TYPE_UNSPECIFIED",
            "RAW",
            "CURATED",
          },
          enumDescriptions = {
            "Zone type not specified.",
            "A zone that contains data that needs further processing before it is considered generally ready for consumption and analytics workloads.",
            "A zone that contains data that is considered to be ready for broader consumption and analytics workloads. Curated structured data stored in Cloud Storage must conform to certain file formats (parquet, avro and orc) and organized in a hive-compatible directory layout.",
          },
          type = "string",
        },
        uid = {
          description = "Output only. System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the zone was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ZoneDiscoverySpec = {
      description = "Settings to manage the metadata discovery and publishing in a zone.",
      id = "GoogleCloudDataplexV1ZoneDiscoverySpec",
      properties = {
        csvOptions = {
          ["$ref"] = "GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions",
          description = "Optional. Configuration for CSV data.",
        },
        enabled = {
          description = "Required. Whether discovery is enabled.",
          type = "boolean",
        },
        excludePatterns = {
          description = "Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.",
          items = {
            type = "string",
          },
          type = "array",
        },
        includePatterns = {
          description = "Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.",
          items = {
            type = "string",
          },
          type = "array",
        },
        jsonOptions = {
          ["$ref"] = "GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions",
          description = "Optional. Configuration for Json data.",
        },
        schedule = {
          description = "Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: \"CRON_TZ=${IANA_TIME_ZONE}\" or TZ=${IANA_TIME_ZONE}\". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions = {
      description = "Describe CSV and similar semi-structured data formats.",
      id = "GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions",
      properties = {
        delimiter = {
          description = "Optional. The delimiter being used to separate values. This defaults to ','.",
          type = "string",
        },
        disableTypeInference = {
          description = "Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.",
          type = "boolean",
        },
        encoding = {
          description = "Optional. The character encoding of the data. The default is UTF-8.",
          type = "string",
        },
        headerRows = {
          description = "Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions = {
      description = "Describe JSON data format.",
      id = "GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions",
      properties = {
        disableTypeInference = {
          description = "Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).",
          type = "boolean",
        },
        encoding = {
          description = "Optional. The character encoding of the data. The default is UTF-8.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDataplexV1ZoneResourceSpec = {
      description = "Settings for resources attached as assets within a zone.",
      id = "GoogleCloudDataplexV1ZoneResourceSpec",
      properties = {
        locationType = {
          description = "Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.",
          enum = {
            "LOCATION_TYPE_UNSPECIFIED",
            "SINGLE_REGION",
            "MULTI_REGION",
          },
          enumDescriptions = {
            "Unspecified location type.",
            "Resources that are associated with a single region.",
            "Resources that are associated with a multi-region location.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudLocationListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "GoogleCloudLocationListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleCloudLocationLocation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudLocationLocation = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "GoogleCloudLocationLocation",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"} ",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: \"us-east1\".",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata. For example the available capacity at the given location.",
          type = "object",
        },
        name = {
          description = "Resource name for the location, which may vary between implementations. For example: \"projects/example-project/locations/us-east1\"",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs.If there are AuditConfigs for both allServices and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted.Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts jose@example.com from DATA_READ logging, and aliya@example.com from DATA_WRITE logging.",
      id = "GoogleIamV1AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "GoogleIamV1AuditLogConfig",
          },
          type = "array",
        },
        service = {
          description = "Specifies a service that will be enabled for audit logging. For example, storage.googleapis.com, cloudsql.googleapis.com. allServices is a special value that covers all services.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "GoogleIamV1AuditLogConfig",
      properties = {
        exemptedMembers = {
          description = "Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logType = {
          description = "The log type that this config enables.",
          enum = {
            "LOG_TYPE_UNSPECIFIED",
            "ADMIN_READ",
            "DATA_WRITE",
            "DATA_READ",
          },
          enumDescriptions = {
            "Default case. Should never be this.",
            "Admin reads. Example: CloudIAM getIamPolicy",
            "Data writes. Example: CloudSQL Users create",
            "Data reads. Example: CloudSQL Users list",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1Binding = {
      description = "Associates members, or principals, with a role.",
      id = "GoogleIamV1Binding",
      properties = {
        condition = {
          ["$ref"] = "GoogleTypeExpr",
          description = "The condition that is associated with this binding.If the condition evaluates to true, then this binding applies to the current request.If the condition evaluates to false, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. members can have the following values: allUsers: A special identifier that represents anyone who is on the internet; with or without a Google account. allAuthenticatedUsers: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. user:{emailid}: An email address that represents a specific Google account. For example, alice@example.com . serviceAccount:{emailid}: An email address that represents a Google service account. For example, my-other-app@appspot.gserviceaccount.com. serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]: An identifier for a Kubernetes service account (https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, my-project.svc.id.goog[my-namespace/my-kubernetes-sa]. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a user that has been recently deleted. For example, alice@example.com?uid=123456789012345678901. If the user is recovered, this value reverts to user:{emailid} and the recovered user retains the role in the binding. deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901. If the service account is undeleted, this value reverts to serviceAccount:{emailid} and the undeleted service account retains the role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, admins@example.com?uid=123456789012345678901. If the group is recovered, this value reverts to group:{emailid} and the recovered group retains the role in the binding. domain:{domain}: The G Suite domain (primary) that represents all the users of that domain. For example, google.com or example.com.",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of members, or principals. For example, roles/viewer, roles/editor, or roles/owner.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).JSON example: { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } YAML example: bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation (https://cloud.google.com/iam/docs/).",
      id = "GoogleIamV1Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "GoogleIamV1AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.",
          items = {
            ["$ref"] = "GoogleIamV1Binding",
          },
          type = "array",
        },
        etag = {
          description = "etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleIamV1SetIamPolicyRequest = {
      description = "Request message for SetIamPolicy method.",
      id = "GoogleIamV1SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "GoogleIamV1Policy",
          description = "REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used:paths: \"bindings, etag\"",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1TestIamPermissionsRequest = {
      description = "Request message for TestIamPermissions method.",
      id = "GoogleIamV1TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the resource. Permissions with wildcards (such as * or storage.*) are not allowed. For more information see IAM Overview (https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleIamV1TestIamPermissionsResponse = {
      description = "Response message for TestIamPermissions method.",
      id = "GoogleIamV1TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of TestPermissionsRequest.permissions that the caller is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningCancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "GoogleLongrunningCancelOperationRequest",
      properties = {},
      type = "object",
    },
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
      properties = {
        done = {
          description = "If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
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
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations/{unique_id}.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get/Create/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleRpcStatus = {
      description = "The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpcStatus",
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
    GoogleTypeExpr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec.Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "GoogleTypeExpr",
      properties = {
        description = {
          description = "Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax.",
          type = "string",
        },
        location = {
          description = "Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Dataplex API",
  version = "v1",
  version_module = true,
}
