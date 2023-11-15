return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/siteverification"] = {
          description = "Manage the list of sites and domains you control",
        },
        ["https://www.googleapis.com/auth/siteverification.verify_only"] = {
          description = "Manage your new site verifications with Google",
        },
      },
    },
  },
  basePath = "/siteVerification/v1/",
  baseUrl = "https://www.googleapis.com/siteVerification/v1/",
  batchPath = "batch/siteVerification/v1",
  description = "Verifies ownership of websites or domains with Google.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/site-verification/",
  etag = "\"u9GIe6H63LSGq-9_t39K2Zx_EAc/ffKkQHIfwnRAzOSRWAT_SYBS6HY\"",
  icons = {
    x16 = "https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png",
    x32 = "https://www.gstatic.com/images/branding/product/1x/googleg_32dp.png",
  },
  id = "siteVerification:v1",
  kind = "discovery#restDescription",
  name = "siteVerification",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "json",
      },
      enumDescriptions = {
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
      default = "false",
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
    webResource = {
      methods = {
        delete = {
          description = "Relinquish ownership of a website or domain.",
          httpMethod = "DELETE",
          id = "siteVerification.webResource.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "The id of a verified site or domain.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webResource/{id}",
          scopes = {
            "https://www.googleapis.com/auth/siteverification",
          },
        },
        get = {
          description = "Get the most current data for a website or domain.",
          httpMethod = "GET",
          id = "siteVerification.webResource.get",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "The id of a verified site or domain.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webResource/{id}",
          response = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/siteverification",
          },
        },
        getToken = {
          description = "Get a verification token for placing on a website or domain.",
          httpMethod = "POST",
          id = "siteVerification.webResource.getToken",
          path = "token",
          request = {
            ["$ref"] = "SiteVerificationWebResourceGettokenRequest",
          },
          response = {
            ["$ref"] = "SiteVerificationWebResourceGettokenResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/siteverification",
            "https://www.googleapis.com/auth/siteverification.verify_only",
          },
        },
        insert = {
          description = "Attempt verification of a website or domain.",
          httpMethod = "POST",
          id = "siteVerification.webResource.insert",
          parameterOrder = {
            "verificationMethod",
          },
          parameters = {
            verificationMethod = {
              description = "The method to use for verifying a site or domain.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "webResource",
          request = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          response = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/siteverification",
            "https://www.googleapis.com/auth/siteverification.verify_only",
          },
        },
        list = {
          description = "Get the list of your verified websites and domains.",
          httpMethod = "GET",
          id = "siteVerification.webResource.list",
          path = "webResource",
          response = {
            ["$ref"] = "SiteVerificationWebResourceListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/siteverification",
          },
        },
        patch = {
          description = "Modify the list of owners for your website or domain. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "siteVerification.webResource.patch",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "The id of a verified site or domain.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webResource/{id}",
          request = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          response = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/siteverification",
          },
        },
        update = {
          description = "Modify the list of owners for your website or domain.",
          httpMethod = "PUT",
          id = "siteVerification.webResource.update",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "The id of a verified site or domain.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webResource/{id}",
          request = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          response = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/siteverification",
          },
        },
      },
    },
  },
  revision = "20191119",
  rootUrl = "https://www.googleapis.com/",
  schemas = {
    SiteVerificationWebResourceGettokenRequest = {
      id = "SiteVerificationWebResourceGettokenRequest",
      properties = {
        site = {
          description = "The site for which a verification token will be generated.",
          properties = {
            identifier = {
              description = "The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name.",
              type = "string",
            },
            type = {
              description = "The type of resource to be verified. Can be SITE or INET_DOMAIN (domain name).",
              type = "string",
            },
          },
          type = "object",
        },
        verificationMethod = {
          description = "The verification method that will be used to verify this site. For sites, 'FILE' or 'META' methods may be used. For domains, only 'DNS' may be used.",
          type = "string",
        },
      },
      type = "object",
    },
    SiteVerificationWebResourceGettokenResponse = {
      id = "SiteVerificationWebResourceGettokenResponse",
      properties = {
        method = {
          description = "The verification method to use in conjunction with this token. For FILE, the token should be placed in the top-level directory of the site, stored inside a file of the same name. For META, the token should be placed in the HEAD tag of the default page that is loaded for the site. For DNS, the token should be placed in a TXT record of the domain.",
          type = "string",
        },
        token = {
          description = "The verification token. The token must be placed appropriately in order for verification to succeed.",
          type = "string",
        },
      },
      type = "object",
    },
    SiteVerificationWebResourceListResponse = {
      id = "SiteVerificationWebResourceListResponse",
      properties = {
        items = {
          description = "The list of sites that are owned by the authenticated user.",
          items = {
            ["$ref"] = "SiteVerificationWebResourceResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SiteVerificationWebResourceResource = {
      id = "SiteVerificationWebResourceResource",
      properties = {
        id = {
          description = "The string used to identify this site. This value should be used in the \"id\" portion of the REST URL for the Get, Update, and Delete operations.",
          type = "string",
        },
        owners = {
          description = "The email addresses of all verified owners.",
          items = {
            type = "string",
          },
          type = "array",
        },
        site = {
          description = "The address and type of a site that is verified or will be verified.",
          properties = {
            identifier = {
              description = "The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name.",
              type = "string",
            },
            type = {
              description = "The site type. Can be SITE or INET_DOMAIN (domain name).",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
  },
  servicePath = "siteVerification/v1/",
  title = "Google Site Verification API",
  version = "v1",
}
