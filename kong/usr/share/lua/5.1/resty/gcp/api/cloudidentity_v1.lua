return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-identity.devices"] = {
          description = "Private Service: https://www.googleapis.com/auth/cloud-identity.devices",
        },
        ["https://www.googleapis.com/auth/cloud-identity.devices.lookup"] = {
          description = "See your device details",
        },
        ["https://www.googleapis.com/auth/cloud-identity.devices.readonly"] = {
          description = "Private Service: https://www.googleapis.com/auth/cloud-identity.devices.readonly",
        },
        ["https://www.googleapis.com/auth/cloud-identity.groups"] = {
          description = "See, change, create, and delete any of the Cloud Identity Groups that you can access, including the members of each group",
        },
        ["https://www.googleapis.com/auth/cloud-identity.groups.readonly"] = {
          description = "See any Cloud Identity Groups that you can access, including group members and their emails",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudidentity.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Identity",
  description = "API for provisioning and managing identity resources.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/identity/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudidentity:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudidentity.mtls.googleapis.com/",
  name = "cloudidentity",
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
    customers = {
      resources = {
        userinvitations = {
          methods = {
            cancel = {
              description = "Cancels a UserInvitation that was already sent.",
              flatPath = "v1/customers/{customersId}/userinvitations/{userinvitationsId}:cancel",
              httpMethod = "POST",
              id = "cloudidentity.customers.userinvitations.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}`",
                  location = "path",
                  pattern = "^customers/[^/]+/userinvitations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:cancel",
              request = {
                ["$ref"] = "CancelUserInvitationRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
            },
            get = {
              description = "Retrieves a UserInvitation resource. **Note:** New consumer accounts with the customer's verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.",
              flatPath = "v1/customers/{customersId}/userinvitations/{userinvitationsId}",
              httpMethod = "GET",
              id = "cloudidentity.customers.userinvitations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}`",
                  location = "path",
                  pattern = "^customers/[^/]+/userinvitations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "UserInvitation",
              },
            },
            isInvitableUser = {
              description = "Verifies whether a user account is eligible to receive a UserInvitation (is an unmanaged account). Eligibility is based on the following criteria: * the email address is a consumer account and it's the primary email address of the account, and * the domain of the email address matches an existing verified Google Workspace or Cloud Identity domain If both conditions are met, the user is eligible. **Note:** This method is not supported for Workspace Essentials customers.",
              flatPath = "v1/customers/{customersId}/userinvitations/{userinvitationsId}:isInvitableUser",
              httpMethod = "GET",
              id = "cloudidentity.customers.userinvitations.isInvitableUser",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}`",
                  location = "path",
                  pattern = "^customers/[^/]+/userinvitations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:isInvitableUser",
              response = {
                ["$ref"] = "IsInvitableUserResponse",
              },
            },
            list = {
              description = "Retrieves a list of UserInvitation resources. **Note:** New consumer accounts with the customer's verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.",
              flatPath = "v1/customers/{customersId}/userinvitations",
              httpMethod = "GET",
              id = "cloudidentity.customers.userinvitations.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. A query string for filtering `UserInvitation` results by their current state, in the format: `\"state=='invited'\"`.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Optional. The sort order of the list results. You can sort the results in descending order based on either email or last update timestamp but not both, using `order_by=\"email desc\"`. Currently, sorting is supported for `update_time asc`, `update_time desc`, `email asc`, and `email desc`. If not specified, results will be returned based on `email asc` order.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of UserInvitation resources to return. If unspecified, at most 100 resources will be returned. The maximum value is 200; values above 200 will be set to 200.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token, received from a previous `ListUserInvitations` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBooks` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The customer ID of the Google Workspace or Cloud Identity account the UserInvitation resources are associated with.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/userinvitations",
              response = {
                ["$ref"] = "ListUserInvitationsResponse",
              },
            },
            send = {
              description = "Sends a UserInvitation to email. If the `UserInvitation` does not exist for this request and it is a valid request, the request creates a `UserInvitation`. **Note:** The `get` and `list` methods have a 48-hour delay where newly-created consumer accounts will not appear in the results. You can still send a `UserInvitation` to those accounts if you know the unmanaged email address and IsInvitableUser==True.",
              flatPath = "v1/customers/{customersId}/userinvitations/{userinvitationsId}:send",
              httpMethod = "POST",
              id = "cloudidentity.customers.userinvitations.send",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}`",
                  location = "path",
                  pattern = "^customers/[^/]+/userinvitations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:send",
              request = {
                ["$ref"] = "SendUserInvitationRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
            },
          },
        },
      },
    },
    devices = {
      methods = {
        cancelWipe = {
          description = "Cancels an unfinished device wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped. This operation is possible when the device is in a \"pending wipe\" state. The device enters the \"pending wipe\" state when a wipe device command is issued, but has not yet been sent to the device. The cancel wipe will fail if the wipe command has already been issued to the device.",
          flatPath = "v1/devices/{devicesId}:cancelWipe",
          httpMethod = "POST",
          id = "cloudidentity.devices.cancelWipe",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique ID assigned to the Device.",
              location = "path",
              pattern = "^devices/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:cancelWipe",
          request = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.devices",
          },
        },
        create = {
          description = "Creates a device. Only company-owned device may be created. **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium",
          flatPath = "v1/devices",
          httpMethod = "POST",
          id = "cloudidentity.devices.create",
          parameterOrder = {},
          parameters = {
            customer = {
              description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/devices",
          request = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1Device",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.devices",
          },
        },
        delete = {
          description = "Deletes the specified device.",
          flatPath = "v1/devices/{devicesId}",
          httpMethod = "DELETE",
          id = "cloudidentity.devices.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            customer = {
              description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
              location = "query",
              type = "string",
            },
            name = {
              description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique ID assigned to the Device.",
              location = "path",
              pattern = "^devices/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.devices",
          },
        },
        get = {
          description = "Retrieves the specified device.",
          flatPath = "v1/devices/{devicesId}",
          httpMethod = "GET",
          id = "cloudidentity.devices.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            customer = {
              description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Customer in the format: `customers/{customer}`, where customer is the customer to whom the device belongs. If you're using this API for your own organization, use `customers/my_customer`. If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
              location = "query",
              type = "string",
            },
            name = {
              description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in the format: `devices/{device}`, where device is the unique ID assigned to the Device.",
              location = "path",
              pattern = "^devices/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1Device",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.devices",
            "https://www.googleapis.com/auth/cloud-identity.devices.readonly",
          },
        },
        list = {
          description = "Lists/Searches devices.",
          flatPath = "v1/devices",
          httpMethod = "GET",
          id = "cloudidentity.devices.list",
          parameterOrder = {},
          parameters = {
            customer = {
              description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer in the format: `customers/{customer}`, where customer is the customer to whom the device belongs. If you're using this API for your own organization, use `customers/my_customer`. If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
              location = "query",
              type = "string",
            },
            filter = {
              description = "Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to [Mobile device search fields](https://developers.google.com/admin-sdk/directory/v1/search-operators). Multiple search fields are separated by the space character.",
              location = "query",
              type = "string",
            },
            orderBy = {
              description = "Optional. Order specification for devices in the response. Only one of the following field names may be used to specify the order: `create_time`, `last_sync_time`, `model`, `os_version`, `device_type` and `serial_number`. `desc` may be specified optionally at the end to specify results to be sorted in descending order. Default order is ascending.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The maximum number of Devices to return. If unspecified, at most 20 Devices will be returned. The maximum value is 100; values above 100 will be coerced to 100.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A page token, received from a previous `ListDevices` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListDevices` must match the call that provided the page token.",
              location = "query",
              type = "string",
            },
            view = {
              description = "Optional. The view to use for the List request.",
              enum = {
                "VIEW_UNSPECIFIED",
                "COMPANY_INVENTORY",
                "USER_ASSIGNED_DEVICES",
              },
              enumDescriptions = {
                "Default value. The value is unused.",
                "This view contains all devices imported by the company admin. Each device in the response contains all information specified by the company admin when importing the device (i.e. asset tags). This includes devices that may be unaassigned or assigned to users.",
                "This view contains all devices with at least one user registered on the device. Each device in the response contains all device information, except for asset tags.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/devices",
          response = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1ListDevicesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.devices",
            "https://www.googleapis.com/auth/cloud-identity.devices.readonly",
          },
        },
        wipe = {
          description = "Wipes all data on the specified device.",
          flatPath = "v1/devices/{devicesId}:wipe",
          httpMethod = "POST",
          id = "cloudidentity.devices.wipe",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}/deviceUsers/{device_user}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.",
              location = "path",
              pattern = "^devices/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:wipe",
          request = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1WipeDeviceRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.devices",
          },
        },
      },
      resources = {
        deviceUsers = {
          methods = {
            approve = {
              description = "Approves device to access user data.",
              flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}:approve",
              httpMethod = "POST",
              id = "cloudidentity.devices.deviceUsers.approve",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}/deviceUsers/{device_user}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.",
                  location = "path",
                  pattern = "^devices/[^/]+/deviceUsers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:approve",
              request = {
                ["$ref"] = "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices",
              },
            },
            block = {
              description = "Blocks device from accessing user data",
              flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}:block",
              httpMethod = "POST",
              id = "cloudidentity.devices.deviceUsers.block",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}/deviceUsers/{device_user}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.",
                  location = "path",
                  pattern = "^devices/[^/]+/deviceUsers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:block",
              request = {
                ["$ref"] = "GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices",
              },
            },
            cancelWipe = {
              description = "Cancels an unfinished user account wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped.",
              flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}:cancelWipe",
              httpMethod = "POST",
              id = "cloudidentity.devices.deviceUsers.cancelWipe",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}/deviceUsers/{device_user}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.",
                  location = "path",
                  pattern = "^devices/[^/]+/deviceUsers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:cancelWipe",
              request = {
                ["$ref"] = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices",
              },
            },
            delete = {
              description = "Deletes the specified DeviceUser. This also revokes the user's access to device data.",
              flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}",
              httpMethod = "DELETE",
              id = "cloudidentity.devices.deviceUsers.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                customer = {
                  description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}/deviceUsers/{device_user}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.",
                  location = "path",
                  pattern = "^devices/[^/]+/deviceUsers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices",
              },
            },
            get = {
              description = "Retrieves the specified DeviceUser",
              flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}",
              httpMethod = "GET",
              id = "cloudidentity.devices.deviceUsers.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                customer = {
                  description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}/deviceUsers/{device_user}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.",
                  location = "path",
                  pattern = "^devices/[^/]+/deviceUsers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleAppsCloudidentityDevicesV1DeviceUser",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices",
                "https://www.googleapis.com/auth/cloud-identity.devices.readonly",
              },
            },
            list = {
              description = "Lists/Searches DeviceUsers.",
              flatPath = "v1/devices/{devicesId}/deviceUsers",
              httpMethod = "GET",
              id = "cloudidentity.devices.deviceUsers.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                customer = {
                  description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to [Mobile device search fields](https://developers.google.com/admin-sdk/directory/v1/search-operators). Multiple search fields are separated by the space character.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Optional. Order specification for devices in the response.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of DeviceUsers to return. If unspecified, at most 5 DeviceUsers will be returned. The maximum value is 20; values above 20 will be coerced to 20.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token, received from a previous `ListDeviceUsers` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBooks` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. To list all DeviceUsers, set this to \"devices/-\". To list all DeviceUsers owned by a device, set this to the resource name of the device. Format: devices/{device}",
                  location = "path",
                  pattern = "^devices/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/deviceUsers",
              response = {
                ["$ref"] = "GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices",
                "https://www.googleapis.com/auth/cloud-identity.devices.readonly",
              },
            },
            lookup = {
              description = "Looks up resource names of the DeviceUsers associated with the caller's credentials, as well as the properties provided in the request. This method must be called with end-user credentials with the scope: https://www.googleapis.com/auth/cloud-identity.devices.lookup If multiple properties are provided, only DeviceUsers having all of these properties are considered as matches - i.e. the query behaves like an AND. Different platforms require different amounts of information from the caller to ensure that the DeviceUser is uniquely identified. - iOS: No properties need to be passed, the caller's credentials are sufficient to identify the corresponding DeviceUser. - Android: Specifying the 'android_id' field is required. - Desktop: Specifying the 'raw_resource_id' field is required.",
              flatPath = "v1/devices/{devicesId}/deviceUsers:lookup",
              httpMethod = "GET",
              id = "cloudidentity.devices.deviceUsers.lookup",
              parameterOrder = {
                "parent",
              },
              parameters = {
                androidId = {
                  description = "Android Id returned by [Settings.Secure#ANDROID_ID](https://developer.android.com/reference/android/provider/Settings.Secure.html#ANDROID_ID).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of DeviceUsers to return. If unspecified, at most 20 DeviceUsers will be returned. The maximum value is 20; values above 20 will be coerced to 20.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `LookupDeviceUsers` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `LookupDeviceUsers` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Must be set to \"devices/-/deviceUsers\" to search across all DeviceUser belonging to the user.",
                  location = "path",
                  pattern = "^devices/[^/]+/deviceUsers$",
                  required = true,
                  type = "string",
                },
                rawResourceId = {
                  description = "Raw Resource Id used by Google Endpoint Verification. If the user is enrolled into Google Endpoint Verification, this id will be saved as the 'device_resource_id' field in the following platform dependent files. Mac: ~/.secureConnect/context_aware_config.json Windows: C:\\Users\\%USERPROFILE%\\.secureConnect\\context_aware_config.json Linux: ~/.secureConnect/context_aware_config.json",
                  location = "query",
                  type = "string",
                },
                userId = {
                  description = "The user whose DeviceUser's resource name will be fetched. Must be set to 'me' to fetch the DeviceUser's resource name for the calling user.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}:lookup",
              response = {
                ["$ref"] = "GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices.lookup",
              },
            },
            wipe = {
              description = "Wipes the user's account on a device. Other data on the device that is not associated with the user's work account is not affected. For example, if a Gmail app is installed on a device that is used for personal and work purposes, and the user is logged in to the Gmail app with their personal account as well as their work account, wiping the \"deviceUser\" by their work administrator will not affect their personal account within Gmail or other apps such as Photos.",
              flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}:wipe",
              httpMethod = "POST",
              id = "cloudidentity.devices.deviceUsers.wipe",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}/deviceUsers/{device_user}`, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.",
                  location = "path",
                  pattern = "^devices/[^/]+/deviceUsers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:wipe",
              request = {
                ["$ref"] = "GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.devices",
              },
            },
          },
          resources = {
            clientStates = {
              methods = {
                get = {
                  description = "Gets the client state for the device user",
                  flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}/clientStates/{clientStatesId}",
                  httpMethod = "GET",
                  id = "cloudidentity.devices.deviceUsers.clientStates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    customer = {
                      description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devices/{device}/deviceUsers/{device_user}/clientStates/{partner}`, where `device` is the unique ID assigned to the Device, `device_user` is the unique ID assigned to the User and `partner` identifies the partner storing the data. To get the client state for devices belonging to your own organization, the `partnerId` is in the format: `customerId-*anystring*`. Where the `customerId` is your organization's customer ID and `anystring` is any suffix. This suffix is used in setting up Custom Access Levels in Context-Aware Access. You may use `my_customer` instead of the customer ID for devices managed by your own organization. You may specify `-` in place of the `{device}`, so the ClientState resource name can be: `devices/-/deviceUsers/{device_user_resource}/clientStates/{partner}`.",
                      location = "path",
                      pattern = "^devices/[^/]+/deviceUsers/[^/]+/clientStates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleAppsCloudidentityDevicesV1ClientState",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-identity.devices",
                    "https://www.googleapis.com/auth/cloud-identity.devices.readonly",
                  },
                },
                list = {
                  description = "Lists the client states for the given search query.",
                  flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}/clientStates",
                  httpMethod = "GET",
                  id = "cloudidentity.devices.deviceUsers.clientStates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    customer = {
                      description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
                      location = "query",
                      type = "string",
                    },
                    filter = {
                      description = "Optional. Additional restrictions when fetching list of client states.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Order specification for client states in the response.",
                      location = "query",
                      type = "string",
                    },
                    pageToken = {
                      description = "Optional. A page token, received from a previous `ListClientStates` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListClientStates` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. To list all ClientStates, set this to \"devices/-/deviceUsers/-\". To list all ClientStates owned by a DeviceUser, set this to the resource name of the DeviceUser. Format: devices/{device}/deviceUsers/{deviceUser}",
                      location = "path",
                      pattern = "^devices/[^/]+/deviceUsers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/clientStates",
                  response = {
                    ["$ref"] = "GoogleAppsCloudidentityDevicesV1ListClientStatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-identity.devices",
                    "https://www.googleapis.com/auth/cloud-identity.devices.readonly",
                  },
                },
                patch = {
                  description = "Updates the client state for the device user **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium",
                  flatPath = "v1/devices/{devicesId}/deviceUsers/{deviceUsersId}/clientStates/{clientStatesId}",
                  httpMethod = "PATCH",
                  id = "cloudidentity.devices.deviceUsers.clientStates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    customer = {
                      description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devices/{device}/deviceUsers/{device_user}/clientState/{partner}`, where partner corresponds to the partner storing the data. For partners belonging to the \"BeyondCorp Alliance\", this is the partner ID specified to you by Google. For all other callers, this is a string of the form: `{customer}-suffix`, where `customer` is your customer ID. The *suffix* is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization's customer ID can be obtained from the URL: `GET https://www.googleapis.com/admin/directory/v1/customers/my_customer` The `id` field in the response contains the customer ID starting with the letter 'C'. The customer ID to be used in this API is the string after the letter 'C' (not including 'C')",
                      location = "path",
                      pattern = "^devices/[^/]+/deviceUsers/[^/]+/clientStates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Comma-separated list of fully qualified names of fields to be updated. If not specified, all updatable fields in ClientState are updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleAppsCloudidentityDevicesV1ClientState",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-identity.devices",
                  },
                },
              },
            },
          },
        },
      },
    },
    groups = {
      methods = {
        create = {
          description = "Creates a Group.",
          flatPath = "v1/groups",
          httpMethod = "POST",
          id = "cloudidentity.groups.create",
          parameterOrder = {},
          parameters = {
            initialGroupConfig = {
              description = "Optional. The initial configuration option for the `Group`.",
              enum = {
                "INITIAL_GROUP_CONFIG_UNSPECIFIED",
                "WITH_INITIAL_OWNER",
                "EMPTY",
              },
              enumDescriptions = {
                "Default. Should not be used.",
                "The end user making the request will be added as the initial owner of the `Group`.",
                "An empty group is created without any initial owners. This can only be used by admins of the domain.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/groups",
          request = {
            ["$ref"] = "Group",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a `Group`.",
          flatPath = "v1/groups/{groupsId}",
          httpMethod = "DELETE",
          id = "cloudidentity.groups.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group` to retrieve. Must be of the form `groups/{group}`.",
              location = "path",
              pattern = "^groups/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Retrieves a `Group`.",
          flatPath = "v1/groups/{groupsId}",
          httpMethod = "GET",
          id = "cloudidentity.groups.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group` to retrieve. Must be of the form `groups/{group}`.",
              location = "path",
              pattern = "^groups/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Group",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getSecuritySettings = {
          description = "Get Security Settings",
          flatPath = "v1/groups/{groupsId}/securitySettings",
          httpMethod = "GET",
          id = "cloudidentity.groups.getSecuritySettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The security settings to retrieve. Format: `groups/{group_id}/securitySettings`",
              location = "path",
              pattern = "^groups/[^/]+/securitySettings$",
              required = true,
              type = "string",
            },
            readMask = {
              description = "Field-level read mask of which fields to return. \"*\" returns all fields. If not specified, all fields will be returned. May only contain the following field: `member_restriction`.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "SecuritySettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists the `Group` resources under a customer or namespace.",
          flatPath = "v1/groups",
          httpMethod = "GET",
          id = "cloudidentity.groups.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a `next_page_token`. If unspecified, defaults to 200 for `View.BASIC` and to 50 for `View.FULL`. Must not be greater than 1000 for `View.BASIC` or 500 for `View.FULL`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The `next_page_token` value returned from a previous list request, if any.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The parent resource under which to list all `Group` resources. Must be of the form `identitysources/{identity_source}` for external- identity-mapped groups or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with \"C\" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)",
              location = "query",
              type = "string",
            },
            view = {
              description = "The level of detail to be returned. If unspecified, defaults to `View.BASIC`.",
              enum = {
                "VIEW_UNSPECIFIED",
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Default. Should not be used.",
                "Only basic resource information is returned.",
                "All resource information is returned.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/groups",
          response = {
            ["$ref"] = "ListGroupsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        lookup = {
          description = "Looks up the [resource name](https://cloud.google.com/apis/design/resource_names) of a `Group` by its `EntityKey`.",
          flatPath = "v1/groups:lookup",
          httpMethod = "GET",
          id = "cloudidentity.groups.lookup",
          parameterOrder = {},
          parameters = {
            ["groupKey.id"] = {
              description = "The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user. For external-identity-mapped entities, the `id` must be a string conforming to the Identity Source's requirements. Must be unique within a `namespace`.",
              location = "query",
              type = "string",
            },
            ["groupKey.namespace"] = {
              description = "The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/{identity_source}`.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/groups:lookup",
          response = {
            ["$ref"] = "LookupGroupNameResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates a `Group`.",
          flatPath = "v1/groups/{groupsId}",
          httpMethod = "PATCH",
          id = "cloudidentity.groups.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Output only. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group}`.",
              location = "path",
              pattern = "^groups/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. The names of fields to update. May only contain the following field names: `display_name`, `description`, `labels`.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "Group",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        search = {
          description = "Searches for `Group` resources matching a specified query.",
          flatPath = "v1/groups:search",
          httpMethod = "GET",
          id = "cloudidentity.groups.search",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a `next_page_token`. If unspecified, defaults to 200 for `GroupView.BASIC` and 50 for `GroupView.FULL`. Must not be greater than 1000 for `GroupView.BASIC` or 500 for `GroupView.FULL`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The `next_page_token` value returned from a previous search request, if any.",
              location = "query",
              type = "string",
            },
            query = {
              description = "Required. The search query. Must be specified in [Common Expression Language](https://opensource.google/projects/cel). May only contain equality operators on the parent and inclusion operators on labels (e.g., `parent == 'customers/{customer_id}' && 'cloudidentity.googleapis.com/groups.discussion_forum' in labels`). The `customer_id` must begin with \"C\" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)",
              location = "query",
              type = "string",
            },
            view = {
              description = "The level of detail to be returned. If unspecified, defaults to `View.BASIC`.",
              enum = {
                "VIEW_UNSPECIFIED",
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Default. Should not be used.",
                "Only basic resource information is returned.",
                "All resource information is returned.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/groups:search",
          response = {
            ["$ref"] = "SearchGroupsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateSecuritySettings = {
          description = "Update Security Settings",
          flatPath = "v1/groups/{groupsId}/securitySettings",
          httpMethod = "PATCH",
          id = "cloudidentity.groups.updateSecuritySettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Output only. The resource name of the security settings. Shall be of the form `groups/{group_id}/securitySettings`.",
              location = "path",
              pattern = "^groups/[^/]+/securitySettings$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. The fully-qualified names of fields to update. May only contain the following field: `member_restriction.query`.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "SecuritySettings",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-identity.groups",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        memberships = {
          methods = {
            checkTransitiveMembership = {
              description = "Check a potential member for membership in a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A member has membership to a group as long as there is a single viewable transitive membership between the group and the member. The actor must have view permissions to at least one transitive membership between the member and group.",
              flatPath = "v1/groups/{groupsId}/memberships:checkTransitiveMembership",
              httpMethod = "GET",
              id = "cloudidentity.groups.memberships.checkTransitiveMembership",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "[Resource name](https://cloud.google.com/apis/design/resource_names) of the group to check the transitive membership in. Format: `groups/{group}`, where `group` is the unique id assigned to the Group to which the Membership belongs to.",
                  location = "path",
                  pattern = "^groups/[^/]+$",
                  required = true,
                  type = "string",
                },
                query = {
                  description = "Required. A CEL expression that MUST include member specification. This is a `required` field. Certain groups are uniquely identified by both a 'member_key_id' and a 'member_key_namespace', which requires an additional query input: 'member_key_namespace'. Example query: `member_key_id == 'member_key_id_value'`",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/memberships:checkTransitiveMembership",
              response = {
                ["$ref"] = "CheckTransitiveMembershipResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a `Membership`.",
              flatPath = "v1/groups/{groupsId}/memberships",
              httpMethod = "POST",
              id = "cloudidentity.groups.memberships.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent `Group` resource under which to create the `Membership`. Must be of the form `groups/{group}`.",
                  location = "path",
                  pattern = "^groups/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/memberships",
              request = {
                ["$ref"] = "Membership",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a `Membership`.",
              flatPath = "v1/groups/{groupsId}/memberships/{membershipsId}",
              httpMethod = "DELETE",
              id = "cloudidentity.groups.memberships.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership` to delete. Must be of the form `groups/{group}/memberships/{membership}`",
                  location = "path",
                  pattern = "^groups/[^/]+/memberships/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Retrieves a `Membership`.",
              flatPath = "v1/groups/{groupsId}/memberships/{membershipsId}",
              httpMethod = "GET",
              id = "cloudidentity.groups.memberships.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership` to retrieve. Must be of the form `groups/{group}/memberships/{membership}`.",
                  location = "path",
                  pattern = "^groups/[^/]+/memberships/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Membership",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getMembershipGraph = {
              description = "Get a membership graph of just a member or both a member and a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. Given a member, the response will contain all membership paths from the member. Given both a group and a member, the response will contain all membership paths between the group and the member.",
              flatPath = "v1/groups/{groupsId}/memberships:getMembershipGraph",
              httpMethod = "GET",
              id = "cloudidentity.groups.memberships.getMembershipGraph",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in. Format: `groups/{group}`, where `group` is the unique ID assigned to the Group to which the Membership belongs to. group can be a wildcard collection id \"-\". When a group is specified, the membership graph will be constrained to paths between the member (defined in the query) and the parent. If a wildcard collection is provided, all membership paths connected to the member will be returned.",
                  location = "path",
                  pattern = "^groups/[^/]+$",
                  required = true,
                  type = "string",
                },
                query = {
                  description = "Required. A CEL expression that MUST include member specification AND label(s). Certain groups are uniquely identified by both a 'member_key_id' and a 'member_key_namespace', which requires an additional query input: 'member_key_namespace'. Example query: `member_key_id == 'member_key_id_value' && in labels`",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/memberships:getMembershipGraph",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the `Membership`s within a `Group`.",
              flatPath = "v1/groups/{groupsId}/memberships",
              httpMethod = "GET",
              id = "cloudidentity.groups.memberships.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a `next_page_token`. If unspecified, defaults to 200 for `GroupView.BASIC` and to 50 for `GroupView.FULL`. Must not be greater than 1000 for `GroupView.BASIC` or 500 for `GroupView.FULL`.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The `next_page_token` value returned from a previous search request, if any.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent `Group` resource under which to lookup the `Membership` name. Must be of the form `groups/{group}`.",
                  location = "path",
                  pattern = "^groups/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The level of detail to be returned. If unspecified, defaults to `View.BASIC`.",
                  enum = {
                    "VIEW_UNSPECIFIED",
                    "BASIC",
                    "FULL",
                  },
                  enumDescriptions = {
                    "Default. Should not be used.",
                    "Only basic resource information is returned.",
                    "All resource information is returned.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/memberships",
              response = {
                ["$ref"] = "ListMembershipsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            lookup = {
              description = "Looks up the [resource name](https://cloud.google.com/apis/design/resource_names) of a `Membership` by its `EntityKey`.",
              flatPath = "v1/groups/{groupsId}/memberships:lookup",
              httpMethod = "GET",
              id = "cloudidentity.groups.memberships.lookup",
              parameterOrder = {
                "parent",
              },
              parameters = {
                ["memberKey.id"] = {
                  description = "The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user. For external-identity-mapped entities, the `id` must be a string conforming to the Identity Source's requirements. Must be unique within a `namespace`.",
                  location = "query",
                  type = "string",
                },
                ["memberKey.namespace"] = {
                  description = "The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/{identity_source}`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent `Group` resource under which to lookup the `Membership` name. Must be of the form `groups/{group}`.",
                  location = "path",
                  pattern = "^groups/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/memberships:lookup",
              response = {
                ["$ref"] = "LookupMembershipNameResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            modifyMembershipRoles = {
              description = "Modifies the `MembershipRole`s of a `Membership`.",
              flatPath = "v1/groups/{groupsId}/memberships/{membershipsId}:modifyMembershipRoles",
              httpMethod = "POST",
              id = "cloudidentity.groups.memberships.modifyMembershipRoles",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership` whose roles are to be modified. Must be of the form `groups/{group}/memberships/{membership}`.",
                  location = "path",
                  pattern = "^groups/[^/]+/memberships/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:modifyMembershipRoles",
              request = {
                ["$ref"] = "ModifyMembershipRolesRequest",
              },
              response = {
                ["$ref"] = "ModifyMembershipRolesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            searchTransitiveGroups = {
              description = "Search transitive groups of a member. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive group is any group that has a direct or indirect membership to the member. Actor must have view permissions all transitive groups.",
              flatPath = "v1/groups/{groupsId}/memberships:searchTransitiveGroups",
              httpMethod = "GET",
              id = "cloudidentity.groups.memberships.searchTransitiveGroups",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The default page size is 200 (max 1000).",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The next_page_token value returned from a previous list request, if any.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "[Resource name](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in. Format: `groups/{group}`, where `group` is always '-' as this API will search across all groups for a given member.",
                  location = "path",
                  pattern = "^groups/[^/]+$",
                  required = true,
                  type = "string",
                },
                query = {
                  description = "Required. A CEL expression that MUST include member specification AND label(s). This is a `required` field. Users can search on label attributes of groups. CONTAINS match ('in') is supported on labels. Identity-mapped groups are uniquely identified by both a `member_key_id` and a `member_key_namespace`, which requires an additional query input: `member_key_namespace`. Example query: `member_key_id == 'member_key_id_value' && in labels`",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/memberships:searchTransitiveGroups",
              response = {
                ["$ref"] = "SearchTransitiveGroupsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            searchTransitiveMemberships = {
              description = "Search transitive memberships of a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the group is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive membership is any direct or indirect membership of a group. Actor must have view permissions to all transitive memberships.",
              flatPath = "v1/groups/{groupsId}/memberships:searchTransitiveMemberships",
              httpMethod = "GET",
              id = "cloudidentity.groups.memberships.searchTransitiveMemberships",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The default page size is 200 (max 1000).",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The next_page_token value returned from a previous list request, if any.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "[Resource name](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in. Format: `groups/{group}`, where `group` is the unique ID assigned to the Group.",
                  location = "path",
                  pattern = "^groups/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/memberships:searchTransitiveMemberships",
              response = {
                ["$ref"] = "SearchTransitiveMembershipsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-identity.groups",
                "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230102",
  rootUrl = "https://cloudidentity.googleapis.com/",
  schemas = {
    CancelUserInvitationRequest = {
      description = "Request to cancel sent invitation for target email in UserInvitation.",
      id = "CancelUserInvitationRequest",
      properties = {},
      type = "object",
    },
    CheckTransitiveMembershipResponse = {
      description = "The response message for MembershipsService.CheckTransitiveMembership.",
      id = "CheckTransitiveMembershipResponse",
      properties = {
        hasMembership = {
          description = "Response does not include the possible roles of a member since the behavior of this rpc is not all-or-nothing unlike the other rpcs. So, it may not be possible to list all the roles definitively, due to possible lack of authorization in some of the paths.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CreateGroupMetadata = {
      description = "Metadata for CreateGroup LRO.",
      id = "CreateGroupMetadata",
      properties = {},
      type = "object",
    },
    CreateMembershipMetadata = {
      description = "Metadata for CreateMembership LRO.",
      id = "CreateMembershipMetadata",
      properties = {},
      type = "object",
    },
    DeleteGroupMetadata = {
      description = "Metadata for DeleteGroup LRO.",
      id = "DeleteGroupMetadata",
      properties = {},
      type = "object",
    },
    DeleteMembershipMetadata = {
      description = "Metadata for DeleteMembership LRO.",
      id = "DeleteMembershipMetadata",
      properties = {},
      type = "object",
    },
    DynamicGroupMetadata = {
      description = "Dynamic group metadata like queries and status.",
      id = "DynamicGroupMetadata",
      properties = {
        queries = {
          description = "Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.",
          items = {
            ["$ref"] = "DynamicGroupQuery",
          },
          type = "array",
        },
        status = {
          ["$ref"] = "DynamicGroupStatus",
          description = "Output only. Status of the dynamic group.",
          readOnly = true,
        },
      },
      type = "object",
    },
    DynamicGroupQuery = {
      description = "Defines a query on a resource.",
      id = "DynamicGroupQuery",
      properties = {
        query = {
          description = "Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`",
          type = "string",
        },
        resourceType = {
          description = "Resource type for the Dynamic Group Query",
          enum = {
            "RESOURCE_TYPE_UNSPECIFIED",
            "USER",
          },
          enumDescriptions = {
            "Default value (not valid)",
            "For queries on User",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DynamicGroupStatus = {
      description = "The current status of a dynamic group along with timestamp.",
      id = "DynamicGroupStatus",
      properties = {
        status = {
          description = "Status of the dynamic group.",
          enum = {
            "STATUS_UNSPECIFIED",
            "UP_TO_DATE",
            "UPDATING_MEMBERSHIPS",
            "INVALID_QUERY",
          },
          enumDescriptions = {
            "Default.",
            "The dynamic group is up-to-date.",
            "The dynamic group has just been created and memberships are being updated.",
            "Group is in an unrecoverable state and its memberships can't be updated.",
          },
          type = "string",
        },
        statusTime = {
          description = "The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    EntityKey = {
      description = "A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional `namespace` or a user without a `namespace`. The combination of `id` and `namespace` must be unique; however, the same `id` can be used with different `namespace`s.",
      id = "EntityKey",
      properties = {
        id = {
          description = "The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user. For external-identity-mapped entities, the `id` must be a string conforming to the Identity Source's requirements. Must be unique within a `namespace`.",
          type = "string",
        },
        namespace = {
          description = "The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/{identity_source}`.",
          type = "string",
        },
      },
      type = "object",
    },
    ExpiryDetail = {
      description = "The `MembershipRole` expiry details.",
      id = "ExpiryDetail",
      properties = {
        expireTime = {
          description = "The time at which the `MembershipRole` will expire.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GetMembershipGraphMetadata = {
      description = "Metadata of GetMembershipGraphResponse LRO. This is currently empty to permit future extensibility.",
      id = "GetMembershipGraphMetadata",
      properties = {},
      type = "object",
    },
    GetMembershipGraphResponse = {
      description = "The response message for MembershipsService.GetMembershipGraph.",
      id = "GetMembershipGraphResponse",
      properties = {
        adjacencyList = {
          description = "The membership graph's path information represented as an adjacency list.",
          items = {
            ["$ref"] = "MembershipAdjacencyList",
          },
          type = "array",
        },
        groups = {
          description = "The resources representing each group in the adjacency list. Each group in this list can be correlated to a 'group' of the MembershipAdjacencyList using the 'name' of the Group resource.",
          items = {
            ["$ref"] = "Group",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1AndroidAttributes = {
      description = "Resource representing the Android specific attributes of a Device.",
      id = "GoogleAppsCloudidentityDevicesV1AndroidAttributes",
      properties = {
        enabledUnknownSources = {
          description = "Whether applications from unknown sources can be installed on device.",
          type = "boolean",
        },
        ownerProfileAccount = {
          description = "Whether this account is on an owner/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles.",
          type = "boolean",
        },
        ownershipPrivilege = {
          description = "Ownership privileges on device.",
          enum = {
            "OWNERSHIP_PRIVILEGE_UNSPECIFIED",
            "DEVICE_ADMINISTRATOR",
            "PROFILE_OWNER",
            "DEVICE_OWNER",
          },
          enumDescriptions = {
            "Ownership privilege is not set.",
            "Active device administrator privileges on the device.",
            "Profile Owner privileges. The account is in a managed corporate profile.",
            "Device Owner privileges on the device.",
          },
          type = "string",
        },
        supportsWorkProfile = {
          description = "Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the \"Enforce Work Profile\" policy.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata = {
      description = "Metadata for ApproveDeviceUser LRO.",
      id = "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest = {
      description = "Request message for approving the device to access user data.",
      id = "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest",
      properties = {
        customer = {
          description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse = {
      description = "Response message for approving the device to access user data.",
      id = "GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse",
      properties = {
        deviceUser = {
          ["$ref"] = "GoogleAppsCloudidentityDevicesV1DeviceUser",
          description = "Resultant DeviceUser object for the action.",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata = {
      description = "Metadata for BlockDeviceUser LRO.",
      id = "GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = {
      description = "Request message for blocking account on device.",
      id = "GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest",
      properties = {
        customer = {
          description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse = {
      description = "Response message for blocking the device from accessing user data.",
      id = "GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse",
      properties = {
        deviceUser = {
          ["$ref"] = "GoogleAppsCloudidentityDevicesV1DeviceUser",
          description = "Resultant DeviceUser object for the action.",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata = {
      description = "Metadata for CancelWipeDevice LRO.",
      id = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest = {
      description = "Request message for cancelling an unfinished device wipe.",
      id = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest",
      properties = {
        customer = {
          description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse = {
      description = "Response message for cancelling an unfinished device wipe.",
      id = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse",
      properties = {
        device = {
          ["$ref"] = "GoogleAppsCloudidentityDevicesV1Device",
          description = "Resultant Device object for the action. Note that asset tags will not be returned in the device object.",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata = {
      description = "Metadata for CancelWipeDeviceUser LRO.",
      id = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest = {
      description = "Request message for cancelling an unfinished user account wipe.",
      id = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest",
      properties = {
        customer = {
          description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse = {
      description = "Response message for cancelling an unfinished user account wipe.",
      id = "GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse",
      properties = {
        deviceUser = {
          ["$ref"] = "GoogleAppsCloudidentityDevicesV1DeviceUser",
          description = "Resultant DeviceUser object for the action.",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ClientState = {
      description = "Represents the state associated with an API client calling the Devices API. Resource representing ClientState and supports updates from API users",
      id = "GoogleAppsCloudidentityDevicesV1ClientState",
      properties = {
        assetTags = {
          description = "The caller can specify asset tags for this resource",
          items = {
            type = "string",
          },
          type = "array",
        },
        complianceState = {
          description = "The compliance state of the resource as specified by the API client.",
          enum = {
            "COMPLIANCE_STATE_UNSPECIFIED",
            "COMPLIANT",
            "NON_COMPLIANT",
          },
          enumDescriptions = {
            "The compliance state of the resource is unknown or unspecified.",
            "Device is compliant with third party policies",
            "Device is not compliant with third party policies",
          },
          type = "string",
        },
        createTime = {
          description = "Output only. The time the client state data was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        customId = {
          description = "This field may be used to store a unique identifier for the API resource within which these CustomAttributes are a field.",
          type = "string",
        },
        etag = {
          description = "The token that needs to be passed back for concurrency control in updates. Token needs to be passed back in UpdateRequest",
          type = "string",
        },
        healthScore = {
          description = "The Health score of the resource. The Health score is the callers specification of the condition of the device from a usability point of view. For example, a third-party device management provider may specify a health score based on its compliance with organizational policies.",
          enum = {
            "HEALTH_SCORE_UNSPECIFIED",
            "VERY_POOR",
            "POOR",
            "NEUTRAL",
            "GOOD",
            "VERY_GOOD",
          },
          enumDescriptions = {
            "Default value",
            "The object is in very poor health as defined by the caller.",
            "The object is in poor health as defined by the caller.",
            "The object health is neither good nor poor, as defined by the caller.",
            "The object is in good health as defined by the caller.",
            "The object is in very good health as defined by the caller.",
          },
          type = "string",
        },
        keyValuePairs = {
          additionalProperties = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1CustomAttributeValue",
          },
          description = "The map of key-value attributes stored by callers specific to a device. The total serialized length of this map may not exceed 10KB. No limit is placed on the number of attributes in a map.",
          type = "object",
        },
        lastUpdateTime = {
          description = "Output only. The time the client state data was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        managed = {
          description = "The management state of the resource as specified by the API client.",
          enum = {
            "MANAGED_STATE_UNSPECIFIED",
            "MANAGED",
            "UNMANAGED",
          },
          enumDescriptions = {
            "The management state of the resource is unknown or unspecified.",
            "The resource is managed.",
            "The resource is not managed.",
          },
          type = "string",
        },
        name = {
          description = "Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devices/{device}/deviceUsers/{device_user}/clientState/{partner}`, where partner corresponds to the partner storing the data. For partners belonging to the \"BeyondCorp Alliance\", this is the partner ID specified to you by Google. For all other callers, this is a string of the form: `{customer}-suffix`, where `customer` is your customer ID. The *suffix* is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization's customer ID can be obtained from the URL: `GET https://www.googleapis.com/admin/directory/v1/customers/my_customer` The `id` field in the response contains the customer ID starting with the letter 'C'. The customer ID to be used in this API is the string after the letter 'C' (not including 'C')",
          readOnly = true,
          type = "string",
        },
        ownerType = {
          description = "Output only. The owner of the ClientState",
          enum = {
            "OWNER_TYPE_UNSPECIFIED",
            "OWNER_TYPE_CUSTOMER",
            "OWNER_TYPE_PARTNER",
          },
          enumDescriptions = {
            "Unknown owner type",
            "Customer is the owner",
            "Partner is the owner",
          },
          readOnly = true,
          type = "string",
        },
        scoreReason = {
          description = "A descriptive cause of the health score.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata = {
      description = "Metadata for CreateDevice LRO.",
      id = "GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1CustomAttributeValue = {
      description = "Additional custom attribute values may be one of these types",
      id = "GoogleAppsCloudidentityDevicesV1CustomAttributeValue",
      properties = {
        boolValue = {
          description = "Represents a boolean value.",
          type = "boolean",
        },
        numberValue = {
          description = "Represents a double value.",
          format = "double",
          type = "number",
        },
        stringValue = {
          description = "Represents a string value.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata = {
      description = "Metadata for DeleteDevice LRO.",
      id = "GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata = {
      description = "Metadata for DeleteDeviceUser LRO.",
      id = "GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1Device = {
      description = " A Device within the Cloud Identity Devices API. Represents a Device known to Google Cloud, independent of the device ownership, type, and whether it is assigned or in use by a user.",
      id = "GoogleAppsCloudidentityDevicesV1Device",
      properties = {
        androidSpecificAttributes = {
          ["$ref"] = "GoogleAppsCloudidentityDevicesV1AndroidAttributes",
          description = "Output only. Attributes specific to Android devices.",
          readOnly = true,
        },
        assetTag = {
          description = "Asset tag of the device.",
          type = "string",
        },
        basebandVersion = {
          description = "Output only. Baseband version of the device.",
          readOnly = true,
          type = "string",
        },
        bootloaderVersion = {
          description = "Output only. Device bootloader version. Example: 0.6.7.",
          readOnly = true,
          type = "string",
        },
        brand = {
          description = "Output only. Device brand. Example: Samsung.",
          readOnly = true,
          type = "string",
        },
        buildNumber = {
          description = "Output only. Build number of the device.",
          readOnly = true,
          type = "string",
        },
        compromisedState = {
          description = "Output only. Represents whether the Device is compromised.",
          enum = {
            "COMPROMISED_STATE_UNSPECIFIED",
            "COMPROMISED",
            "UNCOMPROMISED",
          },
          enumDescriptions = {
            "Default value.",
            "The device is compromised (currently, this means Android device is rooted).",
            "The device is safe (currently, this means Android device is unrooted).",
          },
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. When the Company-Owned device was imported. This field is empty for BYOD devices.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deviceId = {
          description = "Unique identifier for the device.",
          type = "string",
        },
        deviceType = {
          description = "Output only. Type of device.",
          enum = {
            "DEVICE_TYPE_UNSPECIFIED",
            "ANDROID",
            "IOS",
            "GOOGLE_SYNC",
            "WINDOWS",
            "MAC_OS",
            "LINUX",
            "CHROME_OS",
          },
          enumDescriptions = {
            "Unknown device type",
            "Device is an Android device",
            "Device is an iOS device",
            "Device is a Google Sync device.",
            "Device is a Windows device.",
            "Device is a MacOS device.",
            "Device is a Linux device.",
            "Device is a ChromeOS device.",
          },
          readOnly = true,
          type = "string",
        },
        enabledDeveloperOptions = {
          description = "Output only. Whether developer options is enabled on device.",
          readOnly = true,
          type = "boolean",
        },
        enabledUsbDebugging = {
          description = "Output only. Whether USB debugging is enabled on device.",
          readOnly = true,
          type = "boolean",
        },
        encryptionState = {
          description = "Output only. Device encryption state.",
          enum = {
            "ENCRYPTION_STATE_UNSPECIFIED",
            "UNSUPPORTED_BY_DEVICE",
            "ENCRYPTED",
            "NOT_ENCRYPTED",
          },
          enumDescriptions = {
            "Encryption Status is not set.",
            "Device doesn't support encryption.",
            "Device is encrypted.",
            "Device is not encrypted.",
          },
          readOnly = true,
          type = "string",
        },
        imei = {
          description = "Output only. IMEI number of device if GSM device; empty otherwise.",
          readOnly = true,
          type = "string",
        },
        kernelVersion = {
          description = "Output only. Kernel version of the device.",
          readOnly = true,
          type = "string",
        },
        lastSyncTime = {
          description = "Most recent time when device synced with this service.",
          format = "google-datetime",
          type = "string",
        },
        managementState = {
          description = "Output only. Management state of the device",
          enum = {
            "MANAGEMENT_STATE_UNSPECIFIED",
            "APPROVED",
            "BLOCKED",
            "PENDING",
            "UNPROVISIONED",
            "WIPING",
            "WIPED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Device is approved.",
            "Device is blocked.",
            "Device is pending approval.",
            "The device is not provisioned. Device will start from this state until some action is taken (i.e. a user starts using the device).",
            "Data and settings on the device are being removed.",
            "All data and settings on the device are removed.",
          },
          readOnly = true,
          type = "string",
        },
        manufacturer = {
          description = "Output only. Device manufacturer. Example: Motorola.",
          readOnly = true,
          type = "string",
        },
        meid = {
          description = "Output only. MEID number of device if CDMA device; empty otherwise.",
          readOnly = true,
          type = "string",
        },
        model = {
          description = "Output only. Model name of device. Example: Pixel 3.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique id assigned to the Device.",
          readOnly = true,
          type = "string",
        },
        networkOperator = {
          description = "Output only. Mobile or network operator of device, if available.",
          readOnly = true,
          type = "string",
        },
        osVersion = {
          description = "Output only. OS version of the device. Example: Android 8.1.0.",
          readOnly = true,
          type = "string",
        },
        otherAccounts = {
          description = "Output only. Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: \"com.example\", \"xyz.com\".",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        ownerType = {
          description = "Output only. Whether the device is owned by the company or an individual",
          enum = {
            "DEVICE_OWNERSHIP_UNSPECIFIED",
            "COMPANY",
            "BYOD",
          },
          enumDescriptions = {
            "Default value. The value is unused.",
            "Company owns the device.",
            "Bring Your Own Device (i.e. individual owns the device)",
          },
          readOnly = true,
          type = "string",
        },
        releaseVersion = {
          description = "Output only. OS release version. Example: 6.0.",
          readOnly = true,
          type = "string",
        },
        securityPatchTime = {
          description = "Output only. OS security patch update time on device.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        serialNumber = {
          description = "Serial Number of device. Example: HT82V1A01076.",
          type = "string",
        },
        wifiMacAddresses = {
          description = "WiFi MAC addresses of device.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1DeviceUser = {
      description = "Represents a user's use of a Device in the Cloud Identity Devices API. A DeviceUser is a resource representing a user's use of a Device",
      id = "GoogleAppsCloudidentityDevicesV1DeviceUser",
      properties = {
        compromisedState = {
          description = "Compromised State of the DeviceUser object",
          enum = {
            "COMPROMISED_STATE_UNSPECIFIED",
            "COMPROMISED",
            "NOT_COMPROMISED",
          },
          enumDescriptions = {
            "Compromised state of Device User account is unknown or unspecified.",
            "Device User Account is compromised.",
            "Device User Account is not compromised.",
          },
          type = "string",
        },
        createTime = {
          description = "When the user first signed in to the device",
          format = "google-datetime",
          type = "string",
        },
        firstSyncTime = {
          description = "Output only. Most recent time when user registered with this service.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        languageCode = {
          description = "Output only. Default locale used on device, in IETF BCP-47 format.",
          readOnly = true,
          type = "string",
        },
        lastSyncTime = {
          description = "Output only. Last time when user synced with policies.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        managementState = {
          description = "Output only. Management state of the user on the device.",
          enum = {
            "MANAGEMENT_STATE_UNSPECIFIED",
            "WIPING",
            "WIPED",
            "APPROVED",
            "BLOCKED",
            "PENDING_APPROVAL",
            "UNENROLLED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "This user's data and profile is being removed from the device.",
            "This user's data and profile is removed from the device.",
            "User is approved to access data on the device.",
            "User is blocked from accessing data on the device.",
            "User is awaiting approval.",
            "User is unenrolled from Advanced Windows Management, but the Windows account is still intact.",
          },
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the DeviceUser in format: `devices/{device}/deviceUsers/{device_user}`, where `device_user` uniquely identifies a user's use of a device.",
          readOnly = true,
          type = "string",
        },
        passwordState = {
          description = "Password state of the DeviceUser object",
          enum = {
            "PASSWORD_STATE_UNSPECIFIED",
            "PASSWORD_SET",
            "PASSWORD_NOT_SET",
          },
          enumDescriptions = {
            "Password state not set.",
            "Password set in object.",
            "Password not set in object.",
          },
          type = "string",
        },
        userAgent = {
          description = "Output only. User agent on the device for this specific user",
          readOnly = true,
          type = "string",
        },
        userEmail = {
          description = "Email address of the user registered on the device.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ListClientStatesResponse = {
      description = "Response message that is returned in ListClientStates.",
      id = "GoogleAppsCloudidentityDevicesV1ListClientStatesResponse",
      properties = {
        clientStates = {
          description = "Client states meeting the list restrictions.",
          items = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1ClientState",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results. Empty if there are no more results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse = {
      description = "Response message that is returned from the ListDeviceUsers method.",
      id = "GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse",
      properties = {
        deviceUsers = {
          description = "Devices meeting the list restrictions.",
          items = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1DeviceUser",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results. Empty if there are no more results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ListDevicesResponse = {
      description = "Response message that is returned from the ListDevices method.",
      id = "GoogleAppsCloudidentityDevicesV1ListDevicesResponse",
      properties = {
        devices = {
          description = "Devices meeting the list restrictions.",
          items = {
            ["$ref"] = "GoogleAppsCloudidentityDevicesV1Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results. Empty if there are no more results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata = {
      description = "Metadata for ListEndpointApps LRO.",
      id = "GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse = {
      description = "Response containing resource names of the DeviceUsers associated with the caller's credentials.",
      id = "GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse",
      properties = {
        customer = {
          description = "The customer resource name that may be passed back to other Devices API methods such as List, Get, etc.",
          type = "string",
        },
        names = {
          description = "[Resource names](https://cloud.google.com/apis/design/resource_names) of the DeviceUsers in the format: `devices/{device}/deviceUsers/{user_resource}`, where device is the unique ID assigned to a Device and user_resource is the unique user ID",
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results. Empty if there are no more results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata = {
      description = "Metadata for SignoutDeviceUser LRO.",
      id = "GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata = {
      description = "Metadata for UpdateClientState LRO.",
      id = "GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata = {
      description = "Metadata for UpdateDevice LRO.",
      id = "GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata = {
      description = "Metadata for WipeDevice LRO.",
      id = "GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1WipeDeviceRequest = {
      description = "Request message for wiping all data on the device.",
      id = "GoogleAppsCloudidentityDevicesV1WipeDeviceRequest",
      properties = {
        customer = {
          description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
          type = "string",
        },
        removeResetLock = {
          description = "Optional. Specifies if a user is able to factory reset a device after a Device Wipe. On iOS, this is called \"Activation Lock\", while on Android, this is known as \"Factory Reset Protection\". If true, this protection will be removed from the device, so that a user can successfully factory reset. If false, the setting is untouched on the device.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1WipeDeviceResponse = {
      description = "Response message for wiping all data on the device.",
      id = "GoogleAppsCloudidentityDevicesV1WipeDeviceResponse",
      properties = {
        device = {
          ["$ref"] = "GoogleAppsCloudidentityDevicesV1Device",
          description = "Resultant Device object for the action. Note that asset tags will not be returned in the device object.",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata = {
      description = "Metadata for WipeDeviceUser LRO.",
      id = "GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata",
      properties = {},
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = {
      description = "Request message for starting an account wipe on device.",
      id = "GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest",
      properties = {
        customer = {
          description = "Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse = {
      description = "Response message for wiping the user's account from the device.",
      id = "GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse",
      properties = {
        deviceUser = {
          ["$ref"] = "GoogleAppsCloudidentityDevicesV1DeviceUser",
          description = "Resultant DeviceUser object for the action.",
        },
      },
      type = "object",
    },
    Group = {
      description = "A group within the Cloud Identity Groups API. A `Group` is a collection of entities, where each entity is either a user, another group, or a service account.",
      id = "Group",
      properties = {
        createTime = {
          description = "Output only. The time when the `Group` was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.",
          type = "string",
        },
        displayName = {
          description = "The display name of the `Group`.",
          type = "string",
        },
        dynamicGroupMetadata = {
          ["$ref"] = "DynamicGroupMetadata",
          description = "Optional. Dynamic group metadata like queries and status.",
        },
        groupKey = {
          ["$ref"] = "EntityKey",
          description = "Required. The `EntityKey` of the `Group`.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Required. One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.",
          type = "object",
        },
        name = {
          description = "Output only. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group}`.",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "Required. Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with \"C\" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the `Group` was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GroupRelation = {
      description = "Message representing a transitive group of a user or a group.",
      id = "GroupRelation",
      properties = {
        displayName = {
          description = "Display name for this group.",
          type = "string",
        },
        group = {
          description = "Resource name for this group.",
          type = "string",
        },
        groupKey = {
          ["$ref"] = "EntityKey",
          description = "Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels for Group resource.",
          type = "object",
        },
        relationType = {
          description = "The relation between the member and the transitive group.",
          enum = {
            "RELATION_TYPE_UNSPECIFIED",
            "DIRECT",
            "INDIRECT",
            "DIRECT_AND_INDIRECT",
          },
          enumDescriptions = {
            "The relation type is undefined or undetermined.",
            "The two entities have only a direct membership with each other.",
            "The two entities have only an indirect membership with each other.",
            "The two entities have both a direct and an indirect membership with each other.",
          },
          type = "string",
        },
        roles = {
          description = "Membership roles of the member for the group.",
          items = {
            ["$ref"] = "TransitiveMembershipRole",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IsInvitableUserResponse = {
      description = "Response for IsInvitableUser RPC.",
      id = "IsInvitableUserResponse",
      properties = {
        isInvitableUser = {
          description = "Returns true if the email address is invitable.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ListGroupsResponse = {
      description = "Response message for ListGroups operation.",
      id = "ListGroupsResponse",
      properties = {
        groups = {
          description = "Groups returned in response to list request. The results are not sorted.",
          items = {
            ["$ref"] = "Group",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results available for listing.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMembershipsResponse = {
      description = "The response message for MembershipsService.ListMemberships.",
      id = "ListMembershipsResponse",
      properties = {
        memberships = {
          description = "The `Membership`s under the specified `parent`.",
          items = {
            ["$ref"] = "Membership",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A continuation token to retrieve the next page of results, or empty if there are no more results available.",
          type = "string",
        },
      },
      type = "object",
    },
    ListUserInvitationsResponse = {
      description = "Response message for UserInvitation listing request.",
      id = "ListUserInvitationsResponse",
      properties = {
        nextPageToken = {
          description = "The token for the next page. If not empty, indicates that there may be more `UserInvitation` resources that match the listing request; this value can be used in a subsequent ListUserInvitationsRequest to get continued results with the current list call.",
          type = "string",
        },
        userInvitations = {
          description = "The list of UserInvitation resources.",
          items = {
            ["$ref"] = "UserInvitation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LookupGroupNameResponse = {
      description = "The response message for GroupsService.LookupGroupName.",
      id = "LookupGroupNameResponse",
      properties = {
        name = {
          description = "The [resource name](https://cloud.google.com/apis/design/resource_names) of the looked-up `Group`.",
          type = "string",
        },
      },
      type = "object",
    },
    LookupMembershipNameResponse = {
      description = "The response message for MembershipsService.LookupMembershipName.",
      id = "LookupMembershipNameResponse",
      properties = {
        name = {
          description = "The [resource name](https://cloud.google.com/apis/design/resource_names) of the looked-up `Membership`. Must be of the form `groups/{group}/memberships/{membership}`.",
          type = "string",
        },
      },
      type = "object",
    },
    MemberRelation = {
      description = "Message representing a transitive membership of a group.",
      id = "MemberRelation",
      properties = {
        member = {
          description = "Resource name for this member.",
          type = "string",
        },
        preferredMemberKey = {
          description = "Entity key has an id and a namespace. In case of discussion forums, the id will be an email address without a namespace.",
          items = {
            ["$ref"] = "EntityKey",
          },
          type = "array",
        },
        relationType = {
          description = "The relation between the group and the transitive member.",
          enum = {
            "RELATION_TYPE_UNSPECIFIED",
            "DIRECT",
            "INDIRECT",
            "DIRECT_AND_INDIRECT",
          },
          enumDescriptions = {
            "The relation type is undefined or undetermined.",
            "The two entities have only a direct membership with each other.",
            "The two entities have only an indirect membership with each other.",
            "The two entities have both a direct and an indirect membership with each other.",
          },
          type = "string",
        },
        roles = {
          description = "The membership role details (i.e name of role and expiry time).",
          items = {
            ["$ref"] = "TransitiveMembershipRole",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MemberRestriction = {
      description = "The definition of MemberRestriction",
      id = "MemberRestriction",
      properties = {
        evaluation = {
          ["$ref"] = "RestrictionEvaluation",
          description = "The evaluated state of this restriction on a group.",
        },
        query = {
          description = "Member Restriction as defined by CEL expression. Supported restrictions are: `member.customer_id` and `member.type`. Valid values for `member.type` are `1`, `2` and `3`. They correspond to USER, SERVICE_ACCOUNT, and GROUP respectively. The value for `member.customer_id` only supports `groupCustomerId()` currently which means the customer id of the group will be used for restriction. Supported operators are `&&`, `||` and `==`, corresponding to AND, OR, and EQUAL. Examples: Allow only service accounts of given customer to be members. `member.type == 2 && member.customer_id == groupCustomerId()` Allow only users or groups to be members. `member.type == 1 || member.type == 3`",
          type = "string",
        },
      },
      type = "object",
    },
    Membership = {
      description = "A membership within the Cloud Identity Groups API. A `Membership` defines a relationship between a `Group` and an entity belonging to that `Group`, referred to as a \"member\".",
      id = "Membership",
      properties = {
        createTime = {
          description = "Output only. The time when the `Membership` was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group}/memberships/{membership}`.",
          readOnly = true,
          type = "string",
        },
        preferredMemberKey = {
          ["$ref"] = "EntityKey",
          description = "Required. Immutable. The `EntityKey` of the member.",
        },
        roles = {
          description = "The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.",
          items = {
            ["$ref"] = "MembershipRole",
          },
          type = "array",
        },
        type = {
          description = "Output only. The type of the membership.",
          enum = {
            "TYPE_UNSPECIFIED",
            "USER",
            "SERVICE_ACCOUNT",
            "GROUP",
            "SHARED_DRIVE",
            "OTHER",
          },
          enumDescriptions = {
            "Default. Should not be used.",
            "Represents user type.",
            "Represents service account type.",
            "Represents group type.",
            "Represents Shared drive.",
            "Represents other type.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the `Membership` was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MembershipAdjacencyList = {
      description = "Membership graph's path information as an adjacency list.",
      id = "MembershipAdjacencyList",
      properties = {
        edges = {
          description = "Each edge contains information about the member that belongs to this group. Note: Fields returned here will help identify the specific Membership resource (e.g name, preferred_member_key and role), but may not be a comprehensive list of all fields.",
          items = {
            ["$ref"] = "Membership",
          },
          type = "array",
        },
        group = {
          description = "Resource name of the group that the members belong to.",
          type = "string",
        },
      },
      type = "object",
    },
    MembershipRole = {
      description = "A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.",
      id = "MembershipRole",
      properties = {
        expiryDetail = {
          ["$ref"] = "ExpiryDetail",
          description = "The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.",
        },
        name = {
          description = "The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.",
          type = "string",
        },
        restrictionEvaluations = {
          ["$ref"] = "RestrictionEvaluations",
          description = "Evaluations of restrictions applied to parent group on this membership.",
        },
      },
      type = "object",
    },
    MembershipRoleRestrictionEvaluation = {
      description = "The evaluated state of this restriction.",
      id = "MembershipRoleRestrictionEvaluation",
      properties = {
        state = {
          description = "Output only. The current state of the restriction",
          enum = {
            "STATE_UNSPECIFIED",
            "COMPLIANT",
            "FORWARD_COMPLIANT",
            "NON_COMPLIANT",
            "EVALUATING",
          },
          enumDescriptions = {
            "Default. Should not be used.",
            "The member adheres to the parent group's restriction.",
            "The group-group membership might be currently violating some parent group's restriction but in future, it will never allow any new member in the child group which can violate parent group's restriction.",
            "The member violates the parent group's restriction.",
            "The state of the membership is under evaluation.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ModifyMembershipRolesRequest = {
      description = "The request message for MembershipsService.ModifyMembershipRoles.",
      id = "ModifyMembershipRolesRequest",
      properties = {
        addRoles = {
          description = "The `MembershipRole`s to be added. Adding or removing roles in the same request as updating roles is not supported. Must not be set if `update_roles_params` is set.",
          items = {
            ["$ref"] = "MembershipRole",
          },
          type = "array",
        },
        removeRoles = {
          description = "The `name`s of the `MembershipRole`s to be removed. Adding or removing roles in the same request as updating roles is not supported. It is not possible to remove the `MEMBER` `MembershipRole`. If you wish to delete a `Membership`, call MembershipsService.DeleteMembership instead. Must not contain `MEMBER`. Must not be set if `update_roles_params` is set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        updateRolesParams = {
          description = "The `MembershipRole`s to be updated. Updating roles in the same request as adding or removing roles is not supported. Must not be set if either `add_roles` or `remove_roles` is set.",
          items = {
            ["$ref"] = "UpdateMembershipRolesParams",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyMembershipRolesResponse = {
      description = "The response message for MembershipsService.ModifyMembershipRoles.",
      id = "ModifyMembershipRolesResponse",
      properties = {
        membership = {
          ["$ref"] = "Membership",
          description = "The `Membership` resource after modifying its `MembershipRole`s.",
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
    RestrictionEvaluation = {
      description = "The evaluated state of this restriction.",
      id = "RestrictionEvaluation",
      properties = {
        state = {
          description = "Output only. The current state of the restriction",
          enum = {
            "STATE_UNSPECIFIED",
            "EVALUATING",
            "COMPLIANT",
            "FORWARD_COMPLIANT",
            "NON_COMPLIANT",
          },
          enumDescriptions = {
            "Default. Should not be used.",
            "The restriction state is currently being evaluated.",
            "All transitive memberships are adhering to restriction.",
            "Some transitive memberships violate the restriction. No new violating memberships can be added.",
            "Some transitive memberships violate the restriction. New violating direct memberships will be denied while indirect memberships may be added.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RestrictionEvaluations = {
      description = "Evaluations of restrictions applied to parent group on this membership.",
      id = "RestrictionEvaluations",
      properties = {
        memberRestrictionEvaluation = {
          ["$ref"] = "MembershipRoleRestrictionEvaluation",
          description = "Evaluation of the member restriction applied to this membership. Empty if the user lacks permission to view the restriction evaluation.",
        },
      },
      type = "object",
    },
    SearchGroupsResponse = {
      description = "The response message for GroupsService.SearchGroups.",
      id = "SearchGroupsResponse",
      properties = {
        groups = {
          description = "The `Group` resources that match the search query.",
          items = {
            ["$ref"] = "Group",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A continuation token to retrieve the next page of results, or empty if there are no more results available.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchTransitiveGroupsResponse = {
      description = "The response message for MembershipsService.SearchTransitiveGroups.",
      id = "SearchTransitiveGroupsResponse",
      properties = {
        memberships = {
          description = "List of transitive groups satisfying the query.",
          items = {
            ["$ref"] = "GroupRelation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results available for listing.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchTransitiveMembershipsResponse = {
      description = "The response message for MembershipsService.SearchTransitiveMemberships.",
      id = "SearchTransitiveMembershipsResponse",
      properties = {
        memberships = {
          description = "List of transitive members satisfying the query.",
          items = {
            ["$ref"] = "MemberRelation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results.",
          type = "string",
        },
      },
      type = "object",
    },
    SecuritySettings = {
      description = "The definition of security settings.",
      id = "SecuritySettings",
      properties = {
        memberRestriction = {
          ["$ref"] = "MemberRestriction",
          description = "The Member Restriction value",
        },
        name = {
          description = "Output only. The resource name of the security settings. Shall be of the form `groups/{group_id}/securitySettings`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SendUserInvitationRequest = {
      description = "A request to send email for inviting target user corresponding to the UserInvitation.",
      id = "SendUserInvitationRequest",
      properties = {},
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
    TransitiveMembershipRole = {
      description = "Message representing the role of a TransitiveMembership.",
      id = "TransitiveMembershipRole",
      properties = {
        role = {
          description = "TransitiveMembershipRole in string format. Currently supported TransitiveMembershipRoles: `\"MEMBER\"`, `\"OWNER\"`, and `\"MANAGER\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateGroupMetadata = {
      description = "Metadata for UpdateGroup LRO.",
      id = "UpdateGroupMetadata",
      properties = {},
      type = "object",
    },
    UpdateMembershipMetadata = {
      description = "Metadata for UpdateMembership LRO.",
      id = "UpdateMembershipMetadata",
      properties = {},
      type = "object",
    },
    UpdateMembershipRolesParams = {
      description = "The details of an update to a `MembershipRole`.",
      id = "UpdateMembershipRolesParams",
      properties = {
        fieldMask = {
          description = "The fully-qualified names of fields to update. May only contain the field `expiry_detail.expire_time`.",
          format = "google-fieldmask",
          type = "string",
        },
        membershipRole = {
          ["$ref"] = "MembershipRole",
          description = "The `MembershipRole`s to be updated. Only `MEMBER` `MembershipRole` can currently be updated.",
        },
      },
      type = "object",
    },
    UserInvitation = {
      description = "The `UserInvitation` resource represents an email that can be sent to an unmanaged user account inviting them to join the customer's Google Workspace or Cloud Identity account. An unmanaged account shares an email address domain with the Google Workspace or Cloud Identity account but is not managed by it yet. If the user accepts the `UserInvitation`, the user account will become managed.",
      id = "UserInvitation",
      properties = {
        mailsSentCount = {
          description = "Number of invitation emails sent to the user.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Shall be of the form `customers/{customer}/userinvitations/{user_email_address}`.",
          type = "string",
        },
        state = {
          description = "State of the `UserInvitation`.",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_YET_SENT",
            "INVITED",
            "ACCEPTED",
            "DECLINED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "The `UserInvitation` has been created and is ready for sending as an email.",
            "The user has been invited by email.",
            "The user has accepted the invitation and is part of the organization.",
            "The user declined the invitation.",
          },
          type = "string",
        },
        updateTime = {
          description = "Time when the `UserInvitation` was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Identity API",
  version = "v1",
  version_module = true,
}
