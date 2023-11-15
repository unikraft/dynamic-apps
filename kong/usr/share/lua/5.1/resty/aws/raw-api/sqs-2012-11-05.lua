local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2012-11-05",
    "endpointPrefix": "sqs",
    "protocol": "query",
    "serviceAbbreviation": "Amazon SQS",
    "serviceFullName": "Amazon Simple Queue Service",
    "serviceId": "SQS",
    "signatureVersion": "v4",
    "uid": "sqs-2012-11-05",
    "xmlNamespace": "http://queue.amazonaws.com/doc/2012-11-05/"
  },
  "operations": {
    "AddPermission": {
      "name": "AddPermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddPermissionRequest"
      },
      "errors": [
        {
          "shape": "OverLimit"
        }
      ],
      "documentation": "<p>Adds a permission to a queue for a specific <a href=\"https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P\">principal</a>. This allows sharing access to the queue.</p> <p>When you create a queue, you have full control access rights for the queue. Only you, the owner of the queue, can grant or deny permissions to the queue. For more information about these permissions, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue\">Allow Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <ul> <li> <p> <code>AddPermission</code> generates a policy for you. You can use <code> <a>SetQueueAttributes</a> </code> to upload your policy. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html\">Using Custom Policies with the Amazon SQS Access Policy Language</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> <li> <p>An Amazon SQS policy can have a maximum of 7 actions.</p> </li> <li> <p>To remove the ability to change queue permissions, you must deny permission to the <code>AddPermission</code>, <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions in your IAM policy.</p> </li> </ul> </note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;AttributeName.1=first</code> </p> <p> <code>&amp;AttributeName.2=second</code> </p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>"
    },
    "ChangeMessageVisibility": {
      "name": "ChangeMessageVisibility",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ChangeMessageVisibilityRequest"
      },
      "errors": [
        {
          "shape": "MessageNotInflight"
        },
        {
          "shape": "ReceiptHandleIsInvalid"
        }
      ],
      "documentation": "<p>Changes the visibility timeout of a specified message in a queue to a new value. The default visibility timeout for a message is 30 seconds. The minimum is 0 seconds. The maximum is 12 hours. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html\">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>For example, you have a message with a visibility timeout of 5 minutes. After 3 minutes, you call <code>ChangeMessageVisibility</code> with a timeout of 10 minutes. You can continue to call <code>ChangeMessageVisibility</code> to extend the visibility timeout to the maximum allowed time. If you try to extend the visibility timeout beyond the maximum, your request is rejected.</p> <p>An Amazon SQS message has three basic states:</p> <ol> <li> <p>Sent to a queue by a producer.</p> </li> <li> <p>Received from the queue by a consumer.</p> </li> <li> <p>Deleted from the queue.</p> </li> </ol> <p>A message is considered to be <i>stored</i> after it is sent to a queue by a producer, but not yet received from the queue by a consumer (that is, between states 1 and 2). There is no limit to the number of stored messages. A message is considered to be <i>in flight</i> after it is received from a queue by a consumer, but not yet deleted from the queue (that is, between states 2 and 3). There is a limit to the number of inflight messages.</p> <p>Limits that apply to inflight messages are unrelated to the <i>unlimited</i> number of stored messages.</p> <p>For most standard queues (depending on queue traffic and message backlog), there can be a maximum of approximately 120,000 inflight messages (received from a queue by a consumer, but not yet deleted from the queue). If you reach this limit, Amazon SQS returns the <code>OverLimit</code> error message. To avoid reaching the limit, you should delete messages from the queue after they're processed. You can also increase the number of queues you use to process your messages. To request a limit increase, <a href=\"https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-sqs\">file a support request</a>.</p> <p>For FIFO queues, there can be a maximum of 20,000 inflight messages (received from a queue by a consumer, but not yet deleted from the queue). If you reach this limit, Amazon SQS returns no error messages.</p> <important> <p>If you attempt to set the <code>VisibilityTimeout</code> to a value greater than the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't automatically recalculate and increase the timeout to the maximum remaining time.</p> <p>Unlike with a queue, when you change the visibility timeout for a specific message the timeout value is applied immediately but isn't saved in memory for that message. If you don't delete a message after it is received, the visibility timeout for the message reverts to the original timeout value (not to the value you set using the <code>ChangeMessageVisibility</code> action) the next time the message is received.</p> </important>"
    },
    "ChangeMessageVisibilityBatch": {
      "name": "ChangeMessageVisibilityBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ChangeMessageVisibilityBatchRequest"
      },
      "output": {
        "shape": "ChangeMessageVisibilityBatchResult",
        "resultWrapper": "ChangeMessageVisibilityBatchResult"
      },
      "errors": [
        {
          "shape": "TooManyEntriesInBatchRequest"
        },
        {
          "shape": "EmptyBatchRequest"
        },
        {
          "shape": "BatchEntryIdsNotDistinct"
        },
        {
          "shape": "InvalidBatchEntryId"
        }
      ],
      "documentation": "<p>Changes the visibility timeout of multiple messages. This is a batch version of <code> <a>ChangeMessageVisibility</a>.</code> The result of the action on each message is reported individually in the response. You can send up to 10 <code> <a>ChangeMessageVisibility</a> </code> requests with each <code>ChangeMessageVisibilityBatch</code> action.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;AttributeName.1=first</code> </p> <p> <code>&amp;AttributeName.2=second</code> </p>"
    },
    "CreateQueue": {
      "name": "CreateQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateQueueRequest"
      },
      "output": {
        "shape": "CreateQueueResult",
        "resultWrapper": "CreateQueueResult"
      },
      "errors": [
        {
          "shape": "QueueDeletedRecently"
        },
        {
          "shape": "QueueNameExists"
        }
      ],
      "documentation": "<p>Creates a new standard or FIFO queue. You can pass one or more attributes in the request. Keep the following in mind:</p> <ul> <li> <p>If you don't specify the <code>FifoQueue</code> attribute, Amazon SQS creates a standard queue.</p> <note> <p>You can't change the queue type after you create it and you can't convert an existing standard queue into a FIFO queue. You must either create a new FIFO queue for your application or delete your existing standard queue and recreate it as a FIFO queue. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving\">Moving From a Standard Queue to a FIFO Queue</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> </note> </li> <li> <p>If you don't provide a value for an attribute, the queue is created with the default value for the attribute.</p> </li> <li> <p>If you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.</p> </li> </ul> <p>To successfully create a new queue, you must provide a queue name that adheres to the <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html\">limits related to queues</a> and is unique within the scope of your queues.</p> <note> <p>After you create a queue, you must wait at least one second after the queue is created to be able to use the queue.</p> </note> <p>To get the queue URL, use the <code> <a>GetQueueUrl</a> </code> action. <code> <a>GetQueueUrl</a> </code> requires only the <code>QueueName</code> parameter. be aware of existing queue names:</p> <ul> <li> <p>If you provide the name of an existing queue along with the exact names and values of all the queue's attributes, <code>CreateQueue</code> returns the queue URL for the existing queue.</p> </li> <li> <p>If the queue name, attribute names, or attribute values don't match an existing queue, <code>CreateQueue</code> returns an error.</p> </li> </ul> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;AttributeName.1=first</code> </p> <p> <code>&amp;AttributeName.2=second</code> </p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>"
    },
    "DeleteMessage": {
      "name": "DeleteMessage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMessageRequest"
      },
      "errors": [
        {
          "shape": "InvalidIdFormat"
        },
        {
          "shape": "ReceiptHandleIsInvalid"
        }
      ],
      "documentation": "<p>Deletes the specified message from the specified queue. To select the message to delete, use the <code>ReceiptHandle</code> of the message (<i>not</i> the <code>MessageId</code> which you receive when you send the message). Amazon SQS can delete a message from a queue even if a visibility timeout setting causes the message to be locked by another consumer. Amazon SQS automatically deletes messages left in a queue longer than the retention period configured for the queue. </p> <note> <p>The <code>ReceiptHandle</code> is associated with a <i>specific instance</i> of receiving a message. If you receive a message more than once, the <code>ReceiptHandle</code> is different each time you receive a message. When you use the <code>DeleteMessage</code> action, you must provide the most recently received <code>ReceiptHandle</code> for the message (otherwise, the request succeeds, but the message might not be deleted).</p> <p>For standard queues, it is possible to receive a message even after you delete it. This might happen on rare occasions if one of the servers which stores a copy of the message is unavailable when you send the request to delete the message. The copy remains on the server and might be returned to you during a subsequent receive request. You should ensure that your application is idempotent, so that receiving a message more than once does not cause issues.</p> </note>"
    },
    "DeleteMessageBatch": {
      "name": "DeleteMessageBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMessageBatchRequest"
      },
      "output": {
        "shape": "DeleteMessageBatchResult",
        "resultWrapper": "DeleteMessageBatchResult"
      },
      "errors": [
        {
          "shape": "TooManyEntriesInBatchRequest"
        },
        {
          "shape": "EmptyBatchRequest"
        },
        {
          "shape": "BatchEntryIdsNotDistinct"
        },
        {
          "shape": "InvalidBatchEntryId"
        }
      ],
      "documentation": "<p>Deletes up to ten messages from the specified queue. This is a batch version of <code> <a>DeleteMessage</a>.</code> The result of the action on each message is reported individually in the response.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;AttributeName.1=first</code> </p> <p> <code>&amp;AttributeName.2=second</code> </p>"
    },
    "DeleteQueue": {
      "name": "DeleteQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteQueueRequest"
      },
      "documentation": "<p>Deletes the queue specified by the <code>QueueUrl</code>, regardless of the queue's contents.</p> <important> <p>Be careful with the <code>DeleteQueue</code> action: When you delete a queue, any messages in the queue are no longer available. </p> </important> <p>When you delete a queue, the deletion process takes up to 60 seconds. Requests you send involving that queue during the 60 seconds might succeed. For example, a <code> <a>SendMessage</a> </code> request might succeed, but after 60 seconds the queue and the message you sent no longer exist.</p> <p>When you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>"
    },
    "GetQueueAttributes": {
      "name": "GetQueueAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetQueueAttributesRequest"
      },
      "output": {
        "shape": "GetQueueAttributesResult",
        "resultWrapper": "GetQueueAttributesResult"
      },
      "errors": [
        {
          "shape": "InvalidAttributeName"
        }
      ],
      "documentation": "<p>Gets attributes for the specified queue.</p> <note> <p>To determine whether a queue is <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html\">FIFO</a>, you can check whether <code>QueueName</code> ends with the <code>.fifo</code> suffix.</p> </note>"
    },
    "GetQueueUrl": {
      "name": "GetQueueUrl",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetQueueUrlRequest"
      },
      "output": {
        "shape": "GetQueueUrlResult",
        "resultWrapper": "GetQueueUrlResult"
      },
      "errors": [
        {
          "shape": "QueueDoesNotExist"
        }
      ],
      "documentation": "<p>Returns the URL of an existing Amazon SQS queue.</p> <p>To access a queue that belongs to another AWS account, use the <code>QueueOwnerAWSAccountId</code> parameter to specify the account ID of the queue's owner. The queue's owner must grant you permission to access the queue. For more information about shared queue access, see <code> <a>AddPermission</a> </code> or see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue\">Allow Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p>"
    },
    "ListDeadLetterSourceQueues": {
      "name": "ListDeadLetterSourceQueues",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDeadLetterSourceQueuesRequest"
      },
      "output": {
        "shape": "ListDeadLetterSourceQueuesResult",
        "resultWrapper": "ListDeadLetterSourceQueuesResult"
      },
      "errors": [
        {
          "shape": "QueueDoesNotExist"
        }
      ],
      "documentation": "<p>Returns a list of your queues that have the <code>RedrivePolicy</code> queue attribute configured with a dead-letter queue.</p> <p> The <code>ListDeadLetterSourceQueues</code> methods supports pagination. Set parameter <code>MaxResults</code> in the request to specify the maximum number of results to be returned in the response. If you do not set <code>MaxResults</code>, the response includes a maximum of 1,000 results. If you set <code>MaxResults</code> and there are additional results to display, the response includes a value for <code>NextToken</code>. Use <code>NextToken</code> as a parameter in your next request to <code>ListDeadLetterSourceQueues</code> to receive the next page of results. </p> <p>For more information about using dead-letter queues, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html\">Using Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
    },
    "ListQueueTags": {
      "name": "ListQueueTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListQueueTagsRequest"
      },
      "output": {
        "shape": "ListQueueTagsResult",
        "resultWrapper": "ListQueueTagsResult"
      },
      "documentation": "<p>List all cost allocation tags added to the specified Amazon SQS queue. For an overview, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html\">Tagging Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>"
    },
    "ListQueues": {
      "name": "ListQueues",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListQueuesRequest"
      },
      "output": {
        "shape": "ListQueuesResult",
        "resultWrapper": "ListQueuesResult"
      },
      "documentation": "<p>Returns a list of your queues in the current region. The response includes a maximum of 1,000 results. If you specify a value for the optional <code>QueueNamePrefix</code> parameter, only queues with a name that begins with the specified value are returned.</p> <p> The <code>listQueues</code> methods supports pagination. Set parameter <code>MaxResults</code> in the request to specify the maximum number of results to be returned in the response. If you do not set <code>MaxResults</code>, the response includes a maximum of 1,000 results. If you set <code>MaxResults</code> and there are additional results to display, the response includes a value for <code>NextToken</code>. Use <code>NextToken</code> as a parameter in your next request to <code>listQueues</code> to receive the next page of results. </p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>"
    },
    "PurgeQueue": {
      "name": "PurgeQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PurgeQueueRequest"
      },
      "errors": [
        {
          "shape": "QueueDoesNotExist"
        },
        {
          "shape": "PurgeQueueInProgress"
        }
      ],
      "documentation": "<p>Deletes the messages in a queue specified by the <code>QueueURL</code> parameter.</p> <important> <p>When you use the <code>PurgeQueue</code> action, you can't retrieve any messages deleted from a queue.</p> <p>The message deletion process takes up to 60 seconds. We recommend waiting for 60 seconds regardless of your queue's size. </p> </important> <p>Messages sent to the queue <i>before</i> you call <code>PurgeQueue</code> might be received but are deleted within the next minute.</p> <p>Messages sent to the queue <i>after</i> you call <code>PurgeQueue</code> might be deleted while the queue is being purged.</p>"
    },
    "ReceiveMessage": {
      "name": "ReceiveMessage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ReceiveMessageRequest"
      },
      "output": {
        "shape": "ReceiveMessageResult",
        "resultWrapper": "ReceiveMessageResult"
      },
      "errors": [
        {
          "shape": "OverLimit"
        }
      ],
      "documentation": "<p>Retrieves one or more messages (up to 10), from the specified queue. Using the <code>WaitTimeSeconds</code> parameter enables long-poll support. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html\">Amazon SQS Long Polling</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> <p>Short poll is the default behavior where a weighted random set of machines is sampled on a <code>ReceiveMessage</code> call. Thus, only the messages on the sampled machines are returned. If the number of messages in the queue is small (fewer than 1,000), you most likely get fewer messages than you requested per <code>ReceiveMessage</code> call. If the number of messages in the queue is extremely small, you might not receive any messages in a particular <code>ReceiveMessage</code> response. If this happens, repeat the request. </p> <p>For each message returned, the response includes the following:</p> <ul> <li> <p>The message body.</p> </li> <li> <p>An MD5 digest of the message body. For information about MD5, see <a href=\"https://www.ietf.org/rfc/rfc1321.txt\">RFC1321</a>.</p> </li> <li> <p>The <code>MessageId</code> you received when you sent the message to the queue.</p> </li> <li> <p>The receipt handle.</p> </li> <li> <p>The message attributes.</p> </li> <li> <p>An MD5 digest of the message attributes.</p> </li> </ul> <p>The receipt handle is the identifier you must provide when deleting the message. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html\">Queue and Message Identifiers</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>You can provide the <code>VisibilityTimeout</code> parameter in your request. The parameter is applied to the messages that Amazon SQS returns in the response. If you don't include the parameter, the overall visibility timeout for the queue is used for the returned messages. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html\">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>A message that isn't deleted or a message whose visibility isn't extended before the visibility timeout expires counts as a failed receive. Depending on the configuration of the queue, the message might be sent to the dead-letter queue.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note>"
    },
    "RemovePermission": {
      "name": "RemovePermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemovePermissionRequest"
      },
      "documentation": "<p>Revokes any permissions in the queue policy that matches the specified <code>Label</code> parameter.</p> <note> <ul> <li> <p>Only the owner of a queue can remove permissions from it.</p> </li> <li> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> <li> <p>To remove the ability to change queue permissions, you must deny permission to the <code>AddPermission</code>, <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions in your IAM policy.</p> </li> </ul> </note>"
    },
    "SendMessage": {
      "name": "SendMessage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendMessageRequest"
      },
      "output": {
        "shape": "SendMessageResult",
        "resultWrapper": "SendMessageResult"
      },
      "errors": [
        {
          "shape": "InvalidMessageContents"
        },
        {
          "shape": "UnsupportedOperation"
        }
      ],
      "documentation": "<p>Delivers a message to the specified queue.</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href=\"http://www.w3.org/TR/REC-xml/#charsets\">W3C specification for characters</a>.</p> </important>"
    },
    "SendMessageBatch": {
      "name": "SendMessageBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendMessageBatchRequest"
      },
      "output": {
        "shape": "SendMessageBatchResult",
        "resultWrapper": "SendMessageBatchResult"
      },
      "errors": [
        {
          "shape": "TooManyEntriesInBatchRequest"
        },
        {
          "shape": "EmptyBatchRequest"
        },
        {
          "shape": "BatchEntryIdsNotDistinct"
        },
        {
          "shape": "BatchRequestTooLong"
        },
        {
          "shape": "InvalidBatchEntryId"
        },
        {
          "shape": "UnsupportedOperation"
        }
      ],
      "documentation": "<p>Delivers up to ten messages to the specified queue. This is a batch version of <code> <a>SendMessage</a>.</code> For a FIFO queue, multiple messages within a single batch are enqueued in the order they are sent.</p> <p>The result of sending each message is reported individually in the response. Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> <p>The maximum allowed individual message size and the maximum total payload size (the sum of the individual lengths of all of the batched messages) are both 256 KB (262,144 bytes).</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href=\"http://www.w3.org/TR/REC-xml/#charsets\">W3C specification for characters</a>.</p> </important> <p>If you don't specify the <code>DelaySeconds</code> parameter for an entry, Amazon SQS uses the default value for the queue.</p> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;AttributeName.1=first</code> </p> <p> <code>&amp;AttributeName.2=second</code> </p>"
    },
    "SetQueueAttributes": {
      "name": "SetQueueAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetQueueAttributesRequest"
      },
      "errors": [
        {
          "shape": "InvalidAttributeName"
        }
      ],
      "documentation": "<p>Sets the value of one or more queue attributes. When you change a queue's attributes, the change can take up to 60 seconds for most of the attributes to propagate throughout the Amazon SQS system. Changes made to the <code>MessageRetentionPeriod</code> attribute can take up to 15 minutes.</p> <note> <ul> <li> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </li> <li> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> <li> <p>To remove the ability to change queue permissions, you must deny permission to the <code>AddPermission</code>, <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions in your IAM policy.</p> </li> </ul> </note>"
    },
    "TagQueue": {
      "name": "TagQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagQueueRequest"
      },
      "documentation": "<p>Add cost allocation tags to the specified Amazon SQS queue. For an overview, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html\">Tagging Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>When you use queue tags, keep the following guidelines in mind:</p> <ul> <li> <p>Adding more than 50 tags to a queue isn't recommended.</p> </li> <li> <p>Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.</p> </li> <li> <p>Tags are case-sensitive.</p> </li> <li> <p>A new tag with a key identical to that of an existing tag overwrites the existing tag.</p> </li> </ul> <p>For a full list of tag restrictions, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues\">Limits Related to Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>"
    },
    "UntagQueue": {
      "name": "UntagQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagQueueRequest"
      },
      "documentation": "<p>Remove cost allocation tags from the specified Amazon SQS queue. For an overview, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html\">Tagging Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>"
    }
  },
  "shapes": {
    "AWSAccountIdList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "AWSAccountId"
      },
      "flattened": true
    },
    "ActionNameList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "ActionName"
      },
      "flattened": true
    },
    "AddPermissionRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "Label",
        "AWSAccountIds",
        "Actions"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue to which permissions are added.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "Label": {
          "shape": "String",
          "documentation": "<p>The unique identification of the permission you're setting (for example, <code>AliceSendMessage</code>). Maximum 80 characters. Allowed characters include alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p>"
        },
        "AWSAccountIds": {
          "shape": "AWSAccountIdList",
          "documentation": "<p>The AWS account number of the <a href=\"https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P\">principal</a> who is given permission. The principal must have an AWS account, but does not need to be signed up for Amazon SQS. For information about locating the AWS account identification, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html#sqs-api-request-authentication\">Your AWS Identifiers</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
        },
        "Actions": {
          "shape": "ActionNameList",
          "documentation": "<p>The action the client wants to allow for the specified principal. Valid values: the name of any action or <code>*</code>.</p> <p>For more information about these actions, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-overview-of-managing-access.html\">Overview of Managing Access Permissions to Your Amazon Simple Queue Service Resource</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>Specifying <code>SendMessage</code>, <code>DeleteMessage</code>, or <code>ChangeMessageVisibility</code> for <code>ActionName.n</code> also grants permissions for the corresponding batch versions of those actions: <code>SendMessageBatch</code>, <code>DeleteMessageBatch</code>, and <code>ChangeMessageVisibilityBatch</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "AttributeNameList": {
      "type": "list",
      "member": {
        "shape": "QueueAttributeName",
        "locationName": "AttributeName"
      },
      "flattened": true
    },
    "BatchResultErrorEntry": {
      "type": "structure",
      "required": [
        "Id",
        "SenderFault",
        "Code"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>The <code>Id</code> of an entry in a batch request.</p>"
        },
        "SenderFault": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the error happened due to the caller of the batch API action.</p>"
        },
        "Code": {
          "shape": "String",
          "documentation": "<p>An error code representing why the action failed on this entry.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>A message explaining why the action failed on this entry.</p>"
        }
      },
      "documentation": "<p>Gives a detailed description of the result of an action on each entry in the request.</p>"
    },
    "BatchResultErrorEntryList": {
      "type": "list",
      "member": {
        "shape": "BatchResultErrorEntry",
        "locationName": "BatchResultErrorEntry"
      },
      "flattened": true
    },
    "Binary": {
      "type": "blob"
    },
    "BinaryList": {
      "type": "list",
      "member": {
        "shape": "Binary",
        "locationName": "BinaryListValue"
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BoxedInteger": {
      "type": "integer",
      "box": true
    },
    "ChangeMessageVisibilityBatchRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "Entries"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue whose messages' visibility is changed.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "Entries": {
          "shape": "ChangeMessageVisibilityBatchRequestEntryList",
          "documentation": "<p>A list of receipt handles of the messages for which the visibility timeout must be changed.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ChangeMessageVisibilityBatchRequestEntry": {
      "type": "structure",
      "required": [
        "Id",
        "ReceiptHandle"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>An identifier for this particular receipt handle used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request.</p> <p>This identifier can have up to 80 characters. The following characters are accepted: alphanumeric characters, hyphens(-), and underscores (_).</p> </note>"
        },
        "ReceiptHandle": {
          "shape": "String",
          "documentation": "<p>A receipt handle.</p>"
        },
        "VisibilityTimeout": {
          "shape": "Integer",
          "documentation": "<p>The new value (in seconds) for the message's visibility timeout.</p>"
        }
      },
      "documentation": "<p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=your_receipt_handle</code> </p> <p> <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>"
    },
    "ChangeMessageVisibilityBatchRequestEntryList": {
      "type": "list",
      "member": {
        "shape": "ChangeMessageVisibilityBatchRequestEntry",
        "locationName": "ChangeMessageVisibilityBatchRequestEntry"
      },
      "flattened": true
    },
    "ChangeMessageVisibilityBatchResult": {
      "type": "structure",
      "required": [
        "Successful",
        "Failed"
      ],
      "members": {
        "Successful": {
          "shape": "ChangeMessageVisibilityBatchResultEntryList",
          "documentation": "<p>A list of <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> items.</p>"
        },
        "Failed": {
          "shape": "BatchResultErrorEntryList",
          "documentation": "<p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>"
        }
      },
      "documentation": "<p>For each message in the batch, the response contains a <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>"
    },
    "ChangeMessageVisibilityBatchResultEntry": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>Represents a message whose visibility timeout has been changed successfully.</p>"
        }
      },
      "documentation": "<p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p>"
    },
    "ChangeMessageVisibilityBatchResultEntryList": {
      "type": "list",
      "member": {
        "shape": "ChangeMessageVisibilityBatchResultEntry",
        "locationName": "ChangeMessageVisibilityBatchResultEntry"
      },
      "flattened": true
    },
    "ChangeMessageVisibilityRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "ReceiptHandle",
        "VisibilityTimeout"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue whose message's visibility is changed.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "ReceiptHandle": {
          "shape": "String",
          "documentation": "<p>The receipt handle associated with the message whose visibility timeout is changed. This parameter is returned by the <code> <a>ReceiveMessage</a> </code> action.</p>"
        },
        "VisibilityTimeout": {
          "shape": "Integer",
          "documentation": "<p>The new value for the message's visibility timeout (in seconds). Values range: <code>0</code> to <code>43200</code>. Maximum: 12 hours.</p>"
        }
      }
    },
    "CreateQueueRequest": {
      "type": "structure",
      "required": [
        "QueueName"
      ],
      "members": {
        "QueueName": {
          "shape": "String",
          "documentation": "<p>The name of the new queue. The following limits apply to this name:</p> <ul> <li> <p>A queue name can have up to 80 characters.</p> </li> <li> <p>Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> </li> <li> <p>A FIFO queue name must end with the <code>.fifo</code> suffix.</p> </li> </ul> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "Attributes": {
          "shape": "QueueAttributeMap",
          "documentation": "<p>A map of attributes with their corresponding values.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>CreateQueue</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> – The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 seconds (15 minutes). Default: 0. </p> </li> <li> <p> <code>MaximumMessageSize</code> – The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). Default: 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> – The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer from 60 seconds (1 minute) to 1,209,600 seconds (14 days). Default: 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> – The queue's policy. A valid AWS policy. For more information about policy structure, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html\">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> – The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: An integer from 0 to 20 (seconds). Default: 0. </p> </li> <li> <p> <code>RedrivePolicy</code> – The string that includes the parameters for the dead-letter queue functionality of the source queue as a JSON object. For more information about the redrive policy and dead-letter queues, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html\">Using Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <ul> <li> <p> <code>deadLetterTargetArn</code> – The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon SQS moves messages after the value of <code>maxReceiveCount</code> is exceeded.</p> </li> <li> <p> <code>maxReceiveCount</code> – The number of times a message is delivered to the source queue before being moved to the dead-letter queue. When the <code>ReceiveCount</code> for a message exceeds the <code>maxReceiveCount</code> for a queue, Amazon SQS moves the message to the dead-letter-queue.</p> </li> </ul> <note> <p>The dead-letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead-letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> – The visibility timeout for the queue, in seconds. Valid values: An integer from 0 to 43,200 (12 hours). Default: 30. For more information about the visibility timeout, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html\">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html\">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> – The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms\">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/<i>MyAlias</i> </code>. For more examples, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters\">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> – The length of time, in seconds, for which Amazon SQS can reuse a <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys\">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). Default: 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which might incur charges after Free Tier. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work\">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attributes apply only to <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html\">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> – Designates a queue as FIFO. Valid values: <code>true</code>, <code>false</code>. If you don't specify the <code>FifoQueue</code> attribute, Amazon SQS creates a standard queue. You can provide this attribute only during queue creation. You can't change it for an existing queue. When you set this attribute, you must also provide the <code>MessageGroupId</code> for your messages explicitly.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic\">FIFO Queue Logic</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> <li> <p> <code>ContentBasedDeduplication</code> – Enables content-based deduplication. Valid values: <code>true</code>, <code>false</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing\">Exactly-Once Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul>",
          "locationName": "Attribute"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>Add cost allocation tags to the specified Amazon SQS queue. For an overview, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html\">Tagging Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>When you use queue tags, keep the following guidelines in mind:</p> <ul> <li> <p>Adding more than 50 tags to a queue isn't recommended.</p> </li> <li> <p>Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.</p> </li> <li> <p>Tags are case-sensitive.</p> </li> <li> <p>A new tag with a key identical to that of an existing tag overwrites the existing tag.</p> </li> </ul> <p>For a full list of tag restrictions, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues\">Limits Related to Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>To be able to tag a queue on creation, you must have the <code>sqs:CreateQueue</code> and <code>sqs:TagQueue</code> permissions.</p> <p>Cross-account permissions don't apply to this action. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name\">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>",
          "locationName": "Tag"
        }
      },
      "documentation": "<p/>"
    },
    "CreateQueueResult": {
      "type": "structure",
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the created Amazon SQS queue.</p>"
        }
      },
      "documentation": "<p>Returns the <code>QueueUrl</code> attribute of the created queue.</p>"
    },
    "DeleteMessageBatchRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "Entries"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "Entries": {
          "shape": "DeleteMessageBatchRequestEntryList",
          "documentation": "<p>A list of receipt handles for the messages to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteMessageBatchRequestEntry": {
      "type": "structure",
      "required": [
        "Id",
        "ReceiptHandle"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>An identifier for this particular receipt handle. This is used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request.</p> <p>This identifier can have up to 80 characters. The following characters are accepted: alphanumeric characters, hyphens(-), and underscores (_).</p> </note>"
        },
        "ReceiptHandle": {
          "shape": "String",
          "documentation": "<p>A receipt handle.</p>"
        }
      },
      "documentation": "<p>Encloses a receipt handle and an identifier for it.</p>"
    },
    "DeleteMessageBatchRequestEntryList": {
      "type": "list",
      "member": {
        "shape": "DeleteMessageBatchRequestEntry",
        "locationName": "DeleteMessageBatchRequestEntry"
      },
      "flattened": true
    },
    "DeleteMessageBatchResult": {
      "type": "structure",
      "required": [
        "Successful",
        "Failed"
      ],
      "members": {
        "Successful": {
          "shape": "DeleteMessageBatchResultEntryList",
          "documentation": "<p>A list of <code> <a>DeleteMessageBatchResultEntry</a> </code> items.</p>"
        },
        "Failed": {
          "shape": "BatchResultErrorEntryList",
          "documentation": "<p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>"
        }
      },
      "documentation": "<p>For each message in the batch, the response contains a <code> <a>DeleteMessageBatchResultEntry</a> </code> tag if the message is deleted or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message can't be deleted.</p>"
    },
    "DeleteMessageBatchResultEntry": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>Represents a successfully deleted message.</p>"
        }
      },
      "documentation": "<p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a>.</code> </p>"
    },
    "DeleteMessageBatchResultEntryList": {
      "type": "list",
      "member": {
        "shape": "DeleteMessageBatchResultEntry",
        "locationName": "DeleteMessageBatchResultEntry"
      },
      "flattened": true
    },
    "DeleteMessageRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "ReceiptHandle"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "ReceiptHandle": {
          "shape": "String",
          "documentation": "<p>The receipt handle associated with the message to delete.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteQueueRequest": {
      "type": "structure",
      "required": [
        "QueueUrl"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue to delete.</p> <p>Queue URLs and names are case-sensitive.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetQueueAttributesRequest": {
      "type": "structure",
      "required": [
        "QueueUrl"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue whose attribute information is retrieved.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "AttributeNames": {
          "shape": "AttributeNameList",
          "documentation": "<p>A list of attributes for which to retrieve information.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note> <p>The following attributes are supported:</p> <important> <p>The <code>ApproximateNumberOfMessagesDelayed</code>, <code>ApproximateNumberOfMessagesNotVisible</code>, and <code>ApproximateNumberOfMessagesVisible</code> metrics may not achieve consistency until at least 1 minute after the producers stop sending messages. This period is required for the queue metadata to reach eventual consistency. </p> </important> <ul> <li> <p> <code>All</code> – Returns all values. </p> </li> <li> <p> <code>ApproximateNumberOfMessages</code> – Returns the approximate number of messages available for retrieval from the queue.</p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> – Returns the approximate number of messages in the queue that are delayed and not available for reading immediately. This can happen when the queue is configured as a delay queue or when a message has been sent with a delay parameter.</p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> – Returns the approximate number of messages that are in flight. Messages are considered to be <i>in flight</i> if they have been sent to a client but have not yet been deleted or have not yet reached the end of their visibility window. </p> </li> <li> <p> <code>CreatedTimestamp</code> – Returns the time when the queue was created in seconds (<a href=\"http://en.wikipedia.org/wiki/Unix_time\">epoch time</a>).</p> </li> <li> <p> <code>DelaySeconds</code> – Returns the default delay on the queue in seconds.</p> </li> <li> <p> <code>LastModifiedTimestamp</code> – Returns the time when the queue was last changed in seconds (<a href=\"http://en.wikipedia.org/wiki/Unix_time\">epoch time</a>).</p> </li> <li> <p> <code>MaximumMessageSize</code> – Returns the limit of how many bytes a message can contain before Amazon SQS rejects it.</p> </li> <li> <p> <code>MessageRetentionPeriod</code> – Returns the length of time, in seconds, for which Amazon SQS retains a message.</p> </li> <li> <p> <code>Policy</code> – Returns the policy of the queue.</p> </li> <li> <p> <code>QueueArn</code> – Returns the Amazon resource name (ARN) of the queue.</p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> – Returns the length of time, in seconds, for which the <code>ReceiveMessage</code> action waits for a message to arrive. </p> </li> <li> <p> <code>RedrivePolicy</code> – The string that includes the parameters for the dead-letter queue functionality of the source queue as a JSON object. For more information about the redrive policy and dead-letter queues, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html\">Using Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <ul> <li> <p> <code>deadLetterTargetArn</code> – The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon SQS moves messages after the value of <code>maxReceiveCount</code> is exceeded.</p> </li> <li> <p> <code>maxReceiveCount</code> – The number of times a message is delivered to the source queue before being moved to the dead-letter queue. When the <code>ReceiveCount</code> for a message exceeds the <code>maxReceiveCount</code> for a queue, Amazon SQS moves the message to the dead-letter-queue.</p> </li> </ul> </li> <li> <p> <code>VisibilityTimeout</code> – Returns the visibility timeout for the queue. For more information about the visibility timeout, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html\">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> </li> </ul> <p>The following attributes apply only to <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html\">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> – Returns the ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms\">Key Terms</a>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> – Returns the length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work\">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attributes apply only to <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html\">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> – Returns whether the queue is FIFO. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic\">FIFO Queue Logic</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>To determine whether a queue is <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html\">FIFO</a>, you can check whether <code>QueueName</code> ends with the <code>.fifo</code> suffix.</p> </note> </li> <li> <p> <code>ContentBasedDeduplication</code> – Returns whether content-based deduplication is enabled for the queue. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing\">Exactly-Once Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "GetQueueAttributesResult": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "QueueAttributeMap",
          "documentation": "<p>A map of attributes to their respective values.</p>",
          "locationName": "Attribute"
        }
      },
      "documentation": "<p>A list of returned queue attributes.</p>"
    },
    "GetQueueUrlRequest": {
      "type": "structure",
      "required": [
        "QueueName"
      ],
      "members": {
        "QueueName": {
          "shape": "String",
          "documentation": "<p>The name of the queue whose URL must be fetched. Maximum 80 characters. Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "QueueOwnerAWSAccountId": {
          "shape": "String",
          "documentation": "<p>The AWS account ID of the account that created the queue.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetQueueUrlResult": {
      "type": "structure",
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the queue.</p>"
        }
      },
      "documentation": "<p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-api-responses.html\">Interpreting Responses</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
    },
    "Integer": {
      "type": "integer"
    },
    "ListDeadLetterSourceQueuesRequest": {
      "type": "structure",
      "required": [
        "QueueUrl"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of a dead-letter queue.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>Pagination token to request the next set of results.</p>"
        },
        "MaxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>Maximum number of results to include in the response. Value range is 1 to 1000. You must set <code>MaxResults</code> to receive a value for <code>NextToken</code> in the response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListDeadLetterSourceQueuesResult": {
      "type": "structure",
      "required": [
        "queueUrls"
      ],
      "members": {
        "queueUrls": {
          "shape": "QueueUrlList",
          "documentation": "<p>A list of source queue URLs that have the <code>RedrivePolicy</code> queue attribute configured with a dead-letter queue.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>Pagination token to include in the next request. Token value is <code>null</code> if there are no additional results to request, or if you did not set <code>MaxResults</code> in the request.</p>"
        }
      },
      "documentation": "<p>A list of your dead letter source queues.</p>"
    },
    "ListQueueTagsRequest": {
      "type": "structure",
      "required": [
        "QueueUrl"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the queue.</p>"
        }
      }
    },
    "ListQueueTagsResult": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified queue.</p>",
          "locationName": "Tag"
        }
      }
    },
    "ListQueuesRequest": {
      "type": "structure",
      "members": {
        "QueueNamePrefix": {
          "shape": "String",
          "documentation": "<p>A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>Pagination token to request the next set of results.</p>"
        },
        "MaxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>Maximum number of results to include in the response. Value range is 1 to 1000. You must set <code>MaxResults</code> to receive a value for <code>NextToken</code> in the response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListQueuesResult": {
      "type": "structure",
      "members": {
        "QueueUrls": {
          "shape": "QueueUrlList",
          "documentation": "<p>A list of queue URLs, up to 1,000 entries, or the value of MaxResults that you sent in the request.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>Pagination token to include in the next request. Token value is <code>null</code> if there are no additional results to request, or if you did not set <code>MaxResults</code> in the request.</p>"
        }
      },
      "documentation": "<p>A list of your queues.</p>"
    },
    "Message": {
      "type": "structure",
      "members": {
        "MessageId": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the message. A <code>MessageId</code>is considered unique across all AWS accounts for an extended period of time.</p>"
        },
        "ReceiptHandle": {
          "shape": "String",
          "documentation": "<p>An identifier associated with the act of receiving the message. A new receipt handle is returned every time you receive a message. When deleting a message, you provide the last received receipt handle to delete the message.</p>"
        },
        "MD5OfBody": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message body string.</p>"
        },
        "Body": {
          "shape": "String",
          "documentation": "<p>The message's contents (not URL-encoded).</p>"
        },
        "Attributes": {
          "shape": "MessageSystemAttributeMap",
          "documentation": "<p>A map of the attributes requested in <code> <a>ReceiveMessage</a> </code> to their respective values. Supported attributes:</p> <ul> <li> <p> <code>ApproximateReceiveCount</code> </p> </li> <li> <p> <code>ApproximateFirstReceiveTimestamp</code> </p> </li> <li> <p> <code>MessageDeduplicationId</code> </p> </li> <li> <p> <code>MessageGroupId</code> </p> </li> <li> <p> <code>SenderId</code> </p> </li> <li> <p> <code>SentTimestamp</code> </p> </li> <li> <p> <code>SequenceNumber</code> </p> </li> </ul> <p> <code>ApproximateFirstReceiveTimestamp</code> and <code>SentTimestamp</code> are each returned as an integer representing the <a href=\"http://en.wikipedia.org/wiki/Unix_time\">epoch time</a> in milliseconds.</p>",
          "locationName": "Attribute"
        },
        "MD5OfMessageAttributes": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href=\"https://www.ietf.org/rfc/rfc1321.txt\">RFC1321</a>.</p>"
        },
        "MessageAttributes": {
          "shape": "MessageBodyAttributeMap",
          "documentation": "<p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes\">Amazon SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>",
          "locationName": "MessageAttribute"
        }
      },
      "documentation": "<p>An Amazon SQS message.</p>"
    },
    "MessageAttributeName": {
      "type": "string"
    },
    "MessageAttributeNameList": {
      "type": "list",
      "member": {
        "shape": "MessageAttributeName",
        "locationName": "MessageAttributeName"
      },
      "flattened": true
    },
    "MessageAttributeValue": {
      "type": "structure",
      "required": [
        "DataType"
      ],
      "members": {
        "StringValue": {
          "shape": "String",
          "documentation": "<p>Strings are Unicode with UTF-8 binary encoding. For a list of code values, see <a href=\"http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters\">ASCII Printable Characters</a>.</p>"
        },
        "BinaryValue": {
          "shape": "Binary",
          "documentation": "<p>Binary type attributes can store any binary data, such as compressed data, encrypted data, or images.</p>"
        },
        "StringListValues": {
          "shape": "StringList",
          "documentation": "<p>Not implemented. Reserved for future use.</p>",
          "flattened": true,
          "locationName": "StringListValue"
        },
        "BinaryListValues": {
          "shape": "BinaryList",
          "documentation": "<p>Not implemented. Reserved for future use.</p>",
          "flattened": true,
          "locationName": "BinaryListValue"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>Amazon SQS supports the following logical data types: <code>String</code>, <code>Number</code>, and <code>Binary</code>. For the <code>Number</code> data type, you must use <code>StringValue</code>.</p> <p>You can also append custom labels. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes\">Amazon SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>"
    },
    "MessageBodyAttributeMap": {
      "type": "map",
      "key": {
        "shape": "String",
        "locationName": "Name"
      },
      "value": {
        "shape": "MessageAttributeValue",
        "locationName": "Value"
      },
      "flattened": true
    },
    "MessageBodySystemAttributeMap": {
      "type": "map",
      "key": {
        "shape": "MessageSystemAttributeNameForSends",
        "locationName": "Name"
      },
      "value": {
        "shape": "MessageSystemAttributeValue",
        "locationName": "Value"
      },
      "flattened": true
    },
    "MessageList": {
      "type": "list",
      "member": {
        "shape": "Message",
        "locationName": "Message"
      },
      "flattened": true
    },
    "MessageSystemAttributeMap": {
      "type": "map",
      "key": {
        "shape": "MessageSystemAttributeName",
        "locationName": "Name"
      },
      "value": {
        "shape": "String",
        "locationName": "Value"
      },
      "flattened": true,
      "locationName": "Attribute"
    },
    "MessageSystemAttributeName": {
      "type": "string",
      "enum": [
        "SenderId",
        "SentTimestamp",
        "ApproximateReceiveCount",
        "ApproximateFirstReceiveTimestamp",
        "SequenceNumber",
        "MessageDeduplicationId",
        "MessageGroupId",
        "AWSTraceHeader"
      ]
    },
    "MessageSystemAttributeNameForSends": {
      "type": "string",
      "enum": [
        "AWSTraceHeader"
      ]
    },
    "MessageSystemAttributeValue": {
      "type": "structure",
      "required": [
        "DataType"
      ],
      "members": {
        "StringValue": {
          "shape": "String",
          "documentation": "<p>Strings are Unicode with UTF-8 binary encoding. For a list of code values, see <a href=\"http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters\">ASCII Printable Characters</a>.</p>"
        },
        "BinaryValue": {
          "shape": "Binary",
          "documentation": "<p>Binary type attributes can store any binary data, such as compressed data, encrypted data, or images.</p>"
        },
        "StringListValues": {
          "shape": "StringList",
          "documentation": "<p>Not implemented. Reserved for future use.</p>",
          "flattened": true,
          "locationName": "StringListValue"
        },
        "BinaryListValues": {
          "shape": "BinaryList",
          "documentation": "<p>Not implemented. Reserved for future use.</p>",
          "flattened": true,
          "locationName": "BinaryListValue"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>Amazon SQS supports the following logical data types: <code>String</code>, <code>Number</code>, and <code>Binary</code>. For the <code>Number</code> data type, you must use <code>StringValue</code>.</p> <p>You can also append custom labels. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes\">Amazon SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The user-specified message system attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null.</p>"
    },
    "PurgeQueueRequest": {
      "type": "structure",
      "required": [
        "QueueUrl"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the queue from which the <code>PurgeQueue</code> action deletes messages.</p> <p>Queue URLs and names are case-sensitive.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "QueueAttributeMap": {
      "type": "map",
      "key": {
        "shape": "QueueAttributeName",
        "locationName": "Name"
      },
      "value": {
        "shape": "String",
        "locationName": "Value"
      },
      "flattened": true,
      "locationName": "Attribute"
    },
    "QueueAttributeName": {
      "type": "string",
      "enum": [
        "All",
        "Policy",
        "VisibilityTimeout",
        "MaximumMessageSize",
        "MessageRetentionPeriod",
        "ApproximateNumberOfMessages",
        "ApproximateNumberOfMessagesNotVisible",
        "CreatedTimestamp",
        "LastModifiedTimestamp",
        "QueueArn",
        "ApproximateNumberOfMessagesDelayed",
        "DelaySeconds",
        "ReceiveMessageWaitTimeSeconds",
        "RedrivePolicy",
        "FifoQueue",
        "ContentBasedDeduplication",
        "KmsMasterKeyId",
        "KmsDataKeyReusePeriodSeconds"
      ]
    },
    "QueueUrlList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "QueueUrl"
      },
      "flattened": true
    },
    "ReceiveMessageRequest": {
      "type": "structure",
      "required": [
        "QueueUrl"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue from which messages are received.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "AttributeNames": {
          "shape": "AttributeNameList",
          "documentation": "<p>A list of attributes that need to be returned along with each message. These attributes include:</p> <ul> <li> <p> <code>All</code> – Returns all values.</p> </li> <li> <p> <code>ApproximateFirstReceiveTimestamp</code> – Returns the time the message was first received from the queue (<a href=\"http://en.wikipedia.org/wiki/Unix_time\">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>ApproximateReceiveCount</code> – Returns the number of times a message has been received across all queues but not deleted.</p> </li> <li> <p> <code>AWSTraceHeader</code> – Returns the AWS X-Ray trace header string. </p> </li> <li> <p> <code>SenderId</code> </p> <ul> <li> <p>For an IAM user, returns the IAM user ID, for example <code>ABCDEFGHI1JKLMNOPQ23R</code>.</p> </li> <li> <p>For an IAM role, returns the IAM role ID, for example <code>ABCDE1F2GH3I4JK5LMNOP:i-a123b456</code>.</p> </li> </ul> </li> <li> <p> <code>SentTimestamp</code> – Returns the time the message was sent to the queue (<a href=\"http://en.wikipedia.org/wiki/Unix_time\">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>MessageDeduplicationId</code> – Returns the value provided by the producer that calls the <code> <a>SendMessage</a> </code> action.</p> </li> <li> <p> <code>MessageGroupId</code> – Returns the value provided by the producer that calls the <code> <a>SendMessage</a> </code> action. Messages with the same <code>MessageGroupId</code> are returned in sequence.</p> </li> <li> <p> <code>SequenceNumber</code> – Returns the value provided by Amazon SQS.</p> </li> </ul>"
        },
        "MessageAttributeNames": {
          "shape": "MessageAttributeNameList",
          "documentation": "<p>The name of the message attribute, where <i>N</i> is the index.</p> <ul> <li> <p>The name can contain alphanumeric characters and the underscore (<code>_</code>), hyphen (<code>-</code>), and period (<code>.</code>).</p> </li> <li> <p>The name is case-sensitive and must be unique among all attribute names for the message.</p> </li> <li> <p>The name must not start with AWS-reserved prefixes such as <code>AWS.</code> or <code>Amazon.</code> (or any casing variants).</p> </li> <li> <p>The name must not start or end with a period (<code>.</code>), and it should not have periods in succession (<code>..</code>).</p> </li> <li> <p>The name can be up to 256 characters long.</p> </li> </ul> <p>When using <code>ReceiveMessage</code>, you can send a list of attribute names to receive, or you can return all of the attributes by specifying <code>All</code> or <code>.*</code> in your request. You can also use all message attributes starting with a prefix, for example <code>bar.*</code>.</p>"
        },
        "MaxNumberOfMessages": {
          "shape": "Integer",
          "documentation": "<p>The maximum number of messages to return. Amazon SQS never returns more messages than this value (however, fewer messages might be returned). Valid values: 1 to 10. Default: 1.</p>"
        },
        "VisibilityTimeout": {
          "shape": "Integer",
          "documentation": "<p>The duration (in seconds) that the received messages are hidden from subsequent retrieve requests after being retrieved by a <code>ReceiveMessage</code> request.</p>"
        },
        "WaitTimeSeconds": {
          "shape": "Integer",
          "documentation": "<p>The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. If a message is available, the call returns sooner than <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the call returns successfully with an empty list of messages.</p> <important> <p>To avoid HTTP errors, ensure that the HTTP response timeout for <code>ReceiveMessage</code> requests is longer than the <code>WaitTimeSeconds</code> parameter. For example, with the Java SDK, you can set HTTP transport settings using the <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/nio/netty/NettyNioAsyncHttpClient.html\"> NettyNioAsyncHttpClient</a> for asynchronous clients, or the <a href=\"https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/apache/ApacheHttpClient.html\"> ApacheHttpClient</a> for synchronous clients. </p> </important>"
        },
        "ReceiveRequestAttemptId": {
          "shape": "String",
          "documentation": "<p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of <code>ReceiveMessage</code> calls. If a networking issue occurs after a <code>ReceiveMessage</code> action, and instead of a response you receive a generic error, it is possible to retry the same action with an identical <code>ReceiveRequestAttemptId</code> to retrieve the same set of messages, even if their visibility timeout has not yet expired.</p> <ul> <li> <p>You can use <code>ReceiveRequestAttemptId</code> only for 5 minutes after a <code>ReceiveMessage</code> action.</p> </li> <li> <p>When you set <code>FifoQueue</code>, a caller of the <code>ReceiveMessage</code> action can provide a <code>ReceiveRequestAttemptId</code> explicitly.</p> </li> <li> <p>If a caller of the <code>ReceiveMessage</code> action doesn't provide a <code>ReceiveRequestAttemptId</code>, Amazon SQS generates a <code>ReceiveRequestAttemptId</code>.</p> </li> <li> <p>It is possible to retry the <code>ReceiveMessage</code> action with the same <code>ReceiveRequestAttemptId</code> if none of the messages have been modified (deleted or had their visibility changes).</p> </li> <li> <p>During a visibility timeout, subsequent calls with the same <code>ReceiveRequestAttemptId</code> return the same messages and receipt handles. If a retry occurs within the deduplication interval, it resets the visibility timeout. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html\">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p>If a caller of the <code>ReceiveMessage</code> action still processes messages when the visibility timeout expires and messages become visible, another worker consuming from the same queue can receive the same messages and therefore process duplicates. Also, if a consumer whose message processing time is longer than the visibility timeout tries to delete the processed messages, the action fails with an error.</p> <p>To mitigate this effect, ensure that your application observes a safe threshold before the visibility timeout expires and extend the visibility timeout as necessary.</p> </important> </li> <li> <p>While messages with a particular <code>MessageGroupId</code> are invisible, no more messages belonging to the same <code>MessageGroupId</code> are returned until the visibility timeout expires. You can still receive messages with another <code>MessageGroupId</code> as long as it is also visible.</p> </li> <li> <p>If a caller of <code>ReceiveMessage</code> can't track the <code>ReceiveRequestAttemptId</code>, no retries work until the original visibility timeout expires. As a result, delays might occur but the messages in the queue remain in a strict order.</p> </li> </ul> <p>The maximum length of <code>ReceiveRequestAttemptId</code> is 128 characters. <code>ReceiveRequestAttemptId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!\"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~</code>).</p> <p>For best practices of using <code>ReceiveRequestAttemptId</code>, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-receiverequestattemptid-request-parameter.html\">Using the ReceiveRequestAttemptId Request Parameter</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ReceiveMessageResult": {
      "type": "structure",
      "members": {
        "Messages": {
          "shape": "MessageList",
          "documentation": "<p>A list of messages.</p>"
        }
      },
      "documentation": "<p>A list of received messages.</p>"
    },
    "RemovePermissionRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "Label"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue from which permissions are removed.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "Label": {
          "shape": "String",
          "documentation": "<p>The identification of the permission to remove. This is the label added using the <code> <a>AddPermission</a> </code> action.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "SendMessageBatchRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "Entries"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue to which batched messages are sent.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "Entries": {
          "shape": "SendMessageBatchRequestEntryList",
          "documentation": "<p>A list of <code> <a>SendMessageBatchRequestEntry</a> </code> items.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "SendMessageBatchRequestEntry": {
      "type": "structure",
      "required": [
        "Id",
        "MessageBody"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>An identifier for a message in this batch used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request.</p> <p>This identifier can have up to 80 characters. The following characters are accepted: alphanumeric characters, hyphens(-), and underscores (_).</p> </note>"
        },
        "MessageBody": {
          "shape": "String",
          "documentation": "<p>The body of the message.</p>"
        },
        "DelaySeconds": {
          "shape": "Integer",
          "documentation": "<p>The length of time, in seconds, for which a specific message is delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue is applied. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>"
        },
        "MessageAttributes": {
          "shape": "MessageBodyAttributeMap",
          "documentation": "<p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes\">Amazon SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>",
          "locationName": "MessageAttribute"
        },
        "MessageSystemAttributes": {
          "shape": "MessageBodySystemAttributeMap",
          "documentation": "<p>The message system attribute to send Each message system attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>.</p> <important> <ul> <li> <p>Currently, the only supported message system attribute is <code>AWSTraceHeader</code>. Its type must be <code>String</code> and its value must be a correctly formatted AWS X-Ray trace header string.</p> </li> <li> <p>The size of a message system attribute doesn't count towards the total size of a message.</p> </li> </ul> </important>",
          "locationName": "MessageSystemAttribute"
        },
        "MessageDeduplicationId": {
          "shape": "String",
          "documentation": "<p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, subsequent messages with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing\"> Exactly-Once Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the consumer of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> <p>Amazon SQS continues to keep track of the message deduplication ID even after the message is received and deleted.</p> </note> <p>The length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!\"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html\">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
        },
        "MessageGroupId": {
          "shape": "String",
          "documentation": "<p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple consumers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values: alphanumeric characters and punctuation <code>(!\"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html\">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>"
        }
      },
      "documentation": "<p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>"
    },
    "SendMessageBatchRequestEntryList": {
      "type": "list",
      "member": {
        "shape": "SendMessageBatchRequestEntry",
        "locationName": "SendMessageBatchRequestEntry"
      },
      "flattened": true
    },
    "SendMessageBatchResult": {
      "type": "structure",
      "required": [
        "Successful",
        "Failed"
      ],
      "members": {
        "Successful": {
          "shape": "SendMessageBatchResultEntryList",
          "documentation": "<p>A list of <code> <a>SendMessageBatchResultEntry</a> </code> items.</p>"
        },
        "Failed": {
          "shape": "BatchResultErrorEntryList",
          "documentation": "<p>A list of <code> <a>BatchResultErrorEntry</a> </code> items with error details about each message that can't be enqueued.</p>"
        }
      },
      "documentation": "<p>For each message in the batch, the response contains a <code> <a>SendMessageBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>"
    },
    "SendMessageBatchResultEntry": {
      "type": "structure",
      "required": [
        "Id",
        "MessageId",
        "MD5OfMessageBody"
      ],
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>An identifier for the message in this batch.</p>"
        },
        "MessageId": {
          "shape": "String",
          "documentation": "<p>An identifier for the message.</p>"
        },
        "MD5OfMessageBody": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href=\"https://www.ietf.org/rfc/rfc1321.txt\">RFC1321</a>.</p>"
        },
        "MD5OfMessageAttributes": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href=\"https://www.ietf.org/rfc/rfc1321.txt\">RFC1321</a>.</p>"
        },
        "MD5OfMessageSystemAttributes": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message system attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href=\"https://www.ietf.org/rfc/rfc1321.txt\">RFC1321</a>.</p>"
        },
        "SequenceNumber": {
          "shape": "String",
          "documentation": "<p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. As <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>"
        }
      },
      "documentation": "<p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a>.</code> </p>"
    },
    "SendMessageBatchResultEntryList": {
      "type": "list",
      "member": {
        "shape": "SendMessageBatchResultEntry",
        "locationName": "SendMessageBatchResultEntry"
      },
      "flattened": true
    },
    "SendMessageRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "MessageBody"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue to which a message is sent.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "MessageBody": {
          "shape": "String",
          "documentation": "<p>The message to send. The minimum size is one character. The maximum size is 256 KB.</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href=\"http://www.w3.org/TR/REC-xml/#charsets\">W3C specification for characters</a>.</p> </important>"
        },
        "DelaySeconds": {
          "shape": "Integer",
          "documentation": "<p> The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>"
        },
        "MessageAttributes": {
          "shape": "MessageBodyAttributeMap",
          "documentation": "<p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes\">Amazon SQS Message Attributes</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>",
          "locationName": "MessageAttribute"
        },
        "MessageSystemAttributes": {
          "shape": "MessageBodySystemAttributeMap",
          "documentation": "<p>The message system attribute to send. Each message system attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>.</p> <important> <ul> <li> <p>Currently, the only supported message system attribute is <code>AWSTraceHeader</code>. Its type must be <code>String</code> and its value must be a correctly formatted AWS X-Ray trace header string.</p> </li> <li> <p>The size of a message system attribute doesn't count towards the total size of a message.</p> </li> </ul> </important>",
          "locationName": "MessageSystemAttribute"
        },
        "MessageDeduplicationId": {
          "shape": "String",
          "documentation": "<p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of sent messages. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, any messages sent with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing\"> Exactly-Once Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the consumer of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> <p>Amazon SQS continues to keep track of the message deduplication ID even after the message is received and deleted.</p> </note> <p>The maximum length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!\"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html\">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>"
        },
        "MessageGroupId": {
          "shape": "String",
          "documentation": "<p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple consumers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values: alphanumeric characters and punctuation <code>(!\"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html\">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>"
        }
      },
      "documentation": "<p/>"
    },
    "SendMessageResult": {
      "type": "structure",
      "members": {
        "MD5OfMessageBody": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href=\"https://www.ietf.org/rfc/rfc1321.txt\">RFC1321</a>.</p>"
        },
        "MD5OfMessageAttributes": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href=\"https://www.ietf.org/rfc/rfc1321.txt\">RFC1321</a>.</p>"
        },
        "MD5OfMessageSystemAttributes": {
          "shape": "String",
          "documentation": "<p>An MD5 digest of the non-URL-encoded message system attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest.</p>"
        },
        "MessageId": {
          "shape": "String",
          "documentation": "<p>An attribute containing the <code>MessageId</code> of the message sent to the queue. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html\">Queue and Message Identifiers</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p>"
        },
        "SequenceNumber": {
          "shape": "String",
          "documentation": "<p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>"
        }
      },
      "documentation": "<p>The <code>MD5OfMessageBody</code> and <code>MessageId</code> elements.</p>"
    },
    "SetQueueAttributesRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "Attributes"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the Amazon SQS queue whose attributes are set.</p> <p>Queue URLs and names are case-sensitive.</p>"
        },
        "Attributes": {
          "shape": "QueueAttributeMap",
          "documentation": "<p>A map of attributes to set.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>SetQueueAttributes</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> – The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 (15 minutes). Default: 0. </p> </li> <li> <p> <code>MaximumMessageSize</code> – The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). Default: 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> – The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer representing seconds, from 60 (1 minute) to 1,209,600 (14 days). Default: 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> – The queue's policy. A valid AWS policy. For more information about policy structure, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html\">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> – The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: An integer from 0 to 20 (seconds). Default: 0. </p> </li> <li> <p> <code>RedrivePolicy</code> – The string that includes the parameters for the dead-letter queue functionality of the source queue as a JSON object. For more information about the redrive policy and dead-letter queues, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html\">Using Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <ul> <li> <p> <code>deadLetterTargetArn</code> – The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon SQS moves messages after the value of <code>maxReceiveCount</code> is exceeded.</p> </li> <li> <p> <code>maxReceiveCount</code> – The number of times a message is delivered to the source queue before being moved to the dead-letter queue. When the <code>ReceiveCount</code> for a message exceeds the <code>maxReceiveCount</code> for a queue, Amazon SQS moves the message to the dead-letter-queue.</p> </li> </ul> <note> <p>The dead-letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead-letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> – The visibility timeout for the queue, in seconds. Valid values: An integer from 0 to 43,200 (12 hours). Default: 30. For more information about the visibility timeout, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html\">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html\">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> – The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms\">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/<i>MyAlias</i> </code>. For more examples, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters\">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> – The length of time, in seconds, for which Amazon SQS can reuse a <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys\">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). Default: 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which might incur charges after Free Tier. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work\">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attribute applies only to <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html\">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>ContentBasedDeduplication</code> – Enables content-based deduplication. For more information, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing\">Exactly-Once Processing</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul>",
          "locationName": "Attribute"
        }
      },
      "documentation": "<p/>"
    },
    "String": {
      "type": "string"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "StringListValue"
      }
    },
    "TagKey": {
      "type": "string"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey",
        "locationName": "TagKey"
      },
      "flattened": true
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey",
        "locationName": "Key"
      },
      "value": {
        "shape": "TagValue",
        "locationName": "Value"
      },
      "flattened": true,
      "locationName": "Tag"
    },
    "TagQueueRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "Tags"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the queue.</p>"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of tags to be added to the specified queue.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string"
    },
    "Token": {
      "type": "string"
    },
    "UntagQueueRequest": {
      "type": "structure",
      "required": [
        "QueueUrl",
        "TagKeys"
      ],
      "members": {
        "QueueUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the queue.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The list of tags to be removed from the specified queue.</p>"
        }
      }
    }
  },
  "documentation": "<p>Welcome to the <i>Amazon Simple Queue Service API Reference</i>.</p> <p>Amazon Simple Queue Service (Amazon SQS) is a reliable, highly-scalable hosted queue for storing messages as they travel between applications or microservices. Amazon SQS moves data between distributed application components and helps you decouple these components.</p> <p>For information on the permissions you need to use this API, see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-authentication-and-access-control.html\">Identity and access management</a> in the <i>Amazon Simple Queue Service Developer Guide.</i> </p> <p>You can use <a href=\"http://aws.amazon.com/tools/#sdk\">AWS SDKs</a> to access Amazon SQS using your favorite programming language. The SDKs perform tasks such as the following automatically:</p> <ul> <li> <p>Cryptographically sign your service requests</p> </li> <li> <p>Retry requests</p> </li> <li> <p>Handle error responses</p> </li> </ul> <p> <b>Additional Information</b> </p> <ul> <li> <p> <a href=\"http://aws.amazon.com/sqs/\">Amazon SQS Product Page</a> </p> </li> <li> <p> <i>Amazon Simple Queue Service Developer Guide</i> </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html\">Making API Requests</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes\">Amazon SQS Message Attributes</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html\">Amazon SQS Dead-Letter Queues</a> </p> </li> </ul> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/cli/latest/reference/sqs/index.html\">Amazon SQS in the <i>AWS CLI Command Reference</i> </a> </p> </li> <li> <p> <i>Amazon Web Services General Reference</i> </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region\">Regions and Endpoints</a> </p> </li> </ul> </li> </ul>"
}
]===]))
