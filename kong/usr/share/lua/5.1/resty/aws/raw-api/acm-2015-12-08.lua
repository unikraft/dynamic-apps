local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-12-08",
    "endpointPrefix": "acm",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "ACM",
    "serviceFullName": "AWS Certificate Manager",
    "serviceId": "ACM",
    "signatureVersion": "v4",
    "targetPrefix": "CertificateManager",
    "uid": "acm-2015-12-08"
  },
  "operations": {
    "AddTagsToCertificate": {
      "name": "AddTagsToCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddTagsToCertificateRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "TagPolicyException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a <code>key</code> and an optional <code>value</code>. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. </p> <p>You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/tags.html\">Tagging ACM certificates</a>. </p> <p>To remove one or more tags, use the <a>RemoveTagsFromCertificate</a> action. To view all of the tags that have been applied to the certificate, use the <a>ListTagsForCertificate</a> action. </p>"
    },
    "DeleteCertificate": {
      "name": "DeleteCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCertificateRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Deletes a certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list that can be displayed by calling the <a>ListCertificates</a> action or be retrieved by calling the <a>GetCertificate</a> action. The certificate will not be available for use by AWS services integrated with ACM. </p> <note> <p>You cannot delete an ACM certificate that is being used by another AWS service. To delete a certificate that is in use, the certificate association must first be removed.</p> </note>"
    },
    "DescribeCertificate": {
      "name": "DescribeCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCertificateRequest"
      },
      "output": {
        "shape": "DescribeCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Returns detailed metadata about the specified ACM certificate.</p>"
    },
    "ExportCertificate": {
      "name": "ExportCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ExportCertificateRequest"
      },
      "output": {
        "shape": "ExportCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestInProgressException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Exports a private certificate issued by a private certificate authority (CA) for use anywhere. The exported file contains the certificate, the certificate chain, and the encrypted private 2048-bit RSA key associated with the public key that is embedded in the certificate. For security, you must assign a passphrase for the private key when exporting it. </p> <p>For information about exporting and formatting a certificate using the ACM console or CLI, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-export-private.html\">Export a Private Certificate</a>.</p>"
    },
    "GetCertificate": {
      "name": "GetCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCertificateRequest"
      },
      "output": {
        "shape": "GetCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestInProgressException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Retrieves an Amazon-issued certificate and its certificate chain. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. All of the certificates are base64 encoded. You can use <a href=\"https://wiki.openssl.org/index.php/Command_Line_Utilities\">OpenSSL</a> to decode the certificates and inspect individual fields.</p>"
    },
    "ImportCertificate": {
      "name": "ImportCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportCertificateRequest"
      },
      "output": {
        "shape": "ImportCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "TagPolicyException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Imports a certificate into AWS Certificate Manager (ACM) to use with services that are integrated with ACM. Note that <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html\">integrated services</a> allow only certificate types and keys they support to be associated with their resources. Further, their support differs depending on whether the certificate is imported into IAM or into ACM. For more information, see the documentation for each service. For more information about importing certificates into ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing Certificates</a> in the <i>AWS Certificate Manager User Guide</i>. </p> <note> <p>ACM does not provide <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> for certificates that you import.</p> </note> <p>Note the following guidelines when importing third party certificates:</p> <ul> <li> <p>You must enter the private key that matches the certificate you are importing.</p> </li> <li> <p>The private key must be unencrypted. You cannot import a private key that is protected by a password or a passphrase.</p> </li> <li> <p>If the certificate you are importing is not self-signed, you must enter its certificate chain.</p> </li> <li> <p>If a certificate chain is included, the issuer must be the subject of one of the certificates in the chain.</p> </li> <li> <p>The certificate, private key, and certificate chain must be PEM-encoded.</p> </li> <li> <p>The current time must be between the <code>Not Before</code> and <code>Not After</code> certificate fields.</p> </li> <li> <p>The <code>Issuer</code> field must not be empty.</p> </li> <li> <p>The OCSP authority URL, if present, must not exceed 1000 characters.</p> </li> <li> <p>To import a new certificate, omit the <code>CertificateArn</code> argument. Include this argument only when you want to replace a previously imported certifica</p> </li> <li> <p>When you import a certificate by using the CLI, you must specify the certificate, the certificate chain, and the private key by their file names preceded by <code>file://</code>. For example, you can specify a certificate saved in the <code>C:\\temp</code> folder as <code>file://C:\\temp\\certificate_to_import.pem</code>. If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs. </p> </li> <li> <p>When you import a certificate by using an SDK, you must specify the certificate, the certificate chain, and the private key files in the manner required by the programming language you're using. </p> </li> <li> <p>The cryptographic algorithm of an imported certificate must match the algorithm of the signing CA. For example, if the signing CA key type is RSA, then the certificate key type must also be RSA.</p> </li> </ul> <p>This operation returns the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name (ARN)</a> of the imported certificate.</p>"
    },
    "ListCertificates": {
      "name": "ListCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCertificatesRequest"
      },
      "output": {
        "shape": "ListCertificatesResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgsException"
        }
      ],
      "documentation": "<p>Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only <code>RSA_2048</code> certificates. For more information, see <a>Filters</a>.</p>"
    },
    "ListTagsForCertificate": {
      "name": "ListTagsForCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForCertificateRequest"
      },
      "output": {
        "shape": "ListTagsForCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the <a>AddTagsToCertificate</a> action. To delete a tag, use the <a>RemoveTagsFromCertificate</a> action. </p>"
    },
    "RemoveTagsFromCertificate": {
      "name": "RemoveTagsFromCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTagsFromCertificateRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "TagPolicyException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. </p> <p>To add tags to a certificate, use the <a>AddTagsToCertificate</a> action. To view all of the tags that have been applied to a specific ACM certificate, use the <a>ListTagsForCertificate</a> action. </p>"
    },
    "RenewCertificate": {
      "name": "RenewCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RenewCertificateRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Renews an eligable ACM certificate. At this time, only exported private certificates can be renewed with this operation. In order to renew your ACM PCA certificates with ACM, you must first <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaPermissions.html\">grant the ACM service principal permission to do so</a>. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html\">Testing Managed Renewal</a> in the ACM User Guide.</p>"
    },
    "RequestCertificate": {
      "name": "RequestCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RequestCertificateRequest"
      },
      "output": {
        "shape": "RequestCertificateResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidDomainValidationOptionsException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "TagPolicyException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Requests an ACM certificate for use with other AWS services. To request an ACM certificate, you must specify a fully qualified domain name (FQDN) in the <code>DomainName</code> parameter. You can also specify additional FQDNs in the <code>SubjectAlternativeNames</code> parameter. </p> <p>If you are requesting a private certificate, domain validation is not required. If you are requesting a public certificate, each domain name that you specify must be validated to verify that you own or control the domain. You can use <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html\">DNS validation</a> or <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html\">email validation</a>. We recommend that you use DNS validation. ACM issues public certificates after receiving approval from the domain owner. </p>"
    },
    "ResendValidationEmail": {
      "name": "ResendValidationEmail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResendValidationEmailRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "InvalidDomainValidationOptionsException"
        }
      ],
      "documentation": "<p>Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking <b>I Approve</b>. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html\">Configure Email for your Domain</a>. </p>"
    },
    "UpdateCertificateOptions": {
      "name": "UpdateCertificateOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateCertificateOptionsRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p>Updates a certificate. Currently, you can use this function to specify whether to opt in to or out of recording your certificate in a certificate transparency log. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency\"> Opting Out of Certificate Transparency Logging</a>. </p>"
    }
  },
  "shapes": {
    "AddTagsToCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn",
        "Tags"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains the ARN of the ACM certificate to which the tag is to be applied. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The key-value pair that defines the tag. The tag value is optional.</p>"
        }
      }
    },
    "Arn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"
    },
    "CertificateBody": {
      "type": "string",
      "max": 32768,
      "min": 1,
      "pattern": "-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"
    },
    "CertificateBodyBlob": {
      "type": "blob",
      "max": 32768,
      "min": 1
    },
    "CertificateChain": {
      "type": "string",
      "max": 2097152,
      "min": 1,
      "pattern": "(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"
    },
    "CertificateChainBlob": {
      "type": "blob",
      "max": 2097152,
      "min": 1
    },
    "CertificateDetail": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "DomainName": {
          "shape": "DomainNameString",
          "documentation": "<p>The fully qualified domain name for the certificate, such as www.example.com or example.com.</p>"
        },
        "SubjectAlternativeNames": {
          "shape": "DomainList",
          "documentation": "<p>One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website. </p>"
        },
        "DomainValidationOptions": {
          "shape": "DomainValidationList",
          "documentation": "<p>Contains information about the initial validation of each domain name that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>"
        },
        "Serial": {
          "shape": "String",
          "documentation": "<p>The serial number of the certificate.</p>"
        },
        "Subject": {
          "shape": "String",
          "documentation": "<p>The name of the entity that is associated with the public key contained in the certificate.</p>"
        },
        "Issuer": {
          "shape": "String",
          "documentation": "<p>The name of the certificate authority that issued and signed the certificate.</p>"
        },
        "CreatedAt": {
          "shape": "TStamp",
          "documentation": "<p>The time at which the certificate was requested. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>"
        },
        "IssuedAt": {
          "shape": "TStamp",
          "documentation": "<p>The time at which the certificate was issued. This value exists only when the certificate type is <code>AMAZON_ISSUED</code>. </p>"
        },
        "ImportedAt": {
          "shape": "TStamp",
          "documentation": "<p>The date and time at which the certificate was imported. This value exists only when the certificate type is <code>IMPORTED</code>. </p>"
        },
        "Status": {
          "shape": "CertificateStatus",
          "documentation": "<p>The status of the certificate.</p>"
        },
        "RevokedAt": {
          "shape": "TStamp",
          "documentation": "<p>The time at which the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>"
        },
        "RevocationReason": {
          "shape": "RevocationReason",
          "documentation": "<p>The reason the certificate was revoked. This value exists only when the certificate status is <code>REVOKED</code>. </p>"
        },
        "NotBefore": {
          "shape": "TStamp",
          "documentation": "<p>The time before which the certificate is not valid.</p>"
        },
        "NotAfter": {
          "shape": "TStamp",
          "documentation": "<p>The time after which the certificate is not valid.</p>"
        },
        "KeyAlgorithm": {
          "shape": "KeyAlgorithm",
          "documentation": "<p>The algorithm that was used to generate the public-private key pair.</p>"
        },
        "SignatureAlgorithm": {
          "shape": "String",
          "documentation": "<p>The algorithm that was used to sign the certificate.</p>"
        },
        "InUseBy": {
          "shape": "InUseList",
          "documentation": "<p>A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources. </p>"
        },
        "FailureReason": {
          "shape": "FailureReason",
          "documentation": "<p>The reason the certificate request failed. This value exists only when the certificate status is <code>FAILED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed\">Certificate Request Failed</a> in the <i>AWS Certificate Manager User Guide</i>. </p>"
        },
        "Type": {
          "shape": "CertificateType",
          "documentation": "<p>The source of the certificate. For certificates provided by ACM, this value is <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing Certificates</a> in the <i>AWS Certificate Manager User Guide</i>. </p>"
        },
        "RenewalSummary": {
          "shape": "RenewalSummary",
          "documentation": "<p>Contains information about the status of ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> for the certificate. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>"
        },
        "KeyUsages": {
          "shape": "KeyUsageList",
          "documentation": "<p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>"
        },
        "ExtendedKeyUsages": {
          "shape": "ExtendedKeyUsageList",
          "documentation": "<p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID). </p>"
        },
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the ACM PCA private certificate authority (CA) that issued the certificate. This has the following format: </p> <p> <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> </p>"
        },
        "RenewalEligibility": {
          "shape": "RenewalEligibility",
          "documentation": "<p>Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the <a>RenewCertificate</a> command.</p>"
        },
        "Options": {
          "shape": "CertificateOptions",
          "documentation": "<p>Value that specifies whether to add the certificate to a transparency log. Certificate transparency makes it possible to detect SSL certificates that have been mistakenly or maliciously issued. A browser might respond to certificate that has not been logged by showing an error message. The logs are cryptographically secure. </p>"
        }
      },
      "documentation": "<p>Contains metadata about an ACM certificate. This structure is returned in the response to a <a>DescribeCertificate</a> request. </p>"
    },
    "CertificateOptions": {
      "type": "structure",
      "members": {
        "CertificateTransparencyLoggingPreference": {
          "shape": "CertificateTransparencyLoggingPreference",
          "documentation": "<p>You can opt out of certificate transparency logging by specifying the <code>DISABLED</code> option. Opt in by specifying <code>ENABLED</code>. </p>"
        }
      },
      "documentation": "<p>Structure that contains options for your certificate. Currently, you can use this only to specify whether to opt in to or out of certificate transparency logging. Some browsers require that public certificates issued for your domain be recorded in a log. Certificates that are not logged typically generate a browser error. Transparency makes it possible for you to detect SSL/TLS certificates that have been mistakenly or maliciously issued for your domain. For general information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency\">Certificate Transparency Logging</a>. </p>"
    },
    "CertificateStatus": {
      "type": "string",
      "enum": [
        "PENDING_VALIDATION",
        "ISSUED",
        "INACTIVE",
        "EXPIRED",
        "VALIDATION_TIMED_OUT",
        "REVOKED",
        "FAILED"
      ]
    },
    "CertificateStatuses": {
      "type": "list",
      "member": {
        "shape": "CertificateStatus"
      }
    },
    "CertificateSummary": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>. </p>"
        },
        "DomainName": {
          "shape": "DomainNameString",
          "documentation": "<p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.</p>"
        }
      },
      "documentation": "<p>This structure is returned in the response object of <a>ListCertificates</a> action. </p>"
    },
    "CertificateSummaryList": {
      "type": "list",
      "member": {
        "shape": "CertificateSummary"
      }
    },
    "CertificateTransparencyLoggingPreference": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "CertificateType": {
      "type": "string",
      "enum": [
        "IMPORTED",
        "AMAZON_ISSUED",
        "PRIVATE"
      ]
    },
    "DeleteCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains the ARN of the ACM certificate to be deleted. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        }
      }
    },
    "DescribeCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        }
      }
    },
    "DescribeCertificateResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "CertificateDetail",
          "documentation": "<p>Metadata about an ACM certificate.</p>"
        }
      }
    },
    "DomainList": {
      "type": "list",
      "member": {
        "shape": "DomainNameString"
      },
      "max": 100,
      "min": 1
    },
    "DomainNameString": {
      "type": "string",
      "max": 253,
      "min": 1,
      "pattern": "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"
    },
    "DomainStatus": {
      "type": "string",
      "enum": [
        "PENDING_VALIDATION",
        "SUCCESS",
        "FAILED"
      ]
    },
    "DomainValidation": {
      "type": "structure",
      "required": [
        "DomainName"
      ],
      "members": {
        "DomainName": {
          "shape": "DomainNameString",
          "documentation": "<p>A fully qualified domain name (FQDN) in the certificate. For example, <code>www.example.com</code> or <code>example.com</code>. </p>"
        },
        "ValidationEmails": {
          "shape": "ValidationEmailList",
          "documentation": "<p>A list of email addresses that ACM used to send domain validation emails.</p>"
        },
        "ValidationDomain": {
          "shape": "DomainNameString",
          "documentation": "<p>The domain name that ACM used to send domain validation emails.</p>"
        },
        "ValidationStatus": {
          "shape": "DomainStatus",
          "documentation": "<p>The validation status of the domain name. This can be one of the following values:</p> <ul> <li> <p> <code>PENDING_VALIDATION</code> </p> </li> <li> <p> <code/>SUCCESS</p> </li> <li> <p> <code/>FAILED</p> </li> </ul>"
        },
        "ResourceRecord": {
          "shape": "ResourceRecord",
          "documentation": "<p>Contains the CNAME record that you add to your DNS database for domain validation. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html\">Use DNS to Validate Domain Ownership</a>.</p> <p>Note: The CNAME information that you need does not include the name of your domain. If you include&#x2028; your domain name in the DNS database CNAME record, validation fails.&#x2028; For example, if the name is \"_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com\", only \"_a79865eb4cd1a6ab990a45779b4e0b96\" must be used.</p>"
        },
        "ValidationMethod": {
          "shape": "ValidationMethod",
          "documentation": "<p>Specifies the domain validation method.</p>"
        }
      },
      "documentation": "<p>Contains information about the validation of each domain name in the certificate.</p>"
    },
    "DomainValidationList": {
      "type": "list",
      "member": {
        "shape": "DomainValidation"
      },
      "max": 1000,
      "min": 1
    },
    "DomainValidationOption": {
      "type": "structure",
      "required": [
        "DomainName",
        "ValidationDomain"
      ],
      "members": {
        "DomainName": {
          "shape": "DomainNameString",
          "documentation": "<p>A fully qualified domain name (FQDN) in the certificate request.</p>"
        },
        "ValidationDomain": {
          "shape": "DomainNameString",
          "documentation": "<p>The domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the <code>DomainName</code> value or a superdomain of the <code>DomainName</code> value. For example, if you request a certificate for <code>testing.example.com</code>, you can specify <code>example.com</code> for this value. In that case, ACM sends domain validation emails to the following five addresses:</p> <ul> <li> <p>admin@example.com</p> </li> <li> <p>administrator@example.com</p> </li> <li> <p>hostmaster@example.com</p> </li> <li> <p>postmaster@example.com</p> </li> <li> <p>webmaster@example.com</p> </li> </ul>"
        }
      },
      "documentation": "<p>Contains information about the domain names that you want ACM to use to send you emails that enable you to validate domain ownership.</p>"
    },
    "DomainValidationOptionList": {
      "type": "list",
      "member": {
        "shape": "DomainValidationOption"
      },
      "max": 100,
      "min": 1
    },
    "ExportCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn",
        "Passphrase"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:</p> <p> <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code> </p>"
        },
        "Passphrase": {
          "shape": "PassphraseBlob",
          "documentation": "<p>Passphrase to associate with the encrypted exported private key. If you want to later decrypt the private key, you must have the passphrase. You can use the following OpenSSL command to decrypt a private key: </p> <p> <code>openssl rsa -in encrypted_key.pem -out decrypted_key.pem</code> </p>"
        }
      }
    },
    "ExportCertificateResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "CertificateBody",
          "documentation": "<p>The base64 PEM-encoded certificate.</p>"
        },
        "CertificateChain": {
          "shape": "CertificateChain",
          "documentation": "<p>The base64 PEM-encoded certificate chain. This does not include the certificate that you are exporting.</p>"
        },
        "PrivateKey": {
          "shape": "PrivateKey",
          "documentation": "<p>The encrypted private key associated with the public key in the certificate. The key is output in PKCS #8 format and is base64 PEM-encoded. </p>"
        }
      }
    },
    "ExtendedKeyUsage": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ExtendedKeyUsageName",
          "documentation": "<p>The name of an Extended Key Usage value.</p>"
        },
        "OID": {
          "shape": "String",
          "documentation": "<p>An object identifier (OID) for the extension value. OIDs are strings of numbers separated by periods. The following OIDs are defined in RFC 3280 and RFC 5280. </p> <ul> <li> <p> <code>1.3.6.1.5.5.7.3.1 (TLS_WEB_SERVER_AUTHENTICATION)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.2 (TLS_WEB_CLIENT_AUTHENTICATION)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.3 (CODE_SIGNING)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.4 (EMAIL_PROTECTION)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.8 (TIME_STAMPING)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.9 (OCSP_SIGNING)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.5 (IPSEC_END_SYSTEM)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.6 (IPSEC_TUNNEL)</code> </p> </li> <li> <p> <code>1.3.6.1.5.5.7.3.7 (IPSEC_USER)</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p>The Extended Key Usage X.509 v3 extension defines one or more purposes for which the public key can be used. This is in addition to or in place of the basic purposes specified by the Key Usage extension. </p>"
    },
    "ExtendedKeyUsageFilterList": {
      "type": "list",
      "member": {
        "shape": "ExtendedKeyUsageName"
      }
    },
    "ExtendedKeyUsageList": {
      "type": "list",
      "member": {
        "shape": "ExtendedKeyUsage"
      }
    },
    "ExtendedKeyUsageName": {
      "type": "string",
      "enum": [
        "TLS_WEB_SERVER_AUTHENTICATION",
        "TLS_WEB_CLIENT_AUTHENTICATION",
        "CODE_SIGNING",
        "EMAIL_PROTECTION",
        "TIME_STAMPING",
        "OCSP_SIGNING",
        "IPSEC_END_SYSTEM",
        "IPSEC_TUNNEL",
        "IPSEC_USER",
        "ANY",
        "NONE",
        "CUSTOM"
      ]
    },
    "FailureReason": {
      "type": "string",
      "enum": [
        "NO_AVAILABLE_CONTACTS",
        "ADDITIONAL_VERIFICATION_REQUIRED",
        "DOMAIN_NOT_ALLOWED",
        "INVALID_PUBLIC_DOMAIN",
        "DOMAIN_VALIDATION_DENIED",
        "CAA_ERROR",
        "PCA_LIMIT_EXCEEDED",
        "PCA_INVALID_ARN",
        "PCA_INVALID_STATE",
        "PCA_REQUEST_FAILED",
        "PCA_NAME_CONSTRAINTS_VALIDATION",
        "PCA_RESOURCE_NOT_FOUND",
        "PCA_INVALID_ARGS",
        "PCA_INVALID_DURATION",
        "PCA_ACCESS_DENIED",
        "SLR_NOT_FOUND",
        "OTHER"
      ]
    },
    "Filters": {
      "type": "structure",
      "members": {
        "extendedKeyUsage": {
          "shape": "ExtendedKeyUsageFilterList",
          "documentation": "<p>Specify one or more <a>ExtendedKeyUsage</a> extension values.</p>"
        },
        "keyUsage": {
          "shape": "KeyUsageFilterList",
          "documentation": "<p>Specify one or more <a>KeyUsage</a> extension values.</p>"
        },
        "keyTypes": {
          "shape": "KeyAlgorithmList",
          "documentation": "<p>Specify one or more algorithms that can be used to generate key pairs.</p> <p>Default filtering returns only <code>RSA_2048</code> certificates. To return other certificate types, provide the desired type signatures in a comma-separated list. For example, <code>\"keyTypes\": [\"RSA_2048,RSA_4096\"]</code> returns both <code>RSA_2048</code> and <code>RSA_4096</code> certificates.</p>"
        }
      },
      "documentation": "<p>This structure can be used in the <a>ListCertificates</a> action to filter the output of the certificate list. </p>"
    },
    "GetCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains a certificate ARN in the following format:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        }
      }
    },
    "GetCertificateResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "CertificateBody",
          "documentation": "<p>The ACM-issued certificate corresponding to the ARN specified as input.</p>"
        },
        "CertificateChain": {
          "shape": "CertificateChain",
          "documentation": "<p>Certificates forming the requested certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. </p>"
        }
      }
    },
    "IdempotencyToken": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "\\w+"
    },
    "ImportCertificateRequest": {
      "type": "structure",
      "required": [
        "Certificate",
        "PrivateKey"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this field. </p>"
        },
        "Certificate": {
          "shape": "CertificateBodyBlob",
          "documentation": "<p>The certificate to import.</p>"
        },
        "PrivateKey": {
          "shape": "PrivateKeyBlob",
          "documentation": "<p>The private key that matches the public key in the certificate.</p>"
        },
        "CertificateChain": {
          "shape": "CertificateChainBlob",
          "documentation": "<p>The PEM encoded certificate chain.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more resource tags to associate with the imported certificate. </p> <p>Note: You cannot apply tags when reimporting a certificate.</p>"
        }
      }
    },
    "ImportCertificateResponse": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name (ARN)</a> of the imported certificate.</p>"
        }
      }
    },
    "InUseList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "KeyAlgorithm": {
      "type": "string",
      "enum": [
        "RSA_2048",
        "RSA_1024",
        "RSA_4096",
        "EC_prime256v1",
        "EC_secp384r1",
        "EC_secp521r1"
      ]
    },
    "KeyAlgorithmList": {
      "type": "list",
      "member": {
        "shape": "KeyAlgorithm"
      }
    },
    "KeyUsage": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "KeyUsageName",
          "documentation": "<p>A string value that contains a Key Usage extension name.</p>"
        }
      },
      "documentation": "<p>The Key Usage X.509 v3 extension defines the purpose of the public key contained in the certificate.</p>"
    },
    "KeyUsageFilterList": {
      "type": "list",
      "member": {
        "shape": "KeyUsageName"
      }
    },
    "KeyUsageList": {
      "type": "list",
      "member": {
        "shape": "KeyUsage"
      }
    },
    "KeyUsageName": {
      "type": "string",
      "enum": [
        "DIGITAL_SIGNATURE",
        "NON_REPUDIATION",
        "KEY_ENCIPHERMENT",
        "DATA_ENCIPHERMENT",
        "KEY_AGREEMENT",
        "CERTIFICATE_SIGNING",
        "CRL_SIGNING",
        "ENCIPHER_ONLY",
        "DECIPHER_ONLY",
        "ANY",
        "CUSTOM"
      ]
    },
    "ListCertificatesRequest": {
      "type": "structure",
      "members": {
        "CertificateStatuses": {
          "shape": "CertificateStatuses",
          "documentation": "<p>Filter the certificate list by status value.</p>"
        },
        "Includes": {
          "shape": "Filters",
          "documentation": "<p>Filter the certificate list. For more information, see the <a>Filters</a> structure.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the response you just received.</p>"
        },
        "MaxItems": {
          "shape": "MaxItems",
          "documentation": "<p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p>"
        }
      }
    },
    "ListCertificatesResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the list is truncated, this value is present and contains the value to use for the <code>NextToken</code> parameter in a subsequent pagination request.</p>"
        },
        "CertificateSummaryList": {
          "shape": "CertificateSummaryList",
          "documentation": "<p>A list of ACM certificates.</p>"
        }
      }
    },
    "ListTagsForCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains the ARN of the ACM certificate for which you want to list the tags. This must have the following form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>. </p>"
        }
      }
    },
    "ListTagsForCertificateResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The key-value pairs that define the applied tags.</p>"
        }
      }
    },
    "MaxItems": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 10000,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*"
    },
    "PassphraseBlob": {
      "type": "blob",
      "max": 128,
      "min": 4,
      "sensitive": true
    },
    "PrivateKey": {
      "type": "string",
      "max": 524288,
      "min": 1,
      "pattern": "-{5}BEGIN PRIVATE KEY-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END PRIVATE KEY-{5}(\\u000D?\\u000A)?",
      "sensitive": true
    },
    "PrivateKeyBlob": {
      "type": "blob",
      "max": 5120,
      "min": 1,
      "sensitive": true
    },
    "RecordType": {
      "type": "string",
      "enum": [
        "CNAME"
      ]
    },
    "RemoveTagsFromCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn",
        "Tags"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The key-value pair that defines the tag to remove.</p>"
        }
      }
    },
    "RenewCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateArn"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains the ARN of the ACM certificate to be renewed. This must be of the form:</p> <p> <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        }
      }
    },
    "RenewalEligibility": {
      "type": "string",
      "enum": [
        "ELIGIBLE",
        "INELIGIBLE"
      ]
    },
    "RenewalStatus": {
      "type": "string",
      "enum": [
        "PENDING_AUTO_RENEWAL",
        "PENDING_VALIDATION",
        "SUCCESS",
        "FAILED"
      ]
    },
    "RenewalSummary": {
      "type": "structure",
      "required": [
        "RenewalStatus",
        "DomainValidationOptions",
        "UpdatedAt"
      ],
      "members": {
        "RenewalStatus": {
          "shape": "RenewalStatus",
          "documentation": "<p>The status of ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> of the certificate.</p>"
        },
        "DomainValidationOptions": {
          "shape": "DomainValidationList",
          "documentation": "<p>Contains information about the validation of each domain name in the certificate, as it pertains to ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a>. This is different from the initial validation that occurs as a result of the <a>RequestCertificate</a> request. This field exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>"
        },
        "RenewalStatusReason": {
          "shape": "FailureReason",
          "documentation": "<p>The reason that a renewal request was unsuccessful.</p>"
        },
        "UpdatedAt": {
          "shape": "TStamp",
          "documentation": "<p>The time at which the renewal summary was last updated.</p>"
        }
      },
      "documentation": "<p>Contains information about the status of ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> for the certificate. This structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>"
    },
    "RequestCertificateRequest": {
      "type": "structure",
      "required": [
        "DomainName"
      ],
      "members": {
        "DomainName": {
          "shape": "DomainNameString",
          "documentation": "<p> Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com. </p> <p> The first domain name you enter cannot exceed 64 octets, including periods. Each subsequent Subject Alternative Name (SAN), however, can be up to 253 octets in length. </p>"
        },
        "ValidationMethod": {
          "shape": "ValidationMethod",
          "documentation": "<p>The method you want to use if you are requesting a public certificate to validate that you own or control domain. You can <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html\">validate with DNS</a> or <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html\">validate with email</a>. We recommend that you use DNS validation. </p>"
        },
        "SubjectAlternativeNames": {
          "shape": "DomainList",
          "documentation": "<p>Additional FQDNs to be included in the Subject Alternative Name extension of the ACM certificate. For example, add the name www.example.net to a certificate for which the <code>DomainName</code> field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM certificate is 100. However, the initial quota is 10 domain names. If you need more than 10 names, you must request a quota increase. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html\">Quotas</a>.</p> <p> The maximum length of a SAN DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples: </p> <ul> <li> <p> <code>(63 octets).(63 octets).(63 octets).(61 octets)</code> is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.</p> </li> <li> <p> <code>(64 octets).(63 octets).(63 octets).(61 octets)</code> is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets.</p> </li> <li> <p> <code>(63 octets).(63 octets).(63 octets).(62 octets)</code> is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.</p> </li> </ul>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>Customer chosen string that can be used to distinguish between calls to <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if you call <code>RequestCertificate</code> multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.</p>"
        },
        "DomainValidationOptions": {
          "shape": "DomainValidationOptionList",
          "documentation": "<p>The domain name that you want ACM to use to send you emails so that you can validate domain ownership.</p>"
        },
        "Options": {
          "shape": "CertificateOptions",
          "documentation": "<p>Currently, you can use this parameter to specify whether to add the certificate to a certificate transparency log. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency\">Opting Out of Certificate Transparency Logging</a>.</p>"
        },
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate. If you do not provide an ARN and you are trying to request a private certificate, ACM will attempt to issue a public certificate. For more information about private CAs, see the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html\">AWS Certificate Manager Private Certificate Authority (PCA)</a> user guide. The ARN must have the following form: </p> <p> <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more resource tags to associate with the certificate.</p>"
        }
      }
    },
    "RequestCertificateResponse": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains the ARN of the issued certificate. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>"
        }
      }
    },
    "ResendValidationEmailRequest": {
      "type": "structure",
      "required": [
        "CertificateArn",
        "Domain",
        "ValidationDomain"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the <a>RequestCertificate</a> action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request. The ARN must be of the form: </p> <p> <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code> </p>"
        },
        "Domain": {
          "shape": "DomainNameString",
          "documentation": "<p>The fully qualified domain name (FQDN) of the certificate that needs to be validated.</p>"
        },
        "ValidationDomain": {
          "shape": "DomainNameString",
          "documentation": "<p>The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the <code>Domain</code> value or a superdomain of the <code>Domain</code> value. For example, if you requested a certificate for <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:</p> <ul> <li> <p>admin@subdomain.example.com</p> </li> <li> <p>administrator@subdomain.example.com</p> </li> <li> <p>hostmaster@subdomain.example.com</p> </li> <li> <p>postmaster@subdomain.example.com</p> </li> <li> <p>webmaster@subdomain.example.com</p> </li> </ul>"
        }
      }
    },
    "ResourceRecord": {
      "type": "structure",
      "required": [
        "Name",
        "Type",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the DNS record to create in your domain. This is supplied by ACM.</p>"
        },
        "Type": {
          "shape": "RecordType",
          "documentation": "<p>The type of DNS record. Currently this can be <code>CNAME</code>.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The value of the CNAME record to add to your DNS database. This is supplied by ACM.</p>"
        }
      },
      "documentation": "<p>Contains a DNS record value that you can use to can use to validate ownership or control of a domain. This is used by the <a>DescribeCertificate</a> action. </p>"
    },
    "RevocationReason": {
      "type": "string",
      "enum": [
        "UNSPECIFIED",
        "KEY_COMPROMISE",
        "CA_COMPROMISE",
        "AFFILIATION_CHANGED",
        "SUPERCEDED",
        "CESSATION_OF_OPERATION",
        "CERTIFICATE_HOLD",
        "REMOVE_FROM_CRL",
        "PRIVILEGE_WITHDRAWN",
        "A_A_COMPROMISE"
      ]
    },
    "String": {
      "type": "string"
    },
    "TStamp": {
      "type": "timestamp"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 1
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*"
    },
    "UpdateCertificateOptionsRequest": {
      "type": "structure",
      "required": [
        "CertificateArn",
        "Options"
      ],
      "members": {
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>ARN of the requested certificate to update. This must be of the form:</p> <p> <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>"
        },
        "Options": {
          "shape": "CertificateOptions",
          "documentation": "<p>Use to update the options for your certificate. Currently, you can specify whether to add your certificate to a transparency log. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. </p>"
        }
      }
    },
    "ValidationEmailList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ValidationMethod": {
      "type": "string",
      "enum": [
        "EMAIL",
        "DNS"
      ]
    }
  },
  "documentation": "<fullname>AWS Certificate Manager</fullname> <p>Welcome to the AWS Certificate Manager (ACM) API documentation.</p> <p>You can use ACM to manage SSL/TLS certificates for your AWS-based websites and applications. For general information about using ACM, see the <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/\"> <i>AWS Certificate Manager User Guide</i> </a>.</p>"
}
]===]))
