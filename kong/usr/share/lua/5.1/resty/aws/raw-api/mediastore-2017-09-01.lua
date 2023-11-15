local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-09-01",
    "endpointPrefix": "mediastore",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "MediaStore",
    "serviceFullName": "AWS Elemental MediaStore",
    "serviceId": "MediaStore",
    "signatureVersion": "v4",
    "signingName": "mediastore",
    "targetPrefix": "MediaStore_20170901",
    "uid": "mediastore-2017-09-01"
  },
  "operations": {
    "CreateContainer": {
      "name": "CreateContainer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateContainerInput"
      },
      "output": {
        "shape": "CreateContainerOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.</p>"
    },
    "DeleteContainer": {
      "name": "DeleteContainer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteContainerInput"
      },
      "output": {
        "shape": "DeleteContainerOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes the specified container. Before you make a <code>DeleteContainer</code> request, delete any objects in the container or in any folders in the container. You can delete only empty containers. </p>"
    },
    "DeleteContainerPolicy": {
      "name": "DeleteContainerPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteContainerPolicyInput"
      },
      "output": {
        "shape": "DeleteContainerPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes the access policy that is associated with the specified container.</p>"
    },
    "DeleteCorsPolicy": {
      "name": "DeleteCorsPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCorsPolicyInput"
      },
      "output": {
        "shape": "DeleteCorsPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "CorsPolicyNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container.</p> <p>To use this operation, you must have permission to perform the <code>MediaStore:DeleteCorsPolicy</code> action. The container owner has this permission by default and can grant this permission to others.</p>"
    },
    "DeleteLifecyclePolicy": {
      "name": "DeleteLifecyclePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLifecyclePolicyInput"
      },
      "output": {
        "shape": "DeleteLifecyclePolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.</p>"
    },
    "DeleteMetricPolicy": {
      "name": "DeleteMetricPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMetricPolicyInput"
      },
      "output": {
        "shape": "DeleteMetricPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes the metric policy that is associated with the specified container. If there is no metric policy associated with the container, MediaStore doesn't send metrics to CloudWatch.</p>"
    },
    "DescribeContainer": {
      "name": "DescribeContainer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeContainerInput"
      },
      "output": {
        "shape": "DescribeContainerOutput"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The <code>DescribeContainer</code> request returns a single <code>Container</code> object based on <code>ContainerName</code>. To return all <code>Container</code> objects that are associated with a specified AWS account, use <a>ListContainers</a>.</p>"
    },
    "GetContainerPolicy": {
      "name": "GetContainerPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetContainerPolicyInput"
      },
      "output": {
        "shape": "GetContainerPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the <a href=\"https://aws.amazon.com/documentation/iam/\">AWS Identity and Access Management User Guide</a>.</p>"
    },
    "GetCorsPolicy": {
      "name": "GetCorsPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCorsPolicyInput"
      },
      "output": {
        "shape": "GetCorsPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "CorsPolicyNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns the cross-origin resource sharing (CORS) configuration information that is set for the container.</p> <p>To use this operation, you must have permission to perform the <code>MediaStore:GetCorsPolicy</code> action. By default, the container owner has this permission and can grant it to others.</p>"
    },
    "GetLifecyclePolicy": {
      "name": "GetLifecyclePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetLifecyclePolicyInput"
      },
      "output": {
        "shape": "GetLifecyclePolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the object lifecycle policy that is assigned to a container.</p>"
    },
    "GetMetricPolicy": {
      "name": "GetMetricPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMetricPolicyInput"
      },
      "output": {
        "shape": "GetMetricPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns the metric policy for the specified container. </p>"
    },
    "ListContainers": {
      "name": "ListContainers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListContainersInput"
      },
      "output": {
        "shape": "ListContainersOutput"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists the properties of all containers in AWS Elemental MediaStore. </p> <p>You can query to receive all the containers in one response. Or you can include the <code>MaxResults</code> parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the <code>NextToken</code> parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive. </p> <p>See also <a>DescribeContainer</a>, which gets the properties of one container. </p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns a list of the tags assigned to the specified container. </p>"
    },
    "PutContainerPolicy": {
      "name": "PutContainerPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutContainerPolicyInput"
      },
      "output": {
        "shape": "PutContainerPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the <a href=\"https://aws.amazon.com/documentation/iam/\">AWS Identity and Access Management User Guide</a>.</p> <p>For this release of the REST API, you can create only one policy for a container. If you enter <code>PutContainerPolicy</code> twice, the second command modifies the existing policy. </p>"
    },
    "PutCorsPolicy": {
      "name": "PutCorsPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutCorsPolicyInput"
      },
      "output": {
        "shape": "PutCorsPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability.</p> <p>To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.</p> <p>To learn more about CORS, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html\">Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore</a>.</p>"
    },
    "PutLifecyclePolicy": {
      "name": "PutLifecyclePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutLifecyclePolicyInput"
      },
      "output": {
        "shape": "PutLifecyclePolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect.</p> <p>For information about how to construct an object lifecycle policy, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html\">Components of an Object Lifecycle Policy</a>.</p>"
    },
    "PutMetricPolicy": {
      "name": "PutMetricPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutMetricPolicyInput"
      },
      "output": {
        "shape": "PutMetricPolicyOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>The metric policy that you want to add to the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. It takes up to 20 minutes for the new policy to take effect.</p>"
    },
    "StartAccessLogging": {
      "name": "StartAccessLogging",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartAccessLoggingInput"
      },
      "output": {
        "shape": "StartAccessLoggingOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.</p>"
    },
    "StopAccessLogging": {
      "name": "StopAccessLogging",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopAccessLoggingInput"
      },
      "output": {
        "shape": "StopAccessLoggingOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "output": {
        "shape": "TagResourceOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be \"customer\" and the tag value might be \"companyA.\" You can specify one or more tags to add to each container. You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html\">Tagging Resources in MediaStore</a>.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "output": {
        "shape": "UntagResourceOutput"
      },
      "errors": [
        {
          "shape": "ContainerInUseException"
        },
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Removes tags from the specified container. You can specify one or more tags to remove. </p>"
    }
  },
  "shapes": {
    "AllowedHeaders": {
      "type": "list",
      "member": {
        "shape": "Header"
      },
      "max": 100,
      "min": 0
    },
    "AllowedMethods": {
      "type": "list",
      "member": {
        "shape": "MethodName"
      },
      "max": 4,
      "min": 1
    },
    "AllowedOrigins": {
      "type": "list",
      "member": {
        "shape": "Origin"
      },
      "max": 100,
      "min": 1
    },
    "Container": {
      "type": "structure",
      "members": {
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The DNS endpoint of the container. Use the endpoint to identify the specific container when sending requests to the data plane. The service assigns this value when the container is created. Once the value has been assigned, it does not change.</p>"
        },
        "CreationTime": {
          "shape": "TimeStamp",
          "documentation": "<p>Unix timestamp.</p>"
        },
        "ARN": {
          "shape": "ContainerARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the container. The ARN has the following format:</p> <p>arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt; </p> <p>For example: arn:aws:mediastore:us-west-2:111122223333:container/movies </p>"
        },
        "Name": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container.</p>"
        },
        "Status": {
          "shape": "ContainerStatus",
          "documentation": "<p>The status of container creation or deletion. The status is one of the following: <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the service is creating the container, the status is <code>CREATING</code>. When the endpoint is available, the status changes to <code>ACTIVE</code>.</p>"
        },
        "AccessLoggingEnabled": {
          "shape": "ContainerAccessLoggingEnabled",
          "documentation": "<p>The state of access logging on the container. This value is <code>false</code> by default, indicating that AWS Elemental MediaStore does not send access logs to Amazon CloudWatch Logs. When you enable access logging on the container, MediaStore changes this value to <code>true</code>, indicating that the service delivers access logs for objects stored in that container to CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>This section describes operations that you can perform on an AWS Elemental MediaStore container.</p>"
    },
    "ContainerARN": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/[\\w-]{1,255}"
    },
    "ContainerAccessLoggingEnabled": {
      "type": "boolean"
    },
    "ContainerLevelMetrics": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "ContainerList": {
      "type": "list",
      "member": {
        "shape": "Container"
      }
    },
    "ContainerListLimit": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "ContainerName": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\w-]+"
    },
    "ContainerPolicy": {
      "type": "string",
      "max": 8192,
      "min": 1,
      "pattern": "[\\x00-\\x7F]+"
    },
    "ContainerStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "CREATING",
        "DELETING"
      ],
      "max": 16,
      "min": 1
    },
    "CorsPolicy": {
      "type": "list",
      "member": {
        "shape": "CorsRule"
      },
      "documentation": "<p>The CORS policy of the container. </p>",
      "max": 100,
      "min": 1
    },
    "CorsRule": {
      "type": "structure",
      "required": [
        "AllowedOrigins",
        "AllowedHeaders"
      ],
      "members": {
        "AllowedOrigins": {
          "shape": "AllowedOrigins",
          "documentation": "<p>One or more response headers that you want users to be able to access from their applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p> <p>Each CORS rule must have at least one <code>AllowedOrigins</code> element. The string value can include only one wildcard character (*), for example, http://*.example.com. Additionally, you can specify only one wildcard character to allow cross-origin access for all origins.</p>"
        },
        "AllowedMethods": {
          "shape": "AllowedMethods",
          "documentation": "<p>Identifies an HTTP method that the origin that is specified in the rule is allowed to execute.</p> <p>Each CORS rule must contain at least one <code>AllowedMethods</code> and one <code>AllowedOrigins</code> element.</p>"
        },
        "AllowedHeaders": {
          "shape": "AllowedHeaders",
          "documentation": "<p>Specifies which headers are allowed in a preflight <code>OPTIONS</code> request through the <code>Access-Control-Request-Headers</code> header. Each header name that is specified in <code>Access-Control-Request-Headers</code> must have a corresponding entry in the rule. Only the headers that were requested are sent back. </p> <p>This element can contain only one wildcard character (*).</p>"
        },
        "MaxAgeSeconds": {
          "shape": "MaxAgeSeconds",
          "documentation": "<p>The time in seconds that your browser caches the preflight response for the specified resource.</p> <p>A CORS rule can have only one <code>MaxAgeSeconds</code> element.</p>"
        },
        "ExposeHeaders": {
          "shape": "ExposeHeaders",
          "documentation": "<p>One or more headers in the response that you want users to be able to access from their applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p> <p>This element is optional for each rule.</p>"
        }
      },
      "documentation": "<p>A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.</p>"
    },
    "CreateContainerInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named <code>movies</code> in every region, as long as you don’t have an existing container with that name.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html\">Tagging Resources in MediaStore</a>.</p>"
        }
      }
    },
    "CreateContainerOutput": {
      "type": "structure",
      "required": [
        "Container"
      ],
      "members": {
        "Container": {
          "shape": "Container",
          "documentation": "<p>ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN has the following format: arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt;. For example: arn:aws:mediastore:us-west-2:111122223333:container/movies </p> <p>ContainerName: The container name as specified in the request.</p> <p>CreationTime: Unix time stamp.</p> <p>Status: The status of container creation or deletion. The status is one of the following: <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the service is creating the container, the status is <code>CREATING</code>. When an endpoint is available, the status changes to <code>ACTIVE</code>.</p> <p>The return value does not include the container's endpoint. To make downstream requests, you must obtain this value by using <a>DescribeContainer</a> or <a>ListContainers</a>.</p>"
        }
      }
    },
    "DeleteContainerInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container to delete. </p>"
        }
      }
    },
    "DeleteContainerOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteContainerPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that holds the policy.</p>"
        }
      }
    },
    "DeleteContainerPolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteCorsPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container to remove the policy from.</p>"
        }
      }
    },
    "DeleteCorsPolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteLifecyclePolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that holds the object lifecycle policy.</p>"
        }
      }
    },
    "DeleteLifecyclePolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteMetricPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that is associated with the metric policy that you want to delete.</p>"
        }
      }
    },
    "DeleteMetricPolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "DescribeContainerInput": {
      "type": "structure",
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container to query.</p>"
        }
      }
    },
    "DescribeContainerOutput": {
      "type": "structure",
      "members": {
        "Container": {
          "shape": "Container",
          "documentation": "<p>The name of the queried container.</p>"
        }
      }
    },
    "Endpoint": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "ExposeHeaders": {
      "type": "list",
      "member": {
        "shape": "Header"
      },
      "max": 100,
      "min": 0
    },
    "GetContainerPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container. </p>"
        }
      }
    },
    "GetContainerPolicyOutput": {
      "type": "structure",
      "required": [
        "Policy"
      ],
      "members": {
        "Policy": {
          "shape": "ContainerPolicy",
          "documentation": "<p>The contents of the access policy.</p>"
        }
      }
    },
    "GetCorsPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that the policy is assigned to.</p>"
        }
      }
    },
    "GetCorsPolicyOutput": {
      "type": "structure",
      "required": [
        "CorsPolicy"
      ],
      "members": {
        "CorsPolicy": {
          "shape": "CorsPolicy",
          "documentation": "<p>The CORS policy assigned to the container.</p>"
        }
      }
    },
    "GetLifecyclePolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that the object lifecycle policy is assigned to.</p>"
        }
      }
    },
    "GetLifecyclePolicyOutput": {
      "type": "structure",
      "required": [
        "LifecyclePolicy"
      ],
      "members": {
        "LifecyclePolicy": {
          "shape": "LifecyclePolicy",
          "documentation": "<p>The object lifecycle policy that is assigned to the container.</p>"
        }
      }
    },
    "GetMetricPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that is associated with the metric policy.</p>"
        }
      }
    },
    "GetMetricPolicyOutput": {
      "type": "structure",
      "required": [
        "MetricPolicy"
      ],
      "members": {
        "MetricPolicy": {
          "shape": "MetricPolicy",
          "documentation": "<p>The metric policy that is associated with the specific container.</p>"
        }
      }
    },
    "Header": {
      "type": "string",
      "max": 8192,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "LifecyclePolicy": {
      "type": "string",
      "max": 8192,
      "min": 0,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "ListContainersInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>Only if you used <code>MaxResults</code> in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list.</p>"
        },
        "MaxResults": {
          "shape": "ContainerListLimit",
          "documentation": "<p>Enter the maximum number of containers in the response. Use from 1 to 255 characters. </p>"
        }
      }
    },
    "ListContainersOutput": {
      "type": "structure",
      "required": [
        "Containers"
      ],
      "members": {
        "Containers": {
          "shape": "ContainerList",
          "documentation": "<p>The names of the containers.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> <code>NextToken</code> is the token to use in the next call to <code>ListContainers</code>. This token is returned only if you included the <code>MaxResults</code> tag in the original command, and only if there are still containers to return. </p>"
        }
      }
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "Resource"
      ],
      "members": {
        "Resource": {
          "shape": "ContainerARN",
          "documentation": "<p>The Amazon Resource Name (ARN) for the container.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs that are assigned to the container.</p>"
        }
      }
    },
    "MaxAgeSeconds": {
      "type": "integer",
      "max": 2147483647,
      "min": 0
    },
    "MethodName": {
      "type": "string",
      "enum": [
        "PUT",
        "GET",
        "DELETE",
        "HEAD"
      ]
    },
    "MetricPolicy": {
      "type": "structure",
      "required": [
        "ContainerLevelMetrics"
      ],
      "members": {
        "ContainerLevelMetrics": {
          "shape": "ContainerLevelMetrics",
          "documentation": "<p>A setting to enable or disable metrics at the container level.</p>"
        },
        "MetricPolicyRules": {
          "shape": "MetricPolicyRules",
          "documentation": "<p>A parameter that holds an array of rules that enable metrics at the object level. This parameter is optional, but if you choose to include it, you must also include at least one rule. By default, you can include up to five rules. You can also <a href=\"https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas\">request a quota increase</a> to allow up to 300 rules per policy.</p>"
        }
      },
      "documentation": "<p>The metric policy that is associated with the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include rules to define groups of objects that you want MediaStore to send object-level metrics for.</p> <p>To view examples of how to construct a metric policy for your use case, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/policies-metric-examples.html\">Example Metric Policies</a>.</p>"
    },
    "MetricPolicyRule": {
      "type": "structure",
      "required": [
        "ObjectGroup",
        "ObjectGroupName"
      ],
      "members": {
        "ObjectGroup": {
          "shape": "ObjectGroup",
          "documentation": "<p>A path or file name that defines which objects to include in the group. Wildcards (*) are acceptable.</p>"
        },
        "ObjectGroupName": {
          "shape": "ObjectGroupName",
          "documentation": "<p>A name that allows you to refer to the object group.</p>"
        }
      },
      "documentation": "<p>A setting that enables metrics at the object level. Each rule contains an object group and an object group name. If the policy includes the MetricPolicyRules parameter, you must include at least one rule. Each metric policy can include up to five rules by default. You can also <a href=\"https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas\">request a quota increase</a> to allow up to 300 rules per policy.</p>"
    },
    "MetricPolicyRules": {
      "type": "list",
      "member": {
        "shape": "MetricPolicyRule"
      },
      "max": 300,
      "min": 1
    },
    "ObjectGroup": {
      "type": "string",
      "max": 900,
      "min": 1,
      "pattern": "/?(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+/){0,10}(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+)?/?"
    },
    "ObjectGroupName": {
      "type": "string",
      "max": 30,
      "min": 1,
      "pattern": "[a-zA-Z0-9_]+"
    },
    "Origin": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "PaginationToken": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[0-9A-Za-z=/+]+"
    },
    "PutContainerPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName",
        "Policy"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container.</p>"
        },
        "Policy": {
          "shape": "ContainerPolicy",
          "documentation": "<p>The contents of the policy, which includes the following: </p> <ul> <li> <p>One <code>Version</code> tag</p> </li> <li> <p>One <code>Statement</code> tag that contains the standard tags for the policy.</p> </li> </ul>"
        }
      }
    },
    "PutContainerPolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "PutCorsPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName",
        "CorsPolicy"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that you want to assign the CORS policy to.</p>"
        },
        "CorsPolicy": {
          "shape": "CorsPolicy",
          "documentation": "<p>The CORS policy to apply to the container. </p>"
        }
      }
    },
    "PutCorsPolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "PutLifecyclePolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName",
        "LifecyclePolicy"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that you want to assign the object lifecycle policy to.</p>"
        },
        "LifecyclePolicy": {
          "shape": "LifecyclePolicy",
          "documentation": "<p>The object lifecycle policy to apply to the container.</p>"
        }
      }
    },
    "PutLifecyclePolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "PutMetricPolicyInput": {
      "type": "structure",
      "required": [
        "ContainerName",
        "MetricPolicy"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that you want to add the metric policy to.</p>"
        },
        "MetricPolicy": {
          "shape": "MetricPolicy",
          "documentation": "<p>The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for. If you include rules in the policy, construct each rule with both of the following:</p> <ul> <li> <p>An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.</p> </li> <li> <p>An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).</p> </li> </ul>"
        }
      }
    },
    "PutMetricPolicyOutput": {
      "type": "structure",
      "members": {}
    },
    "StartAccessLoggingInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that you want to start access logging on.</p>"
        }
      }
    },
    "StartAccessLoggingOutput": {
      "type": "structure",
      "members": {}
    },
    "StopAccessLoggingInput": {
      "type": "structure",
      "required": [
        "ContainerName"
      ],
      "members": {
        "ContainerName": {
          "shape": "ContainerName",
          "documentation": "<p>The name of the container that you want to stop access logging on.</p>"
        }
      }
    },
    "StopAccessLoggingOutput": {
      "type": "structure",
      "members": {}
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are case-sensitive.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are case-sensitive.</p>"
        }
      },
      "documentation": "<p>A collection of tags associated with a container. Each tag consists of a key:value pair, which can be anything you define. Typically, the tag key represents a category (such as \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html\">Tagging Resources in MediaStore</a>.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 1
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "Resource",
        "Tags"
      ],
      "members": {
        "Resource": {
          "shape": "ContainerARN",
          "documentation": "<p>The Amazon Resource Name (ARN) for the container. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example, suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags: customer:CompanyA, priority:Medium, and type:Contract.</p>"
        }
      }
    },
    "TagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*"
    },
    "TimeStamp": {
      "type": "timestamp"
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "Resource",
        "TagKeys"
      ],
      "members": {
        "Resource": {
          "shape": "ContainerARN",
          "documentation": "<p>The Amazon Resource Name (ARN) for the container.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove (priority).</p>"
        }
      }
    },
    "UntagResourceOutput": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<p>An AWS Elemental MediaStore container is a namespace that holds folders and objects. You use a container endpoint to create, read, and delete objects. </p>"
}
]===]))
