return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-translation"] = {
          description = "Translate text from one language to another using Google Translate",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://translation.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Translate",
  description = "Integrates text translation into your website or application.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/translate/docs/quickstarts",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "translate:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://translation.mtls.googleapis.com/",
  name = "translate",
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
      methods = {
        detectLanguage = {
          description = "Detects the language of text within a request.",
          flatPath = "v3/projects/{projectsId}:detectLanguage",
          httpMethod = "POST",
          id = "translate.projects.detectLanguage",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}/locations/{location-id}` or `projects/{project-number-or-id}`. For global calls, use `projects/{project-number-or-id}/locations/global` or `projects/{project-number-or-id}`. Only models within the same region (has same location-id) can be used. Otherwise an INVALID_ARGUMENT (400) error is returned.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+parent}:detectLanguage",
          request = {
            ["$ref"] = "DetectLanguageRequest",
          },
          response = {
            ["$ref"] = "DetectLanguageResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-translation",
          },
        },
        getSupportedLanguages = {
          description = "Returns a list of supported languages for translation.",
          flatPath = "v3/projects/{projectsId}/supportedLanguages",
          httpMethod = "GET",
          id = "translate.projects.getSupportedLanguages",
          parameterOrder = {
            "parent",
          },
          parameters = {
            displayLanguageCode = {
              description = "Optional. The language to use to return localized, human readable names of supported languages. If missing, then display names are not returned in a response.",
              location = "query",
              type = "string",
            },
            model = {
              description = "Optional. Get supported languages of this model. The format depends on model type: - AutoML Translation models: `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}` - General (built-in) models: `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`, Returns languages supported by the specified model. If missing, we get supported languages of Google general NMT model.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}` or `projects/{project-number-or-id}/locations/{location-id}`. For global calls, use `projects/{project-number-or-id}/locations/global` or `projects/{project-number-or-id}`. Non-global location is required for AutoML models. Only models within the same region (have same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+parent}/supportedLanguages",
          response = {
            ["$ref"] = "SupportedLanguages",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-translation",
          },
        },
        translateText = {
          description = "Translates input text and returns translated text.",
          flatPath = "v3/projects/{projectsId}:translateText",
          httpMethod = "POST",
          id = "translate.projects.translateText",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}` or `projects/{project-number-or-id}/locations/{location-id}`. For global calls, use `projects/{project-number-or-id}/locations/global` or `projects/{project-number-or-id}`. Non-global location is required for requests using AutoML models or custom glossaries. Models and glossaries must be within the same region (have same location-id), otherwise an INVALID_ARGUMENT (400) error is returned.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+parent}:translateText",
          request = {
            ["$ref"] = "TranslateTextRequest",
          },
          response = {
            ["$ref"] = "TranslateTextResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-translation",
          },
        },
      },
      resources = {
        locations = {
          methods = {
            batchTranslateDocument = {
              description = "Translates a large volume of document in asynchronous batch mode. This function provides real-time output as the inputs are being processed. If caller cancels a request, the partial results (for an input file, it's all or nothing) may still be available on the specified output location. This call returns immediately and you can use google.longrunning.Operation.name to poll the status of the call.",
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}:batchTranslateDocument",
              httpMethod = "POST",
              id = "translate.projects.locations.batchTranslateDocument",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Location to make a regional call. Format: `projects/{project-number-or-id}/locations/{location-id}`. The `global` location is not supported for batch translation. Only AutoML Translation models or glossaries within the same region (have the same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}:batchTranslateDocument",
              request = {
                ["$ref"] = "BatchTranslateDocumentRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            batchTranslateText = {
              description = "Translates a large volume of text in asynchronous batch mode. This function provides real-time output as the inputs are being processed. If caller cancels a request, the partial results (for an input file, it's all or nothing) may still be available on the specified output location. This call returns immediately and you can use google.longrunning.Operation.name to poll the status of the call.",
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}:batchTranslateText",
              httpMethod = "POST",
              id = "translate.projects.locations.batchTranslateText",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}/locations/{location-id}`. The `global` location is not supported for batch translation. Only AutoML Translation models or glossaries within the same region (have the same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}:batchTranslateText",
              request = {
                ["$ref"] = "BatchTranslateTextRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            detectLanguage = {
              description = "Detects the language of text within a request.",
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}:detectLanguage",
              httpMethod = "POST",
              id = "translate.projects.locations.detectLanguage",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}/locations/{location-id}` or `projects/{project-number-or-id}`. For global calls, use `projects/{project-number-or-id}/locations/global` or `projects/{project-number-or-id}`. Only models within the same region (has same location-id) can be used. Otherwise an INVALID_ARGUMENT (400) error is returned.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}:detectLanguage",
              request = {
                ["$ref"] = "DetectLanguageRequest",
              },
              response = {
                ["$ref"] = "DetectLanguageResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-translation",
              },
            },
            get = {
              description = "Gets information about a location.",
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "translate.projects.locations.get",
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
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-translation",
              },
            },
            getSupportedLanguages = {
              description = "Returns a list of supported languages for translation.",
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}/supportedLanguages",
              httpMethod = "GET",
              id = "translate.projects.locations.getSupportedLanguages",
              parameterOrder = {
                "parent",
              },
              parameters = {
                displayLanguageCode = {
                  description = "Optional. The language to use to return localized, human readable names of supported languages. If missing, then display names are not returned in a response.",
                  location = "query",
                  type = "string",
                },
                model = {
                  description = "Optional. Get supported languages of this model. The format depends on model type: - AutoML Translation models: `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}` - General (built-in) models: `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`, Returns languages supported by the specified model. If missing, we get supported languages of Google general NMT model.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}` or `projects/{project-number-or-id}/locations/{location-id}`. For global calls, use `projects/{project-number-or-id}/locations/global` or `projects/{project-number-or-id}`. Non-global location is required for AutoML models. Only models within the same region (have same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/supportedLanguages",
              response = {
                ["$ref"] = "SupportedLanguages",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-translation",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v3/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "translate.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
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
                  description = "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-translation",
              },
            },
            translateDocument = {
              description = "Translates documents in synchronous mode.",
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}:translateDocument",
              httpMethod = "POST",
              id = "translate.projects.locations.translateDocument",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Location to make a regional call. Format: `projects/{project-number-or-id}/locations/{location-id}`. For global calls, use `projects/{project-number-or-id}/locations/global` or `projects/{project-number-or-id}`. Non-global location is required for requests using AutoML models or custom glossaries. Models and glossaries must be within the same region (have the same location-id), otherwise an INVALID_ARGUMENT (400) error is returned.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}:translateDocument",
              request = {
                ["$ref"] = "TranslateDocumentRequest",
              },
              response = {
                ["$ref"] = "TranslateDocumentResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-translation",
              },
            },
            translateText = {
              description = "Translates input text and returns translated text.",
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}:translateText",
              httpMethod = "POST",
              id = "translate.projects.locations.translateText",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}` or `projects/{project-number-or-id}/locations/{location-id}`. For global calls, use `projects/{project-number-or-id}/locations/global` or `projects/{project-number-or-id}`. Non-global location is required for requests using AutoML models or custom glossaries. Models and glossaries must be within the same region (have same location-id), otherwise an INVALID_ARGUMENT (400) error is returned.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}:translateText",
              request = {
                ["$ref"] = "TranslateTextRequest",
              },
              response = {
                ["$ref"] = "TranslateTextResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-translation",
              },
            },
          },
          resources = {
            datasets = {
              methods = {
                create = {
                  description = "Creates a Dataset.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/datasets",
                  httpMethod = "POST",
                  id = "translate.projects.locations.datasets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/datasets",
                  request = {
                    ["$ref"] = "Dataset",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                delete = {
                  description = "Deletes a dataset and all of its contents.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}",
                  httpMethod = "DELETE",
                  id = "translate.projects.locations.datasets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the dataset to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                exportData = {
                  description = "Exports dataset's data to the provided output location.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}:exportData",
                  httpMethod = "POST",
                  id = "translate.projects.locations.datasets.exportData",
                  parameterOrder = {
                    "dataset",
                  },
                  parameters = {
                    dataset = {
                      description = "Required. Name of the dataset. In form of `projects/{project-number-or-id}/locations/{location-id}/datasets/{dataset-id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+dataset}:exportData",
                  request = {
                    ["$ref"] = "ExportDataRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                get = {
                  description = "Gets a Dataset.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}",
                  httpMethod = "GET",
                  id = "translate.projects.locations.datasets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the dataset to retrieve.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Dataset",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                importData = {
                  description = "Import sentence pairs into translation Dataset.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}:importData",
                  httpMethod = "POST",
                  id = "translate.projects.locations.datasets.importData",
                  parameterOrder = {
                    "dataset",
                  },
                  parameters = {
                    dataset = {
                      description = "Required. Name of the dataset. In form of `projects/{project-number-or-id}/locations/{location-id}/datasets/{dataset-id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+dataset}:importData",
                  request = {
                    ["$ref"] = "ImportDataRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                list = {
                  description = "Lists datasets.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/datasets",
                  httpMethod = "GET",
                  id = "translate.projects.locations.datasets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. Requested page size. The server can return fewer results than requested.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results for the server to return. Typically obtained from next_page_token field in the response of a ListDatasets call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the parent project. In form of `projects/{project-number-or-id}/locations/{location-id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/datasets",
                  response = {
                    ["$ref"] = "ListDatasetsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
              },
              resources = {
                examples = {
                  methods = {
                    list = {
                      description = "Lists sentence pairs in the dataset.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/datasets/{datasetsId}/examples",
                      httpMethod = "GET",
                      id = "translate.projects.locations.datasets.examples.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. An expression for filtering the examples that will be returned. Example filter: * `usage=TRAIN`",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Requested page size. The server can return fewer results than requested.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. A token identifying a page of results for the server to return. Typically obtained from next_page_token field in the response of a ListExamples call.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Name of the parent dataset. In form of `projects/{project-number-or-id}/locations/{location-id}/datasets/{dataset-id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/examples",
                      response = {
                        ["$ref"] = "ListExamplesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-translation",
                      },
                    },
                  },
                },
              },
            },
            glossaries = {
              methods = {
                create = {
                  description = "Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn't exist.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries",
                  httpMethod = "POST",
                  id = "translate.projects.locations.glossaries.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/glossaries",
                  request = {
                    ["$ref"] = "Glossary",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a glossary, or cancels glossary construction if the glossary isn't created yet. Returns NOT_FOUND, if the glossary doesn't exist.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}",
                  httpMethod = "DELETE",
                  id = "translate.projects.locations.glossaries.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the glossary to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                get = {
                  description = "Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}",
                  httpMethod = "GET",
                  id = "translate.projects.locations.glossaries.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the glossary to retrieve.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Glossary",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                list = {
                  description = "Lists glossaries in a project. Returns NOT_FOUND, if the project doesn't exist.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries",
                  httpMethod = "GET",
                  id = "translate.projects.locations.glossaries.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filter specifying constraints of a list operation. Specify the constraint by the format of \"key=value\", where key must be \"src\" or \"tgt\", and the value must be a valid language code. For multiple restrictions, concatenate them by \"AND\" (uppercase only), such as: \"src=en-US AND tgt=zh-CN\". Notice that the exact match is used here, which means using 'en-US' and 'en' can lead to different results, which depends on the language code you used when you create the glossary. For the unidirectional glossaries, the \"src\" and \"tgt\" add restrictions on the source and target language code separately. For the equivalent term set glossaries, the \"src\" and/or \"tgt\" add restrictions on the term set. For example: \"src=en-US AND tgt=zh-CN\" will only pick the unidirectional glossaries which exactly match the source language code as \"en-US\" and the target language code \"zh-CN\", but all equivalent term set glossaries which contain \"en-US\" and \"zh-CN\" in their language set will be picked. If missing, no filtering is performed.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Requested page size. The server may return fewer glossaries than requested. If unspecified, the server picks an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results the server should return. Typically, this is the value of [ListGlossariesResponse.next_page_token] returned from the previous call to `ListGlossaries` method. The first page is returned if `page_token`is empty or missing.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the project from which to list all of the glossaries.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/glossaries",
                  response = {
                    ["$ref"] = "ListGlossariesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                patch = {
                  description = "Updates a glossary. A LRO is used since the update can be async if the glossary's entry file is updated.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}",
                  httpMethod = "PATCH",
                  id = "translate.projects.locations.glossaries.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated. Currently only `display_name` and 'input_config'",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  request = {
                    ["$ref"] = "Glossary",
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
                glossaryEntries = {
                  methods = {
                    create = {
                      description = "Creates a glossary entry.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}/glossaryEntries",
                      httpMethod = "POST",
                      id = "translate.projects.locations.glossaries.glossaryEntries.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The resource name of the glossary to create the entry under.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/glossaryEntries",
                      request = {
                        ["$ref"] = "GlossaryEntry",
                      },
                      response = {
                        ["$ref"] = "GlossaryEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-translation",
                      },
                    },
                    delete = {
                      description = "Deletes a single entry from the glossary",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}/glossaryEntries/{glossaryEntriesId}",
                      httpMethod = "DELETE",
                      id = "translate.projects.locations.glossaries.glossaryEntries.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the glossary entry to delete",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+/glossaryEntries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-translation",
                      },
                    },
                    get = {
                      description = "Gets a single glossary entry by the given id.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}/glossaryEntries/{glossaryEntriesId}",
                      httpMethod = "GET",
                      id = "translate.projects.locations.glossaries.glossaryEntries.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the glossary entry to get",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+/glossaryEntries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GlossaryEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-translation",
                      },
                    },
                    list = {
                      description = "List the entries for the glossary.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}/glossaryEntries",
                      httpMethod = "GET",
                      id = "translate.projects.locations.glossaries.glossaryEntries.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. Requested page size. The server may return fewer glossary entries than requested. If unspecified, the server picks an appropriate default.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. A token identifying a page of results the server should return. Typically, this is the value of [ListGlossaryEntriesResponse.next_page_token] returned from the previous call. The first page is returned if `page_token`is empty or missing.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent glossary resource name for listing the glossary's entries.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/glossaryEntries",
                      response = {
                        ["$ref"] = "ListGlossaryEntriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-translation",
                      },
                    },
                    patch = {
                      description = "Updates a glossary entry.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/glossaries/{glossariesId}/glossaryEntries/{glossaryEntriesId}",
                      httpMethod = "PATCH",
                      id = "translate.projects.locations.glossaries.glossaryEntries.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the entry. Format: \"projects/*/locations/*/glossaries/*/glossaryEntries/*\"",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/glossaries/[^/]+/glossaryEntries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      request = {
                        ["$ref"] = "GlossaryEntry",
                      },
                      response = {
                        ["$ref"] = "GlossaryEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-translation",
                      },
                    },
                  },
                },
              },
            },
            models = {
              methods = {
                create = {
                  description = "Creates a Model.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/models",
                  httpMethod = "POST",
                  id = "translate.projects.locations.models.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project name, in form of `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/models",
                  request = {
                    ["$ref"] = "Model",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                delete = {
                  description = "Deletes a model.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/models/{modelsId}",
                  httpMethod = "DELETE",
                  id = "translate.projects.locations.models.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the model to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/models/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                get = {
                  description = "Gets a model.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/models/{modelsId}",
                  httpMethod = "GET",
                  id = "translate.projects.locations.models.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the model to retrieve.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/models/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Model",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                list = {
                  description = "Lists models.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/models",
                  httpMethod = "GET",
                  id = "translate.projects.locations.models.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. An expression for filtering the models that will be returned. Supported filter: `dataset_id=${dataset_id}`",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Requested page size. The server can return fewer results than requested.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results for the server to return. Typically obtained from next_page_token field in the response of a ListModels call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the parent project. In form of `projects/{project-number-or-id}/locations/{location-id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/models",
                  response = {
                    ["$ref"] = "ListModelsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "translate.projects.locations.operations.cancel",
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
                  path = "v3/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "translate.projects.locations.operations.delete",
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
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "translate.projects.locations.operations.get",
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
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "translate.projects.locations.operations.list",
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
                  path = "v3/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
                wait = {
                  description = "Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:wait",
                  httpMethod = "POST",
                  id = "translate.projects.locations.operations.wait",
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
                  },
                  path = "v3/{+name}:wait",
                  request = {
                    ["$ref"] = "WaitOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-translation",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://translation.googleapis.com/",
  schemas = {
    BatchDocumentInputConfig = {
      description = "Input configuration for BatchTranslateDocument request.",
      id = "BatchDocumentInputConfig",
      properties = {
        gcsSource = {
          ["$ref"] = "GcsSource",
          description = "Google Cloud Storage location for the source input. This can be a single file (for example, `gs://translation-test/input.docx`) or a wildcard (for example, `gs://translation-test/*`). File mime type is determined based on extension. Supported mime type includes: - `pdf`, application/pdf - `docx`, application/vnd.openxmlformats-officedocument.wordprocessingml.document - `pptx`, application/vnd.openxmlformats-officedocument.presentationml.presentation - `xlsx`, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet The max file size to support for `.docx`, `.pptx` and `.xlsx` is 100MB. The max file size to support for `.pdf` is 1GB and the max page limit is 1000 pages. The max file size to support for all input documents is 1GB.",
        },
      },
      type = "object",
    },
    BatchDocumentOutputConfig = {
      description = "Output configuration for BatchTranslateDocument request.",
      id = "BatchDocumentOutputConfig",
      properties = {
        gcsDestination = {
          ["$ref"] = "GcsDestination",
          description = "Google Cloud Storage destination for output content. For every single input document (for example, gs://a/b/c.[extension]), we generate at most 2 * n output files. (n is the # of target_language_codes in the BatchTranslateDocumentRequest). While the input documents are being processed, we write/update an index file `index.csv` under `gcs_destination.output_uri_prefix` (for example, gs://translation_output/index.csv) The index file is generated/updated as new files are being translated. The format is: input_document,target_language_code,translation_output,error_output, glossary_translation_output,glossary_error_output `input_document` is one file we matched using gcs_source.input_uri. `target_language_code` is provided in the request. `translation_output` contains the translations. (details provided below) `error_output` contains the error message during processing of the file. Both translations_file and errors_file could be empty strings if we have no content to output. `glossary_translation_output` and `glossary_error_output` are the translated output/error when we apply glossaries. They could also be empty if we have no content to output. Once a row is present in index.csv, the input/output matching never changes. Callers should also expect all the content in input_file are processed and ready to be consumed (that is, no partial output file is written). Since index.csv will be keeping updated during the process, please make sure there is no custom retention policy applied on the output bucket that may avoid file updating. (https://cloud.google.com/storage/docs/bucket-lock#retention-policy) The naming format of translation output files follows (for target language code [trg]): `translation_output`: gs://translation_output/a_b_c_[trg]_translation.[extension] `glossary_translation_output`: gs://translation_test/a_b_c_[trg]_glossary_translation.[extension] The output document will maintain the same file format as the input document. The naming format of error output files follows (for target language code [trg]): `error_output`: gs://translation_test/a_b_c_[trg]_errors.txt `glossary_error_output`: gs://translation_test/a_b_c_[trg]_glossary_translation.txt The error output is a txt file containing error details.",
        },
      },
      type = "object",
    },
    BatchTranslateDocumentRequest = {
      description = "The BatchTranslateDocument request.",
      id = "BatchTranslateDocumentRequest",
      properties = {
        customizedAttribution = {
          description = "Optional. This flag is to support user customized attribution. If not provided, the default is `Machine Translated by Google`. Customized attribution should follow rules in https://cloud.google.com/translate/attribution#attribution_and_logos",
          type = "string",
        },
        formatConversions = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional.",
          type = "object",
        },
        glossaries = {
          additionalProperties = {
            ["$ref"] = "TranslateTextGlossaryConfig",
          },
          description = "Optional. Glossaries to be applied. It's keyed by target language code.",
          type = "object",
        },
        inputConfigs = {
          description = "Required. Input configurations. The total number of files matched should be <= 100. The total content size to translate should be <= 100M Unicode codepoints. The files must use UTF-8 encoding.",
          items = {
            ["$ref"] = "BatchDocumentInputConfig",
          },
          type = "array",
        },
        models = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The models to use for translation. Map's key is target language code. Map's value is the model name. Value can be a built-in general model, or an AutoML Translation model. The value format depends on model type: - AutoML Translation models: `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}` - General (built-in) models: `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`, If the map is empty or a specific model is not requested for a language pair, then default google model (nmt) is used.",
          type = "object",
        },
        outputConfig = {
          ["$ref"] = "BatchDocumentOutputConfig",
          description = "Required. Output configuration. If 2 input configs match to the same file (that is, same input path), we don't generate output for duplicate inputs.",
        },
        sourceLanguageCode = {
          description = "Required. The BCP-47 language code of the input document if known, for example, \"en-US\" or \"sr-Latn\". Supported language codes are listed in [Language Support](https://cloud.google.com/translate/docs/languages).",
          type = "string",
        },
        targetLanguageCodes = {
          description = "Required. The BCP-47 language code to use for translation of the input document. Specify up to 10 language codes here.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchTranslateTextRequest = {
      description = "The batch translation request.",
      id = "BatchTranslateTextRequest",
      properties = {
        glossaries = {
          additionalProperties = {
            ["$ref"] = "TranslateTextGlossaryConfig",
          },
          description = "Optional. Glossaries to be applied for translation. It's keyed by target language code.",
          type = "object",
        },
        inputConfigs = {
          description = "Required. Input configurations. The total number of files matched should be <= 100. The total content size should be <= 100M Unicode codepoints. The files must use UTF-8 encoding.",
          items = {
            ["$ref"] = "InputConfig",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https://cloud.google.com/translate/docs/advanced/labels for more information.",
          type = "object",
        },
        models = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The models to use for translation. Map's key is target language code. Map's value is model name. Value can be a built-in general model, or an AutoML Translation model. The value format depends on model type: - AutoML Translation models: `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}` - General (built-in) models: `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`, If the map is empty or a specific model is not requested for a language pair, then default google model (nmt) is used.",
          type = "object",
        },
        outputConfig = {
          ["$ref"] = "OutputConfig",
          description = "Required. Output configuration. If 2 input configs match to the same file (that is, same input path), we don't generate output for duplicate inputs.",
        },
        sourceLanguageCode = {
          description = "Required. Source language code.",
          type = "string",
        },
        targetLanguageCodes = {
          description = "Required. Specify up to 10 language codes here.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    Dataset = {
      description = "A dataset that hosts the examples (sentence pairs) used for translation models.",
      id = "Dataset",
      properties = {
        createTime = {
          description = "Output only. Timestamp when this dataset was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.",
          type = "string",
        },
        exampleCount = {
          description = "Output only. The number of examples in the dataset.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        name = {
          description = "The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`",
          type = "string",
        },
        sourceLanguageCode = {
          description = "The BCP-47 language code of the source language.",
          type = "string",
        },
        targetLanguageCode = {
          description = "The BCP-47 language code of the target language.",
          type = "string",
        },
        testExampleCount = {
          description = "Output only. Number of test examples (sentence pairs).",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        trainExampleCount = {
          description = "Output only. Number of training examples (sentence pairs).",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        updateTime = {
          description = "Output only. Timestamp when this dataset was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        validateExampleCount = {
          description = "Output only. Number of validation examples (sentence pairs).",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    DatasetInputConfig = {
      description = "Input configuration for datasets.",
      id = "DatasetInputConfig",
      properties = {
        inputFiles = {
          description = "Files containing the sentence pairs to be imported to the dataset.",
          items = {
            ["$ref"] = "InputFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatasetOutputConfig = {
      description = "Output configuration for datasets.",
      id = "DatasetOutputConfig",
      properties = {
        gcsDestination = {
          ["$ref"] = "GcsOutputDestination",
          description = "Google Cloud Storage destination to write the output.",
        },
      },
      type = "object",
    },
    DetectLanguageRequest = {
      description = "The request message for language detection.",
      id = "DetectLanguageRequest",
      properties = {
        content = {
          description = "The content of the input stored as a string.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https://cloud.google.com/translate/docs/advanced/labels for more information.",
          type = "object",
        },
        mimeType = {
          description = "Optional. The format of the source text, for example, \"text/html\", \"text/plain\". If left blank, the MIME type defaults to \"text/html\".",
          type = "string",
        },
        model = {
          description = "Optional. The language detection model to be used. Format: `projects/{project-number-or-id}/locations/{location-id}/models/language-detection/{model-id}` Only one language detection model is currently supported: `projects/{project-number-or-id}/locations/{location-id}/models/language-detection/default`. If not specified, the default model is used.",
          type = "string",
        },
      },
      type = "object",
    },
    DetectLanguageResponse = {
      description = "The response message for language detection.",
      id = "DetectLanguageResponse",
      properties = {
        languages = {
          description = "The most probable language detected by the Translation API. For each request, the Translation API will always return only one result.",
          items = {
            ["$ref"] = "DetectedLanguage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DetectedLanguage = {
      description = "The response message for language detection.",
      id = "DetectedLanguage",
      properties = {
        confidence = {
          description = "The confidence of the detection result for this language.",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code of the source content in the request, detected automatically.",
          type = "string",
        },
      },
      type = "object",
    },
    DocumentInputConfig = {
      description = "A document translation request input config.",
      id = "DocumentInputConfig",
      properties = {
        content = {
          description = "Document's content represented as a stream of bytes.",
          format = "byte",
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GcsSource",
          description = "Google Cloud Storage location. This must be a single file. For example: gs://example_bucket/example_file.pdf",
        },
        mimeType = {
          description = "Specifies the input document's mime_type. If not specified it will be determined using the file extension for gcs_source provided files. For a file provided through bytes content the mime_type must be provided. Currently supported mime types are: - application/pdf - application/vnd.openxmlformats-officedocument.wordprocessingml.document - application/vnd.openxmlformats-officedocument.presentationml.presentation - application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
          type = "string",
        },
      },
      type = "object",
    },
    DocumentOutputConfig = {
      description = "A document translation request output config.",
      id = "DocumentOutputConfig",
      properties = {
        gcsDestination = {
          ["$ref"] = "GcsDestination",
          description = "Optional. Google Cloud Storage destination for the translation output, e.g., `gs://my_bucket/my_directory/`. The destination directory provided does not have to be empty, but the bucket must exist. If a file with the same name as the output file already exists in the destination an error will be returned. For a DocumentInputConfig.contents provided document, the output file will have the name \"output_[trg]_translations.[ext]\", where - [trg] corresponds to the translated file's language code, - [ext] corresponds to the translated file's extension according to its mime type. For a DocumentInputConfig.gcs_uri provided document, the output file will have a name according to its URI. For example: an input file with URI: \"gs://a/b/c.[extension]\" stored in a gcs_destination bucket with name \"my_bucket\" will have an output URI: \"gs://my_bucket/a_b_c_[trg]_translations.[ext]\", where - [trg] corresponds to the translated file's language code, - [ext] corresponds to the translated file's extension according to its mime type. If the document was directly provided through the request, then the output document will have the format: \"gs://my_bucket/translated_document_[trg]_translations.[ext], where - [trg] corresponds to the translated file's language code, - [ext] corresponds to the translated file's extension according to its mime type. If a glossary was provided, then the output URI for the glossary translation will be equal to the default output URI but have `glossary_translations` instead of `translations`. For the previous example, its glossary URI would be: \"gs://my_bucket/a_b_c_[trg]_glossary_translations.[ext]\". Thus the max number of output files will be 2 (Translated document, Glossary translated document). Callers should expect no partial outputs. If there is any error during document translation, no output will be stored in the Cloud Storage bucket.",
        },
        mimeType = {
          description = "Optional. Specifies the translated document's mime_type. If not specified, the translated file's mime type will be the same as the input file's mime type. Currently only support the output mime type to be the same as input mime type. - application/pdf - application/vnd.openxmlformats-officedocument.wordprocessingml.document - application/vnd.openxmlformats-officedocument.presentationml.presentation - application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
          type = "string",
        },
      },
      type = "object",
    },
    DocumentTranslation = {
      description = "A translated document message.",
      id = "DocumentTranslation",
      properties = {
        byteStreamOutputs = {
          description = "The array of translated documents. It is expected to be size 1 for now. We may produce multiple translated documents in the future for other type of file formats.",
          items = {
            format = "byte",
            type = "string",
          },
          type = "array",
        },
        detectedLanguageCode = {
          description = "The detected language for the input document. If the user did not provide the source language for the input document, this field will have the language code automatically detected. If the source language was passed, auto-detection of the language does not occur and this field is empty.",
          type = "string",
        },
        mimeType = {
          description = "The translated document's mime type.",
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
    Example = {
      description = "A sentence pair.",
      id = "Example",
      properties = {
        name = {
          description = "Output only. The resource name of the example, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}/examples/{example_id}'",
          readOnly = true,
          type = "string",
        },
        sourceText = {
          description = "Sentence in source language.",
          type = "string",
        },
        targetText = {
          description = "Sentence in target language.",
          type = "string",
        },
        usage = {
          description = "Output only. Usage of the sentence pair. Options are TRAIN|VALIDATION|TEST.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ExportDataRequest = {
      description = "Request message for ExportData.",
      id = "ExportDataRequest",
      properties = {
        outputConfig = {
          ["$ref"] = "DatasetOutputConfig",
          description = "Required. The config for the output content.",
        },
      },
      type = "object",
    },
    GcsDestination = {
      description = "The Google Cloud Storage location for the output content.",
      id = "GcsDestination",
      properties = {
        outputUriPrefix = {
          description = "Required. The bucket used in 'output_uri_prefix' must exist and there must be no files under 'output_uri_prefix'. 'output_uri_prefix' must end with \"/\" and start with \"gs://\". One 'output_uri_prefix' can only be used by one batch translation job at a time. Otherwise an INVALID_ARGUMENT (400) error is returned.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsInputSource = {
      description = "The Google Cloud Storage location for the input content.",
      id = "GcsInputSource",
      properties = {
        inputUri = {
          description = "Required. Source data URI. For example, `gs://my_bucket/my_object`.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsOutputDestination = {
      description = "The Google Cloud Storage location for the output content.",
      id = "GcsOutputDestination",
      properties = {
        outputUriPrefix = {
          description = "Required. Google Cloud Storage URI to output directory. For example, `gs://bucket/directory`. The requesting user must have write permission to the bucket. The directory will be created if it doesn't exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsSource = {
      description = "The Google Cloud Storage location for the input content.",
      id = "GcsSource",
      properties = {
        inputUri = {
          description = "Required. Source data URI. For example, `gs://my_bucket/my_object`.",
          type = "string",
        },
      },
      type = "object",
    },
    Glossary = {
      description = "Represents a glossary built from user-provided data.",
      id = "Glossary",
      properties = {
        displayName = {
          description = "Optional. The display name of the glossary.",
          type = "string",
        },
        endTime = {
          description = "Output only. When the glossary creation was finished.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        entryCount = {
          description = "Output only. The number of entries defined in the glossary.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        inputConfig = {
          ["$ref"] = "GlossaryInputConfig",
          description = "Required. Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.",
        },
        languageCodesSet = {
          ["$ref"] = "LanguageCodesSet",
          description = "Used with equivalent term set glossaries.",
        },
        languagePair = {
          ["$ref"] = "LanguageCodePair",
          description = "Used with unidirectional glossaries.",
        },
        name = {
          description = "Required. The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.",
          type = "string",
        },
        submitTime = {
          description = "Output only. When CreateGlossary was called.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GlossaryEntry = {
      description = "Represents a single entry in a glossary.",
      id = "GlossaryEntry",
      properties = {
        description = {
          description = "Describes the glossary entry.",
          type = "string",
        },
        name = {
          description = "Required. The resource name of the entry. Format: \"projects/*/locations/*/glossaries/*/glossaryEntries/*\"",
          type = "string",
        },
        termsPair = {
          ["$ref"] = "GlossaryTermsPair",
          description = "Used for an unidirectional glossary.",
        },
        termsSet = {
          ["$ref"] = "GlossaryTermsSet",
          description = "Used for an equivalent term sets glossary.",
        },
      },
      type = "object",
    },
    GlossaryInputConfig = {
      description = "Input configuration for glossaries.",
      id = "GlossaryInputConfig",
      properties = {
        gcsSource = {
          ["$ref"] = "GcsSource",
          description = "Required. Google Cloud Storage location of glossary data. File format is determined based on the filename extension. API returns [google.rpc.Code.INVALID_ARGUMENT] for unsupported URI-s and file formats. Wildcards are not allowed. This must be a single file in one of the following formats: For unidirectional glossaries: - TSV/CSV (`.tsv`/`.csv`): Two column file, tab- or comma-separated. The first column is source text. The second column is target text. No headers in this file. The first row contains data and not column names. - TMX (`.tmx`): TMX file with parallel data defining source/target term pairs. For equivalent term sets glossaries: - CSV (`.csv`): Multi-column CSV file defining equivalent glossary terms in multiple languages. See documentation for more information - [glossaries](https://cloud.google.com/translate/docs/advanced/glossary).",
        },
      },
      type = "object",
    },
    GlossaryTerm = {
      description = "Represents a single glossary term",
      id = "GlossaryTerm",
      properties = {
        languageCode = {
          description = "The language for this glossary term.",
          type = "string",
        },
        text = {
          description = "The text for the glossary term.",
          type = "string",
        },
      },
      type = "object",
    },
    GlossaryTermsPair = {
      description = "Represents a single entry for an unidirectional glossary.",
      id = "GlossaryTermsPair",
      properties = {
        sourceTerm = {
          ["$ref"] = "GlossaryTerm",
          description = "The source term is the term that will get match in the text,",
        },
        targetTerm = {
          ["$ref"] = "GlossaryTerm",
          description = "The term that will replace the match source term.",
        },
      },
      type = "object",
    },
    GlossaryTermsSet = {
      description = "Represents a single entry for an equivalent term set glossary. This is used for equivalent term sets where each term can be replaced by the other terms in the set.",
      id = "GlossaryTermsSet",
      properties = {
        terms = {
          description = "Each term in the set represents a term that can be replaced by the other terms.",
          items = {
            ["$ref"] = "GlossaryTerm",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ImportDataRequest = {
      description = "Request message for ImportData.",
      id = "ImportDataRequest",
      properties = {
        inputConfig = {
          ["$ref"] = "DatasetInputConfig",
          description = "Required. The config for the input content.",
        },
      },
      type = "object",
    },
    InputConfig = {
      description = "Input configuration for BatchTranslateText request.",
      id = "InputConfig",
      properties = {
        gcsSource = {
          ["$ref"] = "GcsSource",
          description = "Required. Google Cloud Storage location for the source input. This can be a single file (for example, `gs://translation-test/input.tsv`) or a wildcard (for example, `gs://translation-test/*`). If a file extension is `.tsv`, it can contain either one or two columns. The first column (optional) is the id of the text request. If the first column is missing, we use the row number (0-based) from the input file as the ID in the output file. The second column is the actual text to be translated. We recommend each row be <= 10K Unicode codepoints, otherwise an error might be returned. Note that the input tsv must be RFC 4180 compliant. You could use https://github.com/Clever/csvlint to check potential formatting errors in your tsv file. csvlint --delimiter='\\t' your_input_file.tsv The other supported file extensions are `.txt` or `.html`, which is treated as a single large chunk of text.",
        },
        mimeType = {
          description = "Optional. Can be \"text/plain\" or \"text/html\". For `.tsv`, \"text/html\" is used if mime_type is missing. For `.html`, this field must be \"text/html\" or empty. For `.txt`, this field must be \"text/plain\" or empty.",
          type = "string",
        },
      },
      type = "object",
    },
    InputFile = {
      description = "An input file.",
      id = "InputFile",
      properties = {
        gcsSource = {
          ["$ref"] = "GcsInputSource",
          description = "Google Cloud Storage file source.",
        },
        usage = {
          description = "Optional. Usage of the file contents. Options are TRAIN|VALIDATION|TEST, or UNASSIGNED (by default) for auto split.",
          type = "string",
        },
      },
      type = "object",
    },
    LanguageCodePair = {
      description = "Used with unidirectional glossaries.",
      id = "LanguageCodePair",
      properties = {
        sourceLanguageCode = {
          description = "Required. The BCP-47 language code of the input text, for example, \"en-US\". Expected to be an exact match for GlossaryTerm.language_code.",
          type = "string",
        },
        targetLanguageCode = {
          description = "Required. The BCP-47 language code for translation output, for example, \"zh-CN\". Expected to be an exact match for GlossaryTerm.language_code.",
          type = "string",
        },
      },
      type = "object",
    },
    LanguageCodesSet = {
      description = "Used with equivalent term set glossaries.",
      id = "LanguageCodesSet",
      properties = {
        languageCodes = {
          description = "The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDatasetsResponse = {
      description = "Response message for ListDatasets.",
      id = "ListDatasetsResponse",
      properties = {
        datasets = {
          description = "The datasets read.",
          items = {
            ["$ref"] = "Dataset",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this token to the page_token field in the ListDatasetsRequest to obtain the corresponding page.",
          type = "string",
        },
      },
      type = "object",
    },
    ListExamplesResponse = {
      description = "Response message for ListExamples.",
      id = "ListExamplesResponse",
      properties = {
        examples = {
          description = "The sentence pairs.",
          items = {
            ["$ref"] = "Example",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this token to the page_token field in the ListExamplesRequest to obtain the corresponding page.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGlossariesResponse = {
      description = "Response message for ListGlossaries.",
      id = "ListGlossariesResponse",
      properties = {
        glossaries = {
          description = "The list of glossaries for a project.",
          items = {
            ["$ref"] = "Glossary",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve a page of results. Pass this value in the [ListGlossariesRequest.page_token] field in the subsequent call to `ListGlossaries` method to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGlossaryEntriesResponse = {
      description = "Response message for ListGlossaryEntries",
      id = "ListGlossaryEntriesResponse",
      properties = {
        glossaryEntries = {
          description = "Optional. The Glossary Entries",
          items = {
            ["$ref"] = "GlossaryEntry",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Optional. A token to retrieve a page of results. Pass this value in the [ListGLossaryEntriesRequest.page_token] field in the subsequent calls.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Location",
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
    ListModelsResponse = {
      description = "Response message for ListModels.",
      id = "ListModelsResponse",
      properties = {
        models = {
          description = "The models read.",
          items = {
            ["$ref"] = "Model",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this token to the page_token field in the ListModelsRequest to obtain the corresponding page.",
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
    Location = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "Location",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: `\"us-east1\"`.",
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
          description = "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`",
          type = "string",
        },
      },
      type = "object",
    },
    Model = {
      description = "A trained translation model.",
      id = "Model",
      properties = {
        createTime = {
          description = "Output only. Timestamp when the model resource was created, which is also when the training started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        dataset = {
          description = "The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`",
          type = "string",
        },
        deployTime = {
          description = "Output only. Timestamp when the model training finished and ready to be used for translation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.",
          type = "string",
        },
        name = {
          description = "The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`",
          type = "string",
        },
        sourceLanguageCode = {
          description = "Output only. The BCP-47 language code of the source language.",
          readOnly = true,
          type = "string",
        },
        targetLanguageCode = {
          description = "Output only. The BCP-47 language code of the target language.",
          readOnly = true,
          type = "string",
        },
        testExampleCount = {
          description = "Output only. Number of examples (sentence pairs) used to test the model.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        trainExampleCount = {
          description = "Output only. Number of examples (sentence pairs) used to train the model.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        updateTime = {
          description = "Output only. Timestamp when this model was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        validateExampleCount = {
          description = "Output only. Number of examples (sentence pairs) used to validate the model.",
          format = "int32",
          readOnly = true,
          type = "integer",
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
    OutputConfig = {
      description = "Output configuration for BatchTranslateText request.",
      id = "OutputConfig",
      properties = {
        gcsDestination = {
          ["$ref"] = "GcsDestination",
          description = "Google Cloud Storage destination for output content. For every single input file (for example, gs://a/b/c.[extension]), we generate at most 2 * n output files. (n is the # of target_language_codes in the BatchTranslateTextRequest). Output files (tsv) generated are compliant with RFC 4180 except that record delimiters are '\\n' instead of '\\r\\n'. We don't provide any way to change record delimiters. While the input files are being processed, we write/update an index file 'index.csv' under 'output_uri_prefix' (for example, gs://translation-test/index.csv) The index file is generated/updated as new files are being translated. The format is: input_file,target_language_code,translations_file,errors_file, glossary_translations_file,glossary_errors_file input_file is one file we matched using gcs_source.input_uri. target_language_code is provided in the request. translations_file contains the translations. (details provided below) errors_file contains the errors during processing of the file. (details below). Both translations_file and errors_file could be empty strings if we have no content to output. glossary_translations_file and glossary_errors_file are always empty strings if the input_file is tsv. They could also be empty if we have no content to output. Once a row is present in index.csv, the input/output matching never changes. Callers should also expect all the content in input_file are processed and ready to be consumed (that is, no partial output file is written). Since index.csv will be keeping updated during the process, please make sure there is no custom retention policy applied on the output bucket that may avoid file updating. (https://cloud.google.com/storage/docs/bucket-lock#retention-policy) The format of translations_file (for target language code 'trg') is: `gs://translation_test/a_b_c_'trg'_translations.[extension]` If the input file extension is tsv, the output has the following columns: Column 1: ID of the request provided in the input, if it's not provided in the input, then the input row number is used (0-based). Column 2: source sentence. Column 3: translation without applying a glossary. Empty string if there is an error. Column 4 (only present if a glossary is provided in the request): translation after applying the glossary. Empty string if there is an error applying the glossary. Could be same string as column 3 if there is no glossary applied. If input file extension is a txt or html, the translation is directly written to the output file. If glossary is requested, a separate glossary_translations_file has format of gs://translation_test/a_b_c_'trg'_glossary_translations.[extension] The format of errors file (for target language code 'trg') is: gs://translation_test/a_b_c_'trg'_errors.[extension] If the input file extension is tsv, errors_file contains the following: Column 1: ID of the request provided in the input, if it's not provided in the input, then the input row number is used (0-based). Column 2: source sentence. Column 3: Error detail for the translation. Could be empty. Column 4 (only present if a glossary is provided in the request): Error when applying the glossary. If the input file extension is txt or html, glossary_error_file will be generated that contains error details. glossary_error_file has format of gs://translation_test/a_b_c_'trg'_glossary_errors.[extension]",
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
    SupportedLanguage = {
      description = "A single supported language response corresponds to information related to one supported language.",
      id = "SupportedLanguage",
      properties = {
        displayName = {
          description = "Human-readable name of the language localized in the display language specified in the request.",
          type = "string",
        },
        languageCode = {
          description = "Supported language code, generally consisting of its ISO 639-1 identifier, for example, 'en', 'ja'. In certain cases, BCP-47 codes including language and region identifiers are returned (for example, 'zh-TW' and 'zh-CN').",
          type = "string",
        },
        supportSource = {
          description = "Can be used as a source language.",
          type = "boolean",
        },
        supportTarget = {
          description = "Can be used as a target language.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SupportedLanguages = {
      description = "The response message for discovering supported languages.",
      id = "SupportedLanguages",
      properties = {
        languages = {
          description = "A list of supported language responses. This list contains an entry for each language the Translation API supports.",
          items = {
            ["$ref"] = "SupportedLanguage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TranslateDocumentRequest = {
      description = "A document translation request.",
      id = "TranslateDocumentRequest",
      properties = {
        customizedAttribution = {
          description = "Optional. This flag is to support user customized attribution. If not provided, the default is `Machine Translated by Google`. Customized attribution should follow rules in https://cloud.google.com/translate/attribution#attribution_and_logos",
          type = "string",
        },
        documentInputConfig = {
          ["$ref"] = "DocumentInputConfig",
          description = "Required. Input configurations.",
        },
        documentOutputConfig = {
          ["$ref"] = "DocumentOutputConfig",
          description = "Optional. Output configurations. Defines if the output file should be stored within Cloud Storage as well as the desired output format. If not provided the translated file will only be returned through a byte-stream and its output mime type will be the same as the input file's mime type.",
        },
        enableShadowRemovalNativePdf = {
          description = "Optional. If true, use the text removal server to remove the shadow text on background image for native pdf translation.",
          type = "boolean",
        },
        glossaryConfig = {
          ["$ref"] = "TranslateTextGlossaryConfig",
          description = "Optional. Glossary to be applied. The glossary must be within the same region (have the same location-id) as the model, otherwise an INVALID_ARGUMENT (400) error is returned.",
        },
        isTranslateNativePdfOnly = {
          description = "Optional. is_translate_native_pdf_only field for external customers. If true, the page limit of online native pdf translation is 300 and only native pdf pages will be translated.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https://cloud.google.com/translate/docs/advanced/labels for more information.",
          type = "object",
        },
        model = {
          description = "Optional. The `model` type requested for this translation. The format depends on model type: - AutoML Translation models: `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}` - General (built-in) models: `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`, If not provided, the default Google model (NMT) will be used for translation.",
          type = "string",
        },
        sourceLanguageCode = {
          description = "Optional. The BCP-47 language code of the input document if known, for example, \"en-US\" or \"sr-Latn\". Supported language codes are listed in Language Support. If the source language isn't specified, the API attempts to identify the source language automatically and returns the source language within the response. Source language must be specified if the request contains a glossary or a custom model.",
          type = "string",
        },
        targetLanguageCode = {
          description = "Required. The BCP-47 language code to use for translation of the input document, set to one of the language codes listed in Language Support.",
          type = "string",
        },
      },
      type = "object",
    },
    TranslateDocumentResponse = {
      description = "A translated document response message.",
      id = "TranslateDocumentResponse",
      properties = {
        documentTranslation = {
          ["$ref"] = "DocumentTranslation",
          description = "Translated document.",
        },
        glossaryConfig = {
          ["$ref"] = "TranslateTextGlossaryConfig",
          description = "The `glossary_config` used for this translation.",
        },
        glossaryDocumentTranslation = {
          ["$ref"] = "DocumentTranslation",
          description = "The document's translation output if a glossary is provided in the request. This can be the same as [TranslateDocumentResponse.document_translation] if no glossary terms apply.",
        },
        model = {
          description = "Only present when 'model' is present in the request. 'model' is normalized to have a project number. For example: If the 'model' field in TranslateDocumentRequest is: `projects/{project-id}/locations/{location-id}/models/general/nmt` then `model` here would be normalized to `projects/{project-number}/locations/{location-id}/models/general/nmt`.",
          type = "string",
        },
      },
      type = "object",
    },
    TranslateTextGlossaryConfig = {
      description = "Configures which glossary is used for a specific target language and defines options for applying that glossary.",
      id = "TranslateTextGlossaryConfig",
      properties = {
        glossary = {
          description = "Required. The `glossary` to be applied for this translation. The format depends on the glossary: - User-provided custom glossary: `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`",
          type = "string",
        },
        ignoreCase = {
          description = "Optional. Indicates match is case insensitive. The default value is `false` if missing.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TranslateTextRequest = {
      description = "The request message for synchronous translation.",
      id = "TranslateTextRequest",
      properties = {
        contents = {
          description = "Required. The content of the input in string format. We recommend the total content be less than 30,000 codepoints. The max length of this field is 1024. Use BatchTranslateText for larger text.",
          items = {
            type = "string",
          },
          type = "array",
        },
        glossaryConfig = {
          ["$ref"] = "TranslateTextGlossaryConfig",
          description = "Optional. Glossary to be applied. The glossary must be within the same region (have the same location-id) as the model, otherwise an INVALID_ARGUMENT (400) error is returned.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https://cloud.google.com/translate/docs/advanced/labels for more information.",
          type = "object",
        },
        mimeType = {
          description = "Optional. The format of the source text, for example, \"text/html\", \"text/plain\". If left blank, the MIME type defaults to \"text/html\".",
          type = "string",
        },
        model = {
          description = "Optional. The `model` type requested for this translation. The format depends on model type: - AutoML Translation models: `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}` - General (built-in) models: `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`, For global (non-regionalized) requests, use `location-id` `global`. For example, `projects/{project-number-or-id}/locations/global/models/general/nmt`. If not provided, the default Google model (NMT) will be used",
          type = "string",
        },
        sourceLanguageCode = {
          description = "Optional. The BCP-47 language code of the input text if known, for example, \"en-US\" or \"sr-Latn\". Supported language codes are listed in Language Support. If the source language isn't specified, the API attempts to identify the source language automatically and returns the source language within the response.",
          type = "string",
        },
        targetLanguageCode = {
          description = "Required. The BCP-47 language code to use for translation of the input text, set to one of the language codes listed in Language Support.",
          type = "string",
        },
      },
      type = "object",
    },
    TranslateTextResponse = {
      id = "TranslateTextResponse",
      properties = {
        glossaryTranslations = {
          description = "Text translation responses if a glossary is provided in the request. This can be the same as `translations` if no terms apply. This field has the same length as `contents`.",
          items = {
            ["$ref"] = "Translation",
          },
          type = "array",
        },
        translations = {
          description = "Text translation responses with no glossary applied. This field has the same length as `contents`.",
          items = {
            ["$ref"] = "Translation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Translation = {
      description = "A single translation response.",
      id = "Translation",
      properties = {
        detectedLanguageCode = {
          description = "The BCP-47 language code of source text in the initial request, detected automatically, if no source language was passed within the initial request. If the source language was passed, auto-detection of the language does not occur and this field is empty.",
          type = "string",
        },
        glossaryConfig = {
          ["$ref"] = "TranslateTextGlossaryConfig",
          description = "The `glossary_config` used for this translation.",
        },
        model = {
          description = "Only present when `model` is present in the request. `model` here is normalized to have project number. For example: If the `model` requested in TranslationTextRequest is `projects/{project-id}/locations/{location-id}/models/general/nmt` then `model` here would be normalized to `projects/{project-number}/locations/{location-id}/models/general/nmt`.",
          type = "string",
        },
        translatedText = {
          description = "Text translated into the target language. If an error occurs during translation, this field might be excluded from the response.",
          type = "string",
        },
      },
      type = "object",
    },
    WaitOperationRequest = {
      description = "The request message for Operations.WaitOperation.",
      id = "WaitOperationRequest",
      properties = {
        timeout = {
          description = "The maximum duration to wait before timing out. If left blank, the wait will be at most the time permitted by the underlying HTTP/RPC protocol. If RPC context deadline is also specified, the shorter one will be used.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Translation API",
  version = "v3",
  version_module = true,
}
