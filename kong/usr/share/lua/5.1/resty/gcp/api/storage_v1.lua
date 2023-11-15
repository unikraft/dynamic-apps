return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "View and manage your data across Google Cloud Platform services",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud Platform services",
        },
        ["https://www.googleapis.com/auth/devstorage.full_control"] = {
          description = "Manage your data and permissions in Google Cloud Storage",
        },
        ["https://www.googleapis.com/auth/devstorage.read_only"] = {
          description = "View your data in Google Cloud Storage",
        },
        ["https://www.googleapis.com/auth/devstorage.read_write"] = {
          description = "Manage your data in Google Cloud Storage",
        },
      },
    },
  },
  basePath = "/storage/v1/",
  baseUrl = "https://storage.googleapis.com/storage/v1/",
  batchPath = "batch/storage/v1",
  description = "Stores and retrieves potentially large, immutable data objects.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/storage/docs/json_api/",
  etag = "\"31333833343238363434353632323337323434\"",
  icons = {
    x16 = "https://www.google.com/images/icons/product/cloud_storage-16.png",
    x32 = "https://www.google.com/images/icons/product/cloud_storage-32.png",
  },
  id = "storage:v1",
  kind = "discovery#restDescription",
  labels = {
    "labs",
  },
  mtlsRootUrl = "https://storage.mtls.googleapis.com/",
  name = "storage",
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
    uploadType = {
      description = "Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").",
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
    bucketAccessControls = {
      methods = {
        delete = {
          description = "Permanently deletes the ACL entry for the specified entity on the specified bucket.",
          httpMethod = "DELETE",
          id = "storage.bucketAccessControls.delete",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/acl/{entity}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        get = {
          description = "Returns the ACL entry for the specified entity on the specified bucket.",
          httpMethod = "GET",
          id = "storage.bucketAccessControls.get",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/acl/{entity}",
          response = {
            ["$ref"] = "BucketAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        insert = {
          description = "Creates a new ACL entry on the specified bucket.",
          httpMethod = "POST",
          id = "storage.bucketAccessControls.insert",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/acl",
          request = {
            ["$ref"] = "BucketAccessControl",
          },
          response = {
            ["$ref"] = "BucketAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        list = {
          description = "Retrieves ACL entries on the specified bucket.",
          httpMethod = "GET",
          id = "storage.bucketAccessControls.list",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/acl",
          response = {
            ["$ref"] = "BucketAccessControls",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        patch = {
          description = "Patches an ACL entry on the specified bucket.",
          httpMethod = "PATCH",
          id = "storage.bucketAccessControls.patch",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/acl/{entity}",
          request = {
            ["$ref"] = "BucketAccessControl",
          },
          response = {
            ["$ref"] = "BucketAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        update = {
          description = "Updates an ACL entry on the specified bucket.",
          httpMethod = "PUT",
          id = "storage.bucketAccessControls.update",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/acl/{entity}",
          request = {
            ["$ref"] = "BucketAccessControl",
          },
          response = {
            ["$ref"] = "BucketAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
      },
    },
    buckets = {
      methods = {
        delete = {
          description = "Permanently deletes an empty bucket.",
          httpMethod = "DELETE",
          id = "storage.buckets.delete",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "If set, only deletes the bucket if its metageneration matches this value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "If set, only deletes the bucket if its metageneration does not match this value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        get = {
          description = "Returns metadata for the specified bucket.",
          httpMethod = "GET",
          id = "storage.buckets.get",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit owner, acl and defaultObjectAcl properties.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}",
          response = {
            ["$ref"] = "Bucket",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        getIamPolicy = {
          description = "Returns an IAM policy for the specified bucket.",
          httpMethod = "GET",
          id = "storage.buckets.getIamPolicy",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            optionsRequestedPolicyVersion = {
              description = "The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn't support part of the requested IAM policy, the request fails.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/iam",
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        insert = {
          description = "Creates a new bucket.",
          httpMethod = "POST",
          id = "storage.buckets.insert",
          parameterOrder = {
            "project",
          },
          parameters = {
            predefinedAcl = {
              description = "Apply a predefined set of access controls to this bucket.",
              enum = {
                "authenticatedRead",
                "private",
                "projectPrivate",
                "publicRead",
                "publicReadWrite",
              },
              enumDescriptions = {
                "Project team owners get OWNER access, and allAuthenticatedUsers get READER access.",
                "Project team owners get OWNER access.",
                "Project team members get access according to their roles.",
                "Project team owners get OWNER access, and allUsers get READER access.",
                "Project team owners get OWNER access, and allUsers get WRITER access.",
              },
              location = "query",
              type = "string",
            },
            predefinedDefaultObjectAcl = {
              description = "Apply a predefined set of default object access controls to this bucket.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            project = {
              description = "A valid API project identifier.",
              location = "query",
              required = true,
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit owner, acl and defaultObjectAcl properties.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request.",
              location = "query",
              type = "string",
            },
          },
          path = "b",
          request = {
            ["$ref"] = "Bucket",
          },
          response = {
            ["$ref"] = "Bucket",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        list = {
          description = "Retrieves a list of buckets for a given project.",
          httpMethod = "GET",
          id = "storage.buckets.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            maxResults = {
              default = "1000",
              description = "Maximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichever is smaller.",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "A previously-returned page token representing part of the larger set of results to view.",
              location = "query",
              type = "string",
            },
            prefix = {
              description = "Filter results to buckets whose names begin with this prefix.",
              location = "query",
              type = "string",
            },
            project = {
              description = "A valid API project identifier.",
              location = "query",
              required = true,
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit owner, acl and defaultObjectAcl properties.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request.",
              location = "query",
              type = "string",
            },
          },
          path = "b",
          response = {
            ["$ref"] = "Buckets",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        lockRetentionPolicy = {
          description = "Locks retention policy on a bucket.",
          httpMethod = "POST",
          id = "storage.buckets.lockRetentionPolicy",
          parameterOrder = {
            "bucket",
            "ifMetagenerationMatch",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether bucket's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/lockRetentionPolicy",
          response = {
            ["$ref"] = "Bucket",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        patch = {
          description = "Patches a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.",
          httpMethod = "PATCH",
          id = "storage.buckets.patch",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            predefinedAcl = {
              description = "Apply a predefined set of access controls to this bucket.",
              enum = {
                "authenticatedRead",
                "private",
                "projectPrivate",
                "publicRead",
                "publicReadWrite",
              },
              enumDescriptions = {
                "Project team owners get OWNER access, and allAuthenticatedUsers get READER access.",
                "Project team owners get OWNER access.",
                "Project team members get access according to their roles.",
                "Project team owners get OWNER access, and allUsers get READER access.",
                "Project team owners get OWNER access, and allUsers get WRITER access.",
              },
              location = "query",
              type = "string",
            },
            predefinedDefaultObjectAcl = {
              description = "Apply a predefined set of default object access controls to this bucket.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit owner, acl and defaultObjectAcl properties.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}",
          request = {
            ["$ref"] = "Bucket",
          },
          response = {
            ["$ref"] = "Bucket",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        setIamPolicy = {
          description = "Updates an IAM policy for the specified bucket.",
          httpMethod = "PUT",
          id = "storage.buckets.setIamPolicy",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/iam",
          request = {
            ["$ref"] = "Policy",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        testIamPermissions = {
          description = "Tests a set of permissions on the given bucket to see which, if any, are held by the caller.",
          httpMethod = "GET",
          id = "storage.buckets.testIamPermissions",
          parameterOrder = {
            "bucket",
            "permissions",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            permissions = {
              description = "Permissions to test.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/iam/testPermissions",
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        update = {
          description = "Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.",
          httpMethod = "PUT",
          id = "storage.buckets.update",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            predefinedAcl = {
              description = "Apply a predefined set of access controls to this bucket.",
              enum = {
                "authenticatedRead",
                "private",
                "projectPrivate",
                "publicRead",
                "publicReadWrite",
              },
              enumDescriptions = {
                "Project team owners get OWNER access, and allAuthenticatedUsers get READER access.",
                "Project team owners get OWNER access.",
                "Project team members get access according to their roles.",
                "Project team owners get OWNER access, and allUsers get READER access.",
                "Project team owners get OWNER access, and allUsers get WRITER access.",
              },
              location = "query",
              type = "string",
            },
            predefinedDefaultObjectAcl = {
              description = "Apply a predefined set of default object access controls to this bucket.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit owner, acl and defaultObjectAcl properties.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}",
          request = {
            ["$ref"] = "Bucket",
          },
          response = {
            ["$ref"] = "Bucket",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
      },
    },
    channels = {
      methods = {
        stop = {
          description = "Stop watching resources through this channel",
          httpMethod = "POST",
          id = "storage.channels.stop",
          path = "channels/stop",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
      },
    },
    defaultObjectAccessControls = {
      methods = {
        delete = {
          description = "Permanently deletes the default object ACL entry for the specified entity on the specified bucket.",
          httpMethod = "DELETE",
          id = "storage.defaultObjectAccessControls.delete",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/defaultObjectAcl/{entity}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        get = {
          description = "Returns the default object ACL entry for the specified entity on the specified bucket.",
          httpMethod = "GET",
          id = "storage.defaultObjectAccessControls.get",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/defaultObjectAcl/{entity}",
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        insert = {
          description = "Creates a new default object ACL entry on the specified bucket.",
          httpMethod = "POST",
          id = "storage.defaultObjectAccessControls.insert",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/defaultObjectAcl",
          request = {
            ["$ref"] = "ObjectAccessControl",
          },
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        list = {
          description = "Retrieves default object ACL entries on the specified bucket.",
          httpMethod = "GET",
          id = "storage.defaultObjectAccessControls.list",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "If present, only return default ACL listing if the bucket's current metageneration matches this value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "If present, only return default ACL listing if the bucket's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/defaultObjectAcl",
          response = {
            ["$ref"] = "ObjectAccessControls",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        patch = {
          description = "Patches a default object ACL entry on the specified bucket.",
          httpMethod = "PATCH",
          id = "storage.defaultObjectAccessControls.patch",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/defaultObjectAcl/{entity}",
          request = {
            ["$ref"] = "ObjectAccessControl",
          },
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        update = {
          description = "Updates a default object ACL entry on the specified bucket.",
          httpMethod = "PUT",
          id = "storage.defaultObjectAccessControls.update",
          parameterOrder = {
            "bucket",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/defaultObjectAcl/{entity}",
          request = {
            ["$ref"] = "ObjectAccessControl",
          },
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
      },
    },
    notifications = {
      methods = {
        delete = {
          description = "Permanently deletes a notification subscription.",
          httpMethod = "DELETE",
          id = "storage.notifications.delete",
          parameterOrder = {
            "bucket",
            "notification",
          },
          parameters = {
            bucket = {
              description = "The parent bucket of the notification.",
              location = "path",
              required = true,
              type = "string",
            },
            notification = {
              description = "ID of the notification to delete.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/notificationConfigs/{notification}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        get = {
          description = "View a notification configuration.",
          httpMethod = "GET",
          id = "storage.notifications.get",
          parameterOrder = {
            "bucket",
            "notification",
          },
          parameters = {
            bucket = {
              description = "The parent bucket of the notification.",
              location = "path",
              required = true,
              type = "string",
            },
            notification = {
              description = "Notification ID",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/notificationConfigs/{notification}",
          response = {
            ["$ref"] = "Notification",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        insert = {
          description = "Creates a notification subscription for a given bucket.",
          httpMethod = "POST",
          id = "storage.notifications.insert",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "The parent bucket of the notification.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/notificationConfigs",
          request = {
            ["$ref"] = "Notification",
          },
          response = {
            ["$ref"] = "Notification",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        list = {
          description = "Retrieves a list of notification subscriptions for a given bucket.",
          httpMethod = "GET",
          id = "storage.notifications.list",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of a Google Cloud Storage bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/notificationConfigs",
          response = {
            ["$ref"] = "Notifications",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
      },
    },
    objectAccessControls = {
      methods = {
        delete = {
          description = "Permanently deletes the ACL entry for the specified entity on the specified object.",
          httpMethod = "DELETE",
          id = "storage.objectAccessControls.delete",
          parameterOrder = {
            "bucket",
            "object",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/acl/{entity}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        get = {
          description = "Returns the ACL entry for the specified entity on the specified object.",
          httpMethod = "GET",
          id = "storage.objectAccessControls.get",
          parameterOrder = {
            "bucket",
            "object",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/acl/{entity}",
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        insert = {
          description = "Creates a new ACL entry on the specified object.",
          httpMethod = "POST",
          id = "storage.objectAccessControls.insert",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/acl",
          request = {
            ["$ref"] = "ObjectAccessControl",
          },
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        list = {
          description = "Retrieves ACL entries on the specified object.",
          httpMethod = "GET",
          id = "storage.objectAccessControls.list",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/acl",
          response = {
            ["$ref"] = "ObjectAccessControls",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        patch = {
          description = "Patches an ACL entry on the specified object.",
          httpMethod = "PATCH",
          id = "storage.objectAccessControls.patch",
          parameterOrder = {
            "bucket",
            "object",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/acl/{entity}",
          request = {
            ["$ref"] = "ObjectAccessControl",
          },
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        update = {
          description = "Updates an ACL entry on the specified object.",
          httpMethod = "PUT",
          id = "storage.objectAccessControls.update",
          parameterOrder = {
            "bucket",
            "object",
            "entity",
          },
          parameters = {
            bucket = {
              description = "Name of a bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            entity = {
              description = "The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/acl/{entity}",
          request = {
            ["$ref"] = "ObjectAccessControl",
          },
          response = {
            ["$ref"] = "ObjectAccessControl",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
      },
    },
    objects = {
      methods = {
        compose = {
          description = "Concatenates a list of existing objects into a new object in the same bucket.",
          httpMethod = "POST",
          id = "storage.objects.compose",
          parameterOrder = {
            "destinationBucket",
            "destinationObject",
          },
          parameters = {
            destinationBucket = {
              description = "Name of the bucket containing the source objects. The destination object is stored in this bucket.",
              location = "path",
              required = true,
              type = "string",
            },
            destinationObject = {
              description = "Name of the new object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            destinationPredefinedAcl = {
              description = "Apply a predefined set of access controls to the destination object.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            kmsKeyName = {
              description = "Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.",
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{destinationBucket}/o/{destinationObject}/compose",
          request = {
            ["$ref"] = "ComposeRequest",
          },
          response = {
            ["$ref"] = "Object",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        copy = {
          description = "Copies a source object to a destination object. Optionally overrides metadata.",
          httpMethod = "POST",
          id = "storage.objects.copy",
          parameterOrder = {
            "sourceBucket",
            "sourceObject",
            "destinationBucket",
            "destinationObject",
          },
          parameters = {
            destinationBucket = {
              description = "Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            destinationKmsKeyName = {
              description = "Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.",
              location = "query",
              type = "string",
            },
            destinationObject = {
              description = "Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any.",
              location = "path",
              required = true,
              type = "string",
            },
            destinationPredefinedAcl = {
              description = "Apply a predefined set of access controls to the destination object.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the destination object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationNotMatch = {
              description = "Makes the operation conditional on whether the destination object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the destination object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the destination object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceGenerationMatch = {
              description = "Makes the operation conditional on whether the source object's current generation matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceGenerationNotMatch = {
              description = "Makes the operation conditional on whether the source object's current generation does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceMetagenerationMatch = {
              description = "Makes the operation conditional on whether the source object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the source object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            sourceBucket = {
              description = "Name of the bucket in which to find the source object.",
              location = "path",
              required = true,
              type = "string",
            },
            sourceGeneration = {
              description = "If present, selects a specific revision of the source object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            sourceObject = {
              description = "Name of the source object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{sourceBucket}/o/{sourceObject}/copyTo/b/{destinationBucket}/o/{destinationObject}",
          request = {
            ["$ref"] = "Object",
          },
          response = {
            ["$ref"] = "Object",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        delete = {
          description = "Deletes an object and its metadata. Deletions are permanent if versioning is not enabled for the bucket, or if the generation parameter is used.",
          httpMethod = "DELETE",
          id = "storage.objects.delete",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which the object resides.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, permanently deletes a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        get = {
          description = "Retrieves an object or its metadata.",
          httpMethod = "GET",
          id = "storage.objects.get",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which the object resides.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}",
          response = {
            ["$ref"] = "Object",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
        getIamPolicy = {
          description = "Returns an IAM policy for the specified object.",
          httpMethod = "GET",
          id = "storage.objects.getIamPolicy",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which the object resides.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/iam",
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        insert = {
          description = "Stores a new object and metadata.",
          httpMethod = "POST",
          id = "storage.objects.insert",
          mediaUpload = {
            accept = {
              "*/*",
            },
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/storage/v1/b/{bucket}/o",
              },
              simple = {
                multipart = true,
                path = "/upload/storage/v1/b/{bucket}/o",
              },
            },
          },
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.",
              location = "path",
              required = true,
              type = "string",
            },
            contentEncoding = {
              description = "If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded.",
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            kmsKeyName = {
              description = "Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.",
              location = "query",
              type = "string",
            },
            name = {
              description = "Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "query",
              type = "string",
            },
            predefinedAcl = {
              description = "Apply a predefined set of access controls to this object.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o",
          request = {
            ["$ref"] = "Object",
          },
          response = {
            ["$ref"] = "Object",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
          supportsMediaUpload = true,
        },
        list = {
          description = "Retrieves a list of objects matching the criteria.",
          httpMethod = "GET",
          id = "storage.objects.list",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which to look for objects.",
              location = "path",
              required = true,
              type = "string",
            },
            delimiter = {
              description = "Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.",
              location = "query",
              type = "string",
            },
            endOffset = {
              description = "Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).",
              location = "query",
              type = "string",
            },
            includeTrailingDelimiter = {
              description = "If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "A previously-returned page token representing part of the larger set of results to view.",
              location = "query",
              type = "string",
            },
            prefix = {
              description = "Filter results to objects whose names begin with this prefix.",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            startOffset = {
              description = "Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).",
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
            versions = {
              description = "If true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning.",
              location = "query",
              type = "boolean",
            },
          },
          path = "b/{bucket}/o",
          response = {
            ["$ref"] = "Objects",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
          supportsSubscription = true,
        },
        patch = {
          description = "Patches an object's metadata.",
          httpMethod = "PATCH",
          id = "storage.objects.patch",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which the object resides.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            predefinedAcl = {
              description = "Apply a predefined set of access controls to this object.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request, for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}",
          request = {
            ["$ref"] = "Object",
          },
          response = {
            ["$ref"] = "Object",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        rewrite = {
          description = "Rewrites a source object to a destination object. Optionally overrides metadata.",
          httpMethod = "POST",
          id = "storage.objects.rewrite",
          parameterOrder = {
            "sourceBucket",
            "sourceObject",
            "destinationBucket",
            "destinationObject",
          },
          parameters = {
            destinationBucket = {
              description = "Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.",
              location = "path",
              required = true,
              type = "string",
            },
            destinationKmsKeyName = {
              description = "Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.",
              location = "query",
              type = "string",
            },
            destinationObject = {
              description = "Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            destinationPredefinedAcl = {
              description = "Apply a predefined set of access controls to the destination object.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the destination object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the destination object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceGenerationMatch = {
              description = "Makes the operation conditional on whether the source object's current generation matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceGenerationNotMatch = {
              description = "Makes the operation conditional on whether the source object's current generation does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceMetagenerationMatch = {
              description = "Makes the operation conditional on whether the source object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifSourceMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the source object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            maxBytesRewrittenPerCall = {
              description = "The maximum number of bytes that will be rewritten per rewrite request. Most callers shouldn't need to specify this parameter - it is primarily in place to support testing. If specified the value must be an integral multiple of 1 MiB (1048576). Also, this only applies to requests where the source and destination span locations and/or storage classes. Finally, this value must not change across rewrite calls else you'll get an error that the rewriteToken is invalid.",
              format = "int64",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            rewriteToken = {
              description = "Include this field (from the previous rewrite response) on each rewrite request after the first one, until the rewrite response 'done' flag is true. Calls that provide a rewriteToken can omit all other request fields, but if included those fields must match the values provided in the first rewrite request.",
              location = "query",
              type = "string",
            },
            sourceBucket = {
              description = "Name of the bucket in which to find the source object.",
              location = "path",
              required = true,
              type = "string",
            },
            sourceGeneration = {
              description = "If present, selects a specific revision of the source object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            sourceObject = {
              description = "Name of the source object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{sourceBucket}/o/{sourceObject}/rewriteTo/b/{destinationBucket}/o/{destinationObject}",
          request = {
            ["$ref"] = "Object",
          },
          response = {
            ["$ref"] = "RewriteResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        setIamPolicy = {
          description = "Updates an IAM policy for the specified object.",
          httpMethod = "PUT",
          id = "storage.objects.setIamPolicy",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which the object resides.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/iam",
          request = {
            ["$ref"] = "Policy",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        testIamPermissions = {
          description = "Tests a set of permissions on the given object to see which, if any, are held by the caller.",
          httpMethod = "GET",
          id = "storage.objects.testIamPermissions",
          parameterOrder = {
            "bucket",
            "object",
            "permissions",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which the object resides.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            permissions = {
              description = "Permissions to test.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}/iam/testPermissions",
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
        },
        update = {
          description = "Updates an object's metadata.",
          httpMethod = "PUT",
          id = "storage.objects.update",
          parameterOrder = {
            "bucket",
            "object",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which the object resides.",
              location = "path",
              required = true,
              type = "string",
            },
            generation = {
              description = "If present, selects a specific revision of this object (as opposed to the latest version, the default).",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationMatch = {
              description = "Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifGenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration matches the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ifMetagenerationNotMatch = {
              description = "Makes the operation conditional on whether the object's current metageneration does not match the given value.",
              format = "int64",
              location = "query",
              type = "string",
            },
            object = {
              description = "Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.",
              location = "path",
              required = true,
              type = "string",
            },
            predefinedAcl = {
              description = "Apply a predefined set of access controls to this object.",
              enum = {
                "authenticatedRead",
                "bucketOwnerFullControl",
                "bucketOwnerRead",
                "private",
                "projectPrivate",
                "publicRead",
              },
              enumDescriptions = {
                "Object owner gets OWNER access, and allAuthenticatedUsers get READER access.",
                "Object owner gets OWNER access, and project team owners get OWNER access.",
                "Object owner gets OWNER access, and project team owners get READER access.",
                "Object owner gets OWNER access.",
                "Object owner gets OWNER access, and project team members get access according to their roles.",
                "Object owner gets OWNER access, and allUsers get READER access.",
              },
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to full.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
          },
          path = "b/{bucket}/o/{object}",
          request = {
            ["$ref"] = "Object",
          },
          response = {
            ["$ref"] = "Object",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
          },
        },
        watchAll = {
          description = "Watch for changes on all objects in a bucket.",
          httpMethod = "POST",
          id = "storage.objects.watchAll",
          parameterOrder = {
            "bucket",
          },
          parameters = {
            bucket = {
              description = "Name of the bucket in which to look for objects.",
              location = "path",
              required = true,
              type = "string",
            },
            delimiter = {
              description = "Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.",
              location = "query",
              type = "string",
            },
            endOffset = {
              description = "Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).",
              location = "query",
              type = "string",
            },
            includeTrailingDelimiter = {
              description = "If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.",
              format = "uint32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "A previously-returned page token representing part of the larger set of results to view.",
              location = "query",
              type = "string",
            },
            prefix = {
              description = "Filter results to objects whose names begin with this prefix.",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Set of properties to return. Defaults to noAcl.",
              enum = {
                "full",
                "noAcl",
              },
              enumDescriptions = {
                "Include all properties.",
                "Omit the owner, acl property.",
              },
              location = "query",
              type = "string",
            },
            startOffset = {
              description = "Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).",
              location = "query",
              type = "string",
            },
            userProject = {
              description = "The project to be billed for this request. Required for Requester Pays buckets.",
              location = "query",
              type = "string",
            },
            versions = {
              description = "If true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning.",
              location = "query",
              type = "boolean",
            },
          },
          path = "b/{bucket}/o/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
          supportsSubscription = true,
        },
      },
    },
    projects = {
      resources = {
        hmacKeys = {
          methods = {
            create = {
              description = "Creates a new HMAC key for the specified service account.",
              httpMethod = "POST",
              id = "storage.projects.hmacKeys.create",
              parameterOrder = {
                "projectId",
                "serviceAccountEmail",
              },
              parameters = {
                projectId = {
                  description = "Project ID owning the service account.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                serviceAccountEmail = {
                  description = "Email address of the service account.",
                  location = "query",
                  required = true,
                  type = "string",
                },
                userProject = {
                  description = "The project to be billed for this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "projects/{projectId}/hmacKeys",
              response = {
                ["$ref"] = "HmacKey",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/devstorage.full_control",
              },
            },
            delete = {
              description = "Deletes an HMAC key.",
              httpMethod = "DELETE",
              id = "storage.projects.hmacKeys.delete",
              parameterOrder = {
                "projectId",
                "accessId",
              },
              parameters = {
                accessId = {
                  description = "Name of the HMAC key to be deleted.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Project ID owning the requested key",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userProject = {
                  description = "The project to be billed for this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "projects/{projectId}/hmacKeys/{accessId}",
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/devstorage.full_control",
                "https://www.googleapis.com/auth/devstorage.read_write",
              },
            },
            get = {
              description = "Retrieves an HMAC key's metadata",
              httpMethod = "GET",
              id = "storage.projects.hmacKeys.get",
              parameterOrder = {
                "projectId",
                "accessId",
              },
              parameters = {
                accessId = {
                  description = "Name of the HMAC key.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Project ID owning the service account of the requested key.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userProject = {
                  description = "The project to be billed for this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "projects/{projectId}/hmacKeys/{accessId}",
              response = {
                ["$ref"] = "HmacKeyMetadata",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/devstorage.full_control",
                "https://www.googleapis.com/auth/devstorage.read_only",
              },
            },
            list = {
              description = "Retrieves a list of HMAC keys matching the criteria.",
              httpMethod = "GET",
              id = "storage.projects.hmacKeys.list",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                maxResults = {
                  default = "250",
                  description = "Maximum number of items to return in a single page of responses. The service uses this parameter or 250 items, whichever is smaller. The max number of items per page will also be limited by the number of distinct service accounts in the response. If the number of service accounts in a single response is too high, the page will truncated and a next page token will be returned.",
                  format = "uint32",
                  location = "query",
                  minimum = "0",
                  type = "integer",
                },
                pageToken = {
                  description = "A previously-returned page token representing part of the larger set of results to view.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Name of the project in which to look for HMAC keys.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                serviceAccountEmail = {
                  description = "If present, only keys for the given service account are returned.",
                  location = "query",
                  type = "string",
                },
                showDeletedKeys = {
                  description = "Whether or not to show keys in the DELETED state.",
                  location = "query",
                  type = "boolean",
                },
                userProject = {
                  description = "The project to be billed for this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "projects/{projectId}/hmacKeys",
              response = {
                ["$ref"] = "HmacKeysMetadata",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/devstorage.full_control",
                "https://www.googleapis.com/auth/devstorage.read_only",
              },
            },
            update = {
              description = "Updates the state of an HMAC key. See the HMAC Key resource descriptor for valid states.",
              httpMethod = "PUT",
              id = "storage.projects.hmacKeys.update",
              parameterOrder = {
                "projectId",
                "accessId",
              },
              parameters = {
                accessId = {
                  description = "Name of the HMAC key being updated.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Project ID owning the service account of the updated key.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userProject = {
                  description = "The project to be billed for this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "projects/{projectId}/hmacKeys/{accessId}",
              request = {
                ["$ref"] = "HmacKeyMetadata",
              },
              response = {
                ["$ref"] = "HmacKeyMetadata",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/devstorage.full_control",
              },
            },
          },
        },
        serviceAccount = {
          methods = {
            get = {
              description = "Get the email address of this project's Google Cloud Storage service account.",
              httpMethod = "GET",
              id = "storage.projects.serviceAccount.get",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                projectId = {
                  description = "Project ID",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userProject = {
                  description = "The project to be billed for this request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "projects/{projectId}/serviceAccount",
              response = {
                ["$ref"] = "ServiceAccount",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
                "https://www.googleapis.com/auth/devstorage.full_control",
                "https://www.googleapis.com/auth/devstorage.read_only",
                "https://www.googleapis.com/auth/devstorage.read_write",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230108",
  rootUrl = "https://storage.googleapis.com/",
  schemas = {
    Bucket = {
      description = "A bucket.",
      id = "Bucket",
      properties = {
        acl = {
          annotations = {
            required = {
              "storage.buckets.update",
            },
          },
          description = "Access controls on the bucket.",
          items = {
            ["$ref"] = "BucketAccessControl",
          },
          type = "array",
        },
        autoclass = {
          description = "The bucket's Autoclass configuration.",
          properties = {
            enabled = {
              description = "Whether or not Autoclass is enabled on this bucket",
              type = "boolean",
            },
            toggleTime = {
              description = "A date and time in RFC 3339 format representing the instant at which \"enabled\" was last toggled.",
              format = "date-time",
              type = "string",
            },
          },
          type = "object",
        },
        billing = {
          description = "The bucket's billing configuration.",
          properties = {
            requesterPays = {
              description = "When set to true, Requester Pays is enabled for this bucket.",
              type = "boolean",
            },
          },
          type = "object",
        },
        cors = {
          description = "The bucket's Cross-Origin Resource Sharing (CORS) configuration.",
          items = {
            properties = {
              maxAgeSeconds = {
                description = "The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.",
                format = "int32",
                type = "integer",
              },
              method = {
                description = "The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: \"*\" is permitted in the list of methods, and means \"any method\".",
                items = {
                  type = "string",
                },
                type = "array",
              },
              origin = {
                description = "The list of Origins eligible to receive CORS response headers. Note: \"*\" is permitted in the list of origins, and means \"any Origin\".",
                items = {
                  type = "string",
                },
                type = "array",
              },
              responseHeader = {
                description = "The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.",
                items = {
                  type = "string",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        customPlacementConfig = {
          description = "The bucket's custom placement configuration for Custom Dual Regions.",
          properties = {
            dataLocations = {
              description = "The list of regional locations in which data is placed.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        defaultEventBasedHold = {
          description = "The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.",
          type = "boolean",
        },
        defaultObjectAcl = {
          description = "Default access controls to apply to new objects when no ACL is provided.",
          items = {
            ["$ref"] = "ObjectAccessControl",
          },
          type = "array",
        },
        encryption = {
          description = "Encryption configuration for a bucket.",
          properties = {
            defaultKmsKeyName = {
              description = "A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.",
              type = "string",
            },
          },
          type = "object",
        },
        etag = {
          description = "HTTP 1.1 Entity tag for the bucket.",
          type = "string",
        },
        iamConfiguration = {
          description = "The bucket's IAM configuration.",
          properties = {
            bucketPolicyOnly = {
              description = "The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.",
              properties = {
                enabled = {
                  description = "If set, access is controlled only by bucket-level or above IAM policies.",
                  type = "boolean",
                },
                lockedTime = {
                  description = "The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable.",
                  format = "date-time",
                  type = "string",
                },
              },
              type = "object",
            },
            publicAccessPrevention = {
              description = "The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.",
              type = "string",
            },
            uniformBucketLevelAccess = {
              description = "The bucket's uniform bucket-level access configuration.",
              properties = {
                enabled = {
                  description = "If set, access is controlled only by bucket-level or above IAM policies.",
                  type = "boolean",
                },
                lockedTime = {
                  description = "The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable.",
                  format = "date-time",
                  type = "string",
                },
              },
              type = "object",
            },
          },
          type = "object",
        },
        id = {
          description = "The ID of the bucket. For buckets, the id and name properties are the same.",
          type = "string",
        },
        kind = {
          default = "storage#bucket",
          description = "The kind of item this is. For buckets, this is always storage#bucket.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            description = "An individual label entry.",
            type = "string",
          },
          description = "User-provided labels, in key/value pairs.",
          type = "object",
        },
        lifecycle = {
          description = "The bucket's lifecycle configuration. See lifecycle management for more information.",
          properties = {
            rule = {
              description = "A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.",
              items = {
                properties = {
                  action = {
                    description = "The action to take.",
                    properties = {
                      storageClass = {
                        description = "Target storage class. Required iff the type of the action is SetStorageClass.",
                        type = "string",
                      },
                      type = {
                        description = "Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.",
                        type = "string",
                      },
                    },
                    type = "object",
                  },
                  condition = {
                    description = "The condition(s) under which the action will be taken.",
                    properties = {
                      age = {
                        description = "Age of an object (in days). This condition is satisfied when an object reaches the specified age.",
                        format = "int32",
                        type = "integer",
                      },
                      createdBefore = {
                        description = "A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when an object is created before midnight of the specified date in UTC.",
                        format = "date",
                        type = "string",
                      },
                      customTimeBefore = {
                        description = "A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the custom time on an object is before this date in UTC.",
                        format = "date",
                        type = "string",
                      },
                      daysSinceCustomTime = {
                        description = "Number of days elapsed since the user-specified timestamp set on an object. The condition is satisfied if the days elapsed is at least this number. If no custom timestamp is specified on an object, the condition does not apply.",
                        format = "int32",
                        type = "integer",
                      },
                      daysSinceNoncurrentTime = {
                        description = "Number of days elapsed since the noncurrent timestamp of an object. The condition is satisfied if the days elapsed is at least this number. This condition is relevant only for versioned objects. The value of the field must be a nonnegative integer. If it's zero, the object version will become eligible for Lifecycle action as soon as it becomes noncurrent.",
                        format = "int32",
                        type = "integer",
                      },
                      isLive = {
                        description = "Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.",
                        type = "boolean",
                      },
                      matchesPattern = {
                        description = "A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the \"Early Access\" launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released.",
                        type = "string",
                      },
                      matchesPrefix = {
                        description = "List of object name prefixes. This condition will be satisfied when at least one of the prefixes exactly matches the beginning of the object name.",
                        items = {
                          type = "string",
                        },
                        type = "array",
                      },
                      matchesStorageClass = {
                        description = "Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.",
                        items = {
                          type = "string",
                        },
                        type = "array",
                      },
                      matchesSuffix = {
                        description = "List of object name suffixes. This condition will be satisfied when at least one of the suffixes exactly matches the end of the object name.",
                        items = {
                          type = "string",
                        },
                        type = "array",
                      },
                      noncurrentTimeBefore = {
                        description = "A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the noncurrent time on an object is before this date in UTC. This condition is relevant only for versioned objects.",
                        format = "date",
                        type = "string",
                      },
                      numNewerVersions = {
                        description = "Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.",
                        format = "int32",
                        type = "integer",
                      },
                    },
                    type = "object",
                  },
                },
                type = "object",
              },
              type = "array",
            },
          },
          type = "object",
        },
        location = {
          description = "The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.",
          type = "string",
        },
        locationType = {
          description = "The type of the bucket location.",
          type = "string",
        },
        logging = {
          description = "The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.",
          properties = {
            logBucket = {
              description = "The destination bucket where the current bucket's logs should be placed.",
              type = "string",
            },
            logObjectPrefix = {
              description = "A prefix for log object names.",
              type = "string",
            },
          },
          type = "object",
        },
        metageneration = {
          description = "The metadata generation of this bucket.",
          format = "int64",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "storage.buckets.insert",
            },
          },
          description = "The name of the bucket.",
          type = "string",
        },
        owner = {
          description = "The owner of the bucket. This is always the project team's owner group.",
          properties = {
            entity = {
              description = "The entity, in the form project-owner-projectId.",
              type = "string",
            },
            entityId = {
              description = "The ID for the entity.",
              type = "string",
            },
          },
          type = "object",
        },
        projectNumber = {
          description = "The project number of the project the bucket belongs to.",
          format = "uint64",
          type = "string",
        },
        retentionPolicy = {
          description = "The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.",
          properties = {
            effectiveTime = {
              description = "Server-determined value that indicates the time from which policy was enforced and effective. This value is in RFC 3339 format.",
              format = "date-time",
              type = "string",
            },
            isLocked = {
              description = "Once locked, an object retention policy cannot be modified.",
              type = "boolean",
            },
            retentionPeriod = {
              description = "The duration in seconds that objects need to be retained. Retention duration must be greater than zero and less than 100 years. Note that enforcement of retention periods less than a day is not guaranteed. Such periods should only be used for testing purposes.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        rpo = {
          description = "The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.",
          type = "string",
        },
        satisfiesPZS = {
          description = "Reserved for future use.",
          type = "boolean",
        },
        selfLink = {
          description = "The URI of this bucket.",
          type = "string",
        },
        storageClass = {
          description = "The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.",
          type = "string",
        },
        timeCreated = {
          description = "The creation time of the bucket in RFC 3339 format.",
          format = "date-time",
          type = "string",
        },
        updated = {
          description = "The modification time of the bucket in RFC 3339 format.",
          format = "date-time",
          type = "string",
        },
        versioning = {
          description = "The bucket's versioning configuration.",
          properties = {
            enabled = {
              description = "While set to true, versioning is fully enabled for this bucket.",
              type = "boolean",
            },
          },
          type = "object",
        },
        website = {
          description = "The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.",
          properties = {
            mainPageSuffix = {
              description = "If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.",
              type = "string",
            },
            notFoundPage = {
              description = "If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    BucketAccessControl = {
      description = "An access-control entry.",
      id = "BucketAccessControl",
      properties = {
        bucket = {
          description = "The name of the bucket.",
          type = "string",
        },
        domain = {
          description = "The domain associated with the entity, if any.",
          type = "string",
        },
        email = {
          description = "The email address associated with the entity, if any.",
          type = "string",
        },
        entity = {
          annotations = {
            required = {
              "storage.bucketAccessControls.insert",
            },
          },
          description = "The entity holding the permission, in one of the following forms: \
- user-userId \
- user-email \
- group-groupId \
- group-email \
- domain-domain \
- project-team-projectId \
- allUsers \
- allAuthenticatedUsers Examples: \
- The user liz@example.com would be user-liz@example.com. \
- The group example@googlegroups.com would be group-example@googlegroups.com. \
- To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.",
          type = "string",
        },
        entityId = {
          description = "The ID for the entity, if any.",
          type = "string",
        },
        etag = {
          description = "HTTP 1.1 Entity tag for the access-control entry.",
          type = "string",
        },
        id = {
          description = "The ID of the access-control entry.",
          type = "string",
        },
        kind = {
          default = "storage#bucketAccessControl",
          description = "The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.",
          type = "string",
        },
        projectTeam = {
          description = "The project team associated with the entity, if any.",
          properties = {
            projectNumber = {
              description = "The project number.",
              type = "string",
            },
            team = {
              description = "The team.",
              type = "string",
            },
          },
          type = "object",
        },
        role = {
          annotations = {
            required = {
              "storage.bucketAccessControls.insert",
            },
          },
          description = "The access permission for the entity.",
          type = "string",
        },
        selfLink = {
          description = "The link to this access-control entry.",
          type = "string",
        },
      },
      type = "object",
    },
    BucketAccessControls = {
      description = "An access-control list.",
      id = "BucketAccessControls",
      properties = {
        items = {
          description = "The list of items.",
          items = {
            ["$ref"] = "BucketAccessControl",
          },
          type = "array",
        },
        kind = {
          default = "storage#bucketAccessControls",
          description = "The kind of item this is. For lists of bucket access control entries, this is always storage#bucketAccessControls.",
          type = "string",
        },
      },
      type = "object",
    },
    Buckets = {
      description = "A list of buckets.",
      id = "Buckets",
      properties = {
        items = {
          description = "The list of items.",
          items = {
            ["$ref"] = "Bucket",
          },
          type = "array",
        },
        kind = {
          default = "storage#buckets",
          description = "The kind of item this is. For lists of buckets, this is always storage#buckets.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    Channel = {
      description = "An notification channel used to watch for resource changes.",
      id = "Channel",
      properties = {
        address = {
          description = "The address where notifications are delivered for this channel.",
          type = "string",
        },
        expiration = {
          description = "Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "A UUID or similar unique string that identifies this channel.",
          type = "string",
        },
        kind = {
          default = "api#channel",
          description = "Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".",
          type = "string",
        },
        params = {
          additionalProperties = {
            description = "Declares a new parameter by name.",
            type = "string",
          },
          description = "Additional parameters controlling delivery channel behavior. Optional.",
          type = "object",
        },
        payload = {
          description = "A Boolean value to indicate whether payload is wanted. Optional.",
          type = "boolean",
        },
        resourceId = {
          description = "An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.",
          type = "string",
        },
        resourceUri = {
          description = "A version-specific identifier for the watched resource.",
          type = "string",
        },
        token = {
          description = "An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.",
          type = "string",
        },
        type = {
          description = "The type of delivery mechanism used for this channel.",
          type = "string",
        },
      },
      type = "object",
    },
    ComposeRequest = {
      description = "A Compose request.",
      id = "ComposeRequest",
      properties = {
        destination = {
          ["$ref"] = "Object",
          description = "Properties of the resulting object.",
        },
        kind = {
          default = "storage#composeRequest",
          description = "The kind of item this is.",
          type = "string",
        },
        sourceObjects = {
          annotations = {
            required = {
              "storage.objects.compose",
            },
          },
          description = "The list of source objects that will be concatenated into a single object.",
          items = {
            properties = {
              generation = {
                description = "The generation of this object to use as the source.",
                format = "int64",
                type = "string",
              },
              name = {
                annotations = {
                  required = {
                    "storage.objects.compose",
                  },
                },
                description = "The source object's name. All source objects must reside in the same bucket.",
                type = "string",
              },
              objectPreconditions = {
                description = "Conditions that must be met for this operation to execute.",
                properties = {
                  ifGenerationMatch = {
                    description = "Only perform the composition if the generation of the source object that would be used matches this value. If this value and a generation are both specified, they must be the same value or the call will fail.",
                    format = "int64",
                    type = "string",
                  },
                },
                type = "object",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents an expression text. Example: title: \"User account presence\" description: \"Determines whether the request has a user account\" expression: \"size(request.user) > 0\"",
      id = "Expr",
      properties = {
        description = {
          description = "An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.",
          type = "string",
        },
        location = {
          description = "An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
    HmacKey = {
      description = "JSON template to produce a JSON-style HMAC Key resource for Create responses.",
      id = "HmacKey",
      properties = {
        kind = {
          default = "storage#hmacKey",
          description = "The kind of item this is. For HMAC keys, this is always storage#hmacKey.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "HmacKeyMetadata",
          description = "Key metadata.",
        },
        secret = {
          description = "HMAC secret key material.",
          type = "string",
        },
      },
      type = "object",
    },
    HmacKeyMetadata = {
      description = "JSON template to produce a JSON-style HMAC Key metadata resource.",
      id = "HmacKeyMetadata",
      properties = {
        accessId = {
          description = "The ID of the HMAC Key.",
          type = "string",
        },
        etag = {
          description = "HTTP 1.1 Entity tag for the HMAC key.",
          type = "string",
        },
        id = {
          description = "The ID of the HMAC key, including the Project ID and the Access ID.",
          type = "string",
        },
        kind = {
          default = "storage#hmacKeyMetadata",
          description = "The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.",
          type = "string",
        },
        projectId = {
          description = "Project ID owning the service account to which the key authenticates.",
          type = "string",
        },
        selfLink = {
          description = "The link to this resource.",
          type = "string",
        },
        serviceAccountEmail = {
          description = "The email address of the key's associated service account.",
          type = "string",
        },
        state = {
          description = "The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.",
          type = "string",
        },
        timeCreated = {
          description = "The creation time of the HMAC key in RFC 3339 format.",
          format = "date-time",
          type = "string",
        },
        updated = {
          description = "The last modification time of the HMAC key metadata in RFC 3339 format.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    HmacKeysMetadata = {
      description = "A list of hmacKeys.",
      id = "HmacKeysMetadata",
      properties = {
        items = {
          description = "The list of items.",
          items = {
            ["$ref"] = "HmacKeyMetadata",
          },
          type = "array",
        },
        kind = {
          default = "storage#hmacKeysMetadata",
          description = "The kind of item this is. For lists of hmacKeys, this is always storage#hmacKeysMetadata.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    Notification = {
      description = "A subscription to receive Google PubSub notifications.",
      id = "Notification",
      properties = {
        custom_attributes = {
          additionalProperties = {
            type = "string",
          },
          description = "An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.",
          type = "object",
        },
        etag = {
          description = "HTTP 1.1 Entity tag for this subscription notification.",
          type = "string",
        },
        event_types = {
          description = "If present, only send notifications about listed event types. If empty, sent notifications for all event types.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "The ID of the notification.",
          type = "string",
        },
        kind = {
          default = "storage#notification",
          description = "The kind of item this is. For notifications, this is always storage#notification.",
          type = "string",
        },
        object_name_prefix = {
          description = "If present, only apply this notification configuration to object names that begin with this prefix.",
          type = "string",
        },
        payload_format = {
          annotations = {
            required = {
              "storage.notifications.insert",
            },
          },
          default = "JSON_API_V1",
          description = "The desired content of the Payload.",
          type = "string",
        },
        selfLink = {
          description = "The canonical URL of this notification.",
          type = "string",
        },
        topic = {
          annotations = {
            required = {
              "storage.notifications.insert",
            },
          },
          description = "The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'",
          type = "string",
        },
      },
      type = "object",
    },
    Notifications = {
      description = "A list of notification subscriptions.",
      id = "Notifications",
      properties = {
        items = {
          description = "The list of items.",
          items = {
            ["$ref"] = "Notification",
          },
          type = "array",
        },
        kind = {
          default = "storage#notifications",
          description = "The kind of item this is. For lists of notifications, this is always storage#notifications.",
          type = "string",
        },
      },
      type = "object",
    },
    Object = {
      description = "An object.",
      id = "Object",
      properties = {
        acl = {
          annotations = {
            required = {
              "storage.objects.update",
            },
          },
          description = "Access controls on the object.",
          items = {
            ["$ref"] = "ObjectAccessControl",
          },
          type = "array",
        },
        bucket = {
          description = "The name of the bucket containing this object.",
          type = "string",
        },
        cacheControl = {
          description = "Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.",
          type = "string",
        },
        componentCount = {
          description = "Number of underlying components that make up this object. Components are accumulated by compose operations.",
          format = "int32",
          type = "integer",
        },
        contentDisposition = {
          description = "Content-Disposition of the object data.",
          type = "string",
        },
        contentEncoding = {
          description = "Content-Encoding of the object data.",
          type = "string",
        },
        contentLanguage = {
          description = "Content-Language of the object data.",
          type = "string",
        },
        contentType = {
          description = "Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.",
          type = "string",
        },
        crc32c = {
          description = "CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.",
          type = "string",
        },
        customTime = {
          description = "A timestamp in RFC 3339 format specified by the user for an object.",
          format = "date-time",
          type = "string",
        },
        customerEncryption = {
          description = "Metadata of customer-supplied encryption key, if the object is encrypted by such a key.",
          properties = {
            encryptionAlgorithm = {
              description = "The encryption algorithm.",
              type = "string",
            },
            keySha256 = {
              description = "SHA256 hash value of the encryption key.",
              type = "string",
            },
          },
          type = "object",
        },
        etag = {
          description = "HTTP 1.1 Entity tag for the object.",
          type = "string",
        },
        eventBasedHold = {
          description = "Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.",
          type = "boolean",
        },
        generation = {
          description = "The content generation of this object. Used for object versioning.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "The ID of the object, including the bucket name, object name, and generation number.",
          type = "string",
        },
        kind = {
          default = "storage#object",
          description = "The kind of item this is. For objects, this is always storage#object.",
          type = "string",
        },
        kmsKeyName = {
          description = "Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.",
          type = "string",
        },
        md5Hash = {
          description = "MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.",
          type = "string",
        },
        mediaLink = {
          description = "Media download link.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "An individual metadata entry.",
            type = "string",
          },
          description = "User-provided metadata, in key/value pairs.",
          type = "object",
        },
        metageneration = {
          description = "The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "The name of the object. Required if not specified by URL parameter.",
          type = "string",
        },
        owner = {
          description = "The owner of the object. This will always be the uploader of the object.",
          properties = {
            entity = {
              description = "The entity, in the form user-userId.",
              type = "string",
            },
            entityId = {
              description = "The ID for the entity.",
              type = "string",
            },
          },
          type = "object",
        },
        retentionExpirationTime = {
          description = "A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).",
          format = "date-time",
          type = "string",
        },
        selfLink = {
          description = "The link to this object.",
          type = "string",
        },
        size = {
          description = "Content-Length of the data in bytes.",
          format = "uint64",
          type = "string",
        },
        storageClass = {
          description = "Storage class of the object.",
          type = "string",
        },
        temporaryHold = {
          description = "Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.",
          type = "boolean",
        },
        timeCreated = {
          description = "The creation time of the object in RFC 3339 format.",
          format = "date-time",
          type = "string",
        },
        timeDeleted = {
          description = "The deletion time of the object in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.",
          format = "date-time",
          type = "string",
        },
        timeStorageClassUpdated = {
          description = "The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.",
          format = "date-time",
          type = "string",
        },
        updated = {
          description = "The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    ObjectAccessControl = {
      description = "An access-control entry.",
      id = "ObjectAccessControl",
      properties = {
        bucket = {
          description = "The name of the bucket.",
          type = "string",
        },
        domain = {
          description = "The domain associated with the entity, if any.",
          type = "string",
        },
        email = {
          description = "The email address associated with the entity, if any.",
          type = "string",
        },
        entity = {
          annotations = {
            required = {
              "storage.defaultObjectAccessControls.insert",
              "storage.objectAccessControls.insert",
            },
          },
          description = "The entity holding the permission, in one of the following forms: \
- user-userId \
- user-email \
- group-groupId \
- group-email \
- domain-domain \
- project-team-projectId \
- allUsers \
- allAuthenticatedUsers Examples: \
- The user liz@example.com would be user-liz@example.com. \
- The group example@googlegroups.com would be group-example@googlegroups.com. \
- To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.",
          type = "string",
        },
        entityId = {
          description = "The ID for the entity, if any.",
          type = "string",
        },
        etag = {
          description = "HTTP 1.1 Entity tag for the access-control entry.",
          type = "string",
        },
        generation = {
          description = "The content generation of the object, if applied to an object.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "The ID of the access-control entry.",
          type = "string",
        },
        kind = {
          default = "storage#objectAccessControl",
          description = "The kind of item this is. For object access control entries, this is always storage#objectAccessControl.",
          type = "string",
        },
        object = {
          description = "The name of the object, if applied to an object.",
          type = "string",
        },
        projectTeam = {
          description = "The project team associated with the entity, if any.",
          properties = {
            projectNumber = {
              description = "The project number.",
              type = "string",
            },
            team = {
              description = "The team.",
              type = "string",
            },
          },
          type = "object",
        },
        role = {
          annotations = {
            required = {
              "storage.defaultObjectAccessControls.insert",
              "storage.objectAccessControls.insert",
            },
          },
          description = "The access permission for the entity.",
          type = "string",
        },
        selfLink = {
          description = "The link to this access-control entry.",
          type = "string",
        },
      },
      type = "object",
    },
    ObjectAccessControls = {
      description = "An access-control list.",
      id = "ObjectAccessControls",
      properties = {
        items = {
          description = "The list of items.",
          items = {
            ["$ref"] = "ObjectAccessControl",
          },
          type = "array",
        },
        kind = {
          default = "storage#objectAccessControls",
          description = "The kind of item this is. For lists of object access control entries, this is always storage#objectAccessControls.",
          type = "string",
        },
      },
      type = "object",
    },
    Objects = {
      description = "A list of objects.",
      id = "Objects",
      properties = {
        items = {
          description = "The list of items.",
          items = {
            ["$ref"] = "Object",
          },
          type = "array",
        },
        kind = {
          default = "storage#objects",
          description = "The kind of item this is. For lists of objects, this is always storage#objects.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
        prefixes = {
          description = "The list of prefixes of objects matching-but-not-listed up to and including the requested delimiter.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Policy = {
      description = "A bucket/object IAM policy.",
      id = "Policy",
      properties = {
        bindings = {
          annotations = {
            required = {
              "storage.buckets.setIamPolicy",
              "storage.objects.setIamPolicy",
            },
          },
          description = "An association between a role, which comes with a set of permissions, and members who may assume that role.",
          items = {
            properties = {
              condition = {
                ["$ref"] = "Expr",
                description = "The condition that is associated with this binding. NOTE: an unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently.",
              },
              members = {
                annotations = {
                  required = {
                    "storage.buckets.setIamPolicy",
                    "storage.objects.setIamPolicy",
                  },
                },
                description = "A collection of identifiers for members who may assume the provided role. Recognized identifiers are as follows:  \
- allUsers — A special identifier that represents anyone on the internet; with or without a Google account.  \
- allAuthenticatedUsers — A special identifier that represents anyone who is authenticated with a Google account or a service account.  \
- user:emailid — An email address that represents a specific account. For example, user:alice@gmail.com or user:joe@example.com.  \
- serviceAccount:emailid — An email address that represents a service account. For example,  serviceAccount:my-other-app@appspot.gserviceaccount.com .  \
- group:emailid — An email address that represents a Google group. For example, group:admins@example.com.  \
- domain:domain — A Google Apps domain name that represents all the users of that domain. For example, domain:google.com or domain:example.com.  \
- projectOwner:projectid — Owners of the given project. For example, projectOwner:my-example-project  \
- projectEditor:projectid — Editors of the given project. For example, projectEditor:my-example-project  \
- projectViewer:projectid — Viewers of the given project. For example, projectViewer:my-example-project",
                items = {
                  type = "string",
                },
                type = "array",
              },
              role = {
                annotations = {
                  required = {
                    "storage.buckets.setIamPolicy",
                    "storage.objects.setIamPolicy",
                  },
                },
                description = "The role to which members belong. Two types of roles are supported: new IAM roles, which grant permissions that do not map directly to those provided by ACLs, and legacy IAM roles, which do map directly to ACL permissions. All roles are of the format roles/storage.specificRole.\
The new IAM roles are:  \
- roles/storage.admin — Full control of Google Cloud Storage resources.  \
- roles/storage.objectViewer — Read-Only access to Google Cloud Storage objects.  \
- roles/storage.objectCreator — Access to create objects in Google Cloud Storage.  \
- roles/storage.objectAdmin — Full control of Google Cloud Storage objects.   The legacy IAM roles are:  \
- roles/storage.legacyObjectReader — Read-only access to objects without listing. Equivalent to an ACL entry on an object with the READER role.  \
- roles/storage.legacyObjectOwner — Read/write access to existing objects without listing. Equivalent to an ACL entry on an object with the OWNER role.  \
- roles/storage.legacyBucketReader — Read access to buckets with object listing. Equivalent to an ACL entry on a bucket with the READER role.  \
- roles/storage.legacyBucketWriter — Read access to buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the WRITER role.  \
- roles/storage.legacyBucketOwner — Read and write access to existing buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the OWNER role.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        etag = {
          description = "HTTP 1.1  Entity tag for the policy.",
          format = "byte",
          type = "string",
        },
        kind = {
          default = "storage#policy",
          description = "The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.",
          type = "string",
        },
        resourceId = {
          description = "The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, and projects/_/buckets/bucket/objects/object for objects. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.",
          type = "string",
        },
        version = {
          description = "The IAM policy format version.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    RewriteResponse = {
      description = "A rewrite response.",
      id = "RewriteResponse",
      properties = {
        done = {
          description = "true if the copy is finished; otherwise, false if the copy is in progress. This property is always present in the response.",
          type = "boolean",
        },
        kind = {
          default = "storage#rewriteResponse",
          description = "The kind of item this is.",
          type = "string",
        },
        objectSize = {
          description = "The total size of the object being copied in bytes. This property is always present in the response.",
          format = "int64",
          type = "string",
        },
        resource = {
          ["$ref"] = "Object",
          description = "A resource containing the metadata for the copied-to object. This property is present in the response only when copying completes.",
        },
        rewriteToken = {
          description = "A token to use in subsequent requests to continue copying data. This token is present in the response only when there is more data to copy.",
          type = "string",
        },
        totalBytesRewritten = {
          description = "The total bytes written so far, which can be used to provide a waiting user with a progress indicator. This property is always present in the response.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ServiceAccount = {
      description = "A subscription to receive Google PubSub notifications.",
      id = "ServiceAccount",
      properties = {
        email_address = {
          description = "The ID of the notification.",
          type = "string",
        },
        kind = {
          default = "storage#serviceAccount",
          description = "The kind of item this is. For notifications, this is always storage#notification.",
          type = "string",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "A storage.(buckets|objects).testIamPermissions response.",
      id = "TestIamPermissionsResponse",
      properties = {
        kind = {
          default = "storage#testIamPermissionsResponse",
          description = "The kind of item this is.",
          type = "string",
        },
        permissions = {
          description = "The permissions held by the caller. Permissions are always of the format storage.resource.capability, where resource is one of buckets or objects. The supported permissions are as follows:  \
- storage.buckets.delete — Delete bucket.  \
- storage.buckets.get — Read bucket metadata.  \
- storage.buckets.getIamPolicy — Read bucket IAM policy.  \
- storage.buckets.create — Create bucket.  \
- storage.buckets.list — List buckets.  \
- storage.buckets.setIamPolicy — Update bucket IAM policy.  \
- storage.buckets.update — Update bucket metadata.  \
- storage.objects.delete — Delete object.  \
- storage.objects.get — Read object data and metadata.  \
- storage.objects.getIamPolicy — Read object IAM policy.  \
- storage.objects.create — Create object.  \
- storage.objects.list — List objects.  \
- storage.objects.setIamPolicy — Update object IAM policy.  \
- storage.objects.update — Update object metadata.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "storage/v1/",
  title = "Cloud Storage JSON API",
  version = "v1",
}
