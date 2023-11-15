return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/authorized-buyers-marketplace"] = {
          description = "See, create, edit, and delete your Authorized Buyers Marketplace entities.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://authorizedbuyersmarketplace.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Authorized Buyers Marketplace",
  description = "The Authorized Buyers Marketplace API lets buyers programmatically discover inventory; propose, retrieve and negotiate deals with publishers.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/authorized-buyers/apis/marketplace/reference/rest/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "authorizedbuyersmarketplace:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://authorizedbuyersmarketplace.mtls.googleapis.com/",
  name = "authorizedbuyersmarketplace",
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
    bidders = {
      resources = {
        finalizedDeals = {
          methods = {
            list = {
              description = "Lists finalized deals. Use the URL path \"/v1/buyers/{accountId}/finalizedDeals\" to list finalized deals for the current buyer and its clients. Bidders can use the URL path \"/v1/bidders/{accountId}/finalizedDeals\" to list finalized deals for the bidder, its buyers and all their clients.",
              flatPath = "v1/bidders/{biddersId}/finalizedDeals",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.bidders.finalizedDeals.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional query string using the [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters) Supported columns for filtering are: * deal.displayName * deal.dealType * deal.createTime * deal.updateTime * deal.flightStartTime * deal.flightEndTime * dealServingStatus",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "An optional query string to sort finalized deals using the [Cloud API sorting syntax](https://cloud.google.com/apis/design/design_patterns#sorting_order). If no sort order is specified, results will be returned in an arbitrary order. Supported columns for sorting are: * deal.displayName * deal.createTime * deal.updateTime * deal.flightStartTime * deal.flightEndTime * rtbMetrics.bidRequests7Days * rtbMetrics.bids7Days * rtbMetrics.adImpressions7Days * rtbMetrics.bidRate7Days * rtbMetrics.filteredBidRate7Days * rtbMetrics.mustBidRateCurrentMonth Example: 'deal.displayName, deal.updateTime desc'",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The server may return fewer results than requested. If requested more than 500, the server will return 500 results per page. If unspecified, the server will pick a default page size of 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The page token as returned from ListFinalizedDealsResponse.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The buyer to list the finalized deals for, in the format: `buyers/{accountId}`. When used to list finalized deals for a bidder, its buyers and clients, in the format `bidders/{accountId}`.",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/finalizedDeals",
              response = {
                ["$ref"] = "ListFinalizedDealsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
          },
        },
      },
    },
    buyers = {
      resources = {
        auctionPackages = {
          methods = {
            get = {
              description = "Gets an auction package given its name.",
              flatPath = "v1/buyers/{buyersId}/auctionPackages/{auctionPackagesId}",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.auctionPackages.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of auction package to get. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/auctionPackages/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "AuctionPackage",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            list = {
              description = "List the auction packages subscribed by a buyer and its clients.",
              flatPath = "v1/buyers/{buyersId}/auctionPackages",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.auctionPackages.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Requested page size. The server may return fewer results than requested. Max allowed page size is 500.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The page token as returned. ListAuctionPackagesResponse.nextPageToken",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the parent buyer that can access the auction package. Format: `buyers/{accountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/auctionPackages",
              response = {
                ["$ref"] = "ListAuctionPackagesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            subscribe = {
              description = "Subscribe to the auction package for the specified buyer. Once subscribed, the bidder will receive a call out for inventory matching the auction package targeting criteria with the auction package deal ID and the specified buyer.",
              flatPath = "v1/buyers/{buyersId}/auctionPackages/{auctionPackagesId}:subscribe",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.auctionPackages.subscribe",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/auctionPackages/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:subscribe",
              request = {
                ["$ref"] = "SubscribeAuctionPackageRequest",
              },
              response = {
                ["$ref"] = "AuctionPackage",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            subscribeClients = {
              description = "Subscribe the specified clients of the buyer to the auction package. If a client in the list does not belong to the buyer, an error response will be returned, and all of the following clients in the list will not be subscribed. Subscribing an already subscribed client will have no effect.",
              flatPath = "v1/buyers/{buyersId}/auctionPackages/{auctionPackagesId}:subscribeClients",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.auctionPackages.subscribeClients",
              parameterOrder = {
                "auctionPackage",
              },
              parameters = {
                auctionPackage = {
                  description = "Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/auctionPackages/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+auctionPackage}:subscribeClients",
              request = {
                ["$ref"] = "SubscribeClientsRequest",
              },
              response = {
                ["$ref"] = "AuctionPackage",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            unsubscribe = {
              description = "Unsubscribe from the auction package for the specified buyer. Once unsubscribed, the bidder will no longer receive a call out for the auction package deal ID and the specified buyer.",
              flatPath = "v1/buyers/{buyersId}/auctionPackages/{auctionPackagesId}:unsubscribe",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.auctionPackages.unsubscribe",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/auctionPackages/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:unsubscribe",
              request = {
                ["$ref"] = "UnsubscribeAuctionPackageRequest",
              },
              response = {
                ["$ref"] = "AuctionPackage",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            unsubscribeClients = {
              description = "Unsubscribe from the auction package for the specified clients of the buyer. Unsubscribing a client that is not subscribed will have no effect.",
              flatPath = "v1/buyers/{buyersId}/auctionPackages/{auctionPackagesId}:unsubscribeClients",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.auctionPackages.unsubscribeClients",
              parameterOrder = {
                "auctionPackage",
              },
              parameters = {
                auctionPackage = {
                  description = "Required. Name of the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/auctionPackages/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+auctionPackage}:unsubscribeClients",
              request = {
                ["$ref"] = "UnsubscribeClientsRequest",
              },
              response = {
                ["$ref"] = "AuctionPackage",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
          },
        },
        clients = {
          methods = {
            activate = {
              description = "Activates an existing client. The state of the client will be updated to \"ACTIVE\". This method has no effect if the client is already in \"ACTIVE\" state.",
              flatPath = "v1/buyers/{buyersId}/clients/{clientsId}:activate",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.clients.activate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/clients/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:activate",
              request = {
                ["$ref"] = "ActivateClientRequest",
              },
              response = {
                ["$ref"] = "Client",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            create = {
              description = "Creates a new client.",
              flatPath = "v1/buyers/{buyersId}/clients",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.clients.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the buyer. Format: `buyers/{accountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/clients",
              request = {
                ["$ref"] = "Client",
              },
              response = {
                ["$ref"] = "Client",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            deactivate = {
              description = "Deactivates an existing client. The state of the client will be updated to \"INACTIVE\". This method has no effect if the client is already in \"INACTIVE\" state.",
              flatPath = "v1/buyers/{buyersId}/clients/{clientsId}:deactivate",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.clients.deactivate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/clients/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:deactivate",
              request = {
                ["$ref"] = "DeactivateClientRequest",
              },
              response = {
                ["$ref"] = "Client",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            get = {
              description = "Gets a client with a given resource name.",
              flatPath = "v1/buyers/{buyersId}/clients/{clientsId}",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.clients.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Format: `buyers/{accountId}/clients/{clientAccountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/clients/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Client",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            list = {
              description = "Lists all the clients for the current buyer.",
              flatPath = "v1/buyers/{buyersId}/clients",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.clients.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Query string using the [Filtering Syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters) Supported fields for filtering are: * partnerClientId Use this field to filter the clients by the partnerClientId. For example, if the partnerClientId of the client is \"1234\", the value of this field should be `partnerClientId = \"1234\"`, in order to get only the client whose partnerClientId is \"1234\" in the response.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. If left blank, a default page size of 500 will be applied.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results the server should return. Typically, this is the value of ListClientsResponse.nextPageToken returned from the previous call to the list method.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the buyer. Format: `buyers/{accountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/clients",
              response = {
                ["$ref"] = "ListClientsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            patch = {
              description = "Updates an existing client.",
              flatPath = "v1/buyers/{buyersId}/clients/{clientsId}",
              httpMethod = "PATCH",
              id = "authorizedbuyersmarketplace.buyers.clients.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. The resource name of the client. Format: `buyers/{accountId}/clients/{clientAccountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/clients/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "List of fields to be updated. If empty or unspecified, the service will update all fields populated in the update request excluding the output only fields and primitive fields with default value. Note that explicit field mask is required in order to reset a primitive field back to its default value, for example, false for boolean fields, 0 for integer fields. A special field mask consisting of a single path \"*\" can be used to indicate full replacement(the equivalent of PUT method), updatable fields unset or unspecified in the input will be cleared or set to default value. Output only fields will be ignored regardless of the value of updateMask.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Client",
              },
              response = {
                ["$ref"] = "Client",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
          },
          resources = {
            users = {
              methods = {
                activate = {
                  description = "Activates an existing client user. The state of the client user will be updated from \"INACTIVE\" to \"ACTIVE\". This method has no effect if the client user is already in \"ACTIVE\" state. An error will be returned if the client user to activate is still in \"INVITED\" state.",
                  flatPath = "v1/buyers/{buyersId}/clients/{clientsId}/users/{usersId}:activate",
                  httpMethod = "POST",
                  id = "authorizedbuyersmarketplace.buyers.clients.users.activate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`",
                      location = "path",
                      pattern = "^buyers/[^/]+/clients/[^/]+/users/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:activate",
                  request = {
                    ["$ref"] = "ActivateClientUserRequest",
                  },
                  response = {
                    ["$ref"] = "ClientUser",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                create = {
                  description = "Creates a new client user in \"INVITED\" state. An email invitation will be sent to the new user, once accepted the user will become active.",
                  flatPath = "v1/buyers/{buyersId}/clients/{clientsId}/users",
                  httpMethod = "POST",
                  id = "authorizedbuyersmarketplace.buyers.clients.users.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the client. Format: `buyers/{accountId}/clients/{clientAccountId}`",
                      location = "path",
                      pattern = "^buyers/[^/]+/clients/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/users",
                  request = {
                    ["$ref"] = "ClientUser",
                  },
                  response = {
                    ["$ref"] = "ClientUser",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                deactivate = {
                  description = "Deactivates an existing client user. The state of the client user will be updated from \"ACTIVE\" to \"INACTIVE\". This method has no effect if the client user is already in \"INACTIVE\" state. An error will be returned if the client user to deactivate is still in \"INVITED\" state.",
                  flatPath = "v1/buyers/{buyersId}/clients/{clientsId}/users/{usersId}:deactivate",
                  httpMethod = "POST",
                  id = "authorizedbuyersmarketplace.buyers.clients.users.deactivate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`",
                      location = "path",
                      pattern = "^buyers/[^/]+/clients/[^/]+/users/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:deactivate",
                  request = {
                    ["$ref"] = "DeactivateClientUserRequest",
                  },
                  response = {
                    ["$ref"] = "ClientUser",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                delete = {
                  description = "Deletes an existing client user. The client user will lose access to the Authorized Buyers UI. Note that if a client user is deleted, the user's access to the UI can't be restored unless a new client user is created and activated.",
                  flatPath = "v1/buyers/{buyersId}/clients/{clientsId}/users/{usersId}",
                  httpMethod = "DELETE",
                  id = "authorizedbuyersmarketplace.buyers.clients.users.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`",
                      location = "path",
                      pattern = "^buyers/[^/]+/clients/[^/]+/users/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                get = {
                  description = "Retrieves an existing client user.",
                  flatPath = "v1/buyers/{buyersId}/clients/{clientsId}/users/{usersId}",
                  httpMethod = "GET",
                  id = "authorizedbuyersmarketplace.buyers.clients.users.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`",
                      location = "path",
                      pattern = "^buyers/[^/]+/clients/[^/]+/users/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ClientUser",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                list = {
                  description = "Lists all client users for a specified client.",
                  flatPath = "v1/buyers/{buyersId}/clients/{clientsId}/users",
                  httpMethod = "GET",
                  id = "authorizedbuyersmarketplace.buyers.clients.users.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Requested page size. If left blank, a default page size of 500 will be applied.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results the server should return. Typically, this is the value of ListClientUsersResponse.nextPageToken returned from the previous call to the list method.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the client. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}`",
                      location = "path",
                      pattern = "^buyers/[^/]+/clients/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/users",
                  response = {
                    ["$ref"] = "ListClientUsersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
              },
            },
          },
        },
        finalizedDeals = {
          methods = {
            addCreative = {
              description = "Add creative to be used in the bidding process for a finalized deal. For programmatic guaranteed deals, it's recommended that you associate at least one approved creative with the deal before calling SetReadyToServe, to help reduce the number of bid responses filtered because they don't contain approved creatives. Creatives successfully added to a deal can be found in the Realtime-bidding Creatives API creative.deal_ids. This method only applies to programmatic guaranteed deals. Maximum number of 1000 creatives can be added to a finalized deal.",
              flatPath = "v1/buyers/{buyersId}/finalizedDeals/{finalizedDealsId}:addCreative",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.finalizedDeals.addCreative",
              parameterOrder = {
                "deal",
              },
              parameters = {
                deal = {
                  description = "Required. Name of the finalized deal in the format of: `buyers/{accountId}/finalizedDeals/{dealId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/finalizedDeals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+deal}:addCreative",
              request = {
                ["$ref"] = "AddCreativeRequest",
              },
              response = {
                ["$ref"] = "FinalizedDeal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            get = {
              description = "Gets a finalized deal given its name.",
              flatPath = "v1/buyers/{buyersId}/finalizedDeals/{finalizedDealsId}",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.finalizedDeals.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/finalizedDeals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "FinalizedDeal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            list = {
              description = "Lists finalized deals. Use the URL path \"/v1/buyers/{accountId}/finalizedDeals\" to list finalized deals for the current buyer and its clients. Bidders can use the URL path \"/v1/bidders/{accountId}/finalizedDeals\" to list finalized deals for the bidder, its buyers and all their clients.",
              flatPath = "v1/buyers/{buyersId}/finalizedDeals",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.finalizedDeals.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional query string using the [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters) Supported columns for filtering are: * deal.displayName * deal.dealType * deal.createTime * deal.updateTime * deal.flightStartTime * deal.flightEndTime * dealServingStatus",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "An optional query string to sort finalized deals using the [Cloud API sorting syntax](https://cloud.google.com/apis/design/design_patterns#sorting_order). If no sort order is specified, results will be returned in an arbitrary order. Supported columns for sorting are: * deal.displayName * deal.createTime * deal.updateTime * deal.flightStartTime * deal.flightEndTime * rtbMetrics.bidRequests7Days * rtbMetrics.bids7Days * rtbMetrics.adImpressions7Days * rtbMetrics.bidRate7Days * rtbMetrics.filteredBidRate7Days * rtbMetrics.mustBidRateCurrentMonth Example: 'deal.displayName, deal.updateTime desc'",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The server may return fewer results than requested. If requested more than 500, the server will return 500 results per page. If unspecified, the server will pick a default page size of 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The page token as returned from ListFinalizedDealsResponse.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The buyer to list the finalized deals for, in the format: `buyers/{accountId}`. When used to list finalized deals for a bidder, its buyers and clients, in the format `bidders/{accountId}`.",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/finalizedDeals",
              response = {
                ["$ref"] = "ListFinalizedDealsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            pause = {
              description = "Pauses serving of the given finalized deal. This call only pauses the serving status, and does not affect other fields of the finalized deal. Calling this method for an already paused deal has no effect. This method only applies to programmatic guaranteed deals.",
              flatPath = "v1/buyers/{buyersId}/finalizedDeals/{finalizedDealsId}:pause",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.finalizedDeals.pause",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/finalizedDeals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:pause",
              request = {
                ["$ref"] = "PauseFinalizedDealRequest",
              },
              response = {
                ["$ref"] = "FinalizedDeal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            resume = {
              description = "Resumes serving of the given finalized deal. Calling this method for an running deal has no effect. If a deal is initially paused by the seller, calling this method will not resume serving of the deal until the seller also resumes the deal. This method only applies to programmatic guaranteed deals.",
              flatPath = "v1/buyers/{buyersId}/finalizedDeals/{finalizedDealsId}:resume",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.finalizedDeals.resume",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/finalizedDeals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:resume",
              request = {
                ["$ref"] = "ResumeFinalizedDealRequest",
              },
              response = {
                ["$ref"] = "FinalizedDeal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            setReadyToServe = {
              description = "Sets the given finalized deal as ready to serve. By default, deals are set as ready to serve as soon as they're finalized. If you want to opt out of the default behavior, and manually indicate that deals are ready to serve, ask your Technical Account Manager to add you to the allowlist. If you choose to use this method, finalized deals belonging to the bidder and its child seats don't start serving until after you call `setReadyToServe`, and after the deals become active. For example, you can use this method to delay receiving bid requests until your creative is ready. This method only applies to programmatic guaranteed deals.",
              flatPath = "v1/buyers/{buyersId}/finalizedDeals/{finalizedDealsId}:setReadyToServe",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.finalizedDeals.setReadyToServe",
              parameterOrder = {
                "deal",
              },
              parameters = {
                deal = {
                  description = "Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/finalizedDeals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+deal}:setReadyToServe",
              request = {
                ["$ref"] = "SetReadyToServeRequest",
              },
              response = {
                ["$ref"] = "FinalizedDeal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
          },
        },
        proposals = {
          methods = {
            accept = {
              description = "Accepts the proposal at the given revision number. If the revision number in the request is behind the latest from the server, an error message will be returned. This call updates the Proposal.state from `BUYER_ACCEPTANCE_REQUESTED` to `FINALIZED`; it has no side effect if the Proposal.state is already `FINALIZED` and throws exception if the Proposal.state is not either `BUYER_ACCEPTANCE_REQUESTED` or `FINALIZED`. Accepting a proposal means the buyer understands and accepts the Proposal.terms_and_conditions proposed by the seller.",
              flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}:accept",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.proposals.accept",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/proposals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:accept",
              request = {
                ["$ref"] = "AcceptProposalRequest",
              },
              response = {
                ["$ref"] = "Proposal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            addNote = {
              description = "Creates a note for this proposal and sends to the seller.",
              flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}:addNote",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.proposals.addNote",
              parameterOrder = {
                "proposal",
              },
              parameters = {
                proposal = {
                  description = "Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/proposals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+proposal}:addNote",
              request = {
                ["$ref"] = "AddNoteRequest",
              },
              response = {
                ["$ref"] = "Proposal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            cancelNegotiation = {
              description = "Cancels an ongoing negotiation on a proposal. This does not cancel or end serving for the deals if the proposal has been finalized. If the proposal has not been finalized before, calling this method will set the Proposal.state to `TERMINATED` and increment the Proposal.proposal_revision. If the proposal has been finalized before and is under renegotiation now, calling this method will reset the Proposal.state to `FINALIZED` and increment the Proposal.proposal_revision. This method does not support private auction proposals whose Proposal.deal_type is 'PRIVATE_AUCTION'.",
              flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}:cancelNegotiation",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.proposals.cancelNegotiation",
              parameterOrder = {
                "proposal",
              },
              parameters = {
                proposal = {
                  description = "Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/proposals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+proposal}:cancelNegotiation",
              request = {
                ["$ref"] = "CancelNegotiationRequest",
              },
              response = {
                ["$ref"] = "Proposal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            get = {
              description = "Gets a proposal using its name. The proposal is returned at most recent revision. revision.",
              flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.proposals.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the proposal. Format: `buyers/{accountId}/proposals/{proposalId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/proposals/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Proposal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            list = {
              description = "Lists proposals. A filter expression (list filter syntax) may be specified to filter the results. This will not list finalized versions of proposals that are being renegotiated; to retrieve these use the finalizedProposals resource.",
              flatPath = "v1/buyers/{buyersId}/proposals",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.proposals.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional query string using the [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters) Supported columns for filtering are: * displayName * dealType * updateTime * state",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The server may return fewer results than requested. If unspecified, the server will put a size of 500.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The page token as returned from ListProposalsResponse.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent that owns the collection of proposals Format: `buyers/{accountId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/proposals",
              response = {
                ["$ref"] = "ListProposalsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            patch = {
              description = "Updates the proposal at the given revision number. If the revision number in the request is behind the latest from the server, an error message will be returned. See FieldMask for how to use FieldMask. Only fields specified in the UpdateProposalRequest.update_mask will be updated; Fields noted as 'Immutable' or 'Output only' yet specified in the UpdateProposalRequest.update_mask will be ignored and left unchanged. Updating a private auction proposal is not allowed and will result in an error.",
              flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}",
              httpMethod = "PATCH",
              id = "authorizedbuyersmarketplace.buyers.proposals.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The name of the proposal serving as a unique identifier. Format: buyers/{accountId}/proposals/{proposalId}",
                  location = "path",
                  pattern = "^buyers/[^/]+/proposals/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "List of fields to be updated. If empty or unspecified, the service will update all fields populated in the update request excluding the output only fields and primitive fields with default value. Note that explicit field mask is required in order to reset a primitive field back to its default value, for example, false for boolean fields, 0 for integer fields. A special field mask consisting of a single path \"*\" can be used to indicate full replacement(the equivalent of PUT method), updatable fields unset or unspecified in the input will be cleared or set to default value. Output only fields will be ignored regardless of the value of updateMask.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Proposal",
              },
              response = {
                ["$ref"] = "Proposal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            sendRfp = {
              description = "Sends a request for proposal (RFP) to a publisher to initiate the negotiation regarding certain inventory. In the RFP, buyers can specify the deal type, deal terms, start and end dates, targeting, and a message to the publisher. Once the RFP is sent, a proposal in `SELLER_REVIEW_REQUESTED` state will be created and returned in the response. The publisher may review your request and respond with detailed deals in the proposal.",
              flatPath = "v1/buyers/{buyersId}/proposals:sendRfp",
              httpMethod = "POST",
              id = "authorizedbuyersmarketplace.buyers.proposals.sendRfp",
              parameterOrder = {
                "buyer",
              },
              parameters = {
                buyer = {
                  description = "Required. The current buyer who is sending the RFP in the format: `buyers/{accountId}`.",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+buyer}/proposals:sendRfp",
              request = {
                ["$ref"] = "SendRfpRequest",
              },
              response = {
                ["$ref"] = "Proposal",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
          },
          resources = {
            deals = {
              methods = {
                batchUpdate = {
                  description = "Batch updates multiple deals in the same proposal.",
                  flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}/deals:batchUpdate",
                  httpMethod = "POST",
                  id = "authorizedbuyersmarketplace.buyers.proposals.deals.batchUpdate",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the proposal containing the deals to batch update. Format: buyers/{accountId}/proposals/{proposalId}",
                      location = "path",
                      pattern = "^buyers/[^/]+/proposals/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/deals:batchUpdate",
                  request = {
                    ["$ref"] = "BatchUpdateDealsRequest",
                  },
                  response = {
                    ["$ref"] = "BatchUpdateDealsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                get = {
                  description = "Gets a deal given its name. The deal is returned at its head revision.",
                  flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}/deals/{dealsId}",
                  httpMethod = "GET",
                  id = "authorizedbuyersmarketplace.buyers.proposals.deals.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: buyers/{accountId}/proposals/{proposalId}/deals/{dealId}",
                      location = "path",
                      pattern = "^buyers/[^/]+/proposals/[^/]+/deals/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Deal",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                list = {
                  description = "Lists all deals in a proposal. To retrieve only the finalized revision deals regardless if a deal is being renegotiated, see the FinalizedDeals resource.",
                  flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}/deals",
                  httpMethod = "GET",
                  id = "authorizedbuyersmarketplace.buyers.proposals.deals.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Requested page size. The server may return fewer results than requested. If requested more than 500, the server will return 500 results per page. If unspecified, the server will pick a default page size of 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The page token as returned from ListDealsResponse.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the proposal containing the deals to retrieve. Format: buyers/{accountId}/proposals/{proposalId}",
                      location = "path",
                      pattern = "^buyers/[^/]+/proposals/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/deals",
                  response = {
                    ["$ref"] = "ListDealsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
                patch = {
                  description = "Updates the given deal at the buyer known revision number. If the server revision has advanced since the passed-in proposal.proposal_revision an ABORTED error message will be returned. The revision number is incremented by the server whenever the proposal or its constituent deals are updated. Note: The revision number is kept at a proposal level. The buyer of the API is expected to keep track of the revision number after the last update operation and send it in as part of the next update request. This way, if there are further changes on the server (for example, seller making new updates), then the server can detect conflicts and reject the proposed changes.",
                  flatPath = "v1/buyers/{buyersId}/proposals/{proposalsId}/deals/{dealsId}",
                  httpMethod = "PATCH",
                  id = "authorizedbuyersmarketplace.buyers.proposals.deals.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The unique identifier of the deal. Auto-generated by the server when a deal is created. Format: buyers/{accountId}/proposals/{proposalId}/deals/{dealId}",
                      location = "path",
                      pattern = "^buyers/[^/]+/proposals/[^/]+/deals/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "List of fields to be updated. If empty or unspecified, the service will update all fields populated in the update request excluding the output only fields and primitive fields with default value. Note that explicit field mask is required in order to reset a primitive field back to its default value, for example, false for boolean fields, 0 for integer fields. A special field mask consisting of a single path \"*\" can be used to indicate full replacement(the equivalent of PUT method), updatable fields unset or unspecified in the input will be cleared or set to default value. Output only fields will be ignored regardless of the value of updateMask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Deal",
                  },
                  response = {
                    ["$ref"] = "Deal",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/authorized-buyers-marketplace",
                  },
                },
              },
            },
          },
        },
        publisherProfiles = {
          methods = {
            get = {
              description = "Gets the requested publisher profile by name.",
              flatPath = "v1/buyers/{buyersId}/publisherProfiles/{publisherProfilesId}",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.publisherProfiles.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the publisher profile. Format: `buyers/{buyerId}/publisherProfiles/{publisherProfileId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+/publisherProfiles/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "PublisherProfile",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
            list = {
              description = "Lists publisher profiles. The returned publisher profiles aren't in any defined order. The order of the results might change. A new publisher profile can appear in any place in the list of returned results.",
              flatPath = "v1/buyers/{buyersId}/publisherProfiles",
              httpMethod = "GET",
              id = "authorizedbuyersmarketplace.buyers.publisherProfiles.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional query string using the [Cloud API list filtering] (https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters) syntax.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The server may return fewer results than requested. If requested more than 500, the server will return 500 results per page. If unspecified, the server will pick a default page size of 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The page token as returned from a previous ListPublisherProfilesResponse.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent that owns the collection of publisher profiles Format: `buyers/{buyerId}`",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/publisherProfiles",
              response = {
                ["$ref"] = "ListPublisherProfilesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/authorized-buyers-marketplace",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://authorizedbuyersmarketplace.googleapis.com/",
  schemas = {
    AcceptProposalRequest = {
      description = "Request to accept a proposal. Accepting a proposal implies acceptance of the publisher terms_and_conditions, if any.",
      id = "AcceptProposalRequest",
      properties = {
        proposalRevision = {
          description = "The last known client revision number of the proposal.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ActivateClientRequest = {
      description = "Request message for activating a client.",
      id = "ActivateClientRequest",
      properties = {},
      type = "object",
    },
    ActivateClientUserRequest = {
      description = "Request message for activating a client user.",
      id = "ActivateClientUserRequest",
      properties = {},
      type = "object",
    },
    AdSize = {
      description = "Represents size of a single ad slot, or a creative.",
      id = "AdSize",
      properties = {
        height = {
          description = "The height of the ad slot in pixels. This field will be present only when size type is `PIXEL`.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "The type of the ad slot size.",
          enum = {
            "TYPE_UNSPECIFIED",
            "PIXEL",
            "INTERSTITIAL",
            "NATIVE",
            "FLUID",
          },
          enumDescriptions = {
            "A placeholder for an undefined size type.",
            "Ad slot with size specified by height and width in pixels.",
            "Special size to describe an interstitial ad slot.",
            "Native (mobile) ads rendered by the publisher.",
            "Fluid size (responsive size) can be resized automatically with the change of outside environment.",
          },
          type = "string",
        },
        width = {
          description = "The width of the ad slot in pixels. This field will be present only when size type is `PIXEL`.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AddCreativeRequest = {
      description = "Request message for adding creative to be used in the bidding process for the finalized deal.",
      id = "AddCreativeRequest",
      properties = {
        creative = {
          description = "Name of the creative to add to the finalized deal, in the format `buyers/{buyerAccountId}/creatives/{creativeId}`. See creative.name.",
          type = "string",
        },
      },
      type = "object",
    },
    AddNoteRequest = {
      description = "Request to add a note.",
      id = "AddNoteRequest",
      properties = {
        note = {
          ["$ref"] = "Note",
          description = "The note to add.",
        },
      },
      type = "object",
    },
    AuctionPackage = {
      description = "Defines a segment of inventory that buyer wants to buy. It's created by buyer and could be shared with multiple buyers.",
      id = "AuctionPackage",
      properties = {
        createTime = {
          description = "Output only. Time the auction package was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          description = "Output only. The buyer that created this auction package. Format: `buyers/{buyerAccountId}`",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Output only. A description of the auction package.",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The display_name assigned to the auction package.",
          type = "string",
        },
        name = {
          description = "Immutable. The unique identifier for the auction package. Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}` The auction_package_id part of name is sent in the BidRequest to all RTB bidders and is returned as deal_id by the bidder in the BidResponse.",
          type = "string",
        },
        subscribedClients = {
          description = "Output only. The list of clients of the current buyer that are subscribed to the AuctionPackage. Format: `buyers/{buyerAccountId}/clients/{clientAccountId}`",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        updateTime = {
          description = "Output only. Time the auction package was last updated. This value is only increased when this auction package is updated but never when a buyer subscribed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    BatchUpdateDealsRequest = {
      description = "Request message for batch updating deals.",
      id = "BatchUpdateDealsRequest",
      properties = {
        requests = {
          description = "Required. List of request messages to update deals.",
          items = {
            ["$ref"] = "UpdateDealRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchUpdateDealsResponse = {
      description = "Response message for batch updating deals.",
      id = "BatchUpdateDealsResponse",
      properties = {
        deals = {
          description = "Deals updated.",
          items = {
            ["$ref"] = "Deal",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CancelNegotiationRequest = {
      description = "Request to cancel an ongoing negotiation.",
      id = "CancelNegotiationRequest",
      properties = {},
      type = "object",
    },
    Client = {
      description = "A client represents an agency, a brand, or an advertiser customer of the buyer. Based on the client's role, its client users will have varying levels of restricted access to the Marketplace and certain other sections of the Authorized Buyers UI.",
      id = "Client",
      properties = {
        displayName = {
          description = "Required. Display name shown to publishers. Must be unique for clients without partnerClientId specified. Maximum length of 255 characters is allowed.",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the client. Format: `buyers/{accountId}/clients/{clientAccountId}`",
          readOnly = true,
          type = "string",
        },
        partnerClientId = {
          description = "Arbitrary unique identifier provided by the buyer. This field can be used to associate a client with an identifier in the namespace of the buyer, lookup clients by that identifier and verify whether an Authorized Buyers account of the client already exists. If present, must be unique across all the clients.",
          type = "string",
        },
        role = {
          description = "Required. The role assigned to the client. Each role implies a set of permissions granted to the client.",
          enum = {
            "CLIENT_ROLE_UNSPECIFIED",
            "CLIENT_DEAL_VIEWER",
            "CLIENT_DEAL_NEGOTIATOR",
            "CLIENT_DEAL_APPROVER",
          },
          enumDescriptions = {
            "A placeholder for an undefined client role. This value should never be specified in user input for create or update method, otherwise an error will be returned.",
            "Users associated with this client role can only view proposals and deals in the Marketplace UI. They cannot negotiate or approve proposals and deals sent from publishers or send RFP to publishers.",
            "Users associated with this client role can view and negotiate on the proposals and deals in the Marketplace UI sent from publishers and send RFP to publishers, but cannot approve the proposals and deals by themselves. The buyer can approve the proposals and deals on behalf of the client.",
            "Users associated with this client role can view, negotiate and approve proposals and deals in the Marketplace UI and send RFP to publishers.",
          },
          type = "string",
        },
        sellerVisible = {
          description = "Whether the client will be visible to sellers.",
          type = "boolean",
        },
        state = {
          description = "Output only. The state of the client.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "A placeholder for an undefined client state. Should not be used.",
            "A client that is currently active and allowed to access the Authorized Buyers UI.",
            "A client that is currently inactive and not allowed to access the Authorized Buyers UI.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ClientUser = {
      description = "A user of a client who has restricted access to the Marketplace and certain other sections of the Authorized Buyers UI based on the role granted to the associated client.",
      id = "ClientUser",
      properties = {
        email = {
          description = "Required. The client user's email address that has to be unique across all users for the same client.",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the client user. Format: `buyers/{accountId}/clients/{clientAccountId}/users/{userId}`",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The state of the client user.",
          enum = {
            "STATE_UNSPECIFIED",
            "INVITED",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "A placeholder for an undefined user state.",
            "A user who was created but hasn't accepted the invitation yet, not allowed to access the Authorized Buyers UI.",
            "A user that is currently active and allowed to access the Authorized Buyers UI.",
            "A user that is currently inactive and not allowed to access the Authorized Buyers UI.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Contact = {
      description = "Contains information on how a buyer or seller can be reached.",
      id = "Contact",
      properties = {
        displayName = {
          description = "The display_name of the contact.",
          type = "string",
        },
        email = {
          description = "Email address for the contact.",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeRequirements = {
      description = "Message captures data about the creatives in the deal.",
      id = "CreativeRequirements",
      properties = {
        creativeFormat = {
          description = "Output only. The format of the creative, only applicable for programmatic guaranteed and preferred deals.",
          enum = {
            "CREATIVE_FORMAT_UNSPECIFIED",
            "DISPLAY",
            "VIDEO",
          },
          enumDescriptions = {
            "A placeholder for an unspecified creative format.",
            "Banner creatives such as image or HTML5 assets.",
            "Video creatives that can be played in a video player.",
          },
          readOnly = true,
          type = "string",
        },
        creativePreApprovalPolicy = {
          description = "Output only. Specifies the creative pre-approval policy.",
          enum = {
            "CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED",
            "SELLER_PRE_APPROVAL_REQUIRED",
            "SELLER_PRE_APPROVAL_NOT_REQUIRED",
          },
          enumDescriptions = {
            "A placeholder for an undefined creative pre-approval policy.",
            "The seller needs to approve each creative before it can serve.",
            "The seller does not need to approve each creative before it can serve.",
          },
          readOnly = true,
          type = "string",
        },
        creativeSafeFrameCompatibility = {
          description = "Output only. Specifies whether the creative is safeFrame compatible.",
          enum = {
            "CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED",
            "COMPATIBLE",
            "INCOMPATIBLE",
          },
          enumDescriptions = {
            "A placeholder for an undefined creative safe-frame compatibility.",
            "The creatives need to be compatible with the safe frame option.",
            "The creatives can be incompatible with the safe frame option.",
          },
          readOnly = true,
          type = "string",
        },
        maxAdDurationMs = {
          description = "Output only. The max duration of the video creative in milliseconds. only applicable for deals with video creatives.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        programmaticCreativeSource = {
          description = "Output only. Specifies the creative source for programmatic deals. PUBLISHER means creative is provided by seller and ADVERTISER means creative is provided by the buyer.",
          enum = {
            "PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED",
            "ADVERTISER",
            "PUBLISHER",
          },
          enumDescriptions = {
            "A placeholder for an undefined programmatic creative source.",
            "The advertiser provides the creatives.",
            "The publisher provides the creatives to be served.",
          },
          readOnly = true,
          type = "string",
        },
        skippableAdType = {
          description = "Output only. Skippable video ads allow viewers to skip ads after 5 seconds. Only applicable for deals with video creatives.",
          enum = {
            "SKIPPABLE_AD_TYPE_UNSPECIFIED",
            "SKIPPABLE",
            "INSTREAM_SELECT",
            "NOT_SKIPPABLE",
            "ANY",
          },
          enumDescriptions = {
            "A placeholder for an unspecified skippable ad type.",
            "Video ad that can be skipped after 5 seconds. This value will appear in RTB bid requests as SkippableBidRequestType::REQUIRE_SKIPPABLE.",
            "Video ad that can be skipped after 5 seconds, and is counted as engaged view after 30 seconds. The creative is hosted on YouTube only, and viewcount of the YouTube video increments after the engaged view. This value will appear in RTB bid requests as SkippableBidRequestType::REQUIRE_SKIPPABLE.",
            "This video ad is not skippable. This value will appear in RTB bid requests as SkippableBidRequestType::BLOCK_SKIPPABLE.",
            "This video ad can be skipped after 5 seconds or not-skippable. This value will appear in RTB bid requests as SkippableBidRequestType::ALLOW_SKIPPABLE.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CriteriaTargeting = {
      description = "Generic targeting used for targeting dimensions that contains a list of included and excluded numeric IDs. This cannot be filtered using list filter syntax.",
      id = "CriteriaTargeting",
      properties = {
        excludedCriteriaIds = {
          description = "A list of numeric IDs to be excluded.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        targetedCriteriaIds = {
          description = "A list of numeric IDs to be included.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DayPart = {
      description = "Defines targeting for a period of time on a specific week day.",
      id = "DayPart",
      properties = {
        dayOfWeek = {
          description = "Day of week for the period.",
          enum = {
            "DAY_OF_WEEK_UNSPECIFIED",
            "MONDAY",
            "TUESDAY",
            "WEDNESDAY",
            "THURSDAY",
            "FRIDAY",
            "SATURDAY",
            "SUNDAY",
          },
          enumDescriptions = {
            "The day of the week is unspecified.",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday",
          },
          type = "string",
        },
        endTime = {
          ["$ref"] = "TimeOfDay",
          description = "Hours in 24 hour time between 0 and 24, inclusive. Note: 24 is logically equivalent to 0, but is supported since in some cases there may need to be differentiation made between midnight on one day and midnight on the next day. Accepted values for minutes are [0, 15, 30, 45]. 0 is the only acceptable minute value for hour 24. Seconds and nanos are ignored.",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "Hours in 24 hour time between 0 and 24, inclusive. Note: 24 is logically equivalent to 0, but is supported since in some cases there may need to be differentiation made between midnight on one day and midnight on the next day. Accepted values for minutes are [0, 15, 30, 45]. 0 is the only acceptable minute value for hour 24. Seconds and nanos are ignored.",
        },
      },
      type = "object",
    },
    DayPartTargeting = {
      description = "Represents Daypart targeting.",
      id = "DayPartTargeting",
      properties = {
        dayParts = {
          description = "The targeted weekdays and times",
          items = {
            ["$ref"] = "DayPart",
          },
          type = "array",
        },
        timeZoneType = {
          description = "The time zone type of the day parts",
          enum = {
            "TIME_ZONE_TYPE_UNSPECIFIED",
            "SELLER",
            "USER",
          },
          enumDescriptions = {
            "Default value. This field is unused.",
            "The publisher's time zone",
            "The user's time zone",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeactivateClientRequest = {
      description = "Request message for disabling a client.",
      id = "DeactivateClientRequest",
      properties = {},
      type = "object",
    },
    DeactivateClientUserRequest = {
      description = "Request message for deactivating a client user.",
      id = "DeactivateClientUserRequest",
      properties = {},
      type = "object",
    },
    Deal = {
      description = "A deal represents a segment of inventory for displaying ads that contains the terms and targeting information that is used for serving as well as the deal stats and status. Note: A proposal may contain multiple deals.",
      id = "Deal",
      properties = {
        billedBuyer = {
          description = "Output only. When the client field is populated, this field refers to the buyer who creates and manages the client buyer and gets billed on behalf of the client buyer; when the buyer field is populated, this field is the same value as buyer. Format : `buyers/{buyerAccountId}`",
          readOnly = true,
          type = "string",
        },
        buyer = {
          description = "Output only. Refers to a buyer in The Realtime-bidding API. Format: `buyers/{buyerAccountId}`",
          readOnly = true,
          type = "string",
        },
        client = {
          description = "Output only. Refers to a Client. Format: `buyers/{buyerAccountId}/clients/{clientAccountid}`",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time of the deal creation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creativeRequirements = {
          ["$ref"] = "CreativeRequirements",
          description = "Output only. Metadata about the creatives of this deal.",
          readOnly = true,
        },
        dealType = {
          description = "Output only. Type of deal.",
          enum = {
            "DEAL_TYPE_UNSPECIFIED",
            "PREFERRED_DEAL",
            "PRIVATE_AUCTION",
            "PROGRAMMATIC_GUARANTEED",
          },
          enumDescriptions = {
            "Default, unspecified deal type.",
            "Preferred deals.",
            "Private auction deals.",
            "Programmatic guaranteed deals.",
          },
          readOnly = true,
          type = "string",
        },
        deliveryControl = {
          ["$ref"] = "DeliveryControl",
          description = "Output only. Specifies the pacing set by the publisher.",
          readOnly = true,
        },
        description = {
          description = "Output only. Free text description for the deal terms.",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. The name of the deal. Maximum length of 255 unicode characters is allowed. Control characters are not allowed. Buyers cannot update this field. Note: Not to be confused with name, which is a unique identifier of the deal.",
          readOnly = true,
          type = "string",
        },
        estimatedGrossSpend = {
          ["$ref"] = "Money",
          description = "Specified by buyers in request for proposal (RFP) to notify publisher the total estimated spend for the proposal. Publishers will receive this information and send back proposed deals accordingly.",
        },
        flightEndTime = {
          description = "Proposed flight end time of the deal. This will generally be stored in a granularity of a second. A value is not necessary for Private Auction deals.",
          format = "google-datetime",
          type = "string",
        },
        flightStartTime = {
          description = "Proposed flight start time of the deal. This will generally be stored in the granularity of one second since deal serving starts at seconds boundary. Any time specified with more granularity (for example, in milliseconds) will be truncated towards the start of time in seconds.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Immutable. The unique identifier of the deal. Auto-generated by the server when a deal is created. Format: buyers/{accountId}/proposals/{proposalId}/deals/{dealId}",
          type = "string",
        },
        preferredDealTerms = {
          ["$ref"] = "PreferredDealTerms",
          description = "The terms for preferred deals.",
        },
        privateAuctionTerms = {
          ["$ref"] = "PrivateAuctionTerms",
          description = "The terms for private auction deals.",
        },
        programmaticGuaranteedTerms = {
          ["$ref"] = "ProgrammaticGuaranteedTerms",
          description = "The terms for programmatic guaranteed deals.",
        },
        proposalRevision = {
          description = "Output only. The revision number for the proposal and is the same value as proposal.proposal_revision. Each update to deal causes the proposal revision number to auto-increment. The buyer keeps track of the last revision number they know of and pass it in when making an update. If the head revision number on the server has since incremented, then an ABORTED error is returned during the update operation to let the buyer know that a subsequent update was made.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        publisherProfile = {
          description = "Immutable. Reference to the seller on the deal. Format: `buyers/{buyerAccountId}/publisherProfiles/{publisherProfileId}`",
          type = "string",
        },
        sellerTimeZone = {
          ["$ref"] = "TimeZone",
          description = "Output only. Time zone of the seller used to mark the boundaries of a day for daypart targeting and CPD billing.",
          readOnly = true,
        },
        targeting = {
          ["$ref"] = "MarketplaceTargeting",
          description = "Specifies the subset of inventory targeted by the deal. Can be updated by the buyer before the deal is finalized.",
        },
        updateTime = {
          description = "Output only. The time when the deal was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DealPausingInfo = {
      description = "Information related to deal pausing.",
      id = "DealPausingInfo",
      properties = {
        pauseReason = {
          description = "The reason for the pausing of the deal; empty for active deals.",
          type = "string",
        },
        pauseRole = {
          description = "The party that first paused the deal; unspecified for active deals.",
          enum = {
            "BUYER_SELLER_ROLE_UNSPECIFIED",
            "BUYER",
            "SELLER",
          },
          enumDescriptions = {
            "A placeholder for an undefined buyer/seller role.",
            "Specifies the role as buyer.",
            "Specifies the role as seller.",
          },
          type = "string",
        },
        pausingConsented = {
          description = "Whether pausing is consented between buyer and seller for the deal.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeliveryControl = {
      description = "Message contains details about how the deal will be paced.",
      id = "DeliveryControl",
      properties = {
        companionDeliveryType = {
          description = "Output only. Specifies roadblocking in a main companion lineitem.",
          enum = {
            "COMPANION_DELIVERY_TYPE_UNSPECIFIED",
            "DELIVERY_OPTIONAL",
            "DELIVERY_AT_LEAST_ONE",
            "DELIVERY_ALL",
          },
          enumDescriptions = {
            "A placeholder for an unspecified companion delivery type.",
            "Companions are not required to serve a creative set. The creative set can serve an inventory that has zero or more matching companions.",
            "At least one companion must be served in order for the creative set to be used.",
            "All companions in the set must be served in order for the creative set to be used. This can still serve to inventory that has more companions than can be filled.",
          },
          readOnly = true,
          type = "string",
        },
        creativeRotationType = {
          description = "Output only. Specifies strategy to use for selecting a creative when multiple creatives of the same size are available.",
          enum = {
            "CREATIVE_ROTATION_TYPE_UNSPECIFIED",
            "ROTATION_EVEN",
            "ROTATION_OPTIMIZED",
            "ROTATION_MANUAL",
            "ROTATION_SEQUENTIAL",
          },
          enumDescriptions = {
            "Creatives are displayed roughly the same number of times over the duration of the deal.",
            "Creatives are displayed roughly the same number of times over the duration of the deal.",
            "Creatives are served roughly proportionally to their performance.",
            "Creatives are served roughly proportionally to their weights.",
            "Creatives are served exactly in sequential order, also known as Storyboarding.",
          },
          readOnly = true,
          type = "string",
        },
        deliveryRateType = {
          description = "Output only. Specifies how the impression delivery will be paced.",
          enum = {
            "DELIVERY_RATE_TYPE_UNSPECIFIED",
            "EVENLY",
            "FRONT_LOADED",
            "AS_FAST_AS_POSSIBLE",
          },
          enumDescriptions = {
            "A placeholder for an undefined delivery rate type.",
            "Impressions are served uniformly over the life of the deal.",
            "Impressions are served front-loaded.",
            "Impressions are served as fast as possible.",
          },
          readOnly = true,
          type = "string",
        },
        frequencyCap = {
          description = "Output only. Specifies any frequency caps. Cannot be filtered within ListDealsRequest.",
          items = {
            ["$ref"] = "FrequencyCap",
          },
          readOnly = true,
          type = "array",
        },
        roadblockingType = {
          description = "Output only. Specifies the roadblocking type in display creatives.",
          enum = {
            "ROADBLOCKING_TYPE_UNSPECIFIED",
            "ONLY_ONE",
            "ONE_OR_MORE",
            "AS_MANY_AS_POSSIBLE",
            "ALL_ROADBLOCK",
            "CREATIVE_SET",
          },
          enumDescriptions = {
            "A placeholder for an unspecified roadblocking type.",
            "Only one creative from a deal can serve per ad request. https://support.google.com/admanager/answer/177277.",
            "Any number of creatives from a deal can serve together per ad request.",
            "As many creatives from a deal as can fit on a page will serve. This could mean anywhere from one to all of a deal's creatives given the size constraints of ad slots on a page.",
            "All or none of the creatives from a deal will serve.",
            "A main/companion creative set roadblocking type.",
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
    FinalizedDeal = {
      description = "A finalized deal is a snapshot of the deal when both buyer and seller accept the deal. The buyer or seller can update the deal after it's been finalized and renegotiate on the deal targeting, terms and other fields, while at the same time the finalized snapshot of the deal can still be retrieved using this API. The finalized deal contains a copy of the deal as it existed when most recently finalized, as well as fields related to deal serving such as pause/resume status, RTB metrics, and more.",
      id = "FinalizedDeal",
      properties = {
        deal = {
          ["$ref"] = "Deal",
          description = "A copy of the Deal made upon finalization. During renegotiation, this will reflect the last finalized deal before renegotiation was initiated.",
        },
        dealPausingInfo = {
          ["$ref"] = "DealPausingInfo",
          description = "Information related to deal pausing for the deal.",
        },
        dealServingStatus = {
          description = "Serving status of the deal.",
          enum = {
            "DEAL_SERVING_STATUS_UNSPECIFIED",
            "ACTIVE",
            "ENDED",
            "PAUSED_BY_BUYER",
            "PAUSED_BY_SELLER",
          },
          enumDescriptions = {
            "Unspecified.",
            "The deal is actively serving or ready to serve when the start date is reached.",
            "The deal serving has ended.",
            "The deal serving is paused by buyer.",
            "The deal serving is paused by seller.",
          },
          type = "string",
        },
        name = {
          description = "The resource name of the finalized deal. Format: `buyers/{accountId}/finalizeddeals/{finalizedDealId}`",
          type = "string",
        },
        readyToServe = {
          description = "Whether the Programmatic Guaranteed deal is ready for serving.",
          type = "boolean",
        },
        rtbMetrics = {
          ["$ref"] = "RtbMetrics",
          description = "Real-time bidding metrics for this deal.",
        },
      },
      type = "object",
    },
    FirstPartyMobileApplicationTargeting = {
      description = "Represents a list of targeted and excluded mobile application IDs that publishers own. Android App ID, for example, com.google.android.apps.maps, can be found in Google Play Store URL. iOS App ID (which is a number) can be found at the end of iTunes store URL. First party mobile applications is either included or excluded.",
      id = "FirstPartyMobileApplicationTargeting",
      properties = {
        excludedAppIds = {
          description = "A list of application IDs to be excluded.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetedAppIds = {
          description = "A list of application IDs to be included.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FrequencyCap = {
      description = "Message contains details about publisher-set frequency caps of the delivery.",
      id = "FrequencyCap",
      properties = {
        maxImpressions = {
          description = "The maximum number of impressions that can be served to a user within the specified time period.",
          format = "int32",
          type = "integer",
        },
        timeUnitType = {
          description = "The time unit. Along with num_time_units defines the amount of time over which impressions per user are counted and capped.",
          enum = {
            "TIME_UNIT_TYPE_UNSPECIFIED",
            "MINUTE",
            "HOUR",
            "DAY",
            "WEEK",
            "MONTH",
            "LIFETIME",
            "POD",
            "STREAM",
          },
          enumDescriptions = {
            "A placeholder for an undefined time unit type. This just indicates the variable with this value hasn't been initialized.",
            "Minute unit.",
            "Hour unit.",
            "Day unit.",
            "Week unit.",
            "Month unit.",
            "Lifecycle/Lifetime unit.",
            "Pod unit.",
            "Stream unit.",
          },
          type = "string",
        },
        timeUnitsCount = {
          description = "The amount of time, in the units specified by time_unit_type. Defines the amount of time over which impressions per user are counted and capped.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    InventorySizeTargeting = {
      description = "Represents the size of an ad unit that can be targeted on a bid request.",
      id = "InventorySizeTargeting",
      properties = {
        excludedInventorySizes = {
          description = "A list of inventory sizes to be excluded.",
          items = {
            ["$ref"] = "AdSize",
          },
          type = "array",
        },
        targetedInventorySizes = {
          description = "A list of inventory sizes to be included.",
          items = {
            ["$ref"] = "AdSize",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InventoryTypeTargeting = {
      description = "Targeting of the inventory types a bid request can originate from.",
      id = "InventoryTypeTargeting",
      properties = {
        inventoryTypes = {
          description = "The list of targeted inventory types for the bid request.",
          items = {
            enum = {
              "INVENTORY_TYPE_UNSPECIFIED",
              "BROWSER",
              "MOBILE_APP",
              "VIDEO_PLAYER",
            },
            enumDescriptions = {
              "Unspecified inventory type",
              "Desktop or mobile web browser excluding ads inside a video player",
              "Mobile apps other than video players and web browsers",
              "Instream video and audio",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAuctionPackagesResponse = {
      description = "Response message for listing auction packages.",
      id = "ListAuctionPackagesResponse",
      properties = {
        auctionPackages = {
          description = "The list of auction packages.",
          items = {
            ["$ref"] = "AuctionPackage",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Continuation token for fetching the next page of results. Pass this value in the ListAuctionPackagesRequest.pageToken field in the subsequent call to the `ListAuctionPackages` method to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListClientUsersResponse = {
      description = "Response message for the list method.",
      id = "ListClientUsersResponse",
      properties = {
        clientUsers = {
          description = "The returned list of client users.",
          items = {
            ["$ref"] = "ClientUser",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass this value in the ListClientUsersRequest.pageToken field in the subsequent call to the list method to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListClientsResponse = {
      description = "Response message for the list method.",
      id = "ListClientsResponse",
      properties = {
        clients = {
          description = "The returned list of clients.",
          items = {
            ["$ref"] = "Client",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass this value in the ListClientsRequest.pageToken field in the subsequent call to the list method to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDealsResponse = {
      description = "Response message for listing deals in a proposal.",
      id = "ListDealsResponse",
      properties = {
        deals = {
          description = "The list of deals.",
          items = {
            ["$ref"] = "Deal",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to fetch the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListFinalizedDealsResponse = {
      description = "Response message for listing finalized deals.",
      id = "ListFinalizedDealsResponse",
      properties = {
        finalizedDeals = {
          description = "The list of finalized deals.",
          items = {
            ["$ref"] = "FinalizedDeal",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to fetch the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListProposalsResponse = {
      description = "Response message for listing proposals.",
      id = "ListProposalsResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        proposals = {
          description = "The list of proposals.",
          items = {
            ["$ref"] = "Proposal",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPublisherProfilesResponse = {
      description = "Response message for profiles visible to the buyer.",
      id = "ListPublisherProfilesResponse",
      properties = {
        nextPageToken = {
          description = "Token to fetch the next page of results.",
          type = "string",
        },
        publisherProfiles = {
          description = "The list of matching publisher profiles.",
          items = {
            ["$ref"] = "PublisherProfile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MarketplaceTargeting = {
      description = "Targeting represents different criteria that can be used to target inventory. For example, they can choose to target inventory only if the user is in the US. Multiple types of targeting are always applied as a logical AND, unless noted otherwise.",
      id = "MarketplaceTargeting",
      properties = {
        daypartTargeting = {
          ["$ref"] = "DayPartTargeting",
          description = "Daypart targeting information.",
        },
        geoTargeting = {
          ["$ref"] = "CriteriaTargeting",
          description = "Output only. Geo criteria IDs to be included/excluded.",
          readOnly = true,
        },
        inventorySizeTargeting = {
          ["$ref"] = "InventorySizeTargeting",
          description = "Output only. Inventory sizes to be included/excluded.",
          readOnly = true,
        },
        inventoryTypeTargeting = {
          ["$ref"] = "InventoryTypeTargeting",
          description = "Output only. Inventory type targeting information.",
          readOnly = true,
        },
        placementTargeting = {
          ["$ref"] = "PlacementTargeting",
          description = "Output only. Placement targeting information, for example, URL, mobile applications.",
          readOnly = true,
        },
        technologyTargeting = {
          ["$ref"] = "TechnologyTargeting",
          description = "Output only. Technology targeting information, for example, operating system, device category.",
          readOnly = true,
        },
        userListTargeting = {
          ["$ref"] = "CriteriaTargeting",
          description = "Buyer user list targeting information. User lists can be uploaded using https://developers.google.com/authorized-buyers/rtb/bulk-uploader.",
        },
        videoTargeting = {
          ["$ref"] = "VideoTargeting",
          description = "Output only. Video targeting information.",
          readOnly = true,
        },
      },
      type = "object",
    },
    MobileApplicationTargeting = {
      description = "Mobile application targeting settings.",
      id = "MobileApplicationTargeting",
      properties = {
        firstPartyTargeting = {
          ["$ref"] = "FirstPartyMobileApplicationTargeting",
          description = "Publisher owned apps to be targeted or excluded by the publisher to display the ads in.",
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
    Note = {
      description = "A text note attached to the proposal to facilitate the communication between buyers and sellers.",
      id = "Note",
      properties = {
        createTime = {
          description = "Output only. When this note was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creatorRole = {
          description = "Output only. The role who created the note.",
          enum = {
            "BUYER_SELLER_ROLE_UNSPECIFIED",
            "BUYER",
            "SELLER",
          },
          enumDescriptions = {
            "A placeholder for an undefined buyer/seller role.",
            "Specifies the role as buyer.",
            "Specifies the role as seller.",
          },
          readOnly = true,
          type = "string",
        },
        note = {
          description = "The text of the note. Maximum length is 1024 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    OperatingSystemTargeting = {
      description = "Represents targeting information for operating systems.",
      id = "OperatingSystemTargeting",
      properties = {
        operatingSystemCriteria = {
          ["$ref"] = "CriteriaTargeting",
          description = "IDs of operating systems to be included/excluded.",
        },
        operatingSystemVersionCriteria = {
          ["$ref"] = "CriteriaTargeting",
          description = "IDs of operating system versions to be included/excluded.",
        },
      },
      type = "object",
    },
    PauseFinalizedDealRequest = {
      description = "Request message for pausing a finalized deal.",
      id = "PauseFinalizedDealRequest",
      properties = {
        reason = {
          description = "The reason to pause the finalized deal, will be displayed to the seller. Maximum length is 1000 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    PlacementTargeting = {
      description = "Represents targeting about where the ads can appear, for example, certain sites or mobile applications. Different placement targeting types will be logically OR'ed.",
      id = "PlacementTargeting",
      properties = {
        mobileApplicationTargeting = {
          ["$ref"] = "MobileApplicationTargeting",
          description = "Mobile application targeting information in a deal. This doesn't apply to Auction Packages.",
        },
        uriTargeting = {
          ["$ref"] = "UriTargeting",
          description = "URLs to be included/excluded.",
        },
      },
      type = "object",
    },
    PreferredDealTerms = {
      description = "Pricing terms for Preferred Deals.",
      id = "PreferredDealTerms",
      properties = {
        fixedPrice = {
          ["$ref"] = "Price",
          description = "Fixed price for the deal.",
        },
      },
      type = "object",
    },
    Price = {
      description = "Represents a price and a pricing type for a deal.",
      id = "Price",
      properties = {
        amount = {
          ["$ref"] = "Money",
          description = "The actual price with currency specified.",
        },
        type = {
          description = "The pricing type for the deal.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CPM",
            "CPD",
          },
          enumDescriptions = {
            "A placeholder for an undefined pricing type. If the pricing type is unspecified, CPM will be used instead.",
            "Cost per thousand impressions.",
            "Cost per day.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PrivateAuctionTerms = {
      description = "Pricing terms for Private Auctions.",
      id = "PrivateAuctionTerms",
      properties = {
        floorPrice = {
          ["$ref"] = "Price",
          description = "The minimum price buyer has to bid to compete in the private auction.",
        },
        openAuctionAllowed = {
          description = "Output only. True if open auction buyers are allowed to compete with invited buyers in this private auction.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    PrivateData = {
      description = "Buyers are allowed to store certain types of private data in a proposal or deal.",
      id = "PrivateData",
      properties = {
        referenceId = {
          description = "A buyer specified reference ID. This can be queried in the list operations (max-length: 1024 unicode code units).",
          type = "string",
        },
      },
      type = "object",
    },
    ProgrammaticGuaranteedTerms = {
      description = "Pricing terms for Programmatic Guaranteed Deals.",
      id = "ProgrammaticGuaranteedTerms",
      properties = {
        fixedPrice = {
          ["$ref"] = "Price",
          description = "Fixed price for the deal.",
        },
        guaranteedLooks = {
          description = "Count of guaranteed looks.",
          format = "int64",
          type = "string",
        },
        impressionCap = {
          description = "The lifetime impression cap for CPM Sponsorship deals. Deal will stop serving when cap is reached.",
          format = "int64",
          type = "string",
        },
        minimumDailyLooks = {
          description = "Daily minimum looks for CPD deal types.",
          format = "int64",
          type = "string",
        },
        percentShareOfVoice = {
          description = "For sponsorship deals, this is the percentage of the seller's eligible impressions that the deal will serve until the cap is reached. Valid value is within range 0~100.",
          format = "int64",
          type = "string",
        },
        reservationType = {
          description = "The reservation type for a Programmatic Guaranteed deal. This indicates whether the number of impressions is fixed, or a percent of available impressions. If not specified, the default reservation type is STANDARD.",
          enum = {
            "RESERVATION_TYPE_UNSPECIFIED",
            "STANDARD",
            "SPONSORSHIP",
          },
          enumDescriptions = {
            "An unspecified reservation type.",
            "Non-sponsorship deal.",
            "Sponsorship deals don't have impression goal (guaranteed_looks) and they are served based on the flight dates. For CPM Sponsorship deals, impression_cap is the lifetime impression limit.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Proposal = {
      description = "Represents a proposal in the Marketplace. A proposal is the unit of negotiation between a seller and a buyer.",
      id = "Proposal",
      properties = {
        billedBuyer = {
          description = "Output only. When the client field is populated, this field refers to the buyer who creates and manages the client buyer and gets billed on behalf of the client buyer; when the buyer field is populated, this field is the same value as buyer. Format : `buyers/{buyerAccountId}`",
          readOnly = true,
          type = "string",
        },
        buyer = {
          description = "Output only. Refers to a buyer in The Realtime-bidding API. Format: `buyers/{buyerAccountId}`",
          readOnly = true,
          type = "string",
        },
        buyerContacts = {
          description = "Contact information for the buyer.",
          items = {
            ["$ref"] = "Contact",
          },
          type = "array",
        },
        buyerPrivateData = {
          ["$ref"] = "PrivateData",
          description = "Buyer private data (hidden from seller).",
        },
        client = {
          description = "Output only. Refers to a Client. Format: `buyers/{buyerAccountId}/clients/{clientAccountid}`",
          readOnly = true,
          type = "string",
        },
        dealType = {
          description = "Output only. Type of deal the proposal contains.",
          enum = {
            "DEAL_TYPE_UNSPECIFIED",
            "PREFERRED_DEAL",
            "PRIVATE_AUCTION",
            "PROGRAMMATIC_GUARANTEED",
          },
          enumDescriptions = {
            "Default, unspecified deal type.",
            "Preferred deals.",
            "Private auction deals.",
            "Programmatic guaranteed deals.",
          },
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. The descriptive name for the proposal. Maximum length of 255 unicode characters is allowed. Control characters are not allowed. Buyers cannot update this field. Note: Not to be confused with name, which is a unique identifier of the proposal.",
          readOnly = true,
          type = "string",
        },
        isRenegotiating = {
          description = "Output only. True if the proposal was previously finalized and is now being renegotiated.",
          readOnly = true,
          type = "boolean",
        },
        lastUpdaterOrCommentorRole = {
          description = "Output only. The role of the last user that either updated the proposal or left a comment.",
          enum = {
            "BUYER_SELLER_ROLE_UNSPECIFIED",
            "BUYER",
            "SELLER",
          },
          enumDescriptions = {
            "A placeholder for an undefined buyer/seller role.",
            "Specifies the role as buyer.",
            "Specifies the role as seller.",
          },
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The name of the proposal serving as a unique identifier. Format: buyers/{accountId}/proposals/{proposalId}",
          type = "string",
        },
        notes = {
          description = "A list of notes from the buyer and the seller attached to this proposal.",
          items = {
            ["$ref"] = "Note",
          },
          type = "array",
        },
        originatorRole = {
          description = "Output only. Indicates whether the buyer/seller created the proposal.",
          enum = {
            "BUYER_SELLER_ROLE_UNSPECIFIED",
            "BUYER",
            "SELLER",
          },
          enumDescriptions = {
            "A placeholder for an undefined buyer/seller role.",
            "Specifies the role as buyer.",
            "Specifies the role as seller.",
          },
          readOnly = true,
          type = "string",
        },
        pausingConsented = {
          description = "Whether pausing is allowed for the proposal. This is a negotiable term between buyers and publishers.",
          type = "boolean",
        },
        proposalRevision = {
          description = "Output only. The revision number for the proposal. Each update to the proposal or deal causes the proposal revision number to auto-increment. The buyer keeps track of the last revision number they know of and pass it in when making an update. If the head revision number on the server has since incremented, then an ABORTED error is returned during the update operation to let the buyer know that a subsequent update was made.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        publisherProfile = {
          description = "Immutable. Reference to the seller on the proposal. Format: `buyers/{buyerAccountId}/publisherProfiles/{publisherProfileId}` Note: This field may be set only when creating the resource. Modifying this field while updating the resource will result in an error.",
          type = "string",
        },
        sellerContacts = {
          description = "Output only. Contact information for the seller.",
          items = {
            ["$ref"] = "Contact",
          },
          readOnly = true,
          type = "array",
        },
        state = {
          description = "Output only. Indicates the state of the proposal.",
          enum = {
            "STATE_UNSPECIFIED",
            "BUYER_REVIEW_REQUESTED",
            "SELLER_REVIEW_REQUESTED",
            "BUYER_ACCEPTANCE_REQUESTED",
            "FINALIZED",
            "TERMINATED",
          },
          enumDescriptions = {
            "Unspecified proposal state",
            "When a proposal is waiting for buyer to review.",
            "When the proposal is waiting for the seller to review.",
            "When the seller accepted the proposal and sent it to the buyer for review.",
            "When both buyer and seller has accepted the proposal",
            "When either buyer or seller has cancelled the proposal",
          },
          readOnly = true,
          type = "string",
        },
        termsAndConditions = {
          description = "Output only. The terms and conditions associated with this proposal. Accepting a proposal implies acceptance of this field. This is created by the seller, the buyer can only view it.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the proposal was last revised.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    PublisherProfile = {
      description = "The values in the publisher profile are supplied by the publisher. All fields are not filterable unless stated otherwise.",
      id = "PublisherProfile",
      properties = {
        audienceDescription = {
          description = "Description on the publisher's audience.",
          type = "string",
        },
        directDealsContact = {
          description = "Contact information for direct reservation deals. This is free text entered by the publisher and may include information like names, phone numbers and email addresses.",
          type = "string",
        },
        displayName = {
          description = "Display name of the publisher profile. Can be used to filter the response of the publisherProfiles.list method.",
          type = "string",
        },
        domains = {
          description = "The list of domains represented in this publisher profile. Empty if this is a parent profile. These are top private domains, meaning that these will not contain a string like \"photos.google.co.uk/123\", but will instead contain \"google.co.uk\". Can be used to filter the response of the publisherProfiles.list method.",
          items = {
            type = "string",
          },
          type = "array",
        },
        isParent = {
          description = "Indicates if this profile is the parent profile of the seller. A parent profile represents all the inventory from the seller, as opposed to child profile that is created to brand a portion of inventory. One seller has only one parent publisher profile, and can have multiple child profiles. See https://support.google.com/admanager/answer/6035806 for details. Can be used to filter the response of the publisherProfiles.list method by setting the filter to \"is_parent: true\".",
          type = "boolean",
        },
        logoUrl = {
          description = "A Google public URL to the logo for this publisher profile. The logo is stored as a PNG, JPG, or GIF image.",
          type = "string",
        },
        mediaKitUrl = {
          description = "URL to additional marketing and sales materials.",
          type = "string",
        },
        mobileApps = {
          description = "The list of apps represented in this publisher profile. Empty if this is a parent profile.",
          items = {
            ["$ref"] = "PublisherProfileMobileApplication",
          },
          type = "array",
        },
        name = {
          description = "Name of the publisher profile. Format: `buyers/{buyer}/publisherProfiles/{publisher_profile}`",
          type = "string",
        },
        overview = {
          description = "Overview of the publisher.",
          type = "string",
        },
        pitchStatement = {
          description = "Statement explaining what's unique about publisher's business, and why buyers should partner with the publisher.",
          type = "string",
        },
        programmaticDealsContact = {
          description = "Contact information for programmatic deals. This is free text entered by the publisher and may include information like names, phone numbers and email addresses.",
          type = "string",
        },
        publisherCode = {
          description = "A unique identifying code for the seller. This value is the same for all of the seller's parent and child publisher profiles. Can be used to filter the response of the publisherProfiles.list method.",
          type = "string",
        },
        samplePageUrl = {
          description = "URL to a sample content page.",
          type = "string",
        },
        topHeadlines = {
          description = "Up to three key metrics and rankings. For example, \"#1 Mobile News Site for 20 Straight Months\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PublisherProfileMobileApplication = {
      description = "A mobile application that contains a external app ID, name, and app store.",
      id = "PublisherProfileMobileApplication",
      properties = {
        appStore = {
          description = "The app store the app belongs to. Can be used to filter the response of the publisherProfiles.list method.",
          enum = {
            "APP_STORE_TYPE_UNSPECIFIED",
            "APPLE_ITUNES",
            "GOOGLE_PLAY",
            "ROKU",
            "AMAZON_FIRE_TV",
            "PLAYSTATION",
            "XBOX",
            "SAMSUNG_TV",
            "AMAZON",
            "OPPO",
            "SAMSUNG",
            "VIVO",
            "XIAOMI",
          },
          enumDescriptions = {
            "A placeholder for an unknown app store.",
            "Apple iTunes",
            "Google Play",
            "Roku",
            "Amazon Fire TV",
            "PlayStation",
            "Xbox",
            "Samsung TV",
            "Amazon Appstore",
            "OPPO App Market",
            "Samsung Galaxy Store",
            "VIVO App Store",
            "Xiaomi GetApps",
          },
          type = "string",
        },
        externalAppId = {
          description = "The external ID for the app from its app store. Can be used to filter the response of the publisherProfiles.list method.",
          type = "string",
        },
        name = {
          description = "The name of the app.",
          type = "string",
        },
      },
      type = "object",
    },
    ResumeFinalizedDealRequest = {
      description = "Request message for resuming a finalized deal.",
      id = "ResumeFinalizedDealRequest",
      properties = {},
      type = "object",
    },
    RtbMetrics = {
      description = "Real-time bidding metrics. For what each metric means refer to [Report metrics](https://support.google.com/adxbuyer/answer/6115195#report-metrics)",
      id = "RtbMetrics",
      properties = {
        adImpressions7Days = {
          description = "Ad impressions in last 7 days.",
          format = "int64",
          type = "string",
        },
        bidRate7Days = {
          description = "Bid rate in last 7 days, calculated by (bids / bid requests).",
          format = "double",
          type = "number",
        },
        bidRequests7Days = {
          description = "Bid requests in last 7 days.",
          format = "int64",
          type = "string",
        },
        bids7Days = {
          description = "Bids in last 7 days.",
          format = "int64",
          type = "string",
        },
        filteredBidRate7Days = {
          description = "Filtered bid rate in last 7 days, calculated by (filtered bids / bids).",
          format = "double",
          type = "number",
        },
        mustBidRateCurrentMonth = {
          description = "Must bid rate for current month.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    SendRfpRequest = {
      description = "Request to send an RFP. All fields in this request are proposed to publisher and subject to changes by publisher during later negotiation.",
      id = "SendRfpRequest",
      properties = {
        buyerContacts = {
          description = "Contact information for the buyer.",
          items = {
            ["$ref"] = "Contact",
          },
          type = "array",
        },
        client = {
          description = "If the current buyer is sending the RFP on behalf of its client, use this field to specify the name of the client in the format: `buyers/{accountId}/clients/{clientAccountid}`.",
          type = "string",
        },
        displayName = {
          description = "Required. The display name of the proposal being created by this RFP.",
          type = "string",
        },
        estimatedGrossSpend = {
          ["$ref"] = "Money",
          description = "Specified by buyers in request for proposal (RFP) to notify publisher the total estimated spend for the proposal. Publishers will receive this information and send back proposed deals accordingly.",
        },
        flightEndTime = {
          description = "Required. Proposed flight end time of the RFP. A timestamp in RFC3339 UTC \"Zulu\" format. Note that the specified value will be truncated to a granularity of one second.",
          format = "google-datetime",
          type = "string",
        },
        flightStartTime = {
          description = "Required. Proposed flight start time of the RFP. A timestamp in RFC3339 UTC \"Zulu\" format. Note that the specified value will be truncated to a granularity of one second.",
          format = "google-datetime",
          type = "string",
        },
        geoTargeting = {
          ["$ref"] = "CriteriaTargeting",
          description = "Geo criteria IDs to be targeted. Refer to Geo tables.",
        },
        inventorySizeTargeting = {
          ["$ref"] = "InventorySizeTargeting",
          description = "Inventory sizes to be targeted.",
        },
        note = {
          description = "A message that is sent to the publisher. Maximum length is 1024 characters.",
          type = "string",
        },
        preferredDealTerms = {
          ["$ref"] = "PreferredDealTerms",
          description = "The terms for preferred deals.",
        },
        programmaticGuaranteedTerms = {
          ["$ref"] = "ProgrammaticGuaranteedTerms",
          description = "The terms for programmatic guaranteed deals.",
        },
        publisherProfile = {
          description = "Required. The profile of the publisher who will receive this RFP in the format: `buyers/{accountId}/publisherProfiles/{publisherProfileId}`.",
          type = "string",
        },
      },
      type = "object",
    },
    SetReadyToServeRequest = {
      description = "Request message for setting ready to serve for a finalized deal.",
      id = "SetReadyToServeRequest",
      properties = {},
      type = "object",
    },
    SubscribeAuctionPackageRequest = {
      description = "Request message for SubscribeAuctionPackage.",
      id = "SubscribeAuctionPackageRequest",
      properties = {},
      type = "object",
    },
    SubscribeClientsRequest = {
      description = "Request message for SubscribeAuctionPackageClients.",
      id = "SubscribeClientsRequest",
      properties = {
        clients = {
          description = "Optional. A list of client buyers to subscribe to the auction package, with client buyer in the format `buyers/{accountId}/clients/{clientAccountId}`. The current buyer will be subscribed to the auction package regardless of the list contents if not already.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TechnologyTargeting = {
      description = "Represents targeting about various types of technology.",
      id = "TechnologyTargeting",
      properties = {
        deviceCapabilityTargeting = {
          ["$ref"] = "CriteriaTargeting",
          description = "IDs of device capabilities to be included/excluded.",
        },
        deviceCategoryTargeting = {
          ["$ref"] = "CriteriaTargeting",
          description = "IDs of device categories to be included/excluded.",
        },
        operatingSystemTargeting = {
          ["$ref"] = "OperatingSystemTargeting",
          description = "Operating system related targeting information.",
        },
      },
      type = "object",
    },
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TimeZone = {
      description = "Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).",
      id = "TimeZone",
      properties = {
        id = {
          description = "IANA Time Zone Database time zone, e.g. \"America/New_York\".",
          type = "string",
        },
        version = {
          description = "Optional. IANA Time Zone Database version number, e.g. \"2019a\".",
          type = "string",
        },
      },
      type = "object",
    },
    UnsubscribeAuctionPackageRequest = {
      description = "Request message for UnsubscribeAuctionPackage.",
      id = "UnsubscribeAuctionPackageRequest",
      properties = {},
      type = "object",
    },
    UnsubscribeClientsRequest = {
      description = "Request message for UnsubscribeAuctionPackage.",
      id = "UnsubscribeClientsRequest",
      properties = {
        clients = {
          description = "Optional. A list of client buyers to unsubscribe from the auction package, with client buyer in the format `buyers/{accountId}/clients/{clientAccountId}`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateDealRequest = {
      description = "Request message for updating the deal at the given revision number.",
      id = "UpdateDealRequest",
      properties = {
        deal = {
          ["$ref"] = "Deal",
          description = "Required. The deal to update. The deal's `name` field is used to identify the deal to be updated. Note: proposal_revision will have to be provided within the resource or else an error will be thrown. Format: buyers/{accountId}/proposals/{proposalId}/deals/{dealId}",
        },
        updateMask = {
          description = "List of fields to be updated. If empty or unspecified, the service will update all fields populated in the update request excluding the output only fields and primitive fields with default value. Note that explicit field mask is required in order to reset a primitive field back to its default value, for example, false for boolean fields, 0 for integer fields. A special field mask consisting of a single path \"*\" can be used to indicate full replacement(the equivalent of PUT method), updatable fields unset or unspecified in the input will be cleared or set to default value. Output only fields will be ignored regardless of the value of updateMask.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UriTargeting = {
      description = "Represents a list of targeted and excluded URLs (for example, google.com). For Private Auction Deals, URLs are either included or excluded. For Programmatic Guaranteed and Preferred Deals, this doesn't apply.",
      id = "UriTargeting",
      properties = {
        excludedUris = {
          description = "A list of URLs to be excluded.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetedUris = {
          description = "A list of URLs to be included.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoTargeting = {
      description = "Represents targeting information about video.",
      id = "VideoTargeting",
      properties = {
        excludedPositionTypes = {
          description = "A list of video positions to be excluded. When this field is populated, the targeted_position_types field must be empty.",
          items = {
            enum = {
              "POSITION_TYPE_UNSPECIFIED",
              "PREROLL",
              "MIDROLL",
              "POSTROLL",
            },
            enumDescriptions = {
              "A placeholder for an undefined video position.",
              "Ad is played before the video.",
              "Ad is played during the video.",
              "Ad is played after the video.",
            },
            type = "string",
          },
          type = "array",
        },
        targetedPositionTypes = {
          description = "A list of video positions to be included. When this field is populated, the excluded_position_types field must be empty.",
          items = {
            enum = {
              "POSITION_TYPE_UNSPECIFIED",
              "PREROLL",
              "MIDROLL",
              "POSTROLL",
            },
            enumDescriptions = {
              "A placeholder for an undefined video position.",
              "Ad is played before the video.",
              "Ad is played during the video.",
              "Ad is played after the video.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Authorized Buyers Marketplace API",
  version = "v1",
  version_module = true,
}
