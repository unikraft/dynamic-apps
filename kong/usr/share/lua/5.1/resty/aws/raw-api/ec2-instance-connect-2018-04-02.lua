local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-04-02",
    "endpointPrefix": "ec2-instance-connect",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "EC2 Instance Connect",
    "serviceFullName": "AWS EC2 Instance Connect",
    "serviceId": "EC2 Instance Connect",
    "signatureVersion": "v4",
    "targetPrefix": "AWSEC2InstanceConnectService",
    "uid": "ec2-instance-connect-2018-04-02"
  },
  "operations": {
    "SendSSHPublicKey": {
      "name": "SendSSHPublicKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendSSHPublicKeyRequest"
      },
      "output": {
        "shape": "SendSSHPublicKeyResponse"
      },
      "errors": [
        {
          "shape": "AuthException"
        },
        {
          "shape": "InvalidArgsException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "EC2InstanceNotFoundException"
        }
      ],
      "documentation": "<p>Pushes an SSH public key to a particular OS user on a given EC2 instance for 60 seconds.</p>"
    }
  },
  "shapes": {
    "AvailabilityZone": {
      "type": "string",
      "max": 32,
      "min": 6,
      "pattern": "^(\\w+-){2,3}\\d+\\w+$"
    },
    "InstanceId": {
      "type": "string",
      "max": 32,
      "min": 10,
      "pattern": "^i-[a-f0-9]+$"
    },
    "InstanceOSUser": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "^[A-Za-z_][A-Za-z0-9\\@\\._-]{0,30}[A-Za-z0-9\\$_-]?$"
    },
    "RequestId": {
      "type": "string"
    },
    "SSHPublicKey": {
      "type": "string",
      "max": 4096,
      "min": 256
    },
    "SendSSHPublicKeyRequest": {
      "type": "structure",
      "required": [
        "InstanceId",
        "InstanceOSUser",
        "SSHPublicKey",
        "AvailabilityZone"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The EC2 instance you wish to publish the SSH key to.</p>"
        },
        "InstanceOSUser": {
          "shape": "InstanceOSUser",
          "documentation": "<p>The OS user on the EC2 instance whom the key may be used to authenticate as.</p>"
        },
        "SSHPublicKey": {
          "shape": "SSHPublicKey",
          "documentation": "<p>The public key to be published to the instance. To use it after publication you must have the matching private key.</p>"
        },
        "AvailabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p>The availability zone the EC2 instance was launched in.</p>"
        }
      }
    },
    "SendSSHPublicKeyResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "RequestId",
          "documentation": "<p>The request ID as logged by EC2 Connect. Please provide this when contacting AWS Support.</p>"
        },
        "Success": {
          "shape": "Success",
          "documentation": "<p>Indicates request success.</p>"
        }
      }
    },
    "Success": {
      "type": "boolean"
    }
  },
  "documentation": "<p>AWS EC2 Connect Service is a service that enables system administrators to publish temporary SSH keys to their EC2 instances in order to establish connections to their instances without leaving a permanent authentication option.</p>"
}
]===]))
