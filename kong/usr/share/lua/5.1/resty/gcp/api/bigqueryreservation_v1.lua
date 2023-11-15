return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/bigquery"] = {
          description = "View and manage your data in Google BigQuery and see the email address for your Google Account",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://bigqueryreservation.googleapis.com/",
  batchPath = "batch",
  canonicalName = "BigQuery Reservation",
  description = "A service to modify your BigQuery flat-rate reservations.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/bigquery/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "bigqueryreservation:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://bigqueryreservation.mtls.googleapis.com/",
  name = "bigqueryreservation",
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
            getBiReservation = {
              description = "Retrieves a BI reservation.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/biReservation",
              httpMethod = "GET",
              id = "bigqueryreservation.projects.locations.getBiReservation",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the requested reservation, for example: `projects/{project_id}/locations/{location_id}/biReservation`",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+/biReservation$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "BiReservation",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            searchAllAssignments = {
              description = "Looks up assignments for a specified resource for a particular region. If the request is about a project: 1. Assignments created on the project will be returned if they exist. 2. Otherwise assignments created on the closest ancestor will be returned. 3. Assignments for different JobTypes will all be returned. The same logic applies if the request is about a folder. If the request is about an organization, then assignments created on the organization will be returned (organization doesn't have ancestors). Comparing to ListAssignments, there are some behavior differences: 1. permission on the assignee will be verified in this API. 2. Hierarchy lookup (project->folder->organization) happens in this API. 3. Parent here is `projects/*/locations/*`, instead of `projects/*/locations/*reservations/*`.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:searchAllAssignments",
              httpMethod = "GET",
              id = "bigqueryreservation.projects.locations.searchAllAssignments",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of items to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The next_page_token value returned from a previous List request, if any.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name with location (project name could be the wildcard '-'), e.g.: `projects/-/locations/US`.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
                query = {
                  description = "Please specify resource name as assignee in the query. Examples: * `assignee=projects/myproject` * `assignee=folders/123` * `assignee=organizations/456`",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}:searchAllAssignments",
              response = {
                ["$ref"] = "SearchAllAssignmentsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            searchAssignments = {
              description = "Deprecated: Looks up assignments for a specified resource for a particular region. If the request is about a project: 1. Assignments created on the project will be returned if they exist. 2. Otherwise assignments created on the closest ancestor will be returned. 3. Assignments for different JobTypes will all be returned. The same logic applies if the request is about a folder. If the request is about an organization, then assignments created on the organization will be returned (organization doesn't have ancestors). Comparing to ListAssignments, there are some behavior differences: 1. permission on the assignee will be verified in this API. 2. Hierarchy lookup (project->folder->organization) happens in this API. 3. Parent here is `projects/*/locations/*`, instead of `projects/*/locations/*reservations/*`. **Note** \"-\" cannot be used for projects nor locations.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:searchAssignments",
              httpMethod = "GET",
              id = "bigqueryreservation.projects.locations.searchAssignments",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of items to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The next_page_token value returned from a previous List request, if any.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the admin project(containing project and location), e.g.: `projects/myproject/locations/US`.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
                query = {
                  description = "Please specify resource name as assignee in the query. Examples: * `assignee=projects/myproject` * `assignee=folders/123` * `assignee=organizations/456`",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}:searchAssignments",
              response = {
                ["$ref"] = "SearchAssignmentsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateBiReservation = {
              description = "Updates a BI reservation. Only fields specified in the `field_mask` are updated. A singleton BI reservation always exists with default size 0. In order to reserve BI capacity it needs to be updated to an amount greater than 0. In order to release BI capacity reservation size must be set to 0.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/biReservation",
              httpMethod = "PATCH",
              id = "bigqueryreservation.projects.locations.updateBiReservation",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the singleton BI reservation. Reservation names have the form `projects/{project_id}/locations/{location_id}/biReservation`.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+/biReservation$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "A list of fields to be updated in this request.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "BiReservation",
              },
              response = {
                ["$ref"] = "BiReservation",
              },
              scopes = {
                "https://www.googleapis.com/auth/bigquery",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            capacityCommitments = {
              methods = {
                create = {
                  description = "Creates a new capacity commitment resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/capacityCommitments",
                  httpMethod = "POST",
                  id = "bigqueryreservation.projects.locations.capacityCommitments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    capacityCommitmentId = {
                      description = "The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.",
                      location = "query",
                      type = "string",
                    },
                    enforceSingleAdminProjectPerOrg = {
                      description = "If true, fail the request if another project in the organization has a capacity commitment.",
                      location = "query",
                      type = "boolean",
                    },
                    parent = {
                      description = "Required. Resource name of the parent reservation. E.g., `projects/myproject/locations/US`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/capacityCommitments",
                  request = {
                    ["$ref"] = "CapacityCommitment",
                  },
                  response = {
                    ["$ref"] = "CapacityCommitment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a capacity commitment. Attempting to delete capacity commitment before its commitment_end_time will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/capacityCommitments/{capacityCommitmentsId}",
                  httpMethod = "DELETE",
                  id = "bigqueryreservation.projects.locations.capacityCommitments.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "Can be used to force delete commitments even if assignments exist. Deleting commitments with assignments may cause queries to fail if they no longer have access to slots.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. Resource name of the capacity commitment to delete. E.g., `projects/myproject/locations/US/capacityCommitments/123`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/capacityCommitments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns information about the capacity commitment.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/capacityCommitments/{capacityCommitmentsId}",
                  httpMethod = "GET",
                  id = "bigqueryreservation.projects.locations.capacityCommitments.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the capacity commitment to retrieve. E.g., `projects/myproject/locations/US/capacityCommitments/123`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/capacityCommitments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "CapacityCommitment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all the capacity commitments for the admin project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/capacityCommitments",
                  httpMethod = "GET",
                  id = "bigqueryreservation.projects.locations.capacityCommitments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Resource name of the parent reservation. E.g., `projects/myproject/locations/US`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/capacityCommitments",
                  response = {
                    ["$ref"] = "ListCapacityCommitmentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                merge = {
                  description = "Merges capacity commitments of the same plan into a single commitment. The resulting capacity commitment has the greater commitment_end_time out of the to-be-merged capacity commitments. Attempting to merge capacity commitments of different plan will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/capacityCommitments:merge",
                  httpMethod = "POST",
                  id = "bigqueryreservation.projects.locations.capacityCommitments.merge",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Parent resource that identifies admin project and location e.g., `projects/myproject/locations/us`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/capacityCommitments:merge",
                  request = {
                    ["$ref"] = "MergeCapacityCommitmentsRequest",
                  },
                  response = {
                    ["$ref"] = "CapacityCommitment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing capacity commitment. Only `plan` and `renewal_plan` fields can be updated. Plan can only be changed to a plan of a longer commitment period. Attempting to change to a plan with shorter commitment period will fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/capacityCommitments/{capacityCommitmentsId}",
                  httpMethod = "PATCH",
                  id = "bigqueryreservation.projects.locations.capacityCommitments.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments/123` The commitment_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/capacityCommitments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Standard field mask for the set of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "CapacityCommitment",
                  },
                  response = {
                    ["$ref"] = "CapacityCommitment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                split = {
                  description = "Splits capacity commitment to two commitments of the same plan and `commitment_end_time`. A common use case is to enable downgrading commitments. For example, in order to downgrade from 10000 slots to 8000, you might split a 10000 capacity commitment into commitments of 2000 and 8000. Then, you delete the first one after the commitment end time passes.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/capacityCommitments/{capacityCommitmentsId}:split",
                  httpMethod = "POST",
                  id = "bigqueryreservation.projects.locations.capacityCommitments.split",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name e.g.,: `projects/myproject/locations/US/capacityCommitments/123`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/capacityCommitments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:split",
                  request = {
                    ["$ref"] = "SplitCapacityCommitmentRequest",
                  },
                  response = {
                    ["$ref"] = "SplitCapacityCommitmentResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            reservations = {
              methods = {
                create = {
                  description = "Creates a new reservation resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations",
                  httpMethod = "POST",
                  id = "bigqueryreservation.projects.locations.reservations.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Project, location. E.g., `projects/myproject/locations/US`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    reservationId = {
                      description = "The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/reservations",
                  request = {
                    ["$ref"] = "Reservation",
                  },
                  response = {
                    ["$ref"] = "Reservation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a reservation. Returns `google.rpc.Code.FAILED_PRECONDITION` when reservation has assignments.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}",
                  httpMethod = "DELETE",
                  id = "bigqueryreservation.projects.locations.reservations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the reservation to retrieve. E.g., `projects/myproject/locations/US/reservations/team1-prod`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns information about the reservation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}",
                  httpMethod = "GET",
                  id = "bigqueryreservation.projects.locations.reservations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the reservation to retrieve. E.g., `projects/myproject/locations/US/reservations/team1-prod`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Reservation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all the reservations for the project in the specified location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations",
                  httpMethod = "GET",
                  id = "bigqueryreservation.projects.locations.reservations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return per page.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name containing project and location, e.g.: `projects/myproject/locations/US`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/reservations",
                  response = {
                    ["$ref"] = "ListReservationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing reservation resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}",
                  httpMethod = "PATCH",
                  id = "bigqueryreservation.projects.locations.reservations.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Standard field mask for the set of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Reservation",
                  },
                  response = {
                    ["$ref"] = "Reservation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                assignments = {
                  methods = {
                    create = {
                      description = "Creates an assignment object which allows the given project to submit jobs of a certain type using slots from the specified reservation. Currently a resource (project, folder, organization) can only have one assignment per each (job_type, location) combination, and that reservation will be used for all jobs of the matching type. Different assignments can be created on different levels of the projects, folders or organization hierarchy. During query execution, the assignment is looked up at the project, folder and organization levels in that order. The first assignment found is applied to the query. When creating assignments, it does not matter if other assignments exist at higher levels. Example: * The organization `organizationA` contains two projects, `project1` and `project2`. * Assignments for all three entities (`organizationA`, `project1`, and `project2`) could all be created and mapped to the same or different reservations. \"None\" assignments represent an absence of the assignment. Projects assigned to None use on-demand pricing. To create a \"None\" assignment, use \"none\" as a reservation_id in the parent. Example parent: `projects/myproject/locations/US/reservations/none`. Returns `google.rpc.Code.PERMISSION_DENIED` if user does not have 'bigquery.admin' permissions on the project using the reservation and the project that owns this reservation. Returns `google.rpc.Code.INVALID_ARGUMENT` when location of the assignment does not match location of the reservation.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}/assignments",
                      httpMethod = "POST",
                      id = "bigqueryreservation.projects.locations.reservations.assignments.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        assignmentId = {
                          description = "The optional assignment ID. Assignment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. Max length is 64 characters.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name of the assignment E.g. `projects/myproject/locations/US/reservations/team1-prod`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/assignments",
                      request = {
                        ["$ref"] = "Assignment",
                      },
                      response = {
                        ["$ref"] = "Assignment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a assignment. No expansion will happen. Example: * Organization `organizationA` contains two projects, `project1` and `project2`. * Reservation `res1` exists and was created previously. * CreateAssignment was used previously to define the following associations between entities and reservations: `` and `` In this example, deletion of the `` assignment won't affect the other assignment ``. After said deletion, queries from `project1` will still use `res1` while queries from `project2` will switch to use on-demand mode.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}/assignments/{assignmentsId}",
                      httpMethod = "DELETE",
                      id = "bigqueryreservation.projects.locations.reservations.assignments.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the resource, e.g. `projects/myproject/locations/US/reservations/team1-prod/assignments/123`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+/assignments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists assignments. Only explicitly created assignments will be returned. Example: * Organization `organizationA` contains two projects, `project1` and `project2`. * Reservation `res1` exists and was created previously. * CreateAssignment was used previously to define the following associations between entities and reservations: `` and `` In this example, ListAssignments will just return the above two assignments for reservation `res1`, and no expansion/merge will happen. The wildcard \"-\" can be used for reservations in the request. In that case all assignments belongs to the specified project and location will be listed. **Note** \"-\" cannot be used for projects nor locations.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}/assignments",
                      httpMethod = "GET",
                      id = "bigqueryreservation.projects.locations.reservations.assignments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of items to return per page.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous List request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name e.g.: `projects/myproject/locations/US/reservations/team1-prod` Or: `projects/myproject/locations/US/reservations/-`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/assignments",
                      response = {
                        ["$ref"] = "ListAssignmentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    move = {
                      description = "Moves an assignment under a new reservation. This differs from removing an existing assignment and recreating a new one by providing a transactional change that ensures an assignee always has an associated reservation.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}/assignments/{assignmentsId}:move",
                      httpMethod = "POST",
                      id = "bigqueryreservation.projects.locations.reservations.assignments.move",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the assignment, e.g. `projects/myproject/locations/US/reservations/team1-prod/assignments/123`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+/assignments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:move",
                      request = {
                        ["$ref"] = "MoveAssignmentRequest",
                      },
                      response = {
                        ["$ref"] = "Assignment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an existing assignment. Only the `priority` field can be updated.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/reservations/{reservationsId}/assignments/{assignmentsId}",
                      httpMethod = "PATCH",
                      id = "bigqueryreservation.projects.locations.reservations.assignments.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. Name of the resource. E.g.: `projects/myproject/locations/US/reservations/team1-prod/assignments/123`. The assignment_id must only contain lower case alphanumeric characters or dashes and the max length is 64 characters.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/reservations/[^/]+/assignments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Standard field mask for the set of fields to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Assignment",
                      },
                      response = {
                        ["$ref"] = "Assignment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
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
  rootUrl = "https://bigqueryreservation.googleapis.com/",
  schemas = {
    Assignment = {
      description = "An assignment allows a project to submit jobs of a certain type using slots from the specified reservation.",
      id = "Assignment",
      properties = {
        assignee = {
          description = "The resource which will use the reservation. E.g. `projects/myproject`, `folders/123`, or `organizations/456`.",
          type = "string",
        },
        jobType = {
          description = "Which type of jobs will use the reservation.",
          enum = {
            "JOB_TYPE_UNSPECIFIED",
            "PIPELINE",
            "QUERY",
            "ML_EXTERNAL",
            "BACKGROUND",
          },
          enumDescriptions = {
            "Invalid type. Requests with this value will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.",
            "Pipeline (load/export) jobs from the project will use the reservation.",
            "Query jobs from the project will use the reservation.",
            "BigQuery ML jobs that use services external to BigQuery for model training. These jobs will not utilize idle slots from other reservations.",
            "Background jobs that BigQuery runs for the customers in the background.",
          },
          type = "string",
        },
        name = {
          description = "Output only. Name of the resource. E.g.: `projects/myproject/locations/US/reservations/team1-prod/assignments/123`. The assignment_id must only contain lower case alphanumeric characters or dashes and the max length is 64 characters.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. State of the assignment.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "ACTIVE",
          },
          enumDescriptions = {
            "Invalid state value.",
            "Queries from assignee will be executed as on-demand, if related assignment is pending.",
            "Assignment is ready.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    BiReservation = {
      description = "Represents a BI Reservation.",
      id = "BiReservation",
      properties = {
        name = {
          description = "The resource name of the singleton BI reservation. Reservation names have the form `projects/{project_id}/locations/{location_id}/biReservation`.",
          type = "string",
        },
        preferredTables = {
          description = "Preferred tables to use BI capacity for.",
          items = {
            ["$ref"] = "TableReference",
          },
          type = "array",
        },
        size = {
          description = "Size of a reservation, in bytes.",
          format = "int64",
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of a reservation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CapacityCommitment = {
      description = "Capacity commitment is a way to purchase compute capacity for BigQuery jobs (in the form of slots) with some committed period of usage. Annual commitments renew by default. Commitments can be removed after their commitment end time passes. In order to remove annual commitment, its plan needs to be changed to monthly or flex first. A capacity commitment resource exists as a child resource of the admin project.",
      id = "CapacityCommitment",
      properties = {
        commitmentEndTime = {
          description = "Output only. The end of the current commitment period. It is applicable only for ACTIVE capacity commitments.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        commitmentStartTime = {
          description = "Output only. The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        failureStatus = {
          ["$ref"] = "Status",
          description = "Output only. For FAILED commitment plan, provides the reason of failure.",
          readOnly = true,
        },
        multiRegionAuxiliary = {
          description = "Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.",
          type = "boolean",
        },
        name = {
          description = "Output only. The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments/123` The commitment_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.",
          readOnly = true,
          type = "string",
        },
        plan = {
          description = "Capacity commitment commitment plan.",
          enum = {
            "COMMITMENT_PLAN_UNSPECIFIED",
            "FLEX",
            "TRIAL",
            "MONTHLY",
            "ANNUAL",
          },
          enumDescriptions = {
            "Invalid plan value. Requests with this value will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.",
            "Flex commitments have committed period of 1 minute after becoming ACTIVE. After that, they are not in a committed period anymore and can be removed any time.",
            "Trial commitments have a committed period of 182 days after becoming ACTIVE. After that, they are converted to a new commitment based on the `renewal_plan`. Default `renewal_plan` for Trial commitment is Flex so that it can be deleted right after committed period ends.",
            "Monthly commitments have a committed period of 30 days after becoming ACTIVE. After that, they are not in a committed period anymore and can be removed any time.",
            "Annual commitments have a committed period of 365 days after becoming ACTIVE. After that they are converted to a new commitment based on the renewal_plan.",
          },
          type = "string",
        },
        renewalPlan = {
          description = "The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.",
          enum = {
            "COMMITMENT_PLAN_UNSPECIFIED",
            "FLEX",
            "TRIAL",
            "MONTHLY",
            "ANNUAL",
          },
          enumDescriptions = {
            "Invalid plan value. Requests with this value will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.",
            "Flex commitments have committed period of 1 minute after becoming ACTIVE. After that, they are not in a committed period anymore and can be removed any time.",
            "Trial commitments have a committed period of 182 days after becoming ACTIVE. After that, they are converted to a new commitment based on the `renewal_plan`. Default `renewal_plan` for Trial commitment is Flex so that it can be deleted right after committed period ends.",
            "Monthly commitments have a committed period of 30 days after becoming ACTIVE. After that, they are not in a committed period anymore and can be removed any time.",
            "Annual commitments have a committed period of 365 days after becoming ACTIVE. After that they are converted to a new commitment based on the renewal_plan.",
          },
          type = "string",
        },
        slotCount = {
          description = "Number of slots in this commitment.",
          format = "int64",
          type = "string",
        },
        state = {
          description = "Output only. State of the commitment.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "ACTIVE",
            "FAILED",
          },
          enumDescriptions = {
            "Invalid state value.",
            "Capacity commitment is pending provisioning. Pending capacity commitment does not contribute to the project's slot_capacity.",
            "Once slots are provisioned, capacity commitment becomes active. slot_count is added to the project's slot_capacity.",
            "Capacity commitment is failed to be activated by the backend.",
          },
          readOnly = true,
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
    ListAssignmentsResponse = {
      description = "The response for ReservationService.ListAssignments.",
      id = "ListAssignmentsResponse",
      properties = {
        assignments = {
          description = "List of assignments visible to the user.",
          items = {
            ["$ref"] = "Assignment",
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
    ListCapacityCommitmentsResponse = {
      description = "The response for ReservationService.ListCapacityCommitments.",
      id = "ListCapacityCommitmentsResponse",
      properties = {
        capacityCommitments = {
          description = "List of capacity commitments visible to the user.",
          items = {
            ["$ref"] = "CapacityCommitment",
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
    ListReservationsResponse = {
      description = "The response for ReservationService.ListReservations.",
      id = "ListReservationsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        reservations = {
          description = "List of reservations visible to the user.",
          items = {
            ["$ref"] = "Reservation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MergeCapacityCommitmentsRequest = {
      description = "The request for ReservationService.MergeCapacityCommitments.",
      id = "MergeCapacityCommitmentsRequest",
      properties = {
        capacityCommitmentIds = {
          description = "Ids of capacity commitments to merge. These capacity commitments must exist under admin project and location specified in the parent. ID is the last portion of capacity commitment name e.g., 'abc' for projects/myproject/locations/US/capacityCommitments/abc",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MoveAssignmentRequest = {
      description = "The request for ReservationService.MoveAssignment. **Note**: \"bigquery.reservationAssignments.create\" permission is required on the destination_id. **Note**: \"bigquery.reservationAssignments.create\" and \"bigquery.reservationAssignments.delete\" permission are required on the related assignee.",
      id = "MoveAssignmentRequest",
      properties = {
        destinationId = {
          description = "The new reservation ID, e.g.: `projects/myotherproject/locations/US/reservations/team2-prod`",
          type = "string",
        },
      },
      type = "object",
    },
    Reservation = {
      description = "A reservation is a mechanism used to guarantee slots to users.",
      id = "Reservation",
      properties = {
        concurrency = {
          description = "Job concurrency target which sets a soft upper bound on the number of jobs that can run concurrently in this reservation. This is a soft target due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency target will be automatically computed by the system. NOTE: this field is exposed as `target_job_concurrency` in the Information Schema, DDL and BQ CLI.",
          format = "int64",
          type = "string",
        },
        creationTime = {
          description = "Output only. Creation time of the reservation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        ignoreIdleSlots = {
          description = "If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.",
          type = "boolean",
        },
        multiRegionAuxiliary = {
          description = "Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.",
          type = "boolean",
        },
        name = {
          description = "The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.",
          type = "string",
        },
        slotCapacity = {
          description = "Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false. If total slot_capacity of the reservation and its siblings exceeds the total slot_count of all capacity commitments, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU multi-regions, slot capacity constraints are checked separately for default and auxiliary regions. See multi_region_auxiliary flag for more details.",
          format = "int64",
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update time of the reservation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SearchAllAssignmentsResponse = {
      description = "The response for ReservationService.SearchAllAssignments.",
      id = "SearchAllAssignmentsResponse",
      properties = {
        assignments = {
          description = "List of assignments visible to the user.",
          items = {
            ["$ref"] = "Assignment",
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
    SearchAssignmentsResponse = {
      description = "The response for ReservationService.SearchAssignments.",
      id = "SearchAssignmentsResponse",
      properties = {
        assignments = {
          description = "List of assignments visible to the user.",
          items = {
            ["$ref"] = "Assignment",
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
    SplitCapacityCommitmentRequest = {
      description = "The request for ReservationService.SplitCapacityCommitment.",
      id = "SplitCapacityCommitmentRequest",
      properties = {
        slotCount = {
          description = "Number of slots in the capacity commitment after the split.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SplitCapacityCommitmentResponse = {
      description = "The response for ReservationService.SplitCapacityCommitment.",
      id = "SplitCapacityCommitmentResponse",
      properties = {
        first = {
          ["$ref"] = "CapacityCommitment",
          description = "First capacity commitment, result of a split.",
        },
        second = {
          ["$ref"] = "CapacityCommitment",
          description = "Second capacity commitment, result of a split.",
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
    TableReference = {
      description = "Fully qualified reference to BigQuery table. Internally stored as google.cloud.bi.v1.BqTableReference.",
      id = "TableReference",
      properties = {
        datasetId = {
          description = "The ID of the dataset in the above project.",
          type = "string",
        },
        projectId = {
          description = "The assigned project ID of the project.",
          type = "string",
        },
        tableId = {
          description = "The ID of the table in the above dataset.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "BigQuery Reservation API",
  version = "v1",
  version_module = true,
}
