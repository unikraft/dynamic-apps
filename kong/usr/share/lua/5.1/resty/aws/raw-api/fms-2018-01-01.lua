local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-01-01",
    "endpointPrefix": "fms",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "FMS",
    "serviceFullName": "Firewall Management Service",
    "serviceId": "FMS",
    "signatureVersion": "v4",
    "targetPrefix": "AWSFMS_20180101",
    "uid": "fms-2018-01-01"
  },
  "operations": {
    "AssociateAdminAccount": {
      "name": "AssociateAdminAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateAdminAccountRequest"
      },
      "errors": [
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Sets the AWS Firewall Manager administrator account. AWS Firewall Manager must be associated with the master account of your AWS organization or associated with a member account that has the appropriate permissions. If the account ID that you submit is not an AWS Organizations master account, AWS Firewall Manager will set the appropriate permissions for the given member account.</p> <p>The account that you associate with AWS Firewall Manager is called the AWS Firewall Manager administrator account. </p>"
    },
    "DeleteAppsList": {
      "name": "DeleteAppsList",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAppsListRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Permanently deletes an AWS Firewall Manager applications list.</p>"
    },
    "DeleteNotificationChannel": {
      "name": "DeleteNotificationChannel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteNotificationChannelRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.</p>"
    },
    "DeletePolicy": {
      "name": "DeletePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePolicyRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Permanently deletes an AWS Firewall Manager policy. </p>"
    },
    "DeleteProtocolsList": {
      "name": "DeleteProtocolsList",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProtocolsListRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Permanently deletes an AWS Firewall Manager protocols list.</p>"
    },
    "DisassociateAdminAccount": {
      "name": "DisassociateAdminAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateAdminAccountRequest"
      },
      "errors": [
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Disassociates the account that has been set as the AWS Firewall Manager administrator account. To set a different account as the administrator account, you must submit an <code>AssociateAdminAccount</code> request.</p>"
    },
    "GetAdminAccount": {
      "name": "GetAdminAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAdminAccountRequest"
      },
      "output": {
        "shape": "GetAdminAccountResponse"
      },
      "errors": [
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.</p>"
    },
    "GetAppsList": {
      "name": "GetAppsList",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAppsListRequest"
      },
      "output": {
        "shape": "GetAppsListResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns information about the specified AWS Firewall Manager applications list.</p>"
    },
    "GetComplianceDetail": {
      "name": "GetComplianceDetail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetComplianceDetailRequest"
      },
      "output": {
        "shape": "GetComplianceDetailResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InvalidOperationException"
        }
      ],
      "documentation": "<p>Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy. Resources are considered noncompliant for AWS WAF and Shield Advanced policies if the specified policy has not been applied to them. Resources are considered noncompliant for security group policies if they are in scope of the policy, they violate one or more of the policy rules, and remediation is disabled or not possible. </p>"
    },
    "GetNotificationChannel": {
      "name": "GetNotificationChannel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetNotificationChannelRequest"
      },
      "output": {
        "shape": "GetNotificationChannelResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.</p>"
    },
    "GetPolicy": {
      "name": "GetPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPolicyRequest"
      },
      "output": {
        "shape": "GetPolicyResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidTypeException"
        }
      ],
      "documentation": "<p>Returns information about the specified AWS Firewall Manager policy.</p>"
    },
    "GetProtectionStatus": {
      "name": "GetProtectionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetProtectionStatusRequest"
      },
      "output": {
        "shape": "GetProtectionStatusResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.</p>"
    },
    "GetProtocolsList": {
      "name": "GetProtocolsList",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetProtocolsListRequest"
      },
      "output": {
        "shape": "GetProtocolsListResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns information about the specified AWS Firewall Manager protocols list.</p>"
    },
    "GetViolationDetails": {
      "name": "GetViolationDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetViolationDetailsRequest"
      },
      "output": {
        "shape": "GetViolationDetailsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Retrieves violations for a resource based on the specified AWS Firewall Manager policy and AWS account.</p>"
    },
    "ListAppsLists": {
      "name": "ListAppsLists",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAppsListsRequest"
      },
      "output": {
        "shape": "ListAppsListsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns an array of <code>AppsListDataSummary</code> objects.</p>"
    },
    "ListComplianceStatus": {
      "name": "ListComplianceStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListComplianceStatusRequest"
      },
      "output": {
        "shape": "ListComplianceStatusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns an array of <code>PolicyComplianceStatus</code> objects. Use <code>PolicyComplianceStatus</code> to get a summary of which member accounts are protected by the specified policy. </p>"
    },
    "ListMemberAccounts": {
      "name": "ListMemberAccounts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListMemberAccountsRequest"
      },
      "output": {
        "shape": "ListMemberAccountsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns a <code>MemberAccounts</code> object that lists the member accounts in the administrator's AWS organization.</p> <p>The <code>ListMemberAccounts</code> must be submitted by the account that is set as the AWS Firewall Manager administrator.</p>"
    },
    "ListPolicies": {
      "name": "ListPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPoliciesRequest"
      },
      "output": {
        "shape": "ListPoliciesResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns an array of <code>PolicySummary</code> objects.</p>"
    },
    "ListProtocolsLists": {
      "name": "ListProtocolsLists",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProtocolsListsRequest"
      },
      "output": {
        "shape": "ListProtocolsListsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Returns an array of <code>ProtocolsListDataSummary</code> objects.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves the list of tags for the specified AWS resource. </p>"
    },
    "PutAppsList": {
      "name": "PutAppsList",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAppsListRequest"
      },
      "output": {
        "shape": "PutAppsListResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Creates an AWS Firewall Manager applications list.</p>"
    },
    "PutNotificationChannel": {
      "name": "PutNotificationChannel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutNotificationChannelRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.</p>"
    },
    "PutPolicy": {
      "name": "PutPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutPolicyRequest"
      },
      "output": {
        "shape": "PutPolicyResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidTypeException"
        }
      ],
      "documentation": "<p>Creates an AWS Firewall Manager policy.</p> <p>Firewall Manager provides the following types of policies: </p> <ul> <li> <p>A Shield Advanced policy, which applies Shield Advanced protection to specified accounts and resources</p> </li> <li> <p>An AWS WAF policy (type WAFV2), which defines rule groups to run first in the corresponding AWS WAF web ACL and rule groups to run last in the web ACL.</p> </li> <li> <p>An AWS WAF Classic policy (type WAF), which defines a rule group. </p> </li> <li> <p>A security group policy, which manages VPC security groups across your AWS organization. </p> </li> </ul> <p>Each policy is specific to one of the types. If you want to enforce more than one policy type across accounts, create multiple policies. You can create multiple policies for each type.</p> <p>You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more information about subscribing to Shield Advanced, see <a href=\"https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html\">CreateSubscription</a>.</p>"
    },
    "PutProtocolsList": {
      "name": "PutProtocolsList",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutProtocolsListRequest"
      },
      "output": {
        "shape": "PutProtocolsListResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalErrorException"
        }
      ],
      "documentation": "<p>Creates an AWS Firewall Manager protocols list.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Adds one or more tags to an AWS resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidOperationException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Removes one or more tags from an AWS resource.</p>"
    }
  },
  "shapes": {
    "AWSAccountId": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^[0-9]+$"
    },
    "AccountRoleStatus": {
      "type": "string",
      "enum": [
        "READY",
        "CREATING",
        "PENDING_DELETION",
        "DELETING",
        "DELETED"
      ]
    },
    "App": {
      "type": "structure",
      "required": [
        "AppName",
        "Protocol",
        "Port"
      ],
      "members": {
        "AppName": {
          "shape": "ResourceName",
          "documentation": "<p>The application's name.</p>"
        },
        "Protocol": {
          "shape": "Protocol",
          "documentation": "<p>The IP protocol name or number. The name can be one of <code>tcp</code>, <code>udp</code>, or <code>icmp</code>. For information on possible numbers, see <a href=\"https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml\">Protocol Numbers</a>.</p>"
        },
        "Port": {
          "shape": "IPPortNumber",
          "documentation": "<p>The application's port number, for example <code>80</code>.</p>"
        }
      },
      "documentation": "<p>An individual AWS Firewall Manager application.</p>"
    },
    "AppsList": {
      "type": "list",
      "member": {
        "shape": "App"
      }
    },
    "AppsListData": {
      "type": "structure",
      "required": [
        "ListName",
        "AppsList"
      ],
      "members": {
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the AWS Firewall Manager applications list.</p>"
        },
        "ListName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the AWS Firewall Manager applications list.</p>"
        },
        "ListUpdateToken": {
          "shape": "UpdateToken",
          "documentation": "<p>A unique identifier for each update to the list. When you update the list, the update token must match the token of the current version of the application list. You can retrieve the update token by getting the list. </p>"
        },
        "CreateTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time that the AWS Firewall Manager applications list was created.</p>"
        },
        "LastUpdateTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time that the AWS Firewall Manager applications list was last updated.</p>"
        },
        "AppsList": {
          "shape": "AppsList",
          "documentation": "<p>An array of applications in the AWS Firewall Manager applications list.</p>"
        },
        "PreviousAppsList": {
          "shape": "PreviousAppsList",
          "documentation": "<p>A map of previous version numbers to their corresponding <code>App</code> object arrays.</p>"
        }
      },
      "documentation": "<p>An AWS Firewall Manager applications list.</p>"
    },
    "AppsListDataSummary": {
      "type": "structure",
      "members": {
        "ListArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the applications list.</p>"
        },
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the applications list.</p>"
        },
        "ListName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the applications list.</p>"
        },
        "AppsList": {
          "shape": "AppsList",
          "documentation": "<p>An array of <code>App</code> objects in the AWS Firewall Manager applications list.</p>"
        }
      },
      "documentation": "<p>Details of the AWS Firewall Manager applications list.</p>"
    },
    "AppsListsData": {
      "type": "list",
      "member": {
        "shape": "AppsListDataSummary"
      }
    },
    "AssociateAdminAccountRequest": {
      "type": "structure",
      "required": [
        "AdminAccount"
      ],
      "members": {
        "AdminAccount": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. For more information about AWS Organizations and master accounts, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html\">Managing the AWS Accounts in Your Organization</a>. </p>"
        }
      }
    },
    "AwsEc2InstanceViolation": {
      "type": "structure",
      "members": {
        "ViolationTarget": {
          "shape": "ViolationTarget",
          "documentation": "<p>The resource ID of the EC2 instance.</p>"
        },
        "AwsEc2NetworkInterfaceViolations": {
          "shape": "AwsEc2NetworkInterfaceViolations",
          "documentation": "<p>Violations for network interfaces associated with the EC2 instance.</p>"
        }
      },
      "documentation": "<p>Violations for an EC2 instance resource.</p>"
    },
    "AwsEc2NetworkInterfaceViolation": {
      "type": "structure",
      "members": {
        "ViolationTarget": {
          "shape": "ViolationTarget",
          "documentation": "<p>The resource ID of the network interface.</p>"
        },
        "ViolatingSecurityGroups": {
          "shape": "ResourceIdList",
          "documentation": "<p>List of security groups that violate the rules specified in the master security group of the AWS Firewall Manager policy.</p>"
        }
      },
      "documentation": "<p>Violations for network interfaces associated with an EC2 instance.</p>"
    },
    "AwsEc2NetworkInterfaceViolations": {
      "type": "list",
      "member": {
        "shape": "AwsEc2NetworkInterfaceViolation"
      }
    },
    "AwsVPCSecurityGroupViolation": {
      "type": "structure",
      "members": {
        "ViolationTarget": {
          "shape": "ViolationTarget",
          "documentation": "<p>The security group rule that is being evaluated.</p>"
        },
        "ViolationTargetDescription": {
          "shape": "LengthBoundedString",
          "documentation": "<p>A description of the security group that violates the policy.</p>"
        },
        "PartialMatches": {
          "shape": "PartialMatches",
          "documentation": "<p>List of rules specified in the security group of the AWS Firewall Manager policy that partially match the <code>ViolationTarget</code> rule.</p>"
        },
        "PossibleSecurityGroupRemediationActions": {
          "shape": "SecurityGroupRemediationActions",
          "documentation": "<p>Remediation options for the rule specified in the <code>ViolationTarget</code>.</p>"
        }
      },
      "documentation": "<p>Details of the rule violation in a security group when compared to the master security group of the AWS Firewall Manager policy.</p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "CIDR": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "[a-f0-9:./]+"
    },
    "ComplianceViolator": {
      "type": "structure",
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The resource ID.</p>"
        },
        "ViolationReason": {
          "shape": "ViolationReason",
          "documentation": "<p>The reason that the resource is not protected by the policy.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type. This is in the format shown in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS Resource Types Reference</a>. For example: <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> or <code>AWS::CloudFront::Distribution</code>.</p>"
        }
      },
      "documentation": "<p>Details of the resource that is not protected by the policy.</p>"
    },
    "ComplianceViolators": {
      "type": "list",
      "member": {
        "shape": "ComplianceViolator"
      }
    },
    "CustomerPolicyScopeId": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "CustomerPolicyScopeIdList": {
      "type": "list",
      "member": {
        "shape": "CustomerPolicyScopeId"
      }
    },
    "CustomerPolicyScopeIdType": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "ORG_UNIT"
      ]
    },
    "CustomerPolicyScopeMap": {
      "type": "map",
      "key": {
        "shape": "CustomerPolicyScopeIdType"
      },
      "value": {
        "shape": "CustomerPolicyScopeIdList"
      }
    },
    "DeleteAppsListRequest": {
      "type": "structure",
      "required": [
        "ListId"
      ],
      "members": {
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the applications list that you want to delete. You can retrieve this ID from <code>PutAppsList</code>, <code>ListAppsLists</code>, and <code>GetAppsList</code>.</p>"
        }
      }
    },
    "DeleteNotificationChannelRequest": {
      "type": "structure",
      "members": {}
    },
    "DeletePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the policy that you want to delete. You can retrieve this ID from <code>PutPolicy</code> and <code>ListPolicies</code>.</p>"
        },
        "DeleteAllPolicyResources": {
          "shape": "Boolean",
          "documentation": "<p>If <code>True</code>, the request performs cleanup according to the policy type. </p> <p>For AWS WAF and Shield Advanced policies, the cleanup does the following:</p> <ul> <li> <p>Deletes rule groups created by AWS Firewall Manager</p> </li> <li> <p>Removes web ACLs from in-scope resources</p> </li> <li> <p>Deletes web ACLs that contain no rules or rule groups</p> </li> </ul> <p>For security group policies, the cleanup does the following for each security group in the policy:</p> <ul> <li> <p>Disassociates the security group from in-scope resources </p> </li> <li> <p>Deletes the security group if it was created through Firewall Manager and if it's no longer associated with any resources through another policy</p> </li> </ul> <p>After the cleanup, in-scope resources are no longer protected by web ACLs in this policy. Protection of out-of-scope resources remains unchanged. Scope is determined by tags that you create and accounts that you associate with the policy. When creating the policy, if you specify that only resources in specific accounts or with specific tags are in scope of the policy, those accounts and resources are handled by the policy. All others are out of scope. If you don't specify tags or accounts, all resources are in scope. </p>"
        }
      }
    },
    "DeleteProtocolsListRequest": {
      "type": "structure",
      "required": [
        "ListId"
      ],
      "members": {
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the protocols list that you want to delete. You can retrieve this ID from <code>PutProtocolsList</code>, <code>ListProtocolsLists</code>, and <code>GetProtocolsLost</code>.</p>"
        }
      }
    },
    "DependentServiceName": {
      "type": "string",
      "enum": [
        "AWSCONFIG",
        "AWSWAF",
        "AWSSHIELD_ADVANCED",
        "AWSVPC"
      ]
    },
    "DetailedInfo": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "DisassociateAdminAccountRequest": {
      "type": "structure",
      "members": {}
    },
    "EvaluationResult": {
      "type": "structure",
      "members": {
        "ComplianceStatus": {
          "shape": "PolicyComplianceStatusType",
          "documentation": "<p>Describes an AWS account's compliance with the AWS Firewall Manager policy.</p>"
        },
        "ViolatorCount": {
          "shape": "ResourceCount",
          "documentation": "<p>The number of resources that are noncompliant with the specified policy. For AWS WAF and Shield Advanced policies, a resource is considered noncompliant if it is not associated with the policy. For security group policies, a resource is considered noncompliant if it doesn't comply with the rules of the policy and remediation is disabled or not possible.</p>"
        },
        "EvaluationLimitExceeded": {
          "shape": "Boolean",
          "documentation": "<p>Indicates that over 100 resources are noncompliant with the AWS Firewall Manager policy.</p>"
        }
      },
      "documentation": "<p>Describes the compliance status for the account. An account is considered noncompliant if it includes resources that are not protected by the specified policy or that don't comply with the policy.</p>"
    },
    "EvaluationResults": {
      "type": "list",
      "member": {
        "shape": "EvaluationResult"
      }
    },
    "GetAdminAccountRequest": {
      "type": "structure",
      "members": {}
    },
    "GetAdminAccountResponse": {
      "type": "structure",
      "members": {
        "AdminAccount": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account that is set as the AWS Firewall Manager administrator.</p>"
        },
        "RoleStatus": {
          "shape": "AccountRoleStatus",
          "documentation": "<p>The status of the AWS account that you set as the AWS Firewall Manager administrator.</p>"
        }
      }
    },
    "GetAppsListRequest": {
      "type": "structure",
      "required": [
        "ListId"
      ],
      "members": {
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the AWS Firewall Manager applications list that you want the details for.</p>"
        },
        "DefaultList": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the list to retrieve is a default list owned by AWS Firewall Manager.</p>"
        }
      }
    },
    "GetAppsListResponse": {
      "type": "structure",
      "members": {
        "AppsList": {
          "shape": "AppsListData",
          "documentation": "<p>Information about the specified AWS Firewall Manager applications list.</p>"
        },
        "AppsListArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the applications list.</p>"
        }
      }
    },
    "GetComplianceDetailRequest": {
      "type": "structure",
      "required": [
        "PolicyId",
        "MemberAccount"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the policy that you want to get the details for. <code>PolicyId</code> is returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>"
        },
        "MemberAccount": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account that owns the resources that you want to get the details for.</p>"
        }
      }
    },
    "GetComplianceDetailResponse": {
      "type": "structure",
      "members": {
        "PolicyComplianceDetail": {
          "shape": "PolicyComplianceDetail",
          "documentation": "<p>Information about the resources and the policy that you specified in the <code>GetComplianceDetail</code> request.</p>"
        }
      }
    },
    "GetNotificationChannelRequest": {
      "type": "structure",
      "members": {}
    },
    "GetNotificationChannelResponse": {
      "type": "structure",
      "members": {
        "SnsTopicArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The SNS topic that records AWS Firewall Manager activity. </p>"
        },
        "SnsRoleName": {
          "shape": "ResourceArn",
          "documentation": "<p>The IAM role that is used by AWS Firewall Manager to record activity to SNS.</p>"
        }
      }
    },
    "GetPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the AWS Firewall Manager policy that you want the details for.</p>"
        }
      }
    },
    "GetPolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>Information about the specified AWS Firewall Manager policy.</p>"
        },
        "PolicyArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the specified policy.</p>"
        }
      }
    },
    "GetProtectionStatusRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the policy for which you want to get the attack information.</p>"
        },
        "MemberAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account that is in scope of the policy that you want to get the details for.</p>"
        },
        "StartTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The start of the time period to query for the attacks. This is a <code>timestamp</code> type. The request syntax listing indicates a <code>number</code> type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is allowed.</p>"
        },
        "EndTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The end of the time period to query for the attacks. This is a <code>timestamp</code> type. The request syntax listing indicates a <code>number</code> type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is allowed.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> and you have more objects than the number that you specify for <code>MaxResults</code>, AWS Firewall Manager returns a <code>NextToken</code> value in the response, which you can use to retrieve another group of objects. For the second and subsequent <code>GetProtectionStatus</code> requests, specify the value of <code>NextToken</code> from the previous response to get information about another batch of objects.</p>"
        },
        "MaxResults": {
          "shape": "PaginationMaxResults",
          "documentation": "<p>Specifies the number of objects that you want AWS Firewall Manager to return for this request. If you have more objects than the number that you specify for <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can use to get another batch of objects.</p>"
        }
      }
    },
    "GetProtectionStatusResponse": {
      "type": "structure",
      "members": {
        "AdminAccountId": {
          "shape": "AWSAccountId",
          "documentation": "<p>The ID of the AWS Firewall administrator account for this policy.</p>"
        },
        "ServiceType": {
          "shape": "SecurityServiceType",
          "documentation": "<p>The service type that is protected by the policy. Currently, this is always <code>SHIELD_ADVANCED</code>.</p>"
        },
        "Data": {
          "shape": "ProtectionData",
          "documentation": "<p>Details about the attack, including the following:</p> <ul> <li> <p>Attack type</p> </li> <li> <p>Account ID</p> </li> <li> <p>ARN of the resource attacked</p> </li> <li> <p>Start time of the attack</p> </li> <li> <p>End time of the attack (ongoing attacks will not have an end time)</p> </li> </ul> <p>The details are in JSON format. </p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you have more objects than the number that you specified for <code>MaxResults</code> in the request, the response includes a <code>NextToken</code> value. To list more objects, submit another <code>GetProtectionStatus</code> request, and specify the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the next request.</p> <p>AWS SDKs provide auto-pagination that identify <code>NextToken</code> in a response and make subsequent request calls automatically on your behalf. However, this feature is not supported by <code>GetProtectionStatus</code>. You must submit subsequent requests with <code>NextToken</code> using your own processes. </p>"
        }
      }
    },
    "GetProtocolsListRequest": {
      "type": "structure",
      "required": [
        "ListId"
      ],
      "members": {
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the AWS Firewall Manager protocols list that you want the details for.</p>"
        },
        "DefaultList": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the list to retrieve is a default list owned by AWS Firewall Manager.</p>"
        }
      }
    },
    "GetProtocolsListResponse": {
      "type": "structure",
      "members": {
        "ProtocolsList": {
          "shape": "ProtocolsListData",
          "documentation": "<p>Information about the specified AWS Firewall Manager protocols list.</p>"
        },
        "ProtocolsListArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the specified protocols list.</p>"
        }
      }
    },
    "GetViolationDetailsRequest": {
      "type": "structure",
      "required": [
        "PolicyId",
        "MemberAccount",
        "ResourceId",
        "ResourceType"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the AWS Firewall Manager policy that you want the details for. This currently only supports security group content audit policies.</p>"
        },
        "MemberAccount": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account ID that you want the details for.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource that has violations.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type. This is in the format shown in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS Resource Types Reference</a>. Supported resource types are: <code>AWS::EC2::Instance</code>, <code>AWS::EC2::NetworkInterface</code>, or <code>AWS::EC2::SecurityGroup</code>. </p>"
        }
      }
    },
    "GetViolationDetailsResponse": {
      "type": "structure",
      "members": {
        "ViolationDetail": {
          "shape": "ViolationDetail",
          "documentation": "<p>Violation detail for a resource.</p>"
        }
      }
    },
    "IPPortNumber": {
      "type": "long",
      "max": 65535,
      "min": 0
    },
    "IssueInfoMap": {
      "type": "map",
      "key": {
        "shape": "DependentServiceName"
      },
      "value": {
        "shape": "DetailedInfo"
      }
    },
    "LengthBoundedString": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "ListAppsListsRequest": {
      "type": "structure",
      "required": [
        "MaxResults"
      ],
      "members": {
        "DefaultLists": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the lists to retrieve are default lists owned by AWS Firewall Manager.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request in the request parameters, to retrieve the next batch of objects.</p>"
        },
        "MaxResults": {
          "shape": "PaginationMaxResults",
          "documentation": "<p>The maximum number of objects that you want AWS Firewall Manager to return for this request. If more objects are available, in the response, AWS Firewall Manager provides a <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> <p>If you don't specify this, AWS Firewall Manager returns all available objects.</p>"
        }
      }
    },
    "ListAppsListsResponse": {
      "type": "structure",
      "members": {
        "AppsLists": {
          "shape": "AppsListsData",
          "documentation": "<p>An array of <code>AppsListDataSummary</code> objects.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>"
        }
      }
    },
    "ListComplianceStatusRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the AWS Firewall Manager policy that you want the details for.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> and you have more <code>PolicyComplianceStatus</code> objects than the number that you specify for <code>MaxResults</code>, AWS Firewall Manager returns a <code>NextToken</code> value in the response that allows you to list another group of <code>PolicyComplianceStatus</code> objects. For the second and subsequent <code>ListComplianceStatus</code> requests, specify the value of <code>NextToken</code> from the previous response to get information about another batch of <code>PolicyComplianceStatus</code> objects.</p>"
        },
        "MaxResults": {
          "shape": "PaginationMaxResults",
          "documentation": "<p>Specifies the number of <code>PolicyComplianceStatus</code> objects that you want AWS Firewall Manager to return for this request. If you have more <code>PolicyComplianceStatus</code> objects than the number that you specify for <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can use to get another batch of <code>PolicyComplianceStatus</code> objects.</p>"
        }
      }
    },
    "ListComplianceStatusResponse": {
      "type": "structure",
      "members": {
        "PolicyComplianceStatusList": {
          "shape": "PolicyComplianceStatusList",
          "documentation": "<p>An array of <code>PolicyComplianceStatus</code> objects.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you have more <code>PolicyComplianceStatus</code> objects than the number that you specified for <code>MaxResults</code> in the request, the response includes a <code>NextToken</code> value. To list more <code>PolicyComplianceStatus</code> objects, submit another <code>ListComplianceStatus</code> request, and specify the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the next request.</p>"
        }
      }
    },
    "ListId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[a-z0-9A-Z-]{36}$"
    },
    "ListMemberAccountsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> and you have more account IDs than the number that you specify for <code>MaxResults</code>, AWS Firewall Manager returns a <code>NextToken</code> value in the response that allows you to list another group of IDs. For the second and subsequent <code>ListMemberAccountsRequest</code> requests, specify the value of <code>NextToken</code> from the previous response to get information about another batch of member account IDs.</p>"
        },
        "MaxResults": {
          "shape": "PaginationMaxResults",
          "documentation": "<p>Specifies the number of member account IDs that you want AWS Firewall Manager to return for this request. If you have more IDs than the number that you specify for <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can use to get another batch of member account IDs.</p>"
        }
      }
    },
    "ListMemberAccountsResponse": {
      "type": "structure",
      "members": {
        "MemberAccounts": {
          "shape": "MemberAccounts",
          "documentation": "<p>An array of account IDs.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you have more member account IDs than the number that you specified for <code>MaxResults</code> in the request, the response includes a <code>NextToken</code> value. To list more IDs, submit another <code>ListMemberAccounts</code> request, and specify the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the next request.</p>"
        }
      }
    },
    "ListPoliciesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> and you have more <code>PolicySummary</code> objects than the number that you specify for <code>MaxResults</code>, AWS Firewall Manager returns a <code>NextToken</code> value in the response that allows you to list another group of <code>PolicySummary</code> objects. For the second and subsequent <code>ListPolicies</code> requests, specify the value of <code>NextToken</code> from the previous response to get information about another batch of <code>PolicySummary</code> objects.</p>"
        },
        "MaxResults": {
          "shape": "PaginationMaxResults",
          "documentation": "<p>Specifies the number of <code>PolicySummary</code> objects that you want AWS Firewall Manager to return for this request. If you have more <code>PolicySummary</code> objects than the number that you specify for <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can use to get another batch of <code>PolicySummary</code> objects.</p>"
        }
      }
    },
    "ListPoliciesResponse": {
      "type": "structure",
      "members": {
        "PolicyList": {
          "shape": "PolicySummaryList",
          "documentation": "<p>An array of <code>PolicySummary</code> objects.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you have more <code>PolicySummary</code> objects than the number that you specified for <code>MaxResults</code> in the request, the response includes a <code>NextToken</code> value. To list more <code>PolicySummary</code> objects, submit another <code>ListPolicies</code> request, and specify the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the next request.</p>"
        }
      }
    },
    "ListProtocolsListsRequest": {
      "type": "structure",
      "required": [
        "MaxResults"
      ],
      "members": {
        "DefaultLists": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the lists to retrieve are default lists owned by AWS Firewall Manager.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request in the request parameters, to retrieve the next batch of objects.</p>"
        },
        "MaxResults": {
          "shape": "PaginationMaxResults",
          "documentation": "<p>The maximum number of objects that you want AWS Firewall Manager to return for this request. If more objects are available, in the response, AWS Firewall Manager provides a <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> <p>If you don't specify this, AWS Firewall Manager returns all available objects.</p>"
        }
      }
    },
    "ListProtocolsListsResponse": {
      "type": "structure",
      "members": {
        "ProtocolsLists": {
          "shape": "ProtocolsListsData",
          "documentation": "<p>An array of <code>ProtocolsListDataSummary</code> objects.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to return tags for. The AWS Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the resource.</p>"
        }
      }
    },
    "ManagedServiceData": {
      "type": "string",
      "max": 4096,
      "min": 1,
      "pattern": ".*"
    },
    "MemberAccounts": {
      "type": "list",
      "member": {
        "shape": "AWSAccountId"
      }
    },
    "PaginationMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "PaginationToken": {
      "type": "string",
      "max": 4096,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "PartialMatch": {
      "type": "structure",
      "members": {
        "Reference": {
          "shape": "ReferenceRule",
          "documentation": "<p>The reference rule from the master security group of the AWS Firewall Manager policy.</p>"
        },
        "TargetViolationReasons": {
          "shape": "TargetViolationReasons",
          "documentation": "<p>The violation reason.</p>"
        }
      },
      "documentation": "<p>The reference rule that partially matches the <code>ViolationTarget</code> rule and violation reason.</p>"
    },
    "PartialMatches": {
      "type": "list",
      "member": {
        "shape": "PartialMatch"
      }
    },
    "Policy": {
      "type": "structure",
      "required": [
        "PolicyName",
        "SecurityServicePolicyData",
        "ResourceType",
        "ExcludeResourceTags",
        "RemediationEnabled"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the AWS Firewall Manager policy.</p>"
        },
        "PolicyName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the AWS Firewall Manager policy.</p>"
        },
        "PolicyUpdateToken": {
          "shape": "PolicyUpdateToken",
          "documentation": "<p>A unique identifier for each update to the policy. When issuing a <code>PutPolicy</code> request, the <code>PolicyUpdateToken</code> in the request must match the <code>PolicyUpdateToken</code> of the current policy version. To get the <code>PolicyUpdateToken</code> of the current policy version, use a <code>GetPolicy</code> request.</p>"
        },
        "SecurityServicePolicyData": {
          "shape": "SecurityServicePolicyData",
          "documentation": "<p>Details about the security service that is being used to protect the resources.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource protected by or in scope of the policy. This is in the format shown in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS Resource Types Reference</a>. For AWS WAF and Shield Advanced, examples include <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> and <code>AWS::CloudFront::Distribution</code>. For a security group common policy, valid values are <code>AWS::EC2::NetworkInterface</code> and <code>AWS::EC2::Instance</code>. For a security group content audit policy, valid values are <code>AWS::EC2::SecurityGroup</code>, <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>. For a security group usage audit policy, the value is <code>AWS::EC2::SecurityGroup</code>. </p>"
        },
        "ResourceTypeList": {
          "shape": "ResourceTypeList",
          "documentation": "<p>An array of <code>ResourceType</code>.</p>"
        },
        "ResourceTags": {
          "shape": "ResourceTags",
          "documentation": "<p>An array of <code>ResourceTag</code> objects.</p>"
        },
        "ExcludeResourceTags": {
          "shape": "Boolean",
          "documentation": "<p>If set to <code>True</code>, resources with the tags that are specified in the <code>ResourceTag</code> array are not in scope of the policy. If set to <code>False</code>, and the <code>ResourceTag</code> array is not null, only resources with the specified tags are in scope of the policy.</p>"
        },
        "RemediationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the policy should be automatically applied to new resources.</p>"
        },
        "IncludeMap": {
          "shape": "CustomerPolicyScopeMap",
          "documentation": "<p>Specifies the AWS account IDs and AWS Organizations organizational units (OUs) to include in the policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p> <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, AWS Firewall Manager applies the policy to all accounts specified by the <code>IncludeMap</code>, and does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p> <p>You can specify account IDs, OUs, or a combination: </p> <ul> <li> <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map: <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p> </li> <li> <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map: <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p> </li> <li> <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map: <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p> </li> </ul>"
        },
        "ExcludeMap": {
          "shape": "CustomerPolicyScopeMap",
          "documentation": "<p>Specifies the AWS account IDs and AWS Organizations organizational units (OUs) to exclude from the policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p> <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, AWS Firewall Manager applies the policy to all accounts specified by the <code>IncludeMap</code>, and does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p> <p>You can specify account IDs, OUs, or a combination: </p> <ul> <li> <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map: <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p> </li> <li> <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map: <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p> </li> <li> <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map: <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An AWS Firewall Manager policy.</p>"
    },
    "PolicyComplianceDetail": {
      "type": "structure",
      "members": {
        "PolicyOwner": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account that created the AWS Firewall Manager policy.</p>"
        },
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the AWS Firewall Manager policy.</p>"
        },
        "MemberAccount": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account ID.</p>"
        },
        "Violators": {
          "shape": "ComplianceViolators",
          "documentation": "<p>An array of resources that aren't protected by the AWS WAF or Shield Advanced policy or that aren't in compliance with the security group policy.</p>"
        },
        "EvaluationLimitExceeded": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if over 100 resources are noncompliant with the AWS Firewall Manager policy.</p>"
        },
        "ExpiredAt": {
          "shape": "TimeStamp",
          "documentation": "<p>A timestamp that indicates when the returned information should be considered out of date.</p>"
        },
        "IssueInfoMap": {
          "shape": "IssueInfoMap",
          "documentation": "<p>Details about problems with dependent services, such as AWS WAF or AWS Config, that are causing a resource to be noncompliant. The details include the name of the dependent service and the error message received that indicates the problem with the service.</p>"
        }
      },
      "documentation": "<p>Describes the noncompliant resources in a member account for a specific AWS Firewall Manager policy. A maximum of 100 entries are displayed. If more than 100 resources are noncompliant, <code>EvaluationLimitExceeded</code> is set to <code>True</code>.</p>"
    },
    "PolicyComplianceStatus": {
      "type": "structure",
      "members": {
        "PolicyOwner": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account that created the AWS Firewall Manager policy.</p>"
        },
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the AWS Firewall Manager policy.</p>"
        },
        "PolicyName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the AWS Firewall Manager policy.</p>"
        },
        "MemberAccount": {
          "shape": "AWSAccountId",
          "documentation": "<p>The member account ID.</p>"
        },
        "EvaluationResults": {
          "shape": "EvaluationResults",
          "documentation": "<p>An array of <code>EvaluationResult</code> objects.</p>"
        },
        "LastUpdated": {
          "shape": "TimeStamp",
          "documentation": "<p>Timestamp of the last update to the <code>EvaluationResult</code> objects.</p>"
        },
        "IssueInfoMap": {
          "shape": "IssueInfoMap",
          "documentation": "<p>Details about problems with dependent services, such as AWS WAF or AWS Config, that are causing a resource to be noncompliant. The details include the name of the dependent service and the error message received that indicates the problem with the service.</p>"
        }
      },
      "documentation": "<p>Indicates whether the account is compliant with the specified policy. An account is considered noncompliant if it includes resources that are not protected by the policy, for AWS WAF and Shield Advanced policies, or that are noncompliant with the policy, for security group policies.</p>"
    },
    "PolicyComplianceStatusList": {
      "type": "list",
      "member": {
        "shape": "PolicyComplianceStatus"
      }
    },
    "PolicyComplianceStatusType": {
      "type": "string",
      "enum": [
        "COMPLIANT",
        "NON_COMPLIANT"
      ]
    },
    "PolicyId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[a-z0-9A-Z-]{36}$"
    },
    "PolicySummary": {
      "type": "structure",
      "members": {
        "PolicyArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the specified policy.</p>"
        },
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the specified policy.</p>"
        },
        "PolicyName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the specified policy.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource protected by or in scope of the policy. This is in the format shown in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS Resource Types Reference</a>. For AWS WAF and Shield Advanced, examples include <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> and <code>AWS::CloudFront::Distribution</code>. For a security group common policy, valid values are <code>AWS::EC2::NetworkInterface</code> and <code>AWS::EC2::Instance</code>. For a security group content audit policy, valid values are <code>AWS::EC2::SecurityGroup</code>, <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>. For a security group usage audit policy, the value is <code>AWS::EC2::SecurityGroup</code>. </p>"
        },
        "SecurityServiceType": {
          "shape": "SecurityServiceType",
          "documentation": "<p>The service that the policy is using to protect the resources. This specifies the type of policy that is created, either an AWS WAF policy, a Shield Advanced policy, or a security group policy.</p>"
        },
        "RemediationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the policy should be automatically applied to new resources.</p>"
        }
      },
      "documentation": "<p>Details of the AWS Firewall Manager policy. </p>"
    },
    "PolicySummaryList": {
      "type": "list",
      "member": {
        "shape": "PolicySummary"
      }
    },
    "PolicyUpdateToken": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "PreviousAppsList": {
      "type": "map",
      "key": {
        "shape": "PreviousListVersion"
      },
      "value": {
        "shape": "AppsList"
      }
    },
    "PreviousListVersion": {
      "type": "string",
      "max": 2,
      "min": 1,
      "pattern": "^\\d{1,2}$"
    },
    "PreviousProtocolsList": {
      "type": "map",
      "key": {
        "shape": "PreviousListVersion"
      },
      "value": {
        "shape": "ProtocolsList"
      }
    },
    "ProtectionData": {
      "type": "string"
    },
    "Protocol": {
      "type": "string",
      "max": 20,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ProtocolsList": {
      "type": "list",
      "member": {
        "shape": "Protocol"
      }
    },
    "ProtocolsListData": {
      "type": "structure",
      "required": [
        "ListName",
        "ProtocolsList"
      ],
      "members": {
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the AWS Firewall Manager protocols list.</p>"
        },
        "ListName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the AWS Firewall Manager protocols list.</p>"
        },
        "ListUpdateToken": {
          "shape": "UpdateToken",
          "documentation": "<p>A unique identifier for each update to the list. When you update the list, the update token must match the token of the current version of the application list. You can retrieve the update token by getting the list. </p>"
        },
        "CreateTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time that the AWS Firewall Manager protocols list was created.</p>"
        },
        "LastUpdateTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time that the AWS Firewall Manager protocols list was last updated.</p>"
        },
        "ProtocolsList": {
          "shape": "ProtocolsList",
          "documentation": "<p>An array of protocols in the AWS Firewall Manager protocols list.</p>"
        },
        "PreviousProtocolsList": {
          "shape": "PreviousProtocolsList",
          "documentation": "<p>A map of previous version numbers to their corresponding protocol arrays.</p>"
        }
      },
      "documentation": "<p>An AWS Firewall Manager protocols list.</p>"
    },
    "ProtocolsListDataSummary": {
      "type": "structure",
      "members": {
        "ListArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the specified protocols list.</p>"
        },
        "ListId": {
          "shape": "ListId",
          "documentation": "<p>The ID of the specified protocols list.</p>"
        },
        "ListName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the specified protocols list.</p>"
        },
        "ProtocolsList": {
          "shape": "ProtocolsList",
          "documentation": "<p>An array of protocols in the AWS Firewall Manager protocols list.</p>"
        }
      },
      "documentation": "<p>Details of the AWS Firewall Manager protocols list.</p>"
    },
    "ProtocolsListsData": {
      "type": "list",
      "member": {
        "shape": "ProtocolsListDataSummary"
      }
    },
    "PutAppsListRequest": {
      "type": "structure",
      "required": [
        "AppsList"
      ],
      "members": {
        "AppsList": {
          "shape": "AppsListData",
          "documentation": "<p>The details of the AWS Firewall Manager applications list to be created.</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the resource.</p>"
        }
      }
    },
    "PutAppsListResponse": {
      "type": "structure",
      "members": {
        "AppsList": {
          "shape": "AppsListData",
          "documentation": "<p>The details of the AWS Firewall Manager applications list.</p>"
        },
        "AppsListArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the applications list.</p>"
        }
      }
    },
    "PutNotificationChannelRequest": {
      "type": "structure",
      "required": [
        "SnsTopicArn",
        "SnsRoleName"
      ],
      "members": {
        "SnsTopicArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SNS topic that collects notifications from AWS Firewall Manager.</p>"
        },
        "SnsRoleName": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record AWS Firewall Manager activity. </p>"
        }
      }
    },
    "PutPolicyRequest": {
      "type": "structure",
      "required": [
        "Policy"
      ],
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The details of the AWS Firewall Manager policy to be created.</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the AWS resource.</p>"
        }
      }
    },
    "PutPolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The details of the AWS Firewall Manager policy.</p>"
        },
        "PolicyArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the policy.</p>"
        }
      }
    },
    "PutProtocolsListRequest": {
      "type": "structure",
      "required": [
        "ProtocolsList"
      ],
      "members": {
        "ProtocolsList": {
          "shape": "ProtocolsListData",
          "documentation": "<p>The details of the AWS Firewall Manager protocols list to be created.</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the resource.</p>"
        }
      }
    },
    "PutProtocolsListResponse": {
      "type": "structure",
      "members": {
        "ProtocolsList": {
          "shape": "ProtocolsListData",
          "documentation": "<p>The details of the AWS Firewall Manager protocols list.</p>"
        },
        "ProtocolsListArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the protocols list.</p>"
        }
      }
    },
    "ReferenceRule": {
      "type": "string"
    },
    "RemediationActionDescription": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": ".*"
    },
    "RemediationActionType": {
      "type": "string",
      "enum": [
        "REMOVE",
        "MODIFY"
      ]
    },
    "ResourceArn": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ResourceCount": {
      "type": "long",
      "min": 0
    },
    "ResourceId": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ResourceIdList": {
      "type": "list",
      "member": {
        "shape": "ResourceId"
      }
    },
    "ResourceName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ResourceTag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "ResourceTagKey",
          "documentation": "<p>The resource tag key.</p>"
        },
        "Value": {
          "shape": "ResourceTagValue",
          "documentation": "<p>The resource tag value.</p>"
        }
      },
      "documentation": "<p>The resource tags that AWS Firewall Manager uses to determine if a particular resource should be included or excluded from the AWS Firewall Manager policy. Tags enable you to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value. Firewall Manager combines the tags with \"AND\" so that, if you add more than one tag to a policy scope, a resource must have all the specified tags to be included or excluded. For more information, see <a href=\"https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html\">Working with Tag Editor</a>.</p>"
    },
    "ResourceTagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ResourceTagValue": {
      "type": "string",
      "max": 256,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ResourceTags": {
      "type": "list",
      "member": {
        "shape": "ResourceTag"
      },
      "max": 8,
      "min": 0
    },
    "ResourceType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ResourceTypeList": {
      "type": "list",
      "member": {
        "shape": "ResourceType"
      }
    },
    "ResourceViolation": {
      "type": "structure",
      "members": {
        "AwsVPCSecurityGroupViolation": {
          "shape": "AwsVPCSecurityGroupViolation",
          "documentation": "<p>Violation details for security groups.</p>"
        },
        "AwsEc2NetworkInterfaceViolation": {
          "shape": "AwsEc2NetworkInterfaceViolation",
          "documentation": "<p>Violation details for network interface.</p>"
        },
        "AwsEc2InstanceViolation": {
          "shape": "AwsEc2InstanceViolation",
          "documentation": "<p>Violation details for an EC2 instance.</p>"
        }
      },
      "documentation": "<p>Violation detail based on resource type.</p>"
    },
    "ResourceViolations": {
      "type": "list",
      "member": {
        "shape": "ResourceViolation"
      }
    },
    "SecurityGroupRemediationAction": {
      "type": "structure",
      "members": {
        "RemediationActionType": {
          "shape": "RemediationActionType",
          "documentation": "<p>The remediation action that will be performed.</p>"
        },
        "Description": {
          "shape": "RemediationActionDescription",
          "documentation": "<p>Brief description of the action that will be performed.</p>"
        },
        "RemediationResult": {
          "shape": "SecurityGroupRuleDescription",
          "documentation": "<p>The final state of the rule specified in the <code>ViolationTarget</code> after it is remediated.</p>"
        },
        "IsDefaultAction": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the current action is the default action.</p>"
        }
      },
      "documentation": "<p>Remediation option for the rule specified in the <code>ViolationTarget</code>.</p>"
    },
    "SecurityGroupRemediationActions": {
      "type": "list",
      "member": {
        "shape": "SecurityGroupRemediationAction"
      }
    },
    "SecurityGroupRuleDescription": {
      "type": "structure",
      "members": {
        "IPV4Range": {
          "shape": "CIDR",
          "documentation": "<p>The IPv4 ranges for the security group rule.</p>"
        },
        "IPV6Range": {
          "shape": "CIDR",
          "documentation": "<p>The IPv6 ranges for the security group rule.</p>"
        },
        "PrefixListId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the prefix list for the security group rule.</p>"
        },
        "Protocol": {
          "shape": "LengthBoundedString",
          "documentation": "<p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>, <code>icmpv6</code>) or number.</p>"
        },
        "FromPort": {
          "shape": "IPPortNumber",
          "documentation": "<p>The start of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number. A value of <code>-1</code> indicates all ICMP/ICMPv6 types.</p>"
        },
        "ToPort": {
          "shape": "IPPortNumber",
          "documentation": "<p>The end of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A value of <code>-1</code> indicates all ICMP/ICMPv6 codes.</p>"
        }
      },
      "documentation": "<p>Describes a set of permissions for a security group rule.</p>"
    },
    "SecurityServicePolicyData": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "Type": {
          "shape": "SecurityServiceType",
          "documentation": "<p>The service that the policy is using to protect the resources. This specifies the type of policy that is created, either an AWS WAF policy, a Shield Advanced policy, or a security group policy. For security group policies, Firewall Manager supports one security group for each common policy and for each content audit policy. This is an adjustable limit that you can increase by contacting AWS Support.</p>"
        },
        "ManagedServiceData": {
          "shape": "ManagedServiceData",
          "documentation": "<p>Details about the service that are specific to the service type, in JSON format. For service type <code>SHIELD_ADVANCED</code>, this is an empty string.</p> <ul> <li> <p>Example: <code>WAFV2</code> </p> <p> <code>\"ManagedServiceData\": \"{\\\"type\\\":\\\"WAFV2\\\",\\\"defaultAction\\\":{\\\"type\\\":\\\"ALLOW\\\"},\\\"preProcessRuleGroups\\\":[{\\\"managedRuleGroupIdentifier\\\":null,\\\"ruleGroupArn\\\":\\\"rulegrouparn\\\",\\\"overrideAction\\\":{\\\"type\\\":\\\"COUNT\\\"},\\\"excludeRules\\\":[{\\\"name\\\":\\\"EntityName\\\"}],\\\"ruleGroupType\\\":\\\"RuleGroup\\\"}],\\\"postProcessRuleGroups\\\":[{\\\"managedRuleGroupIdentifier\\\":{\\\"managedRuleGroupName\\\":\\\"AWSManagedRulesAdminProtectionRuleSet\\\",\\\"vendorName\\\":\\\"AWS\\\"},\\\"ruleGroupArn\\\":\\\"rulegrouparn\\\",\\\"overrideAction\\\":{\\\"type\\\":\\\"NONE\\\"},\\\"excludeRules\\\":[],\\\"ruleGroupType\\\":\\\"ManagedRuleGroup\\\"}],\\\"overrideCustomerWebACLAssociation\\\":false}\"</code> </p> </li> <li> <p>Example: <code>WAF Classic</code> </p> <p> <code>\"ManagedServiceData\": \"{\\\"type\\\": \\\"WAF\\\", \\\"ruleGroups\\\": [{\\\"id\\\": \\\"12345678-1bcd-9012-efga-0987654321ab\\\", \\\"overrideAction\\\" : {\\\"type\\\": \\\"COUNT\\\"}}], \\\"defaultAction\\\": {\\\"type\\\": \\\"BLOCK\\\"}}</code> </p> </li> <li> <p>Example: <code>SECURITY_GROUPS_COMMON</code> </p> <p> <code>\"SecurityServicePolicyData\":{\"Type\":\"SECURITY_GROUPS_COMMON\",\"ManagedServiceData\":\"{\\\"type\\\":\\\"SECURITY_GROUPS_COMMON\\\",\\\"revertManualSecurityGroupChanges\\\":false,\\\"exclusiveResourceSecurityGroupManagement\\\":false, \\\"applyToAllEC2InstanceENIs\\\":false,\\\"securityGroups\\\":[{\\\"id\\\":\\\" sg-000e55995d61a06bd\\\"}]}\"},\"RemediationEnabled\":false,\"ResourceType\":\"AWS::EC2::NetworkInterface\"}</code> </p> </li> <li> <p>Example: <code>SECURITY_GROUPS_CONTENT_AUDIT</code> </p> <p> <code>\"SecurityServicePolicyData\":{\"Type\":\"SECURITY_GROUPS_CONTENT_AUDIT\",\"ManagedServiceData\":\"{\\\"type\\\":\\\"SECURITY_GROUPS_CONTENT_AUDIT\\\",\\\"securityGroups\\\":[{\\\"id\\\":\\\" sg-000e55995d61a06bd \\\"}],\\\"securityGroupAction\\\":{\\\"type\\\":\\\"ALLOW\\\"}}\"},\"RemediationEnabled\":false,\"ResourceType\":\"AWS::EC2::NetworkInterface\"}</code> </p> <p>The security group action for content audit can be <code>ALLOW</code> or <code>DENY</code>. For <code>ALLOW</code>, all in-scope security group rules must be within the allowed range of the policy's security group rules. For <code>DENY</code>, all in-scope security group rules must not contain a value or a range that matches a rule value or range in the policy security group.</p> </li> <li> <p>Example: <code>SECURITY_GROUPS_USAGE_AUDIT</code> </p> <p> <code>\"SecurityServicePolicyData\":{\"Type\":\"SECURITY_GROUPS_USAGE_AUDIT\",\"ManagedServiceData\":\"{\\\"type\\\":\\\"SECURITY_GROUPS_USAGE_AUDIT\\\",\\\"deleteUnusedSecurityGroups\\\":true,\\\"coalesceRedundantSecurityGroups\\\":true}\"},\"RemediationEnabled\":false,\"Resou rceType\":\"AWS::EC2::SecurityGroup\"}</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p>Details about the security service that is being used to protect the resources.</p>"
    },
    "SecurityServiceType": {
      "type": "string",
      "enum": [
        "WAF",
        "WAFV2",
        "SHIELD_ADVANCED",
        "SECURITY_GROUPS_COMMON",
        "SECURITY_GROUPS_CONTENT_AUDIT",
        "SECURITY_GROUPS_USAGE_AUDIT"
      ]
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are case-sensitive.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are case-sensitive. </p>"
        }
      },
      "documentation": "<p>A collection of key:value pairs associated with an AWS resource. The key:value pair can be anything you define. Typically, the tag key represents a category (such as \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 tags to each AWS resource. </p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 0
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagList"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to return tags for. The AWS Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the resource.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TargetViolationReason": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "\\w+"
    },
    "TargetViolationReasons": {
      "type": "list",
      "member": {
        "shape": "TargetViolationReason"
      }
    },
    "TimeStamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to return tags for. The AWS Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the tags to remove from the resource. </p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateToken": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "ViolationDetail": {
      "type": "structure",
      "required": [
        "PolicyId",
        "MemberAccount",
        "ResourceId",
        "ResourceType",
        "ResourceViolations"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The ID of the AWS Firewall Manager policy that the violation details were requested for.</p>"
        },
        "MemberAccount": {
          "shape": "AWSAccountId",
          "documentation": "<p>The AWS account that the violation details were requested for.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The resource ID that the violation details were requested for.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type that the violation details were requested for.</p>"
        },
        "ResourceViolations": {
          "shape": "ResourceViolations",
          "documentation": "<p>List of violations for the requested resource.</p>"
        },
        "ResourceTags": {
          "shape": "TagList",
          "documentation": "<p>The <code>ResourceTag</code> objects associated with the resource.</p>"
        },
        "ResourceDescription": {
          "shape": "LengthBoundedString",
          "documentation": "<p>Brief description for the requested resource.</p>"
        }
      },
      "documentation": "<p>Violations for a resource based on the specified AWS Firewall Manager policy and AWS account.</p>"
    },
    "ViolationReason": {
      "type": "string",
      "enum": [
        "WEB_ACL_MISSING_RULE_GROUP",
        "RESOURCE_MISSING_WEB_ACL",
        "RESOURCE_INCORRECT_WEB_ACL",
        "RESOURCE_MISSING_SHIELD_PROTECTION",
        "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION",
        "RESOURCE_MISSING_SECURITY_GROUP",
        "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP",
        "SECURITY_GROUP_UNUSED",
        "SECURITY_GROUP_REDUNDANT"
      ]
    },
    "ViolationTarget": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": ".*"
    }
  },
  "documentation": "<fullname>AWS Firewall Manager</fullname> <p>This is the <i>AWS Firewall Manager API Reference</i>. This guide is for developers who need detailed information about the AWS Firewall Manager API actions, data types, and errors. For detailed information about AWS Firewall Manager features, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html\">AWS Firewall Manager Developer Guide</a>.</p>"
}
]===]))
