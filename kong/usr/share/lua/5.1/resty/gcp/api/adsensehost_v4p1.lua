return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/adsensehost"] = {
          description = "View and manage your AdSense host data and associated accounts",
        },
      },
    },
  },
  basePath = "/adsensehost/v4.1/",
  baseUrl = "https://www.googleapis.com/adsensehost/v4.1/",
  batchPath = "batch/adsensehost/v4.1",
  canonicalName = "AdSense Host",
  description = "Generates performance reports, generates ad codes, and provides publisher management capabilities for AdSense Hosts.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/adsense/host/",
  icons = {
    x16 = "https://www.google.com/images/icons/product/adsense-16.png",
    x32 = "https://www.google.com/images/icons/product/adsense-32.png",
  },
  id = "adsensehost:v4.1",
  kind = "discovery#restDescription",
  labels = {
    "limited_availability",
  },
  name = "adsensehost",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "csv",
        "json",
      },
      enumDescriptions = {
        "Responses with Content-Type of text/csv",
        "Responses with Content-Type of application/json",
      },
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
      description = "An opaque string that represents a user for quota purposes. Must not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    userIp = {
      description = "Deprecated. Please use quotaUser instead.",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    accounts = {
      methods = {
        get = {
          description = "Get information about the selected associated AdSense account.",
          httpMethod = "GET",
          id = "adsensehost.accounts.get",
          parameterOrder = {
            "accountId",
          },
          parameters = {
            accountId = {
              description = "Account to get information about.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "accounts/{accountId}",
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        list = {
          description = "List hosted accounts associated with this AdSense account by ad client id.",
          httpMethod = "GET",
          id = "adsensehost.accounts.list",
          parameterOrder = {
            "filterAdClientId",
          },
          parameters = {
            filterAdClientId = {
              description = "Ad clients to list accounts for.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "accounts",
          response = {
            ["$ref"] = "Accounts",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
      },
      resources = {
        adclients = {
          methods = {
            get = {
              description = "Get information about one of the ad clients in the specified publisher's AdSense account.",
              httpMethod = "GET",
              id = "adsensehost.accounts.adclients.get",
              parameterOrder = {
                "accountId",
                "adClientId",
              },
              parameters = {
                accountId = {
                  description = "Account which contains the ad client.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client to get.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}",
              response = {
                ["$ref"] = "AdClient",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
            list = {
              description = "List all hosted ad clients in the specified hosted account.",
              httpMethod = "GET",
              id = "adsensehost.accounts.adclients.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Account for which to list ad clients.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                maxResults = {
                  description = "The maximum number of ad clients to include in the response, used for paging.",
                  format = "uint32",
                  location = "query",
                  maximum = "10000",
                  minimum = "0",
                  type = "integer",
                },
                pageToken = {
                  description = "A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.",
                  location = "query",
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients",
              response = {
                ["$ref"] = "AdClients",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
          },
        },
        adunits = {
          methods = {
            delete = {
              description = "Delete the specified ad unit from the specified publisher AdSense account.",
              httpMethod = "DELETE",
              id = "adsensehost.accounts.adunits.delete",
              parameterOrder = {
                "accountId",
                "adClientId",
                "adUnitId",
              },
              parameters = {
                accountId = {
                  description = "Account which contains the ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client for which to get ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adUnitId = {
                  description = "Ad unit to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}",
              response = {
                ["$ref"] = "AdUnit",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
            get = {
              description = "Get the specified host ad unit in this AdSense account.",
              httpMethod = "GET",
              id = "adsensehost.accounts.adunits.get",
              parameterOrder = {
                "accountId",
                "adClientId",
                "adUnitId",
              },
              parameters = {
                accountId = {
                  description = "Account which contains the ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client for which to get ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adUnitId = {
                  description = "Ad unit to get.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}",
              response = {
                ["$ref"] = "AdUnit",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
            getAdCode = {
              description = "Get ad code for the specified ad unit, attaching the specified host custom channels.",
              httpMethod = "GET",
              id = "adsensehost.accounts.adunits.getAdCode",
              parameterOrder = {
                "accountId",
                "adClientId",
                "adUnitId",
              },
              parameters = {
                accountId = {
                  description = "Account which contains the ad client.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client with contains the ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adUnitId = {
                  description = "Ad unit to get the code for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                hostCustomChannelId = {
                  description = "Host custom channel to attach to the ad code.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/adcode",
              response = {
                ["$ref"] = "AdCode",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
            insert = {
              description = "Insert the supplied ad unit into the specified publisher AdSense account.",
              httpMethod = "POST",
              id = "adsensehost.accounts.adunits.insert",
              parameterOrder = {
                "accountId",
                "adClientId",
              },
              parameters = {
                accountId = {
                  description = "Account which will contain the ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client into which to insert the ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}/adunits",
              request = {
                ["$ref"] = "AdUnit",
              },
              response = {
                ["$ref"] = "AdUnit",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
            list = {
              description = "List all ad units in the specified publisher's AdSense account.",
              httpMethod = "GET",
              id = "adsensehost.accounts.adunits.list",
              parameterOrder = {
                "accountId",
                "adClientId",
              },
              parameters = {
                accountId = {
                  description = "Account which contains the ad client.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client for which to list ad units.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                includeInactive = {
                  description = "Whether to include inactive ad units. Default: true.",
                  location = "query",
                  type = "boolean",
                },
                maxResults = {
                  description = "The maximum number of ad units to include in the response, used for paging.",
                  format = "uint32",
                  location = "query",
                  maximum = "10000",
                  minimum = "0",
                  type = "integer",
                },
                pageToken = {
                  description = "A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.",
                  location = "query",
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}/adunits",
              response = {
                ["$ref"] = "AdUnits",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
            patch = {
              description = "Update the supplied ad unit in the specified publisher AdSense account. This method supports patch semantics.",
              httpMethod = "PATCH",
              id = "adsensehost.accounts.adunits.patch",
              parameterOrder = {
                "accountId",
                "adClientId",
                "adUnitId",
              },
              parameters = {
                accountId = {
                  description = "Account which contains the ad client.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client which contains the ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adUnitId = {
                  description = "Ad unit to get.",
                  location = "query",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}/adunits",
              request = {
                ["$ref"] = "AdUnit",
              },
              response = {
                ["$ref"] = "AdUnit",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
            update = {
              description = "Update the supplied ad unit in the specified publisher AdSense account.",
              httpMethod = "PUT",
              id = "adsensehost.accounts.adunits.update",
              parameterOrder = {
                "accountId",
                "adClientId",
              },
              parameters = {
                accountId = {
                  description = "Account which contains the ad client.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                adClientId = {
                  description = "Ad client which contains the ad unit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/adclients/{adClientId}/adunits",
              request = {
                ["$ref"] = "AdUnit",
              },
              response = {
                ["$ref"] = "AdUnit",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
          },
        },
        reports = {
          methods = {
            generate = {
              description = "Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify \"alt=csv\" as a query parameter.",
              httpMethod = "GET",
              id = "adsensehost.accounts.reports.generate",
              parameterOrder = {
                "accountId",
                "startDate",
                "endDate",
              },
              parameters = {
                accountId = {
                  description = "Hosted account upon which to report.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                dimension = {
                  description = "Dimensions to base the report on.",
                  location = "query",
                  pattern = "[a-zA-Z_]+",
                  repeated = true,
                  type = "string",
                },
                endDate = {
                  description = "End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.",
                  location = "query",
                  pattern = "\\d{4}-\\d{2}-\\d{2}|(today|startOfMonth|startOfYear)(([\\-\\+]\\d+[dwmy]){0,3}?)",
                  required = true,
                  type = "string",
                },
                filter = {
                  description = "Filters to be run on the report.",
                  location = "query",
                  pattern = "[a-zA-Z_]+(==|=@).+",
                  repeated = true,
                  type = "string",
                },
                locale = {
                  description = "Optional locale to use for translating report output to a local language. Defaults to \"en_US\" if not specified.",
                  location = "query",
                  pattern = "[a-zA-Z_]+",
                  type = "string",
                },
                maxResults = {
                  description = "The maximum number of rows of report data to return.",
                  format = "uint32",
                  location = "query",
                  maximum = "50000",
                  minimum = "0",
                  type = "integer",
                },
                metric = {
                  description = "Numeric columns to include in the report.",
                  location = "query",
                  pattern = "[a-zA-Z_]+",
                  repeated = true,
                  type = "string",
                },
                sort = {
                  description = "The name of a dimension or metric to sort the resulting report on, optionally prefixed with \"+\" to sort ascending or \"-\" to sort descending. If no prefix is specified, the column is sorted ascending.",
                  location = "query",
                  pattern = "(\\+|-)?[a-zA-Z_]+",
                  repeated = true,
                  type = "string",
                },
                startDate = {
                  description = "Start of the date range to report on in \"YYYY-MM-DD\" format, inclusive.",
                  location = "query",
                  pattern = "\\d{4}-\\d{2}-\\d{2}|(today|startOfMonth|startOfYear)(([\\-\\+]\\d+[dwmy]){0,3}?)",
                  required = true,
                  type = "string",
                },
                startIndex = {
                  description = "Index of the first row of report data to return.",
                  format = "uint32",
                  location = "query",
                  maximum = "5000",
                  minimum = "0",
                  type = "integer",
                },
              },
              path = "accounts/{accountId}/reports",
              response = {
                ["$ref"] = "Report",
              },
              scopes = {
                "https://www.googleapis.com/auth/adsensehost",
              },
            },
          },
        },
      },
    },
    adclients = {
      methods = {
        get = {
          description = "Get information about one of the ad clients in the Host AdSense account.",
          httpMethod = "GET",
          id = "adsensehost.adclients.get",
          parameterOrder = {
            "adClientId",
          },
          parameters = {
            adClientId = {
              description = "Ad client to get.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}",
          response = {
            ["$ref"] = "AdClient",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        list = {
          description = "List all host ad clients in this AdSense account.",
          httpMethod = "GET",
          id = "adsensehost.adclients.list",
          parameters = {
            maxResults = {
              description = "The maximum number of ad clients to include in the response, used for paging.",
              format = "uint32",
              location = "query",
              maximum = "10000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "adclients",
          response = {
            ["$ref"] = "AdClients",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
      },
    },
    associationsessions = {
      methods = {
        start = {
          description = "Create an association session for initiating an association with an AdSense user.",
          httpMethod = "GET",
          id = "adsensehost.associationsessions.start",
          parameterOrder = {
            "productCode",
            "websiteUrl",
          },
          parameters = {
            callbackUrl = {
              description = "The URL to redirect the user to once association is completed. It receives a token parameter that can then be used to retrieve the associated account.",
              location = "query",
              type = "string",
            },
            productCode = {
              description = "Products to associate with the user.",
              enum = {
                "AFC",
                "AFG",
                "AFMC",
                "AFS",
                "AFV",
              },
              enumDescriptions = {
                "AdSense For Content",
                "AdSense For Games",
                "AdSense For Mobile Content - deprecated",
                "AdSense For Search - deprecated",
                "AdSense For Video",
              },
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            userLocale = {
              description = "The preferred locale of the user.",
              location = "query",
              type = "string",
            },
            websiteLocale = {
              description = "The locale of the user's hosted website.",
              location = "query",
              type = "string",
            },
            websiteUrl = {
              description = "The URL of the user's hosted website.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "associationsessions/start",
          response = {
            ["$ref"] = "AssociationSession",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        verify = {
          description = "Verify an association session after the association callback returns from AdSense signup.",
          httpMethod = "GET",
          id = "adsensehost.associationsessions.verify",
          parameterOrder = {
            "token",
          },
          parameters = {
            token = {
              description = "The token returned to the association callback URL.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "associationsessions/verify",
          response = {
            ["$ref"] = "AssociationSession",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
      },
    },
    customchannels = {
      methods = {
        delete = {
          description = "Delete a specific custom channel from the host AdSense account.",
          httpMethod = "DELETE",
          id = "adsensehost.customchannels.delete",
          parameterOrder = {
            "adClientId",
            "customChannelId",
          },
          parameters = {
            adClientId = {
              description = "Ad client from which to delete the custom channel.",
              location = "path",
              required = true,
              type = "string",
            },
            customChannelId = {
              description = "Custom channel to delete.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}/customchannels/{customChannelId}",
          response = {
            ["$ref"] = "CustomChannel",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        get = {
          description = "Get a specific custom channel from the host AdSense account.",
          httpMethod = "GET",
          id = "adsensehost.customchannels.get",
          parameterOrder = {
            "adClientId",
            "customChannelId",
          },
          parameters = {
            adClientId = {
              description = "Ad client from which to get the custom channel.",
              location = "path",
              required = true,
              type = "string",
            },
            customChannelId = {
              description = "Custom channel to get.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}/customchannels/{customChannelId}",
          response = {
            ["$ref"] = "CustomChannel",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        insert = {
          description = "Add a new custom channel to the host AdSense account.",
          httpMethod = "POST",
          id = "adsensehost.customchannels.insert",
          parameterOrder = {
            "adClientId",
          },
          parameters = {
            adClientId = {
              description = "Ad client to which the new custom channel will be added.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}/customchannels",
          request = {
            ["$ref"] = "CustomChannel",
          },
          response = {
            ["$ref"] = "CustomChannel",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        list = {
          description = "List all host custom channels in this AdSense account.",
          httpMethod = "GET",
          id = "adsensehost.customchannels.list",
          parameterOrder = {
            "adClientId",
          },
          parameters = {
            adClientId = {
              description = "Ad client for which to list custom channels.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of custom channels to include in the response, used for paging.",
              format = "uint32",
              location = "query",
              maximum = "10000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "adclients/{adClientId}/customchannels",
          response = {
            ["$ref"] = "CustomChannels",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        patch = {
          description = "Update a custom channel in the host AdSense account. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "adsensehost.customchannels.patch",
          parameterOrder = {
            "adClientId",
            "customChannelId",
          },
          parameters = {
            adClientId = {
              description = "Ad client in which the custom channel will be updated.",
              location = "path",
              required = true,
              type = "string",
            },
            customChannelId = {
              description = "Custom channel to get.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}/customchannels",
          request = {
            ["$ref"] = "CustomChannel",
          },
          response = {
            ["$ref"] = "CustomChannel",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        update = {
          description = "Update a custom channel in the host AdSense account.",
          httpMethod = "PUT",
          id = "adsensehost.customchannels.update",
          parameterOrder = {
            "adClientId",
          },
          parameters = {
            adClientId = {
              description = "Ad client in which the custom channel will be updated.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}/customchannels",
          request = {
            ["$ref"] = "CustomChannel",
          },
          response = {
            ["$ref"] = "CustomChannel",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
      },
    },
    reports = {
      methods = {
        generate = {
          description = "Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify \"alt=csv\" as a query parameter.",
          httpMethod = "GET",
          id = "adsensehost.reports.generate",
          parameterOrder = {
            "startDate",
            "endDate",
          },
          parameters = {
            dimension = {
              description = "Dimensions to base the report on.",
              location = "query",
              pattern = "[a-zA-Z_]+",
              repeated = true,
              type = "string",
            },
            endDate = {
              description = "End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.",
              location = "query",
              pattern = "\\d{4}-\\d{2}-\\d{2}|(today|startOfMonth|startOfYear)(([\\-\\+]\\d+[dwmy]){0,3}?)",
              required = true,
              type = "string",
            },
            filter = {
              description = "Filters to be run on the report.",
              location = "query",
              pattern = "[a-zA-Z_]+(==|=@).+",
              repeated = true,
              type = "string",
            },
            locale = {
              description = "Optional locale to use for translating report output to a local language. Defaults to \"en_US\" if not specified.",
              location = "query",
              pattern = "[a-zA-Z_]+",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of rows of report data to return.",
              format = "uint32",
              location = "query",
              maximum = "50000",
              minimum = "0",
              type = "integer",
            },
            metric = {
              description = "Numeric columns to include in the report.",
              location = "query",
              pattern = "[a-zA-Z_]+",
              repeated = true,
              type = "string",
            },
            sort = {
              description = "The name of a dimension or metric to sort the resulting report on, optionally prefixed with \"+\" to sort ascending or \"-\" to sort descending. If no prefix is specified, the column is sorted ascending.",
              location = "query",
              pattern = "(\\+|-)?[a-zA-Z_]+",
              repeated = true,
              type = "string",
            },
            startDate = {
              description = "Start of the date range to report on in \"YYYY-MM-DD\" format, inclusive.",
              location = "query",
              pattern = "\\d{4}-\\d{2}-\\d{2}|(today|startOfMonth|startOfYear)(([\\-\\+]\\d+[dwmy]){0,3}?)",
              required = true,
              type = "string",
            },
            startIndex = {
              description = "Index of the first row of report data to return.",
              format = "uint32",
              location = "query",
              maximum = "5000",
              minimum = "0",
              type = "integer",
            },
          },
          path = "reports",
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
      },
    },
    urlchannels = {
      methods = {
        delete = {
          description = "Delete a URL channel from the host AdSense account.",
          httpMethod = "DELETE",
          id = "adsensehost.urlchannels.delete",
          parameterOrder = {
            "adClientId",
            "urlChannelId",
          },
          parameters = {
            adClientId = {
              description = "Ad client from which to delete the URL channel.",
              location = "path",
              required = true,
              type = "string",
            },
            urlChannelId = {
              description = "URL channel to delete.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}/urlchannels/{urlChannelId}",
          response = {
            ["$ref"] = "UrlChannel",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        insert = {
          description = "Add a new URL channel to the host AdSense account.",
          httpMethod = "POST",
          id = "adsensehost.urlchannels.insert",
          parameterOrder = {
            "adClientId",
          },
          parameters = {
            adClientId = {
              description = "Ad client to which the new URL channel will be added.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "adclients/{adClientId}/urlchannels",
          request = {
            ["$ref"] = "UrlChannel",
          },
          response = {
            ["$ref"] = "UrlChannel",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
        list = {
          description = "List all host URL channels in the host AdSense account.",
          httpMethod = "GET",
          id = "adsensehost.urlchannels.list",
          parameterOrder = {
            "adClientId",
          },
          parameters = {
            adClientId = {
              description = "Ad client for which to list URL channels.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of URL channels to include in the response, used for paging.",
              format = "uint32",
              location = "query",
              maximum = "10000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "adclients/{adClientId}/urlchannels",
          response = {
            ["$ref"] = "UrlChannels",
          },
          scopes = {
            "https://www.googleapis.com/auth/adsensehost",
          },
        },
      },
    },
  },
  revision = "20200930",
  rootUrl = "https://www.googleapis.com/",
  schemas = {
    Account = {
      id = "Account",
      properties = {
        id = {
          description = "Unique identifier of this account.",
          type = "string",
        },
        kind = {
          default = "adsensehost#account",
          description = "Kind of resource this is, in this case adsensehost#account.",
          type = "string",
        },
        name = {
          description = "Name of this account.",
          type = "string",
        },
        status = {
          description = "Approval status of this account. One of: PENDING, APPROVED, DISABLED.",
          type = "string",
        },
      },
      type = "object",
    },
    Accounts = {
      id = "Accounts",
      properties = {
        etag = {
          description = "ETag of this response for caching purposes.",
          type = "string",
        },
        items = {
          description = "The accounts returned in this list response.",
          items = {
            ["$ref"] = "Account",
          },
          type = "array",
        },
        kind = {
          default = "adsensehost#accounts",
          description = "Kind of list this is, in this case adsensehost#accounts.",
          type = "string",
        },
      },
      type = "object",
    },
    AdClient = {
      id = "AdClient",
      properties = {
        arcOptIn = {
          description = "Whether this ad client is opted in to ARC.",
          type = "boolean",
        },
        id = {
          description = "Unique identifier of this ad client.",
          type = "string",
        },
        kind = {
          default = "adsensehost#adClient",
          description = "Kind of resource this is, in this case adsensehost#adClient.",
          type = "string",
        },
        productCode = {
          description = "This ad client's product code, which corresponds to the PRODUCT_CODE report dimension.",
          type = "string",
        },
        supportsReporting = {
          description = "Whether this ad client supports being reported on.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdClients = {
      id = "AdClients",
      properties = {
        etag = {
          description = "ETag of this response for caching purposes.",
          type = "string",
        },
        items = {
          description = "The ad clients returned in this list response.",
          items = {
            ["$ref"] = "AdClient",
          },
          type = "array",
        },
        kind = {
          default = "adsensehost#adClients",
          description = "Kind of list this is, in this case adsensehost#adClients.",
          type = "string",
        },
        nextPageToken = {
          description = "Continuation token used to page through ad clients. To retrieve the next page of results, set the next request's \"pageToken\" value to this.",
          type = "string",
        },
      },
      type = "object",
    },
    AdCode = {
      id = "AdCode",
      properties = {
        adCode = {
          description = "The ad code snippet.",
          type = "string",
        },
        kind = {
          default = "adsensehost#adCode",
          description = "Kind this is, in this case adsensehost#adCode.",
          type = "string",
        },
      },
      type = "object",
    },
    AdStyle = {
      id = "AdStyle",
      properties = {
        colors = {
          description = "The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash.",
          properties = {
            background = {
              description = "The color of the ad background.",
              type = "string",
            },
            border = {
              description = "The color of the ad border.",
              type = "string",
            },
            text = {
              description = "The color of the ad text.",
              type = "string",
            },
            title = {
              description = "The color of the ad title.",
              type = "string",
            },
            url = {
              description = "The color of the ad url.",
              type = "string",
            },
          },
          type = "object",
        },
        corners = {
          description = "The style of the corners in the ad (deprecated: never populated, ignored).",
          type = "string",
        },
        font = {
          description = "The font which is included in the style.",
          properties = {
            family = {
              description = "The family of the font. Possible values are: ACCOUNT_DEFAULT_FAMILY, ADSENSE_DEFAULT_FAMILY, ARIAL, TIMES and VERDANA.",
              type = "string",
            },
            size = {
              description = "The size of the font. Possible values are: ACCOUNT_DEFAULT_SIZE, ADSENSE_DEFAULT_SIZE, SMALL, MEDIUM and LARGE.",
              type = "string",
            },
          },
          type = "object",
        },
        kind = {
          default = "adsensehost#adStyle",
          description = "Kind this is, in this case adsensehost#adStyle.",
          type = "string",
        },
      },
      type = "object",
    },
    AdUnit = {
      id = "AdUnit",
      properties = {
        code = {
          description = "Identity code of this ad unit, not necessarily unique across ad clients.",
          type = "string",
        },
        contentAdsSettings = {
          description = "Settings specific to content ads (AFC) and highend mobile content ads (AFMC - deprecated).",
          properties = {
            backupOption = {
              description = "The backup option to be used in instances where no ad is available.",
              properties = {
                color = {
                  description = "Color to use when type is set to COLOR. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash.",
                  type = "string",
                },
                type = {
                  description = "Type of the backup option. Possible values are BLANK, COLOR and URL.",
                  type = "string",
                },
                url = {
                  description = "URL to use when type is set to URL.",
                  type = "string",
                },
              },
              type = "object",
            },
            size = {
              description = "Size of this ad unit. Size values are in the form SIZE_{width}_{height}.",
              type = "string",
            },
            type = {
              description = "Type of this ad unit. Possible values are TEXT, TEXT_IMAGE, IMAGE and LINK.",
              type = "string",
            },
          },
          type = "object",
        },
        customStyle = {
          ["$ref"] = "AdStyle",
          description = "Custom style information specific to this ad unit.",
        },
        id = {
          description = "Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.",
          type = "string",
        },
        kind = {
          default = "adsensehost#adUnit",
          description = "Kind of resource this is, in this case adsensehost#adUnit.",
          type = "string",
        },
        mobileContentAdsSettings = {
          description = "Settings specific to WAP mobile content ads (AFMC - deprecated).",
          properties = {
            markupLanguage = {
              description = "The markup language to use for this ad unit.",
              type = "string",
            },
            scriptingLanguage = {
              description = "The scripting language to use for this ad unit.",
              type = "string",
            },
            size = {
              description = "Size of this ad unit.",
              type = "string",
            },
            type = {
              description = "Type of this ad unit.",
              type = "string",
            },
          },
          type = "object",
        },
        name = {
          description = "Name of this ad unit.",
          type = "string",
        },
        status = {
          description = "Status of this ad unit. Possible values are:\
NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.\
\
ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.\
\
INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days.",
          type = "string",
        },
      },
      type = "object",
    },
    AdUnits = {
      id = "AdUnits",
      properties = {
        etag = {
          description = "ETag of this response for caching purposes.",
          type = "string",
        },
        items = {
          description = "The ad units returned in this list response.",
          items = {
            ["$ref"] = "AdUnit",
          },
          type = "array",
        },
        kind = {
          default = "adsensehost#adUnits",
          description = "Kind of list this is, in this case adsensehost#adUnits.",
          type = "string",
        },
        nextPageToken = {
          description = "Continuation token used to page through ad units. To retrieve the next page of results, set the next request's \"pageToken\" value to this.",
          type = "string",
        },
      },
      type = "object",
    },
    AssociationSession = {
      id = "AssociationSession",
      properties = {
        accountId = {
          description = "Hosted account id of the associated publisher after association. Present if status is ACCEPTED.",
          type = "string",
        },
        id = {
          description = "Unique identifier of this association session.",
          type = "string",
        },
        kind = {
          default = "adsensehost#associationSession",
          description = "Kind of resource this is, in this case adsensehost#associationSession.",
          type = "string",
        },
        productCodes = {
          description = "The products to associate with the user. Options: AFC, AFG, AFV, AFS (deprecated), AFMC (deprecated)",
          items = {
            type = "string",
          },
          type = "array",
        },
        redirectUrl = {
          description = "Redirect URL of this association session. Used to redirect users into the AdSense association flow.",
          type = "string",
        },
        status = {
          description = "Status of the completed association, available once the association callback token has been verified. One of ACCEPTED, REJECTED, or ERROR.",
          type = "string",
        },
        userLocale = {
          description = "The preferred locale of the user themselves when going through the AdSense association flow.",
          type = "string",
        },
        websiteLocale = {
          description = "The locale of the user's hosted website.",
          type = "string",
        },
        websiteUrl = {
          description = "The URL of the user's hosted website.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomChannel = {
      id = "CustomChannel",
      properties = {
        code = {
          description = "Code of this custom channel, not necessarily unique across ad clients.",
          type = "string",
        },
        id = {
          description = "Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.",
          type = "string",
        },
        kind = {
          default = "adsensehost#customChannel",
          description = "Kind of resource this is, in this case adsensehost#customChannel.",
          type = "string",
        },
        name = {
          description = "Name of this custom channel.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomChannels = {
      id = "CustomChannels",
      properties = {
        etag = {
          description = "ETag of this response for caching purposes.",
          type = "string",
        },
        items = {
          description = "The custom channels returned in this list response.",
          items = {
            ["$ref"] = "CustomChannel",
          },
          type = "array",
        },
        kind = {
          default = "adsensehost#customChannels",
          description = "Kind of list this is, in this case adsensehost#customChannels.",
          type = "string",
        },
        nextPageToken = {
          description = "Continuation token used to page through custom channels. To retrieve the next page of results, set the next request's \"pageToken\" value to this.",
          type = "string",
        },
      },
      type = "object",
    },
    Report = {
      id = "Report",
      properties = {
        averages = {
          description = "The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        headers = {
          description = "The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request.",
          items = {
            properties = {
              currency = {
                description = "The currency of this column. Only present if the header type is METRIC_CURRENCY.",
                type = "string",
              },
              name = {
                description = "The name of the header.",
                type = "string",
              },
              type = {
                description = "The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or METRIC_CURRENCY.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          default = "adsensehost#report",
          description = "Kind this is, in this case adsensehost#report.",
          type = "string",
        },
        rows = {
          description = "The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request. The dimension cells contain strings, and the metric cells contain numbers.",
          items = {
            items = {
              type = "string",
            },
            type = "array",
          },
          type = "array",
        },
        totalMatchedRows = {
          description = "The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit.",
          format = "int64",
          type = "string",
        },
        totals = {
          description = "The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        warnings = {
          description = "Any warnings associated with generation of the report.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UrlChannel = {
      id = "UrlChannel",
      properties = {
        id = {
          description = "Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.",
          type = "string",
        },
        kind = {
          default = "adsensehost#urlChannel",
          description = "Kind of resource this is, in this case adsensehost#urlChannel.",
          type = "string",
        },
        urlPattern = {
          description = "URL Pattern of this URL channel. Does not include \"http://\" or \"https://\". Example: www.example.com/home",
          type = "string",
        },
      },
      type = "object",
    },
    UrlChannels = {
      id = "UrlChannels",
      properties = {
        etag = {
          description = "ETag of this response for caching purposes.",
          type = "string",
        },
        items = {
          description = "The URL channels returned in this list response.",
          items = {
            ["$ref"] = "UrlChannel",
          },
          type = "array",
        },
        kind = {
          default = "adsensehost#urlChannels",
          description = "Kind of list this is, in this case adsensehost#urlChannels.",
          type = "string",
        },
        nextPageToken = {
          description = "Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's \"pageToken\" value to this.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "adsensehost/v4.1/",
  title = "AdSense Host API",
  version = "v4.1",
}
