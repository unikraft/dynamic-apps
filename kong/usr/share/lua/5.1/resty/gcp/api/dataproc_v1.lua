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
  baseUrl = "https://dataproc.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Dataproc",
  description = "Manages Hadoop-based clusters and jobs on Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dataproc/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "dataproc:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://dataproc.mtls.googleapis.com/",
  name = "dataproc",
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
            autoscalingPolicies = {
              methods = {
                create = {
                  description = "Creates new autoscaling policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.autoscalingPolicies.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The \"resource name\" of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.create, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.autoscalingPolicies.create, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/autoscalingPolicies",
                  request = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  response = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by one or more clusters.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies/{autoscalingPoliciesId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.locations.autoscalingPolicies.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The \"resource name\" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.delete, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies.delete, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$",
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
                  description = "Retrieves autoscaling policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies/{autoscalingPoliciesId}",
                  httpMethod = "GET",
                  id = "dataproc.projects.locations.autoscalingPolicies.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The \"resource name\" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.get, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies.get, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies/{autoscalingPoliciesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.autoscalingPolicies.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists autoscaling policies in the project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies",
                  httpMethod = "GET",
                  id = "dataproc.projects.locations.autoscalingPolicies.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return in each response. Must be less than or equal to 1000. Defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The page token, returned by a previous call, to request the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The \"resource name\" of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.list, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.autoscalingPolicies.list, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/autoscalingPolicies",
                  response = {
                    ["$ref"] = "ListAutoscalingPoliciesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies/{autoscalingPoliciesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.autoscalingPolicies.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies/{autoscalingPoliciesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.autoscalingPolicies.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/autoscalingPolicies/{autoscalingPoliciesId}",
                  httpMethod = "PUT",
                  id = "dataproc.projects.locations.autoscalingPolicies.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The \"resource name\" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  response = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            batches = {
              methods = {
                create = {
                  description = "Creates a batch workload that executes asynchronously.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/batches",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.batches.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    batchId = {
                      description = "Optional. The ID to use for the batch, which will become the final component of the batch's resource name.This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource where this batch will be created.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with the same request_id, the second request is ignored and the Operation that corresponds to the first Batch created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/batches",
                  request = {
                    ["$ref"] = "Batch",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the batch workload resource. If the batch is not in terminal state, the delete fails and the response returns FAILED_PRECONDITION.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/batches/{batchesId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.locations.batches.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The fully qualified name of the batch to retrieve in the format \"projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/batches/[^/]+$",
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
                  description = "Gets the batch workload resource representation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/batches/{batchesId}",
                  httpMethod = "GET",
                  id = "dataproc.projects.locations.batches.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The fully qualified name of the batch to retrieve in the format \"projects/PROJECT_ID/locations/DATAPROC_REGION/batches/BATCH_ID\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/batches/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Batch",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists batch workloads.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/batches",
                  httpMethod = "GET",
                  id = "dataproc.projects.locations.batches.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of batches to return in each response. The service may return fewer than this value. The default page size is 20; the maximum page size is 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token received from a previous ListBatches call. Provide this token to retrieve the subsequent page.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of batches.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/batches",
                  response = {
                    ["$ref"] = "ListBatchesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
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
                  id = "dataproc.projects.locations.operations.cancel",
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
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.locations.operations.delete",
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
                  id = "dataproc.projects.locations.operations.get",
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
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "dataproc.projects.locations.operations.list",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/operations$",
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
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            workflowTemplates = {
              methods = {
                create = {
                  description = "Creates new workflow template.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.workflowTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.create, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.workflowTemplates.create, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workflowTemplates",
                  request = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  response = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a workflow template. It does not cancel in-progress workflows.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates/{workflowTemplatesId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.locations.workflowTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.delete, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    version = {
                      description = "Optional. The version of workflow template to delete. If specified, will only delete the template if the current server version matches specified version.",
                      format = "int32",
                      location = "query",
                      type = "integer",
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
                  description = "Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates/{workflowTemplatesId}",
                  httpMethod = "GET",
                  id = "dataproc.projects.locations.workflowTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.get, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates.get, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    version = {
                      description = "Optional. The version of workflow template to retrieve. Only previously instantiated versions can be retrieved.If unspecified, retrieves the current version.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates/{workflowTemplatesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.workflowTemplates.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                instantiate = {
                  description = "Instantiates a template and begins execution.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates/{workflowTemplatesId}:instantiate",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.workflowTemplates.instantiate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.instantiate, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:instantiate",
                  request = {
                    ["$ref"] = "InstantiateWorkflowTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                instantiateInline = {
                  description = "Instantiates a template and begins execution.This method is equivalent to executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates:instantiateInline",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.workflowTemplates.instantiateInline",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates,instantiateinline, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.workflowTemplates.instantiateinline, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates risk of concurrent instances started due to retries.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workflowTemplates:instantiateInline",
                  request = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists workflows that match the specified filter in the request.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates",
                  httpMethod = "GET",
                  id = "dataproc.projects.locations.workflowTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return in each response.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The page token, returned by a previous call, to request the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates,list, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.workflowTemplates.list, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workflowTemplates",
                  response = {
                    ["$ref"] = "ListWorkflowTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates/{workflowTemplatesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.workflowTemplates.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates/{workflowTemplatesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataproc.projects.locations.workflowTemplates.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates (replaces) workflow template. The updated template must contain version that matches the current server version.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workflowTemplates/{workflowTemplatesId}",
                  httpMethod = "PUT",
                  id = "dataproc.projects.locations.workflowTemplates.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  response = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        regions = {
          resources = {
            autoscalingPolicies = {
              methods = {
                create = {
                  description = "Creates new autoscaling policy.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.autoscalingPolicies.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The \"resource name\" of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.create, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.autoscalingPolicies.create, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/autoscalingPolicies",
                  request = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  response = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by one or more clusters.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies/{autoscalingPoliciesId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.regions.autoscalingPolicies.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The \"resource name\" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.delete, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies.delete, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$",
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
                  description = "Retrieves autoscaling policy.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies/{autoscalingPoliciesId}",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.autoscalingPolicies.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The \"resource name\" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.get, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies.get, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies/{autoscalingPoliciesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.autoscalingPolicies.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists autoscaling policies in the project.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.autoscalingPolicies.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return in each response. Must be less than or equal to 1000. Defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The page token, returned by a previous call, to request the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The \"resource name\" of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies.list, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.autoscalingPolicies.list, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/autoscalingPolicies",
                  response = {
                    ["$ref"] = "ListAutoscalingPoliciesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies/{autoscalingPoliciesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.autoscalingPolicies.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies/{autoscalingPoliciesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.autoscalingPolicies.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/autoscalingPolicies/{autoscalingPoliciesId}",
                  httpMethod = "PUT",
                  id = "dataproc.projects.regions.autoscalingPolicies.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The \"resource name\" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/autoscalingPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  response = {
                    ["$ref"] = "AutoscalingPolicy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            clusters = {
              methods = {
                create = {
                  description = "Creates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.create",
                  parameterOrder = {
                    "projectId",
                    "region",
                  },
                  parameters = {
                    actionOnFailedPrimaryWorkers = {
                      description = "Optional. Failure action when primary worker creation fails.",
                      enum = {
                        "FAILURE_ACTION_UNSPECIFIED",
                        "NO_ACTION",
                        "DELETE",
                      },
                      enumDescriptions = {
                        "When FailureAction is unspecified, failure action defaults to NO_ACTION.",
                        "Take no action on failure to create a cluster resource. NO_ACTION is the default.",
                        "Delete the failed cluster resource.",
                      },
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique ID used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters",
                  request = {
                    ["$ref"] = "Cluster",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.regions.clusters.delete",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "clusterName",
                  },
                  parameters = {
                    clusterName = {
                      description = "Required. The cluster name.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    clusterUuid = {
                      description = "Optional. Specifying the cluster_uuid means the RPC should fail (with error NOT_FOUND) if cluster with specified UUID does not exist.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique ID used to identify the request. If the server receives two DeleteClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.DeleteClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                diagnose = {
                  description = "Gets cluster diagnostic information. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata). After the operation completes, Operation.response contains DiagnoseClusterResults (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#diagnoseclusterresults).",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:diagnose",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.diagnose",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "clusterName",
                  },
                  parameters = {
                    clusterName = {
                      description = "Required. The cluster name.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:diagnose",
                  request = {
                    ["$ref"] = "DiagnoseClusterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the resource representation for a cluster in a project.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.clusters.get",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "clusterName",
                  },
                  parameters = {
                    clusterName = {
                      description = "Required. The cluster name.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}",
                  response = {
                    ["$ref"] = "Cluster",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/clusters/{clustersId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                injectCredentials = {
                  description = "Inject encrypted credentials into all of the VMs in a cluster.The target cluster must be a personal auth cluster assigned to the user who is issuing the RPC.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/clusters/{clustersId}:injectCredentials",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.injectCredentials",
                  parameterOrder = {
                    "project",
                    "region",
                    "cluster",
                  },
                  parameters = {
                    cluster = {
                      description = "Required. The cluster, in the form clusters/.",
                      location = "path",
                      pattern = "^clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    project = {
                      description = "Required. The ID of the Google Cloud Platform project the cluster belongs to, of the form projects/.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The region containing the cluster, of the form regions/.",
                      location = "path",
                      pattern = "^regions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+project}/{+region}/{+cluster}:injectCredentials",
                  request = {
                    ["$ref"] = "InjectCredentialsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all regions/{region}/clusters in a project alphabetically.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.clusters.list",
                  parameterOrder = {
                    "projectId",
                    "region",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. A filter constraining the clusters to list. Filters are case-sensitive and have the following syntax:field = value AND field = value ...where field is one of status.state, clusterName, or labels.[KEY], and [KEY] is a label key. value can be * to match all values. status.state can be one of the following: ACTIVE, INACTIVE, CREATING, RUNNING, ERROR, DELETING, or UPDATING. ACTIVE contains the CREATING, UPDATING, and RUNNING states. INACTIVE contains the DELETING and ERROR states. clusterName is the name of the cluster provided at creation time. Only the logical AND operator is supported; space-separated items are treated as having an implicit AND operator.Example filter:status.state = ACTIVE AND clusterName = mycluster AND labels.env = staging AND labels.starred = *",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The standard List page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The standard List page token.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters",
                  response = {
                    ["$ref"] = "ListClustersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a cluster in a project. The returned Operation.metadata will be ClusterOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata). The cluster must be in a RUNNING state or an error is returned.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}",
                  httpMethod = "PATCH",
                  id = "dataproc.projects.regions.clusters.patch",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "clusterName",
                  },
                  parameters = {
                    clusterName = {
                      description = "Required. The cluster name.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    gracefulDecommissionTimeout = {
                      description = "Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning allows removing nodes from the cluster without interrupting jobs in progress. Timeout specifies how long to wait for jobs in progress to finish before forcefully removing nodes (and potentially interrupting jobs). Default timeout is 0 (for forceful decommission), and the maximum allowed timeout is 1 day. (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Only supported on Dataproc image versions 1.2 and higher.",
                      format = "google-duration",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique ID used to identify the request. If the server receives two UpdateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.UpdateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Specifies the path, relative to Cluster, of the field to update. For example, to change the number of workers in a cluster to 5, the update_mask parameter would be specified as config.worker_config.num_instances, and the PATCH request body would specify the new value, as follows: { \"config\":{ \"workerConfig\":{ \"numInstances\":\"5\" } } } Similarly, to change the number of preemptible workers in a cluster to 5, the update_mask parameter would be config.secondary_worker_config.num_instances, and the PATCH request body would be set as follows: { \"config\":{ \"secondaryWorkerConfig\":{ \"numInstances\":\"5\" } } } *Note:* Currently, only the following fields can be updated: *Mask* *Purpose* *labels* Update labels *config.worker_config.num_instances* Resize primary worker group *config.secondary_worker_config.num_instances* Resize secondary worker group config.autoscaling_config.policy_uri Use, stop using, or change autoscaling policies ",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}",
                  request = {
                    ["$ref"] = "Cluster",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                repair = {
                  description = "Repairs a cluster.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:repair",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.repair",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "clusterName",
                  },
                  parameters = {
                    clusterName = {
                      description = "Required. The cluster name.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:repair",
                  request = {
                    ["$ref"] = "RepairClusterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/clusters/{clustersId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                start = {
                  description = "Starts a cluster in a project.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:start",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.start",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "clusterName",
                  },
                  parameters = {
                    clusterName = {
                      description = "Required. The cluster name.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:start",
                  request = {
                    ["$ref"] = "StartClusterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                stop = {
                  description = "Stops a cluster in a project.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:stop",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.stop",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "clusterName",
                  },
                  parameters = {
                    clusterName = {
                      description = "Required. The cluster name.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project the cluster belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/clusters/{clusterName}:stop",
                  request = {
                    ["$ref"] = "StopClusterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/clusters/{clustersId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.clusters.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                nodeGroups = {
                  methods = {
                    create = {
                      description = "Creates a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).",
                      flatPath = "v1/projects/{projectsId}/regions/{regionsId}/clusters/{clustersId}/nodeGroups",
                      httpMethod = "POST",
                      id = "dataproc.projects.regions.clusters.nodeGroups.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        nodeGroupId = {
                          description = "Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource where this node group will be created. Format: projects/{project}/regions/{region}/clusters/{cluster}",
                          location = "path",
                          pattern = "^projects/[^/]+/regions/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/nodeGroups",
                      request = {
                        ["$ref"] = "NodeGroup",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the resource representation for a node group in a cluster.",
                      flatPath = "v1/projects/{projectsId}/regions/{regionsId}/clusters/{clustersId}/nodeGroups/{nodeGroupsId}",
                      httpMethod = "GET",
                      id = "dataproc.projects.regions.clusters.nodeGroups.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the node group to retrieve. Format: projects/{project}/regions/{region}/clusters/{cluster}/nodeGroups/{nodeGroup}",
                          location = "path",
                          pattern = "^projects/[^/]+/regions/[^/]+/clusters/[^/]+/nodeGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "NodeGroup",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    resize = {
                      description = "Resizes a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).",
                      flatPath = "v1/projects/{projectsId}/regions/{regionsId}/clusters/{clustersId}/nodeGroups/{nodeGroupsId}:resize",
                      httpMethod = "POST",
                      id = "dataproc.projects.regions.clusters.nodeGroups.resize",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the node group to resize. Format: projects/{project}/regions/{region}/clusters/{cluster}/nodeGroups/{nodeGroup}",
                          location = "path",
                          pattern = "^projects/[^/]+/regions/[^/]+/clusters/[^/]+/nodeGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:resize",
                      request = {
                        ["$ref"] = "ResizeNodeGroupRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            jobs = {
              methods = {
                cancel = {
                  description = "Starts a job cancellation request. To access the job resource after cancellation, call regions/{region}/jobs.list (https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/list) or regions/{region}/jobs.get (https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs/get).",
                  flatPath = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}:cancel",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.jobs.cancel",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "Required. The job ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}:cancel",
                  request = {
                    ["$ref"] = "CancelJobRequest",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the job from the project. If the job is active, the delete fails, and the response returns FAILED_PRECONDITION.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.regions.jobs.delete",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "Required. The job ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the resource representation for a job in a project.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.jobs.get",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "Required. The job ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}",
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/jobs/{jobsId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.jobs.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists regions/{region}/jobs in a project.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/jobs",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.jobs.list",
                  parameterOrder = {
                    "projectId",
                    "region",
                  },
                  parameters = {
                    clusterName = {
                      description = "Optional. If set, the returned jobs list includes only jobs that were submitted to the named cluster.",
                      location = "query",
                      type = "string",
                    },
                    filter = {
                      description = "Optional. A filter constraining the jobs to list. Filters are case-sensitive and have the following syntax:field = value AND field = value ...where field is status.state or labels.[KEY], and [KEY] is a label key. value can be * to match all values. status.state can be either ACTIVE or NON_ACTIVE. Only the logical AND operator is supported; space-separated items are treated as having an implicit AND operator.Example filter:status.state = ACTIVE AND labels.env = staging AND labels.starred = *",
                      location = "query",
                      type = "string",
                    },
                    jobStateMatcher = {
                      description = "Optional. Specifies enumerated categories of jobs to list. (default = match ALL jobs).If filter is provided, jobStateMatcher will be ignored.",
                      enum = {
                        "ALL",
                        "ACTIVE",
                        "NON_ACTIVE",
                      },
                      enumDescriptions = {
                        "Match all jobs, regardless of state.",
                        "Only match jobs in non-terminal states: PENDING, RUNNING, or CANCEL_PENDING.",
                        "Only match jobs in terminal states: CANCELLED, DONE, or ERROR.",
                      },
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The number of results to return in each response.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The page token, returned by a previous call, to request the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/jobs",
                  response = {
                    ["$ref"] = "ListJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a job in a project.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}",
                  httpMethod = "PATCH",
                  id = "dataproc.projects.regions.jobs.patch",
                  parameterOrder = {
                    "projectId",
                    "region",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "Required. The job ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Specifies the path, relative to Job, of the field to update. For example, to update the labels of a Job the update_mask parameter would be specified as labels, and the PATCH request body would specify the new value. *Note:* Currently, labels is the only field that can be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/jobs/{jobId}",
                  request = {
                    ["$ref"] = "Job",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/jobs/{jobsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.jobs.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                submit = {
                  description = "Submits a job to a cluster.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/jobs:submit",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.jobs.submit",
                  parameterOrder = {
                    "projectId",
                    "region",
                  },
                  parameters = {
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/jobs:submit",
                  request = {
                    ["$ref"] = "SubmitJobRequest",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                submitAsOperation = {
                  description = "Submits job to a cluster.",
                  flatPath = "v1/projects/{projectId}/regions/{region}/jobs:submitAsOperation",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.jobs.submitAsOperation",
                  parameterOrder = {
                    "projectId",
                    "region",
                  },
                  parameters = {
                    projectId = {
                      description = "Required. The ID of the Google Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    region = {
                      description = "Required. The Dataproc region in which to handle the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/regions/{region}/jobs:submitAsOperation",
                  request = {
                    ["$ref"] = "SubmitJobRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/jobs/{jobsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.jobs.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/operations/[^/]+$",
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
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.regions.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/operations/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/operations/[^/]+$",
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
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/operations/{operationsId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.operations.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/operations",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.operations.list",
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
                      pattern = "^projects/[^/]+/regions/[^/]+/operations$",
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
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/operations/{operationsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.operations.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/operations/{operationsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.operations.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            workflowTemplates = {
              methods = {
                create = {
                  description = "Creates new workflow template.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.workflowTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.create, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.workflowTemplates.create, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workflowTemplates",
                  request = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  response = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a workflow template. It does not cancel in-progress workflows.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates/{workflowTemplatesId}",
                  httpMethod = "DELETE",
                  id = "dataproc.projects.regions.workflowTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.delete, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    version = {
                      description = "Optional. The version of workflow template to delete. If specified, will only delete the template if the current server version matches specified version.",
                      format = "int32",
                      location = "query",
                      type = "integer",
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
                  description = "Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates/{workflowTemplatesId}",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.workflowTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.get, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates.get, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    version = {
                      description = "Optional. The version of workflow template to retrieve. Only previously instantiated versions can be retrieved.If unspecified, retrieves the current version.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates/{workflowTemplatesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.workflowTemplates.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                instantiate = {
                  description = "Instantiates a template and begins execution.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates/{workflowTemplatesId}:instantiate",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.workflowTemplates.instantiate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates.instantiate, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:instantiate",
                  request = {
                    ["$ref"] = "InstantiateWorkflowTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                instantiateInline = {
                  description = "Instantiates a template and begins execution.This method is equivalent to executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https://cloud.google.com/dataproc/docs/concepts/workflows/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates:instantiateInline",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.workflowTemplates.instantiateInline",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates,instantiateinline, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.workflowTemplates.instantiateinline, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates risk of concurrent instances started due to retries.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workflowTemplates:instantiateInline",
                  request = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists workflows that match the specified filter in the request.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates",
                  httpMethod = "GET",
                  id = "dataproc.projects.regions.workflowTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of results to return in each response.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The page token, returned by a previous call, to request the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the region or location, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates,list, the resource name of the region has the following format: projects/{project_id}/regions/{region} For projects.locations.workflowTemplates.list, the resource name of the location has the following format: projects/{project_id}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workflowTemplates",
                  response = {
                    ["$ref"] = "ListWorkflowTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates/{workflowTemplatesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.workflowTemplates.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates/{workflowTemplatesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "dataproc.projects.regions.workflowTemplates.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates (replaces) workflow template. The updated template must contain version that matches the current server version.",
                  flatPath = "v1/projects/{projectsId}/regions/{regionsId}/workflowTemplates/{workflowTemplatesId}",
                  httpMethod = "PUT",
                  id = "dataproc.projects.regions.workflowTemplates.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/regions/[^/]+/workflowTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "WorkflowTemplate",
                  },
                  response = {
                    ["$ref"] = "WorkflowTemplate",
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
  revision = "20230103",
  rootUrl = "https://dataproc.googleapis.com/",
  schemas = {
    AcceleratorConfig = {
      description = "Specifies the type and number of accelerator cards attached to the instances of an instance. See GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/).",
      id = "AcceleratorConfig",
      properties = {
        acceleratorCount = {
          description = "The number of the accelerator cards of this type exposed to this instance.",
          format = "int32",
          type = "integer",
        },
        acceleratorTypeUri = {
          description = "Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes).Examples: https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.",
          type = "string",
        },
      },
      type = "object",
    },
    AutoscalingConfig = {
      description = "Autoscaling Policy config associated with the cluster.",
      id = "AutoscalingConfig",
      properties = {
        policyUri = {
          description = "Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.",
          type = "string",
        },
      },
      type = "object",
    },
    AutoscalingPolicy = {
      description = "Describes an autoscaling policy for Dataproc cluster autoscaler.",
      id = "AutoscalingPolicy",
      properties = {
        basicAlgorithm = {
          ["$ref"] = "BasicAutoscalingAlgorithm",
        },
        id = {
          description = "Required. The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.",
          type = "object",
        },
        name = {
          description = "Output only. The \"resource name\" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}",
          readOnly = true,
          type = "string",
        },
        secondaryWorkerConfig = {
          ["$ref"] = "InstanceGroupAutoscalingPolicyConfig",
          description = "Optional. Describes how the autoscaler will operate for secondary workers.",
        },
        workerConfig = {
          ["$ref"] = "InstanceGroupAutoscalingPolicyConfig",
          description = "Required. Describes how the autoscaler will operate for primary workers.",
        },
      },
      type = "object",
    },
    AuxiliaryNodeGroup = {
      description = "Node group identification and configuration information.",
      id = "AuxiliaryNodeGroup",
      properties = {
        nodeGroup = {
          ["$ref"] = "NodeGroup",
          description = "Required. Node group configuration.",
        },
        nodeGroupId = {
          description = "Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    AuxiliaryServicesConfig = {
      description = "Auxiliary services configuration for a Cluster.",
      id = "AuxiliaryServicesConfig",
      properties = {
        metastoreConfig = {
          ["$ref"] = "MetastoreConfig",
          description = "Optional. The Hive Metastore configuration for this workload.",
        },
        sparkHistoryServerConfig = {
          ["$ref"] = "SparkHistoryServerConfig",
          description = "Optional. The Spark History Server configuration for the workload.",
        },
      },
      type = "object",
    },
    BasicAutoscalingAlgorithm = {
      description = "Basic algorithm for autoscaling.",
      id = "BasicAutoscalingAlgorithm",
      properties = {
        cooldownPeriod = {
          description = "Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.",
          format = "google-duration",
          type = "string",
        },
        sparkStandaloneConfig = {
          ["$ref"] = "SparkStandaloneAutoscalingConfig",
          description = "Optional. Spark Standalone autoscaling configuration",
        },
        yarnConfig = {
          ["$ref"] = "BasicYarnAutoscalingConfig",
          description = "Optional. YARN autoscaling configuration.",
        },
      },
      type = "object",
    },
    BasicYarnAutoscalingConfig = {
      description = "Basic autoscaling configurations for YARN.",
      id = "BasicYarnAutoscalingConfig",
      properties = {
        gracefulDecommissionTimeout = {
          description = "Required. Timeout for YARN graceful decommissioning of Node Managers. Specifies the duration to wait for jobs to complete before forcefully removing workers (and potentially interrupting jobs). Only applicable to downscaling operations.Bounds: 0s, 1d.",
          format = "google-duration",
          type = "string",
        },
        scaleDownFactor = {
          description = "Required. Fraction of average YARN pending memory in the last cooldown period for which to remove workers. A scale-down factor of 1 will result in scaling down so that there is no available memory remaining after the update (more aggressive scaling). A scale-down factor of 0 disables removing workers, which can be beneficial for autoscaling a single job. See How autoscaling works (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/autoscaling#how_autoscaling_works) for more information.Bounds: 0.0, 1.0.",
          format = "double",
          type = "number",
        },
        scaleDownMinWorkerFraction = {
          description = "Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0 means the autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.",
          format = "double",
          type = "number",
        },
        scaleUpFactor = {
          description = "Required. Fraction of average YARN pending memory in the last cooldown period for which to add workers. A scale-up factor of 1.0 will result in scaling up so that there is no pending memory remaining after the update (more aggressive scaling). A scale-up factor closer to 0 will result in a smaller magnitude of scaling up (less aggressive scaling). See How autoscaling works (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/autoscaling#how_autoscaling_works) for more information.Bounds: 0.0, 1.0.",
          format = "double",
          type = "number",
        },
        scaleUpMinWorkerFraction = {
          description = "Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of 0 means the autoscaler will scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Batch = {
      description = "A representation of a batch workload in the service.",
      id = "Batch",
      properties = {
        createTime = {
          description = "Output only. The time when the batch was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          description = "Output only. The email address of the user who created the batch.",
          readOnly = true,
          type = "string",
        },
        environmentConfig = {
          ["$ref"] = "EnvironmentConfig",
          description = "Optional. Environment configuration for the batch execution.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name of the batch.",
          readOnly = true,
          type = "string",
        },
        operation = {
          description = "Output only. The resource name of the operation associated with this batch.",
          readOnly = true,
          type = "string",
        },
        pysparkBatch = {
          ["$ref"] = "PySparkBatch",
          description = "Optional. PySpark batch config.",
        },
        runtimeConfig = {
          ["$ref"] = "RuntimeConfig",
          description = "Optional. Runtime configuration for the batch execution.",
        },
        runtimeInfo = {
          ["$ref"] = "RuntimeInfo",
          description = "Output only. Runtime information about batch execution.",
          readOnly = true,
        },
        sparkBatch = {
          ["$ref"] = "SparkBatch",
          description = "Optional. Spark batch config.",
        },
        sparkRBatch = {
          ["$ref"] = "SparkRBatch",
          description = "Optional. SparkR batch config.",
        },
        sparkSqlBatch = {
          ["$ref"] = "SparkSqlBatch",
          description = "Optional. SparkSql batch config.",
        },
        state = {
          description = "Output only. The state of the batch.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "CANCELLING",
            "CANCELLED",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "The batch state is unknown.",
            "The batch is created before running.",
            "The batch is running.",
            "The batch is cancelling.",
            "The batch cancellation was successful.",
            "The batch completed successfully.",
            "The batch is no longer running due to an error.",
          },
          readOnly = true,
          type = "string",
        },
        stateHistory = {
          description = "Output only. Historical state information for the batch.",
          items = {
            ["$ref"] = "StateHistory",
          },
          readOnly = true,
          type = "array",
        },
        stateMessage = {
          description = "Output only. Batch state details, such as a failure description if the state is FAILED.",
          readOnly = true,
          type = "string",
        },
        stateTime = {
          description = "Output only. The time when the batch entered a current state.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        uuid = {
          description = "Output only. A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    BatchOperationMetadata = {
      description = "Metadata describing the Batch operation.",
      id = "BatchOperationMetadata",
      properties = {
        batch = {
          description = "Name of the batch for the operation.",
          type = "string",
        },
        batchUuid = {
          description = "Batch UUID for the operation.",
          type = "string",
        },
        createTime = {
          description = "The time when the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Short description of the operation.",
          type = "string",
        },
        doneTime = {
          description = "The time when the operation finished.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels associated with the operation.",
          type = "object",
        },
        operationType = {
          description = "The operation type.",
          enum = {
            "BATCH_OPERATION_TYPE_UNSPECIFIED",
            "BATCH",
          },
          enumDescriptions = {
            "Batch operation type is unknown.",
            "Batch operation type.",
          },
          type = "string",
        },
        warnings = {
          description = "Warnings encountered during operation execution.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates members, or principals, with a role.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
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
    CancelJobRequest = {
      description = "A request to cancel a job.",
      id = "CancelJobRequest",
      properties = {},
      type = "object",
    },
    Cluster = {
      description = "Describes the identifying information, config, and status of a Dataproc cluster",
      id = "Cluster",
      properties = {
        clusterName = {
          description = "Required. The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.",
          type = "string",
        },
        clusterUuid = {
          description = "Output only. A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.",
          readOnly = true,
          type = "string",
        },
        config = {
          ["$ref"] = "ClusterConfig",
          description = "Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.",
          type = "object",
        },
        metrics = {
          ["$ref"] = "ClusterMetrics",
          description = "Output only. Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.",
          readOnly = true,
        },
        projectId = {
          description = "Required. The Google Cloud Platform project ID that the cluster belongs to.",
          type = "string",
        },
        status = {
          ["$ref"] = "ClusterStatus",
          description = "Output only. Cluster status.",
          readOnly = true,
        },
        statusHistory = {
          description = "Output only. The previous cluster status.",
          items = {
            ["$ref"] = "ClusterStatus",
          },
          readOnly = true,
          type = "array",
        },
        virtualClusterConfig = {
          ["$ref"] = "VirtualClusterConfig",
          description = "Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.",
        },
      },
      type = "object",
    },
    ClusterConfig = {
      description = "The cluster config.",
      id = "ClusterConfig",
      properties = {
        autoscalingConfig = {
          ["$ref"] = "AutoscalingConfig",
          description = "Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.",
        },
        auxiliaryNodeGroups = {
          description = "Optional. The node group settings.",
          items = {
            ["$ref"] = "AuxiliaryNodeGroup",
          },
          type = "array",
        },
        configBucket = {
          description = "Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.",
          type = "string",
        },
        dataprocMetricConfig = {
          ["$ref"] = "DataprocMetricConfig",
          description = "Optional. The config for Dataproc metrics.",
        },
        encryptionConfig = {
          ["$ref"] = "EncryptionConfig",
          description = "Optional. Encryption settings for the cluster.",
        },
        endpointConfig = {
          ["$ref"] = "EndpointConfig",
          description = "Optional. Port/endpoint configuration for this cluster",
        },
        gceClusterConfig = {
          ["$ref"] = "GceClusterConfig",
          description = "Optional. The shared Compute Engine config settings for all instances in a cluster.",
        },
        gkeClusterConfig = {
          ["$ref"] = "GkeClusterConfig",
          description = "Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. These config settings are mutually exclusive with Compute Engine-based options, such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.",
        },
        initializationActions = {
          description = "Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ \"${ROLE}\" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi ",
          items = {
            ["$ref"] = "NodeInitializationAction",
          },
          type = "array",
        },
        lifecycleConfig = {
          ["$ref"] = "LifecycleConfig",
          description = "Optional. Lifecycle setting for the cluster.",
        },
        masterConfig = {
          ["$ref"] = "InstanceGroupConfig",
          description = "Optional. The Compute Engine config settings for the cluster's master instance.",
        },
        metastoreConfig = {
          ["$ref"] = "MetastoreConfig",
          description = "Optional. Metastore configuration.",
        },
        secondaryWorkerConfig = {
          ["$ref"] = "InstanceGroupConfig",
          description = "Optional. The Compute Engine config settings for a cluster's secondary worker instances",
        },
        securityConfig = {
          ["$ref"] = "SecurityConfig",
          description = "Optional. Security settings for the cluster.",
        },
        softwareConfig = {
          ["$ref"] = "SoftwareConfig",
          description = "Optional. The config settings for cluster software.",
        },
        tempBucket = {
          description = "Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.",
          type = "string",
        },
        workerConfig = {
          ["$ref"] = "InstanceGroupConfig",
          description = "Optional. The Compute Engine config settings for the cluster's worker instances.",
        },
      },
      type = "object",
    },
    ClusterMetrics = {
      description = "Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.",
      id = "ClusterMetrics",
      properties = {
        hdfsMetrics = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "The HDFS metrics.",
          type = "object",
        },
        yarnMetrics = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "YARN metrics.",
          type = "object",
        },
      },
      type = "object",
    },
    ClusterOperation = {
      description = "The cluster operation triggered by a workflow.",
      id = "ClusterOperation",
      properties = {
        done = {
          description = "Output only. Indicates the operation is done.",
          readOnly = true,
          type = "boolean",
        },
        error = {
          description = "Output only. Error, if operation failed.",
          readOnly = true,
          type = "string",
        },
        operationId = {
          description = "Output only. The id of the cluster operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ClusterOperationMetadata = {
      description = "Metadata describing the operation.",
      id = "ClusterOperationMetadata",
      properties = {
        childOperationIds = {
          description = "Output only. Child operation ids",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        clusterName = {
          description = "Output only. Name of the cluster for the operation.",
          readOnly = true,
          type = "string",
        },
        clusterUuid = {
          description = "Output only. Cluster UUID for the operation.",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. Short description of operation.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Labels associated with the operation",
          readOnly = true,
          type = "object",
        },
        operationType = {
          description = "Output only. The operation type.",
          readOnly = true,
          type = "string",
        },
        status = {
          ["$ref"] = "ClusterOperationStatus",
          description = "Output only. Current operation status.",
          readOnly = true,
        },
        statusHistory = {
          description = "Output only. The previous operation status.",
          items = {
            ["$ref"] = "ClusterOperationStatus",
          },
          readOnly = true,
          type = "array",
        },
        warnings = {
          description = "Output only. Errors encountered during operation execution.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ClusterOperationStatus = {
      description = "The status of the operation.",
      id = "ClusterOperationStatus",
      properties = {
        details = {
          description = "Output only. A message containing any operation metadata details.",
          readOnly = true,
          type = "string",
        },
        innerState = {
          description = "Output only. A message containing the detailed operation state.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. A message containing the operation state.",
          enum = {
            "UNKNOWN",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "Unused.",
            "The operation has been created.",
            "The operation is running.",
            "The operation is done; either cancelled or completed.",
          },
          readOnly = true,
          type = "string",
        },
        stateStartTime = {
          description = "Output only. The time this state was entered.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ClusterSelector = {
      description = "A selector that chooses target cluster for jobs based on metadata.",
      id = "ClusterSelector",
      properties = {
        clusterLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Required. The cluster labels. Cluster must have all labels to match.",
          type = "object",
        },
        zone = {
          description = "Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.",
          type = "string",
        },
      },
      type = "object",
    },
    ClusterStatus = {
      description = "The status of a cluster and its instances.",
      id = "ClusterStatus",
      properties = {
        detail = {
          description = "Optional. Output only. Details of cluster's state.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The cluster's state.",
          enum = {
            "UNKNOWN",
            "CREATING",
            "RUNNING",
            "ERROR",
            "ERROR_DUE_TO_UPDATE",
            "DELETING",
            "UPDATING",
            "STOPPING",
            "STOPPED",
            "STARTING",
            "REPAIRING",
          },
          enumDescriptions = {
            "The cluster state is unknown.",
            "The cluster is being created and set up. It is not ready for use.",
            "The cluster is currently running and healthy. It is ready for use.Note: The cluster state changes from \"creating\" to \"running\" status after the master node(s), first two primary worker nodes (and the last primary worker node if primary workers > 2) are running.",
            "The cluster encountered an error. It is not ready for use.",
            "The cluster has encountered an error while being updated. Jobs can be submitted to the cluster, but the cluster cannot be updated.",
            "The cluster is being deleted. It cannot be used.",
            "The cluster is being updated. It continues to accept and process jobs.",
            "The cluster is being stopped. It cannot be used.",
            "The cluster is currently stopped. It is not ready for use.",
            "The cluster is being started. It is not ready for use.",
            "The cluster is being repaired. It is not ready for use.",
          },
          readOnly = true,
          type = "string",
        },
        stateStartTime = {
          description = "Output only. Time when this state was entered (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        substate = {
          description = "Output only. Additional state information that includes status reported by the agent.",
          enum = {
            "UNSPECIFIED",
            "UNHEALTHY",
            "STALE_STATUS",
          },
          enumDescriptions = {
            "The cluster substate is unknown.",
            "The cluster is known to be in an unhealthy state (for example, critical daemons are not running or HDFS capacity is exhausted).Applies to RUNNING state.",
            "The agent-reported status is out of date (may occur if Dataproc loses communication with Agent).Applies to RUNNING state.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ConfidentialInstanceConfig = {
      description = "Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs)",
      id = "ConfidentialInstanceConfig",
      properties = {
        enableConfidentialCompute = {
          description = "Optional. Defines whether the instance should have confidential compute enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DataprocMetricConfig = {
      description = "Dataproc metric config.",
      id = "DataprocMetricConfig",
      properties = {
        metrics = {
          description = "Required. Metrics sources to enable.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DiagnoseClusterRequest = {
      description = "A request to collect cluster diagnostic information.",
      id = "DiagnoseClusterRequest",
      properties = {},
      type = "object",
    },
    DiagnoseClusterResults = {
      description = "The location of diagnostic output.",
      id = "DiagnoseClusterResults",
      properties = {
        outputUri = {
          description = "Output only. The Cloud Storage URI of the diagnostic output. The output report is a plain text file with a summary of collected diagnostics.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DiskConfig = {
      description = "Specifies the config of disk options for a group of VM instances.",
      id = "DiskConfig",
      properties = {
        bootDiskSizeGb = {
          description = "Optional. Size in GB of the boot disk (default is 500GB).",
          format = "int32",
          type = "integer",
        },
        bootDiskType = {
          description = "Optional. Type of the boot disk (default is \"pd-standard\"). Valid values: \"pd-balanced\" (Persistent Disk Balanced Solid State Drive), \"pd-ssd\" (Persistent Disk Solid State Drive), or \"pd-standard\" (Persistent Disk Hard Disk Drive). See Disk types (https://cloud.google.com/compute/docs/disks#disk-types).",
          type = "string",
        },
        localSsdInterface = {
          description = "Optional. Interface type of local SSDs (default is \"scsi\"). Valid values: \"scsi\" (Small Computer System Interface), \"nvme\" (Non-Volatile Memory Express). See local SSD performance (https://cloud.google.com/compute/docs/disks/local-ssd#performance).",
          type = "string",
        },
        numLocalSsds = {
          description = "Optional. Number of attached SSDs, from 0 to 8 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and HDFS (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.Note: Local SSD options may vary by machine type and number of vCPUs selected.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DriverSchedulingConfig = {
      description = "Driver scheduling configuration.",
      id = "DriverSchedulingConfig",
      properties = {
        memoryMb = {
          description = "Required. The amount of memory in MB the driver is requesting.",
          format = "int32",
          type = "integer",
        },
        vcores = {
          description = "Required. The number of vCPUs the driver is requesting.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } ",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EncryptionConfig = {
      description = "Encryption settings for the cluster.",
      id = "EncryptionConfig",
      properties = {
        gcePdKmsKeyName = {
          description = "Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.",
          type = "string",
        },
      },
      type = "object",
    },
    EndpointConfig = {
      description = "Endpoint config for this cluster",
      id = "EndpointConfig",
      properties = {
        enableHttpPortAccess = {
          description = "Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.",
          type = "boolean",
        },
        httpPorts = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. The map of port descriptions to URLs. Will only be populated if enable_http_port_access is true.",
          readOnly = true,
          type = "object",
        },
      },
      type = "object",
    },
    EnvironmentConfig = {
      description = "Environment configuration for a workload.",
      id = "EnvironmentConfig",
      properties = {
        executionConfig = {
          ["$ref"] = "ExecutionConfig",
          description = "Optional. Execution configuration for a workload.",
        },
        peripheralsConfig = {
          ["$ref"] = "PeripheralsConfig",
          description = "Optional. Peripherals configuration that workload has access to.",
        },
      },
      type = "object",
    },
    ExecutionConfig = {
      description = "Execution configuration for a workload.",
      id = "ExecutionConfig",
      properties = {
        idleTtl = {
          description = "Optional. The duration to keep the session alive while it's idling. Passing this threshold will cause the session to be terminated. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). Defaults to 4 hours if not set. If both ttl and idle_ttl are specified, the conditions are treated as and OR: the workload will be terminated when it has been idle for idle_ttl or when the ttl has passed, whichever comes first.",
          format = "google-duration",
          type = "string",
        },
        kmsKey = {
          description = "Optional. The Cloud KMS key to use for encryption.",
          type = "string",
        },
        networkTags = {
          description = "Optional. Tags used for network traffic control.",
          items = {
            type = "string",
          },
          type = "array",
        },
        networkUri = {
          description = "Optional. Network URI to connect workload to.",
          type = "string",
        },
        serviceAccount = {
          description = "Optional. Service account that used to execute workload.",
          type = "string",
        },
        subnetworkUri = {
          description = "Optional. Subnetwork URI to connect workload to.",
          type = "string",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec.Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "Expr",
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
    GceClusterConfig = {
      description = "Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.",
      id = "GceClusterConfig",
      properties = {
        confidentialInstanceConfig = {
          ["$ref"] = "ConfidentialInstanceConfig",
          description = "Optional. Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs).",
        },
        internalIpOnly = {
          description = "Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.",
          type = "boolean",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).",
          type = "object",
        },
        networkUri = {
          description = "Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the \"default\" network of the project is used, if it exists. Cannot be a \"Custom Subnet Network\" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default projects/[project_id]/regions/global/default default",
          type = "string",
        },
        nodeGroupAffinity = {
          ["$ref"] = "NodeGroupAffinity",
          description = "Optional. Node Group Affinity for sole-tenant clusters.",
        },
        privateIpv6GoogleAccess = {
          description = "Optional. The type of IPv6 access for a cluster.",
          enum = {
            "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED",
            "INHERIT_FROM_SUBNETWORK",
            "OUTBOUND",
            "BIDIRECTIONAL",
          },
          enumDescriptions = {
            "If unspecified, Compute Engine default behavior will apply, which is the same as INHERIT_FROM_SUBNETWORK.",
            "Private access to and from Google Services configuration inherited from the subnetwork configuration. This is the default Compute Engine behavior.",
            "Enables outbound private IPv6 access to Google Services from the Dataproc cluster.",
            "Enables bidirectional private IPv6 access between Google Services and the Dataproc cluster.",
          },
          type = "string",
        },
        reservationAffinity = {
          ["$ref"] = "ReservationAffinity",
          description = "Optional. Reservation Affinity for consuming Zonal reservation.",
        },
        serviceAccount = {
          description = "Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.",
          type = "string",
        },
        serviceAccountScopes = {
          description = "Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control",
          items = {
            type = "string",
          },
          type = "array",
        },
        shieldedInstanceConfig = {
          ["$ref"] = "ShieldedInstanceConfig",
          description = "Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).",
        },
        subnetworkUri = {
          description = "Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0 projects/[project_id]/regions/us-east1/subnetworks/sub0 sub0",
          type = "string",
        },
        tags = {
          description = "The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).",
          items = {
            type = "string",
          },
          type = "array",
        },
        zoneUri = {
          description = "Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the \"global\" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] us-central1-f",
          type = "string",
        },
      },
      type = "object",
    },
    GetIamPolicyRequest = {
      description = "Request message for GetIamPolicy method.",
      id = "GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GetPolicyOptions",
          description = "OPTIONAL: A GetPolicyOptions object for specifying options to GetIamPolicy.",
        },
      },
      type = "object",
    },
    GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GkeClusterConfig = {
      description = "The cluster's GKE config.",
      id = "GkeClusterConfig",
      properties = {
        gkeClusterTarget = {
          description = "Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'",
          type = "string",
        },
        namespacedGkeDeploymentTarget = {
          ["$ref"] = "NamespacedGkeDeploymentTarget",
          description = "Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.",
        },
        nodePoolTarget = {
          description = "Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.",
          items = {
            ["$ref"] = "GkeNodePoolTarget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GkeNodeConfig = {
      description = "Parameters that describe cluster nodes.",
      id = "GkeNodeConfig",
      properties = {
        accelerators = {
          description = "Optional. A list of hardware accelerators (https://cloud.google.com/compute/docs/gpus) to attach to each node.",
          items = {
            ["$ref"] = "GkeNodePoolAcceleratorConfig",
          },
          type = "array",
        },
        bootDiskKmsKey = {
          description = "Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek) used to encrypt the boot disk attached to each node in the node pool. Specify the key using the following format: projects/KEY_PROJECT_ID/locations/LOCATION /keyRings/RING_NAME/cryptoKeys/KEY_NAME.",
          type = "string",
        },
        localSsdCount = {
          description = "Optional. The number of local SSD disks to attach to the node, which is limited by the maximum number of disks allowable per zone (see Adding Local SSDs (https://cloud.google.com/compute/docs/disks/local-ssd)).",
          format = "int32",
          type = "integer",
        },
        machineType = {
          description = "Optional. The name of a Compute Engine machine type (https://cloud.google.com/compute/docs/machine-types).",
          type = "string",
        },
        minCpuPlatform = {
          description = "Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as \"Intel Haswell\"` or Intel Sandy Bridge\".",
          type = "string",
        },
        preemptible = {
          description = "Optional. Whether the nodes are created as legacy preemptible VM instances (https://cloud.google.com/compute/docs/instances/preemptible). Also see Spot VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).",
          type = "boolean",
        },
        spot = {
          description = "Optional. Whether the nodes are created as Spot VM instances (https://cloud.google.com/compute/docs/instances/spot). Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).",
          type = "boolean",
        },
      },
      type = "object",
    },
    GkeNodePoolAcceleratorConfig = {
      description = "A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request for a node pool.",
      id = "GkeNodePoolAcceleratorConfig",
      properties = {
        acceleratorCount = {
          description = "The number of accelerator cards exposed to an instance.",
          format = "int64",
          type = "string",
        },
        acceleratorType = {
          description = "The accelerator type resource namename (see GPUs on Compute Engine).",
          type = "string",
        },
        gpuPartitionSize = {
          description = "Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).",
          type = "string",
        },
      },
      type = "object",
    },
    GkeNodePoolAutoscalingConfig = {
      description = "GkeNodePoolAutoscaling contains information the cluster autoscaler needs to adjust the size of the node pool to the current cluster usage.",
      id = "GkeNodePoolAutoscalingConfig",
      properties = {
        maxNodeCount = {
          description = "The maximum number of nodes in the node pool. Must be >= min_node_count, and must be > 0. Note: Quota must be sufficient to scale up the cluster.",
          format = "int32",
          type = "integer",
        },
        minNodeCount = {
          description = "The minimum number of nodes in the node pool. Must be >= 0 and <= max_node_count.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GkeNodePoolConfig = {
      description = "The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).",
      id = "GkeNodePoolConfig",
      properties = {
        autoscaling = {
          ["$ref"] = "GkeNodePoolAutoscalingConfig",
          description = "Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.",
        },
        config = {
          ["$ref"] = "GkeNodeConfig",
          description = "Optional. The node pool configuration.",
        },
        locations = {
          description = "Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GkeNodePoolTarget = {
      description = "GKE node pools that Dataproc workloads run on.",
      id = "GkeNodePoolTarget",
      properties = {
        nodePool = {
          description = "Required. The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{node_pool}'",
          type = "string",
        },
        nodePoolConfig = {
          ["$ref"] = "GkeNodePoolConfig",
          description = "Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a node pool with the specified shape. If one with the same name already exists, it is verified against all specified fields. If a field differs, the virtual cluster creation will fail.If omitted, any node pool with the specified name is used. If a node pool with the specified name does not exist, Dataproc create a node pool with default values.This is an input only field. It will not be returned by the API.",
        },
        roles = {
          description = "Required. The roles associated with the GKE node pool.",
          items = {
            enum = {
              "ROLE_UNSPECIFIED",
              "DEFAULT",
              "CONTROLLER",
              "SPARK_DRIVER",
              "SPARK_EXECUTOR",
            },
            enumDescriptions = {
              "Role is unspecified.",
              "At least one node pool must have the DEFAULT role. Work assigned to a role that is not associated with a node pool is assigned to the node pool with the DEFAULT role. For example, work assigned to the CONTROLLER role will be assigned to the node pool with the DEFAULT role if no node pool has the CONTROLLER role.",
              "Run work associated with the Dataproc control plane (for example, controllers and webhooks). Very low resource requirements.",
              "Run work associated with a Spark driver of a job.",
              "Run work associated with a Spark executor of a job.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HadoopJob = {
      description = "A Dataproc job for running Apache Hadoop MapReduce (https://hadoop.apache.org/docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html) jobs on Apache Hadoop YARN (https://hadoop.apache.org/docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).",
      id = "HadoopJob",
      properties = {
        archiveUris = {
          description = "Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        args = {
          description = "Optional. The arguments to pass to the driver. Do not include arguments, such as -libjars or -Dfoo=bar, that can be set as job properties, since a collision may occur that causes an incorrect job submission.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory of Hadoop drivers and distributed tasks. Useful for naively parallel tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        jarFileUris = {
          description = "Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        mainClass = {
          description = "The name of the driver's main class. The jar file containing the class must be in the default CLASSPATH or specified in jar_file_uris.",
          type = "string",
        },
        mainJarFileUri = {
          description = "The HCFS URI of the jar file containing the main class. Examples: 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar' 'hdfs:/tmp/test-samples/custom-wordcount.jar' 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar'",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site and classes in user code.",
          type = "object",
        },
      },
      type = "object",
    },
    HiveJob = {
      description = "A Dataproc job for running Apache Hive (https://hive.apache.org/) queries on YARN.",
      id = "HiveJob",
      properties = {
        continueOnFailure = {
          description = "Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.",
          type = "boolean",
        },
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.",
          items = {
            type = "string",
          },
          type = "array",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code.",
          type = "object",
        },
        queryFileUri = {
          description = "The HCFS URI of the script that contains Hive queries.",
          type = "string",
        },
        queryList = {
          ["$ref"] = "QueryList",
          description = "A list of queries.",
        },
        scriptVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name=\"value\";).",
          type = "object",
        },
      },
      type = "object",
    },
    IdentityConfig = {
      description = "Identity related configuration, including service account based secure multi-tenancy user mappings.",
      id = "IdentityConfig",
      properties = {
        userServiceAccountMapping = {
          additionalProperties = {
            type = "string",
          },
          description = "Required. Map of user to service account.",
          type = "object",
        },
      },
      type = "object",
    },
    InjectCredentialsRequest = {
      description = "A request to inject credentials into a cluster.",
      id = "InjectCredentialsRequest",
      properties = {
        clusterUuid = {
          description = "Required. The cluster UUID.",
          type = "string",
        },
        credentialsCiphertext = {
          description = "Required. The encrypted credentials being injected in to the cluster.The client is responsible for encrypting the credentials in a way that is supported by the cluster.A wrapped value is used here so that the actual contents of the encrypted credentials are not written to audit logs.",
          type = "string",
        },
      },
      type = "object",
    },
    InstanceGroupAutoscalingPolicyConfig = {
      description = "Configuration for the size bounds of an instance group, including its proportional size to other groups.",
      id = "InstanceGroupAutoscalingPolicyConfig",
      properties = {
        maxInstances = {
          description = "Required. Maximum number of instances for this group. Required for primary workers. Note that by default, clusters will not use secondary workers. Required for secondary workers if the minimum secondary instances is set.Primary workers - Bounds: [min_instances, ). Secondary workers - Bounds: [min_instances, ). Default: 0.",
          format = "int32",
          type = "integer",
        },
        minInstances = {
          description = "Optional. Minimum number of instances for this group.Primary workers - Bounds: 2, max_instances. Default: 2. Secondary workers - Bounds: 0, max_instances. Default: 0.",
          format = "int32",
          type = "integer",
        },
        weight = {
          description = "Optional. Weight for the instance group, which is used to determine the fraction of total workers in the cluster from this instance group. For example, if primary workers have weight 2, and secondary workers have weight 1, the cluster will have approximately 2 primary workers for each secondary worker.The cluster may not reach the specified balance if constrained by min/max bounds or other autoscaling settings. For example, if max_instances for secondary workers is 0, then only primary workers will be added. The cluster can also be out of balance when created.If weight is not set on any instance group, the cluster will default to equal weight for all groups: the cluster will attempt to maintain an equal number of workers in each group within the configured size bounds for each group. If weight is set for one group only, the cluster will default to zero weight on the unset group. For example if weight is set only on primary workers, the cluster will use primary workers only and no secondary workers.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    InstanceGroupConfig = {
      description = "The config settings for Compute Engine resources in an instance group, such as a master or worker group.",
      id = "InstanceGroupConfig",
      properties = {
        accelerators = {
          description = "Optional. The Compute Engine accelerator configuration for these instances.",
          items = {
            ["$ref"] = "AcceleratorConfig",
          },
          type = "array",
        },
        diskConfig = {
          ["$ref"] = "DiskConfig",
          description = "Optional. Disk option config settings.",
        },
        imageUri = {
          description = "Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.",
          type = "string",
        },
        instanceNames = {
          description = "Output only. The list of instance names. Dataproc derives the names from cluster_name, num_instances, and the instance group.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        instanceReferences = {
          description = "Output only. List of references to Compute Engine instances.",
          items = {
            ["$ref"] = "InstanceReference",
          },
          readOnly = true,
          type = "array",
        },
        isPreemptible = {
          description = "Output only. Specifies that this instance group contains preemptible instances.",
          readOnly = true,
          type = "boolean",
        },
        machineTypeUri = {
          description = "Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.",
          type = "string",
        },
        managedGroupConfig = {
          ["$ref"] = "ManagedGroupConfig",
          description = "Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.",
          readOnly = true,
        },
        minCpuPlatform = {
          description = "Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).",
          type = "string",
        },
        numInstances = {
          description = "Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.",
          format = "int32",
          type = "integer",
        },
        preemptibility = {
          description = "Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.",
          enum = {
            "PREEMPTIBILITY_UNSPECIFIED",
            "NON_PREEMPTIBLE",
            "PREEMPTIBLE",
            "SPOT",
          },
          enumDescriptions = {
            "Preemptibility is unspecified, the system will choose the appropriate setting for each instance group.",
            "Instances are non-preemptible.This option is allowed for all instance groups and is the only valid value for Master and Worker instance groups.",
            "Instances are preemptible (https://cloud.google.com/compute/docs/instances/preemptible).This option is allowed only for secondary worker (https://cloud.google.com/dataproc/docs/concepts/compute/secondary-vms) groups.",
            "Instances are Spot VMs (https://cloud.google.com/compute/docs/instances/spot).This option is allowed only for secondary worker (https://cloud.google.com/dataproc/docs/concepts/compute/secondary-vms) groups. Spot VMs are the latest version of preemptible VMs (https://cloud.google.com/compute/docs/instances/preemptible), and provide additional features.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InstanceReference = {
      description = "A reference to a Compute Engine instance.",
      id = "InstanceReference",
      properties = {
        instanceId = {
          description = "The unique identifier of the Compute Engine instance.",
          type = "string",
        },
        instanceName = {
          description = "The user-friendly name of the Compute Engine instance.",
          type = "string",
        },
        publicEciesKey = {
          description = "The public ECIES key used for sharing data with this instance.",
          type = "string",
        },
        publicKey = {
          description = "The public RSA key used for sharing data with this instance.",
          type = "string",
        },
      },
      type = "object",
    },
    InstantiateWorkflowTemplateRequest = {
      description = "A request to instantiate a workflow template.",
      id = "InstantiateWorkflowTemplateRequest",
      properties = {
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Map from parameter names to values that should be used for those parameters. Values may not exceed 1000 characters.",
          type = "object",
        },
        requestId = {
          description = "Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates risk of concurrent instances started due to retries.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
          type = "string",
        },
        version = {
          description = "Optional. The version of workflow template to instantiate. If specified, the workflow will be instantiated only if the current version of the workflow template has the supplied version.This option cannot be used to instantiate a previous version of workflow template.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Job = {
      description = "A Dataproc job resource.",
      id = "Job",
      properties = {
        done = {
          description = "Output only. Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.",
          readOnly = true,
          type = "boolean",
        },
        driverControlFilesUri = {
          description = "Output only. If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.",
          readOnly = true,
          type = "string",
        },
        driverOutputResourceUri = {
          description = "Output only. A URI pointing to the location of the stdout of the job's driver program.",
          readOnly = true,
          type = "string",
        },
        driverSchedulingConfig = {
          ["$ref"] = "DriverSchedulingConfig",
          description = "Optional. Driver scheduling configuration.",
        },
        hadoopJob = {
          ["$ref"] = "HadoopJob",
          description = "Optional. Job is a Hadoop job.",
        },
        hiveJob = {
          ["$ref"] = "HiveJob",
          description = "Optional. Job is a Hive job.",
        },
        jobUuid = {
          description = "Output only. A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.",
          type = "object",
        },
        pigJob = {
          ["$ref"] = "PigJob",
          description = "Optional. Job is a Pig job.",
        },
        placement = {
          ["$ref"] = "JobPlacement",
          description = "Required. Job information, including how, when, and where to run the job.",
        },
        prestoJob = {
          ["$ref"] = "PrestoJob",
          description = "Optional. Job is a Presto job.",
        },
        pysparkJob = {
          ["$ref"] = "PySparkJob",
          description = "Optional. Job is a PySpark job.",
        },
        reference = {
          ["$ref"] = "JobReference",
          description = "Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.",
        },
        scheduling = {
          ["$ref"] = "JobScheduling",
          description = "Optional. Job scheduling configuration.",
        },
        sparkJob = {
          ["$ref"] = "SparkJob",
          description = "Optional. Job is a Spark job.",
        },
        sparkRJob = {
          ["$ref"] = "SparkRJob",
          description = "Optional. Job is a SparkR job.",
        },
        sparkSqlJob = {
          ["$ref"] = "SparkSqlJob",
          description = "Optional. Job is a SparkSql job.",
        },
        status = {
          ["$ref"] = "JobStatus",
          description = "Output only. The job status. Additional application-specific status information may be contained in the type_job and yarn_applications fields.",
          readOnly = true,
        },
        statusHistory = {
          description = "Output only. The previous job status.",
          items = {
            ["$ref"] = "JobStatus",
          },
          readOnly = true,
          type = "array",
        },
        trinoJob = {
          ["$ref"] = "TrinoJob",
          description = "Optional. Job is a Trino job.",
        },
        yarnApplications = {
          description = "Output only. The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.",
          items = {
            ["$ref"] = "YarnApplication",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    JobMetadata = {
      description = "Job Operation metadata.",
      id = "JobMetadata",
      properties = {
        jobId = {
          description = "Output only. The job id.",
          readOnly = true,
          type = "string",
        },
        operationType = {
          description = "Output only. Operation type.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. Job submission time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        status = {
          ["$ref"] = "JobStatus",
          description = "Output only. Most recent job status.",
          readOnly = true,
        },
      },
      type = "object",
    },
    JobPlacement = {
      description = "Dataproc job config.",
      id = "JobPlacement",
      properties = {
        clusterLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Cluster labels to identify a cluster where the job will be submitted.",
          type = "object",
        },
        clusterName = {
          description = "Required. The name of the cluster where the job will be submitted.",
          type = "string",
        },
        clusterUuid = {
          description = "Output only. A cluster UUID generated by the Dataproc service when the job is submitted.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    JobReference = {
      description = "Encapsulates the full scoping used to reference a job.",
      id = "JobReference",
      properties = {
        jobId = {
          description = "Optional. The job ID, which must be unique within the project.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.",
          type = "string",
        },
        projectId = {
          description = "Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.",
          type = "string",
        },
      },
      type = "object",
    },
    JobScheduling = {
      description = "Job scheduling options.",
      id = "JobScheduling",
      properties = {
        maxFailuresPerHour = {
          description = "Optional. Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.A job may be reported as thrashing if the driver exits with a non-zero code four times within a 10-minute window.Maximum value is 10.Note: This restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).",
          format = "int32",
          type = "integer",
        },
        maxFailuresTotal = {
          description = "Optional. Maximum total number of times a driver may be restarted as a result of the driver exiting with a non-zero code. After the maximum number is reached, the job will be reported as failed.Maximum value is 240.Note: Currently, this restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    JobStatus = {
      description = "Dataproc job status.",
      id = "JobStatus",
      properties = {
        details = {
          description = "Optional. Output only. Job state details, such as an error description if the state is ERROR.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. A state message specifying the overall job state.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "SETUP_DONE",
            "RUNNING",
            "CANCEL_PENDING",
            "CANCEL_STARTED",
            "CANCELLED",
            "DONE",
            "ERROR",
            "ATTEMPT_FAILURE",
          },
          enumDescriptions = {
            "The job state is unknown.",
            "The job is pending; it has been submitted, but is not yet running.",
            "Job has been received by the service and completed initial setup; it will soon be submitted to the cluster.",
            "The job is running on the cluster.",
            "A CancelJob request has been received, but is pending.",
            "Transient in-flight resources have been canceled, and the request to cancel the running job has been issued to the cluster.",
            "The job cancellation was successful.",
            "The job has completed successfully.",
            "The job has completed, but encountered an error.",
            "Job attempt has failed. The detail field contains failure details for this attempt.Applies to restartable jobs only.",
          },
          readOnly = true,
          type = "string",
        },
        stateStartTime = {
          description = "Output only. The time when this state was entered.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        substate = {
          description = "Output only. Additional state information, which includes status reported by the agent.",
          enum = {
            "UNSPECIFIED",
            "SUBMITTED",
            "QUEUED",
            "STALE_STATUS",
          },
          enumDescriptions = {
            "The job substate is unknown.",
            "The Job is submitted to the agent.Applies to RUNNING state.",
            "The Job has been received and is awaiting execution (it may be waiting for a condition to be met). See the \"details\" field for the reason for the delay.Applies to RUNNING state.",
            "The agent-reported status is out of date, which may be caused by a loss of communication between the agent and Dataproc. If the agent does not send a timely update, the job will fail.Applies to RUNNING state.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    KerberosConfig = {
      description = "Specifies Kerberos related configuration.",
      id = "KerberosConfig",
      properties = {
        crossRealmTrustAdminServer = {
          description = "Optional. The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship.",
          type = "string",
        },
        crossRealmTrustKdc = {
          description = "Optional. The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship.",
          type = "string",
        },
        crossRealmTrustRealm = {
          description = "Optional. The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust.",
          type = "string",
        },
        crossRealmTrustSharedPasswordUri = {
          description = "Optional. The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster Kerberos realm and the remote trusted realm, in a cross realm trust relationship.",
          type = "string",
        },
        enableKerberos = {
          description = "Optional. Flag to indicate whether to Kerberize the cluster (default: false). Set this field to true to enable Kerberos on a cluster.",
          type = "boolean",
        },
        kdcDbKeyUri = {
          description = "Optional. The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database.",
          type = "string",
        },
        keyPasswordUri = {
          description = "Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc.",
          type = "string",
        },
        keystorePasswordUri = {
          description = "Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided keystore. For the self-signed certificate, this password is generated by Dataproc.",
          type = "string",
        },
        keystoreUri = {
          description = "Optional. The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate.",
          type = "string",
        },
        kmsKeyUri = {
          description = "Optional. The uri of the KMS key used to encrypt various sensitive files.",
          type = "string",
        },
        realm = {
          description = "Optional. The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm.",
          type = "string",
        },
        rootPrincipalPasswordUri = {
          description = "Optional. The Cloud Storage URI of a KMS encrypted file containing the root principal password.",
          type = "string",
        },
        tgtLifetimeHours = {
          description = "Optional. The lifetime of the ticket granting ticket, in hours. If not specified, or user specifies 0, then default value 10 will be used.",
          format = "int32",
          type = "integer",
        },
        truststorePasswordUri = {
          description = "Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc.",
          type = "string",
        },
        truststoreUri = {
          description = "Optional. The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate.",
          type = "string",
        },
      },
      type = "object",
    },
    KubernetesClusterConfig = {
      description = "The configuration for running the Dataproc cluster on Kubernetes.",
      id = "KubernetesClusterConfig",
      properties = {
        gkeClusterConfig = {
          ["$ref"] = "GkeClusterConfig",
          description = "Required. The configuration for running the Dataproc cluster on GKE.",
        },
        kubernetesNamespace = {
          description = "Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.",
          type = "string",
        },
        kubernetesSoftwareConfig = {
          ["$ref"] = "KubernetesSoftwareConfig",
          description = "Optional. The software configuration for this Dataproc cluster running on Kubernetes.",
        },
      },
      type = "object",
    },
    KubernetesSoftwareConfig = {
      description = "The software configuration for this Dataproc cluster running on Kubernetes.",
      id = "KubernetesSoftwareConfig",
      properties = {
        componentVersion = {
          additionalProperties = {
            type = "string",
          },
          description = "The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.",
          type = "object",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "The properties to set on daemon config files.Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. The following are supported prefixes and their mappings: spark: spark-defaults.confFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).",
          type = "object",
        },
      },
      type = "object",
    },
    LifecycleConfig = {
      description = "Specifies the cluster auto-delete schedule configuration.",
      id = "LifecycleConfig",
      properties = {
        autoDeleteTime = {
          description = "Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).",
          format = "google-datetime",
          type = "string",
        },
        autoDeleteTtl = {
          description = "Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).",
          format = "google-duration",
          type = "string",
        },
        idleDeleteTtl = {
          description = "Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).",
          format = "google-duration",
          type = "string",
        },
        idleStartTime = {
          description = "Output only. The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListAutoscalingPoliciesResponse = {
      description = "A response to a request to list autoscaling policies in a project.",
      id = "ListAutoscalingPoliciesResponse",
      properties = {
        nextPageToken = {
          description = "Output only. This token is included in the response if there are more results to fetch.",
          readOnly = true,
          type = "string",
        },
        policies = {
          description = "Output only. Autoscaling policies list.",
          items = {
            ["$ref"] = "AutoscalingPolicy",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListBatchesResponse = {
      description = "A list of batch workloads.",
      id = "ListBatchesResponse",
      properties = {
        batches = {
          description = "The batches from the specified collection.",
          items = {
            ["$ref"] = "Batch",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListClustersResponse = {
      description = "The list of all clusters in a project.",
      id = "ListClustersResponse",
      properties = {
        clusters = {
          description = "Output only. The clusters in the project.",
          items = {
            ["$ref"] = "Cluster",
          },
          readOnly = true,
          type = "array",
        },
        nextPageToken = {
          description = "Output only. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListClustersRequest.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListJobsResponse = {
      description = "A list of jobs in a project.",
      id = "ListJobsResponse",
      properties = {
        jobs = {
          description = "Output only. Jobs list.",
          items = {
            ["$ref"] = "Job",
          },
          readOnly = true,
          type = "array",
        },
        nextPageToken = {
          description = "Optional. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListJobsRequest.",
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
    ListWorkflowTemplatesResponse = {
      description = "A response to a request to list workflow templates in a project.",
      id = "ListWorkflowTemplatesResponse",
      properties = {
        nextPageToken = {
          description = "Output only. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListWorkflowTemplatesRequest.",
          readOnly = true,
          type = "string",
        },
        templates = {
          description = "Output only. WorkflowTemplates list.",
          items = {
            ["$ref"] = "WorkflowTemplate",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    LoggingConfig = {
      description = "The runtime logging config of the job.",
      id = "LoggingConfig",
      properties = {
        driverLogLevels = {
          additionalProperties = {
            enum = {
              "LEVEL_UNSPECIFIED",
              "ALL",
              "TRACE",
              "DEBUG",
              "INFO",
              "WARN",
              "ERROR",
              "FATAL",
              "OFF",
            },
            enumDescriptions = {
              "Level is unspecified. Use default level for log4j.",
              "Use ALL level for log4j.",
              "Use TRACE level for log4j.",
              "Use DEBUG level for log4j.",
              "Use INFO level for log4j.",
              "Use WARN level for log4j.",
              "Use ERROR level for log4j.",
              "Use FATAL level for log4j.",
              "Turn off log4j.",
            },
            type = "string",
          },
          description = "The per-package log levels for the driver. This may include \"root\" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'",
          type = "object",
        },
      },
      type = "object",
    },
    ManagedCluster = {
      description = "Cluster that is managed by the workflow.",
      id = "ManagedCluster",
      properties = {
        clusterName = {
          description = "Required. The cluster name prefix. A unique cluster name will be formed by appending a random suffix.The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.",
          type = "string",
        },
        config = {
          ["$ref"] = "ClusterConfig",
          description = "Required. The cluster configuration.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.",
          type = "object",
        },
      },
      type = "object",
    },
    ManagedGroupConfig = {
      description = "Specifies the resources used to actively manage an instance group.",
      id = "ManagedGroupConfig",
      properties = {
        instanceGroupManagerName = {
          description = "Output only. The name of the Instance Group Manager for this group.",
          readOnly = true,
          type = "string",
        },
        instanceTemplateName = {
          description = "Output only. The name of the Instance Template used for the Managed Instance Group.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MetastoreConfig = {
      description = "Specifies a Metastore configuration.",
      id = "MetastoreConfig",
      properties = {
        dataprocMetastoreService = {
          description = "Required. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]",
          type = "string",
        },
      },
      type = "object",
    },
    Metric = {
      description = "A Dataproc OSS metric.",
      id = "Metric",
      properties = {
        metricOverrides = {
          description = "Optional. Specify one or more available OSS metrics (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) to collect for the metric course (for the SPARK metric source, any Spark metric (https://spark.apache.org/docs/latest/monitoring.html#metrics) can be specified).Provide metrics in the following format: METRIC_SOURCE: INSTANCE:GROUP:METRIC Use camelcase as appropriate.Examples: yarn:ResourceManager:QueueMetrics:AppsCompleted spark:driver:DAGScheduler:job.allJobs sparkHistoryServer:JVM:Memory:NonHeapMemoryUsage.committed hiveserver2:JVM:Memory:NonHeapMemoryUsage.used Notes: Only the specified overridden metrics will be collected for the metric source. For example, if one or more spark:executive metrics are listed as metric overrides, other SPARK metrics will not be collected. The collection of the default metrics for other OSS metric sources is unaffected. For example, if both SPARK andd YARN metric sources are enabled, and overrides are provided for Spark metrics only, all default YARN metrics will be collected.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metricSource = {
          description = "Required. Default metrics are collected unless metricOverrides are specified for the metric source (see Available OSS metrics (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) for more information).",
          enum = {
            "METRIC_SOURCE_UNSPECIFIED",
            "MONITORING_AGENT_DEFAULTS",
            "HDFS",
            "SPARK",
            "YARN",
            "SPARK_HISTORY_SERVER",
            "HIVESERVER2",
            "HIVEMETASTORE",
          },
          enumDescriptions = {
            "Required unspecified metric source.",
            "Default monitoring agent metrics. If this source is enabled, Dataproc enables the monitoring agent in Compute Engine, and collects default monitoring agent metrics, which are published with an agent.googleapis.com prefix.",
            "HDFS metric source.",
            "Spark metric source.",
            "YARN metric source.",
            "Spark History Server metric source.",
            "Hiveserver2 metric source.",
            "hivemetastore metric source",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NamespacedGkeDeploymentTarget = {
      description = "Deprecated. Used only for the deprecated beta. A full, namespace-isolated deployment target for an existing GKE cluster.",
      id = "NamespacedGkeDeploymentTarget",
      properties = {
        clusterNamespace = {
          description = "Optional. A namespace within the GKE cluster to deploy into.",
          type = "string",
        },
        targetGkeCluster = {
          description = "Optional. The target GKE cluster to deploy to. Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'",
          type = "string",
        },
      },
      type = "object",
    },
    NodeGroup = {
      description = "Dataproc Node Group. The Dataproc NodeGroup resource is not related to the Dataproc NodeGroupAffinity resource.",
      id = "NodeGroup",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.",
          type = "object",
        },
        name = {
          description = "The Node group resource name (https://aip.dev/122).",
          type = "string",
        },
        nodeGroupConfig = {
          ["$ref"] = "InstanceGroupConfig",
          description = "Optional. The node group instance group configuration.",
        },
        roles = {
          description = "Required. Node group roles.",
          items = {
            enum = {
              "ROLE_UNSPECIFIED",
              "DRIVER",
            },
            enumDescriptions = {
              "Required unspecified role.",
              "Job drivers run on the node pool.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    NodeGroupAffinity = {
      description = "Node Group Affinity for clusters using sole-tenant node groups. The Dataproc NodeGroupAffinity resource is not related to the Dataproc NodeGroup resource.",
      id = "NodeGroupAffinity",
      properties = {
        nodeGroupUri = {
          description = "Required. The URI of a sole-tenant node group resource (https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1 node-group-1",
          type = "string",
        },
      },
      type = "object",
    },
    NodeGroupOperationMetadata = {
      description = "Metadata describing the node group operation.",
      id = "NodeGroupOperationMetadata",
      properties = {
        clusterUuid = {
          description = "Output only. Cluster UUID associated with the node group operation.",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. Short description of operation.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Labels associated with the operation.",
          readOnly = true,
          type = "object",
        },
        nodeGroupId = {
          description = "Output only. Node group ID for the operation.",
          readOnly = true,
          type = "string",
        },
        operationType = {
          description = "The operation type.",
          enum = {
            "NODE_GROUP_OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "UPDATE",
            "DELETE",
            "RESIZE",
          },
          enumDescriptions = {
            "Node group operation type is unknown.",
            "Create node group operation type.",
            "Update node group operation type.",
            "Delete node group operation type.",
            "Resize node group operation type.",
          },
          type = "string",
        },
        status = {
          ["$ref"] = "ClusterOperationStatus",
          description = "Output only. Current operation status.",
          readOnly = true,
        },
        statusHistory = {
          description = "Output only. The previous operation status.",
          items = {
            ["$ref"] = "ClusterOperationStatus",
          },
          readOnly = true,
          type = "array",
        },
        warnings = {
          description = "Output only. Errors encountered during operation execution.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    NodeInitializationAction = {
      description = "Specifies an executable to run on a fully configured node and a timeout period for executable completion.",
      id = "NodeInitializationAction",
      properties = {
        executableFile = {
          description = "Required. Cloud Storage URI of executable file.",
          type = "string",
        },
        executionTimeout = {
          description = "Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    NodePool = {
      description = "indicating a list of workers of same type",
      id = "NodePool",
      properties = {
        id = {
          description = "Required. A unique id of the node pool. Primary and Secondary workers can be specified using special reserved ids PRIMARY_WORKER_POOL and SECONDARY_WORKER_POOL respectively. Aux node pools can be referenced using corresponding pool id.",
          type = "string",
        },
        instanceNames = {
          description = "Name of instances to be repaired. These instances must belong to specified node pool.",
          items = {
            type = "string",
          },
          type = "array",
        },
        repairAction = {
          description = "Required. Repair action to take on specified resources of the node pool.",
          enum = {
            "REPAIR_ACTION_UNSPECIFIED",
            "DELETE",
          },
          enumDescriptions = {
            "No action will be taken by default.",
            "delete the specified list of nodes.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.",
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
    OrderedJob = {
      description = "A job executed by the workflow.",
      id = "OrderedJob",
      properties = {
        hadoopJob = {
          ["$ref"] = "HadoopJob",
          description = "Optional. Job is a Hadoop job.",
        },
        hiveJob = {
          ["$ref"] = "HiveJob",
          description = "Optional. Job is a Hive job.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given job.",
          type = "object",
        },
        pigJob = {
          ["$ref"] = "PigJob",
          description = "Optional. Job is a Pig job.",
        },
        prerequisiteStepIds = {
          description = "Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.",
          items = {
            type = "string",
          },
          type = "array",
        },
        prestoJob = {
          ["$ref"] = "PrestoJob",
          description = "Optional. Job is a Presto job.",
        },
        pysparkJob = {
          ["$ref"] = "PySparkJob",
          description = "Optional. Job is a PySpark job.",
        },
        scheduling = {
          ["$ref"] = "JobScheduling",
          description = "Optional. Job scheduling configuration.",
        },
        sparkJob = {
          ["$ref"] = "SparkJob",
          description = "Optional. Job is a Spark job.",
        },
        sparkRJob = {
          ["$ref"] = "SparkRJob",
          description = "Optional. Job is a SparkR job.",
        },
        sparkSqlJob = {
          ["$ref"] = "SparkSqlJob",
          description = "Optional. Job is a SparkSql job.",
        },
        stepId = {
          description = "Required. The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.",
          type = "string",
        },
        trinoJob = {
          ["$ref"] = "TrinoJob",
          description = "Optional. Job is a Trino job.",
        },
      },
      type = "object",
    },
    ParameterValidation = {
      description = "Configuration for parameter validation.",
      id = "ParameterValidation",
      properties = {
        regex = {
          ["$ref"] = "RegexValidation",
          description = "Validation based on regular expressions.",
        },
        values = {
          ["$ref"] = "ValueValidation",
          description = "Validation based on a list of allowed values.",
        },
      },
      type = "object",
    },
    PeripheralsConfig = {
      description = "Auxiliary services configuration for a workload.",
      id = "PeripheralsConfig",
      properties = {
        metastoreService = {
          description = "Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]",
          type = "string",
        },
        sparkHistoryServerConfig = {
          ["$ref"] = "SparkHistoryServerConfig",
          description = "Optional. The Spark History Server configuration for the workload.",
        },
      },
      type = "object",
    },
    PigJob = {
      description = "A Dataproc job for running Apache Pig (https://pig.apache.org/) queries on YARN.",
      id = "PigJob",
      properties = {
        continueOnFailure = {
          description = "Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.",
          type = "boolean",
        },
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code.",
          type = "object",
        },
        queryFileUri = {
          description = "The HCFS URI of the script that contains the Pig queries.",
          type = "string",
        },
        queryList = {
          ["$ref"] = "QueryList",
          description = "A list of queries.",
        },
        scriptVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).",
          type = "object",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).JSON example: { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } YAML example: bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation (https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        bindings = {
          description = "Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.",
          items = {
            ["$ref"] = "Binding",
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
    PrestoJob = {
      description = "A Dataproc job for running Presto (https://prestosql.io/) queries. IMPORTANT: The Dataproc Presto Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/presto) must be enabled when the cluster is created to submit a Presto job to the cluster.",
      id = "PrestoJob",
      properties = {
        clientTags = {
          description = "Optional. Presto client tags to attach to this query",
          items = {
            type = "string",
          },
          type = "array",
        },
        continueOnFailure = {
          description = "Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.",
          type = "boolean",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        outputFormat = {
          description = "Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values. Used to set Presto session properties (https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI",
          type = "object",
        },
        queryFileUri = {
          description = "The HCFS URI of the script that contains SQL queries.",
          type = "string",
        },
        queryList = {
          ["$ref"] = "QueryList",
          description = "A list of queries.",
        },
      },
      type = "object",
    },
    PySparkBatch = {
      description = "A configuration for running an Apache PySpark (https://spark.apache.org/docs/latest/api/python/getting_started/quickstart.html) batch workload.",
      id = "PySparkBatch",
      properties = {
        archiveUris = {
          description = "Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        args = {
          description = "Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. HCFS URIs of files to be placed in the working directory of each executor.",
          items = {
            type = "string",
          },
          type = "array",
        },
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mainPythonFileUri = {
          description = "Required. The HCFS URI of the main Python file to use as the Spark driver. Must be a .py file.",
          type = "string",
        },
        pythonFileUris = {
          description = "Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PySparkJob = {
      description = "A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/0.9.0/python-programming-guide.html) applications on YARN.",
      id = "PySparkJob",
      properties = {
        archiveUris = {
          description = "Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        args = {
          description = "Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        mainPythonFileUri = {
          description = "Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file.",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.",
          type = "object",
        },
        pythonFileUris = {
          description = "Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    QueryList = {
      description = "A list of queries to run on a cluster.",
      id = "QueryList",
      properties = {
        queries = {
          description = "Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: \"hiveJob\": { \"queryList\": { \"queries\": [ \"query1\", \"query2\", \"query3;query4\", ] } } ",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RegexValidation = {
      description = "Validation based on regular expressions.",
      id = "RegexValidation",
      properties = {
        regexes = {
          description = "Required. RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RepairClusterRequest = {
      description = "A request to repair a cluster.",
      id = "RepairClusterRequest",
      properties = {
        clusterUuid = {
          description = "Optional. Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND) if a cluster with the specified UUID does not exist.",
          type = "string",
        },
        gracefulDecommissionTimeout = {
          description = "Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning facilitates the removal of cluster nodes without interrupting jobs in progress. The timeout specifies the amount of time to wait for jobs finish before forcefully removing nodes. The default timeout is 0 for forceful decommissioning, and the maximum timeout period is 1 day. (see JSON Mapping—Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).graceful_decommission_timeout is supported in Dataproc image versions 1.2+.",
          format = "google-duration",
          type = "string",
        },
        nodePools = {
          description = "Optional. Node pools and corresponding repair action to be taken. All node pools should be unique in this request. i.e. Multiple entries for the same node pool id are not allowed.",
          items = {
            ["$ref"] = "NodePool",
          },
          type = "array",
        },
        parentOperationId = {
          description = "Optional. operation id of the parent operation sending the repair request",
          type = "string",
        },
        requestId = {
          description = "Optional. A unique ID used to identify the request. If the server receives two RepairClusterRequests with the same ID, the second request is ignored, and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    ReservationAffinity = {
      description = "Reservation Affinity for consuming Zonal reservation.",
      id = "ReservationAffinity",
      properties = {
        consumeReservationType = {
          description = "Optional. Type of reservation to consume",
          enum = {
            "TYPE_UNSPECIFIED",
            "NO_RESERVATION",
            "ANY_RESERVATION",
            "SPECIFIC_RESERVATION",
          },
          enumDescriptions = {
            "",
            "Do not consume from any allocated capacity.",
            "Consume any reservation available.",
            "Must consume from a specific reservation. Must specify key value fields for specifying the reservations.",
          },
          type = "string",
        },
        key = {
          description = "Optional. Corresponds to the label key of reservation resource.",
          type = "string",
        },
        values = {
          description = "Optional. Corresponds to the label values of reservation resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResizeNodeGroupRequest = {
      description = "A request to resize a node group.",
      id = "ResizeNodeGroupRequest",
      properties = {
        gracefulDecommissionTimeout = {
          description = "Optional. Timeout for graceful YARN decomissioning. Graceful decommissioning (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/scaling-clusters#graceful_decommissioning) allows the removal of nodes from the Compute Engine node group without interrupting jobs in progress. This timeout specifies how long to wait for jobs in progress to finish before forcefully removing nodes (and potentially interrupting jobs). Default timeout is 0 (for forceful decommission), and the maximum allowed timeout is 1 day. (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Only supported on Dataproc image versions 1.2 and higher.",
          format = "google-duration",
          type = "string",
        },
        requestId = {
          description = "Optional. A unique ID used to identify the request. If the server receives two ResizeNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.ResizeNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
          type = "string",
        },
        size = {
          description = "Required. The number of running instances for the node group to maintain. The group adds or removes instances to maintain the number of instances specified by this parameter.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    RuntimeConfig = {
      description = "Runtime configuration for a workload.",
      id = "RuntimeConfig",
      properties = {
        containerImage = {
          description = "Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values, which are used to configure workload execution.",
          type = "object",
        },
        version = {
          description = "Optional. Version of the batch runtime.",
          type = "string",
        },
      },
      type = "object",
    },
    RuntimeInfo = {
      description = "Runtime information about workload execution.",
      id = "RuntimeInfo",
      properties = {
        approximateUsage = {
          ["$ref"] = "UsageMetrics",
          description = "Output only. Approximate workload resource usage calculated after workload finishes (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).",
          readOnly = true,
        },
        currentUsage = {
          ["$ref"] = "UsageSnapshot",
          description = "Output only. Snapshot of current workload resource usage.",
          readOnly = true,
        },
        diagnosticOutputUri = {
          description = "Output only. A URI pointing to the location of the diagnostics tarball.",
          readOnly = true,
          type = "string",
        },
        endpoints = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Map of remote access endpoints (such as web interfaces and APIs) to their URIs.",
          readOnly = true,
          type = "object",
        },
        outputUri = {
          description = "Output only. A URI pointing to the location of the stdout and stderr of the workload.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SecurityConfig = {
      description = "Security related configuration, including encryption, Kerberos, etc.",
      id = "SecurityConfig",
      properties = {
        identityConfig = {
          ["$ref"] = "IdentityConfig",
          description = "Optional. Identity related configuration, including service account based secure multi-tenancy user mappings.",
        },
        kerberosConfig = {
          ["$ref"] = "KerberosConfig",
          description = "Optional. Kerberos related configuration.",
        },
      },
      type = "object",
    },
    SessionOperationMetadata = {
      description = "Metadata describing the Session operation.",
      id = "SessionOperationMetadata",
      properties = {
        createTime = {
          description = "The time when the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Short description of the operation.",
          type = "string",
        },
        doneTime = {
          description = "The time when the operation was finished.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels associated with the operation.",
          type = "object",
        },
        operationType = {
          description = "The operation type.",
          enum = {
            "SESSION_OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "TERMINATE",
            "DELETE",
          },
          enumDescriptions = {
            "Session operation type is unknown.",
            "Create Session operation type.",
            "Terminate Session operation type.",
            "Delete Session operation type.",
          },
          type = "string",
        },
        session = {
          description = "Name of the session for the operation.",
          type = "string",
        },
        sessionUuid = {
          description = "Session UUID for the operation.",
          type = "string",
        },
        warnings = {
          description = "Warnings encountered during operation execution.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for SetIamPolicy method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
      },
      type = "object",
    },
    ShieldedInstanceConfig = {
      description = "Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).",
      id = "ShieldedInstanceConfig",
      properties = {
        enableIntegrityMonitoring = {
          description = "Optional. Defines whether instances have integrity monitoring enabled.",
          type = "boolean",
        },
        enableSecureBoot = {
          description = "Optional. Defines whether instances have Secure Boot enabled.",
          type = "boolean",
        },
        enableVtpm = {
          description = "Optional. Defines whether instances have the vTPM enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SoftwareConfig = {
      description = "Specifies the selection and config of software inside the cluster.",
      id = "SoftwareConfig",
      properties = {
        imageVersion = {
          description = "Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as \"1.2\" (including a subminor version, such as \"1.2.29\"), or the \"preview\" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.",
          type = "string",
        },
        optionalComponents = {
          description = "Optional. The set of components to activate on the cluster.",
          items = {
            enum = {
              "COMPONENT_UNSPECIFIED",
              "ANACONDA",
              "DOCKER",
              "DRUID",
              "FLINK",
              "HBASE",
              "HIVE_WEBHCAT",
              "JUPYTER",
              "PRESTO",
              "TRINO",
              "RANGER",
              "SOLR",
              "ZEPPELIN",
              "ZOOKEEPER",
            },
            enumDescriptions = {
              "Unspecified component. Specifying this will cause Cluster creation to fail.",
              "The Anaconda python distribution. The Anaconda component is not supported in the Dataproc 2.0 image. The 2.0 image is pre-installed with Miniconda.",
              "Docker",
              "The Druid query engine. (alpha)",
              "Flink",
              "HBase. (beta)",
              "The Hive Web HCatalog (the REST service for accessing HCatalog).",
              "The Jupyter Notebook.",
              "The Presto query engine.",
              "The Trino query engine.",
              "The Ranger service.",
              "The Solr service.",
              "The Zeppelin notebook.",
              "The Zookeeper service.",
            },
            type = "string",
          },
          type = "array",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).",
          type = "object",
        },
      },
      type = "object",
    },
    SparkBatch = {
      description = "A configuration for running an Apache Spark (https://spark.apache.org/) batch workload.",
      id = "SparkBatch",
      properties = {
        archiveUris = {
          description = "Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        args = {
          description = "Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. HCFS URIs of files to be placed in the working directory of each executor.",
          items = {
            type = "string",
          },
          type = "array",
        },
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mainClass = {
          description = "Optional. The name of the driver main class. The jar file that contains the class must be in the classpath or specified in jar_file_uris.",
          type = "string",
        },
        mainJarFileUri = {
          description = "Optional. The HCFS URI of the jar file that contains the main class.",
          type = "string",
        },
      },
      type = "object",
    },
    SparkHistoryServerConfig = {
      description = "Spark History Server configuration for the workload.",
      id = "SparkHistoryServerConfig",
      properties = {
        dataprocCluster = {
          description = "Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]",
          type = "string",
        },
      },
      type = "object",
    },
    SparkJob = {
      description = "A Dataproc job for running Apache Spark (https://spark.apache.org/) applications on YARN.",
      id = "SparkJob",
      properties = {
        archiveUris = {
          description = "Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        args = {
          description = "Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        mainClass = {
          description = "The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris.",
          type = "string",
        },
        mainJarFileUri = {
          description = "The HCFS URI of the jar file that contains the main class.",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.",
          type = "object",
        },
      },
      type = "object",
    },
    SparkRBatch = {
      description = "A configuration for running an Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) batch workload.",
      id = "SparkRBatch",
      properties = {
        archiveUris = {
          description = "Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        args = {
          description = "Optional. The arguments to pass to the Spark driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. HCFS URIs of files to be placed in the working directory of each executor.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mainRFileUri = {
          description = "Required. The HCFS URI of the main R file to use as the driver. Must be a .R or .r file.",
          type = "string",
        },
      },
      type = "object",
    },
    SparkRJob = {
      description = "A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.",
      id = "SparkRJob",
      properties = {
        archiveUris = {
          description = "Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.",
          items = {
            type = "string",
          },
          type = "array",
        },
        args = {
          description = "Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileUris = {
          description = "Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        mainRFileUri = {
          description = "Required. The HCFS URI of the main R file to use as the driver. Must be a .R file.",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.",
          type = "object",
        },
      },
      type = "object",
    },
    SparkSqlBatch = {
      description = "A configuration for running Apache Spark SQL (https://spark.apache.org/sql/) queries as a batch workload.",
      id = "SparkSqlBatch",
      properties = {
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.",
          items = {
            type = "string",
          },
          type = "array",
        },
        queryFileUri = {
          description = "Required. The HCFS URI of the script that contains Spark SQL queries to execute.",
          type = "string",
        },
        queryVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=\"value\";).",
          type = "object",
        },
      },
      type = "object",
    },
    SparkSqlJob = {
      description = "A Dataproc job for running Apache Spark SQL (https://spark.apache.org/sql/) queries.",
      id = "SparkSqlJob",
      properties = {
        jarFileUris = {
          description = "Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.",
          type = "object",
        },
        queryFileUri = {
          description = "The HCFS URI of the script that contains SQL queries.",
          type = "string",
        },
        queryList = {
          ["$ref"] = "QueryList",
          description = "A list of queries.",
        },
        scriptVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=\"value\";).",
          type = "object",
        },
      },
      type = "object",
    },
    SparkStandaloneAutoscalingConfig = {
      description = "Basic autoscaling configurations for Spark Standalone.",
      id = "SparkStandaloneAutoscalingConfig",
      properties = {
        gracefulDecommissionTimeout = {
          description = "Required. Timeout for Spark graceful decommissioning of spark workers. Specifies the duration to wait for spark worker to complete spark decomissioning tasks before forcefully removing workers. Only applicable to downscaling operations.Bounds: 0s, 1d.",
          format = "google-duration",
          type = "string",
        },
        scaleDownFactor = {
          description = "Required. Fraction of required executors to remove from Spark Serverless clusters. A scale-down factor of 1.0 will result in scaling down so that there are no more executors for the Spark Job.(more aggressive scaling). A scale-down factor closer to 0 will result in a smaller magnitude of scaling donw (less aggressive scaling).Bounds: 0.0, 1.0.",
          format = "double",
          type = "number",
        },
        scaleDownMinWorkerFraction = {
          description = "Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0 means the autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.",
          format = "double",
          type = "number",
        },
        scaleUpFactor = {
          description = "Required. Fraction of required workers to add to Spark Standalone clusters. A scale-up factor of 1.0 will result in scaling up so that there are no more required workers for the Spark Job (more aggressive scaling). A scale-up factor closer to 0 will result in a smaller magnitude of scaling up (less aggressive scaling).Bounds: 0.0, 1.0.",
          format = "double",
          type = "number",
        },
        scaleUpMinWorkerFraction = {
          description = "Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of 0 means the autoscaler will scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    StartClusterRequest = {
      description = "A request to start a cluster.",
      id = "StartClusterRequest",
      properties = {
        clusterUuid = {
          description = "Optional. Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND) if a cluster with the specified UUID does not exist.",
          type = "string",
        },
        requestId = {
          description = "Optional. A unique ID used to identify the request. If the server receives two StartClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StartClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    StateHistory = {
      description = "Historical state information.",
      id = "StateHistory",
      properties = {
        state = {
          description = "Output only. The state of the batch at this point in history.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "CANCELLING",
            "CANCELLED",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "The batch state is unknown.",
            "The batch is created before running.",
            "The batch is running.",
            "The batch is cancelling.",
            "The batch cancellation was successful.",
            "The batch completed successfully.",
            "The batch is no longer running due to an error.",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. Details about the state at this point in history.",
          readOnly = true,
          type = "string",
        },
        stateStartTime = {
          description = "Output only. The time when the batch entered the historical state.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).",
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
    StopClusterRequest = {
      description = "A request to stop a cluster.",
      id = "StopClusterRequest",
      properties = {
        clusterUuid = {
          description = "Optional. Specifying the cluster_uuid means the RPC will fail (with error NOT_FOUND) if a cluster with the specified UUID does not exist.",
          type = "string",
        },
        requestId = {
          description = "Optional. A unique ID used to identify the request. If the server receives two StopClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StopClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    SubmitJobRequest = {
      description = "A request to submit a job.",
      id = "SubmitJobRequest",
      properties = {
        job = {
          ["$ref"] = "Job",
          description = "Required. The job resource.",
        },
        requestId = {
          description = "Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    TemplateParameter = {
      description = "A configurable parameter that replaces one or more fields in the template. Parameterizable fields: - Labels - File uris - Job properties - Job arguments - Script variables - Main class (in HadoopJob and SparkJob) - Zone (in ClusterSelector)",
      id = "TemplateParameter",
      properties = {
        description = {
          description = "Optional. Brief description of the parameter. Must not exceed 1024 characters.",
          type = "string",
        },
        fields = {
          description = "Required. Paths to all fields that the parameter replaces. A field is allowed to appear in at most one parameter's list of field paths.A field path is similar in syntax to a google.protobuf.FieldMask. For example, a field path that references the zone field of a workflow template's cluster selector would be specified as placement.clusterSelector.zone.Also, field paths can reference fields using the following syntax: Values in maps can be referenced by key: labels'key' placement.clusterSelector.clusterLabels'key' placement.managedCluster.labels'key' placement.clusterSelector.clusterLabels'key' jobs'step-id'.labels'key' Jobs in the jobs list can be referenced by step-id: jobs'step-id'.hadoopJob.mainJarFileUri jobs'step-id'.hiveJob.queryFileUri jobs'step-id'.pySparkJob.mainPythonFileUri jobs'step-id'.hadoopJob.jarFileUris0 jobs'step-id'.hadoopJob.archiveUris0 jobs'step-id'.hadoopJob.fileUris0 jobs'step-id'.pySparkJob.pythonFileUris0 Items in repeated fields can be referenced by a zero-based index: jobs'step-id'.sparkJob.args0 Other examples: jobs'step-id'.hadoopJob.properties'key' jobs'step-id'.hadoopJob.args0 jobs'step-id'.hiveJob.scriptVariables'key' jobs'step-id'.hadoopJob.mainJarFileUri placement.clusterSelector.zoneIt may not be possible to parameterize maps and repeated fields in their entirety since only individual map values and individual items in repeated fields can be referenced. For example, the following field paths are invalid: placement.clusterSelector.clusterLabels jobs'step-id'.sparkJob.args",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Parameter name. The parameter name is used as the key, and paired with the parameter value, which are passed to the template when the template is instantiated. The name must contain only capital letters (A-Z), numbers (0-9), and underscores (_), and must not start with a number. The maximum length is 40 characters.",
          type = "string",
        },
        validation = {
          ["$ref"] = "ParameterValidation",
          description = "Optional. Validation rules to be applied to this parameter's value.",
        },
      },
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for TestIamPermissions method.",
      id = "TestIamPermissionsRequest",
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
    TestIamPermissionsResponse = {
      description = "Response message for TestIamPermissions method.",
      id = "TestIamPermissionsResponse",
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
    TrinoJob = {
      description = "A Dataproc job for running Trino (https://trino.io/) queries. IMPORTANT: The Dataproc Trino Optional Component (https://cloud.google.com/dataproc/docs/concepts/components/trino) must be enabled when the cluster is created to submit a Trino job to the cluster.",
      id = "TrinoJob",
      properties = {
        clientTags = {
          description = "Optional. Trino client tags to attach to this query",
          items = {
            type = "string",
          },
          type = "array",
        },
        continueOnFailure = {
          description = "Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.",
          type = "boolean",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Optional. The runtime log config for job execution.",
        },
        outputFormat = {
          description = "Optional. The format in which query output will be displayed. See the Trino documentation for supported output formats",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A mapping of property names to values. Used to set Trino session properties (https://trino.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Trino CLI",
          type = "object",
        },
        queryFileUri = {
          description = "The HCFS URI of the script that contains SQL queries.",
          type = "string",
        },
        queryList = {
          ["$ref"] = "QueryList",
          description = "A list of queries.",
        },
      },
      type = "object",
    },
    UsageMetrics = {
      description = "Usage metrics represent approximate total resources consumed by a workload.",
      id = "UsageMetrics",
      properties = {
        milliDcuSeconds = {
          description = "Optional. DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).",
          format = "int64",
          type = "string",
        },
        shuffleStorageGbSeconds = {
          description = "Optional. Shuffle storage usage in (GB x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    UsageSnapshot = {
      description = "The usage snaphot represents the resources consumed by a workload at a specified time.",
      id = "UsageSnapshot",
      properties = {
        milliDcu = {
          description = "Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).",
          format = "int64",
          type = "string",
        },
        shuffleStorageGb = {
          description = "Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))",
          format = "int64",
          type = "string",
        },
        snapshotTime = {
          description = "Optional. The timestamp of the usage snapshot.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ValueValidation = {
      description = "Validation based on a list of allowed values.",
      id = "ValueValidation",
      properties = {
        values = {
          description = "Required. List of allowed values for the parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VirtualClusterConfig = {
      description = "The Dataproc cluster config for a cluster that does not directly control the underlying compute resources, such as a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke).",
      id = "VirtualClusterConfig",
      properties = {
        auxiliaryServicesConfig = {
          ["$ref"] = "AuxiliaryServicesConfig",
          description = "Optional. Configuration of auxiliary services used by this cluster.",
        },
        kubernetesClusterConfig = {
          ["$ref"] = "KubernetesClusterConfig",
          description = "Required. The configuration for running the Dataproc cluster on Kubernetes.",
        },
        stagingBucket = {
          description = "Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkflowGraph = {
      description = "The workflow graph.",
      id = "WorkflowGraph",
      properties = {
        nodes = {
          description = "Output only. The workflow nodes.",
          items = {
            ["$ref"] = "WorkflowNode",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    WorkflowMetadata = {
      description = "A Dataproc workflow template resource.",
      id = "WorkflowMetadata",
      properties = {
        clusterName = {
          description = "Output only. The name of the target cluster.",
          readOnly = true,
          type = "string",
        },
        clusterUuid = {
          description = "Output only. The UUID of target cluster.",
          readOnly = true,
          type = "string",
        },
        createCluster = {
          ["$ref"] = "ClusterOperation",
          description = "Output only. The create cluster operation metadata.",
          readOnly = true,
        },
        dagEndTime = {
          description = "Output only. DAG end time, only set for workflows with dag_timeout when DAG ends.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dagStartTime = {
          description = "Output only. DAG start time, only set for workflows with dag_timeout when DAG begins.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dagTimeout = {
          description = "Output only. The timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        deleteCluster = {
          ["$ref"] = "ClusterOperation",
          description = "Output only. The delete cluster operation metadata.",
          readOnly = true,
        },
        endTime = {
          description = "Output only. Workflow end time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        graph = {
          ["$ref"] = "WorkflowGraph",
          description = "Output only. The workflow graph.",
          readOnly = true,
        },
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "Map from parameter names to values that were used for those parameters.",
          type = "object",
        },
        startTime = {
          description = "Output only. Workflow start time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The workflow state.",
          enum = {
            "UNKNOWN",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "Unused.",
            "The operation has been created.",
            "The operation is running.",
            "The operation is done; either cancelled or completed.",
          },
          readOnly = true,
          type = "string",
        },
        template = {
          description = "Output only. The resource name of the workflow template as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
          readOnly = true,
          type = "string",
        },
        version = {
          description = "Output only. The version of template at the time of workflow instantiation.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    WorkflowNode = {
      description = "The workflow node.",
      id = "WorkflowNode",
      properties = {
        error = {
          description = "Output only. The error detail.",
          readOnly = true,
          type = "string",
        },
        jobId = {
          description = "Output only. The job id; populated after the node enters RUNNING state.",
          readOnly = true,
          type = "string",
        },
        prerequisiteStepIds = {
          description = "Output only. Node's prerequisite nodes.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        state = {
          description = "Output only. The node state.",
          enum = {
            "NODE_STATE_UNSPECIFIED",
            "BLOCKED",
            "RUNNABLE",
            "RUNNING",
            "COMPLETED",
            "FAILED",
          },
          enumDescriptions = {
            "State is unspecified.",
            "The node is awaiting prerequisite node to finish.",
            "The node is runnable but not running.",
            "The node is running.",
            "The node completed successfully.",
            "The node failed. A node can be marked FAILED because its ancestor or peer failed.",
          },
          readOnly = true,
          type = "string",
        },
        stepId = {
          description = "Output only. The name of the node.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    WorkflowTemplate = {
      description = "A Dataproc workflow template resource.",
      id = "WorkflowTemplate",
      properties = {
        createTime = {
          description = "Output only. The time template was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dagTimeout = {
          description = "Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes (\"600s\") to 24 hours (\"86400s\"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.",
          format = "google-duration",
          type = "string",
        },
        id = {
          type = "string",
        },
        jobs = {
          description = "Required. The Directed Acyclic Graph of Jobs to submit.",
          items = {
            ["$ref"] = "OrderedJob",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/regions/{region}/workflowTemplates/{template_id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects/{project_id}/locations/{location}/workflowTemplates/{template_id}",
          readOnly = true,
          type = "string",
        },
        parameters = {
          description = "Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.",
          items = {
            ["$ref"] = "TemplateParameter",
          },
          type = "array",
        },
        placement = {
          ["$ref"] = "WorkflowTemplatePlacement",
          description = "Required. WorkflowTemplate scheduling information.",
        },
        updateTime = {
          description = "Output only. The time template was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        version = {
          description = "Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WorkflowTemplatePlacement = {
      description = "Specifies workflow execution target.Either managed_cluster or cluster_selector is required.",
      id = "WorkflowTemplatePlacement",
      properties = {
        clusterSelector = {
          ["$ref"] = "ClusterSelector",
          description = "Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.",
        },
        managedCluster = {
          ["$ref"] = "ManagedCluster",
          description = "A cluster that is managed by the workflow.",
        },
      },
      type = "object",
    },
    YarnApplication = {
      description = "A YARN application created by a job. Application information is a subset of org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature: This report is available for testing purposes only. It may be changed before final release.",
      id = "YarnApplication",
      properties = {
        name = {
          description = "Required. The application name.",
          type = "string",
        },
        progress = {
          description = "Required. The numerical progress of the application, from 1 to 100.",
          format = "float",
          type = "number",
        },
        state = {
          description = "Required. The application state.",
          enum = {
            "STATE_UNSPECIFIED",
            "NEW",
            "NEW_SAVING",
            "SUBMITTED",
            "ACCEPTED",
            "RUNNING",
            "FINISHED",
            "FAILED",
            "KILLED",
          },
          enumDescriptions = {
            "Status is unspecified.",
            "Status is NEW.",
            "Status is NEW_SAVING.",
            "Status is SUBMITTED.",
            "Status is ACCEPTED.",
            "Status is RUNNING.",
            "Status is FINISHED.",
            "Status is FAILED.",
            "Status is KILLED.",
          },
          type = "string",
        },
        trackingUrl = {
          description = "Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides application-specific information. The URL uses the internal hostname, and requires a proxy server for resolution and, possibly, access.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Dataproc API",
  version = "v1",
}
