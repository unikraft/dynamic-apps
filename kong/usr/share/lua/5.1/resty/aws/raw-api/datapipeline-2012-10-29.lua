local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version":"2.0",
  "metadata":{
    "apiVersion":"2012-10-29",
    "endpointPrefix":"datapipeline",
    "jsonVersion":"1.1",
    "serviceFullName":"AWS Data Pipeline",
    "serviceId":"Data Pipeline",
    "signatureVersion":"v4",
    "targetPrefix":"DataPipeline",
    "protocol":"json",
    "uid":"datapipeline-2012-10-29"
  },
  "documentation":"<p>AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline handles the details of scheduling and ensuring that data dependencies are met so that your application can focus on processing the data.</p> <p>AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide custom data management.</p> <p>AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline and define data sources, schedules, dependencies, and the transforms to be performed on the data. Use the second set in your task runner application to receive the next task ready for processing. The logic for performing the task, such as querying the data, running data analysis, or converting the data from one format to another, is contained within the task runner. The task runner performs the task assigned to it by the web service, reporting progress to the web service as it does so. When the task is done, the task runner reports the final success or failure of the task to the web service.</p>",
  "operations":{
    "ActivatePipeline":{
      "name":"ActivatePipeline",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"ActivatePipelineInput",
        "documentation":"<p>Contains the parameters for ActivatePipeline.</p>"
      },
      "output":{
        "shape":"ActivatePipelineOutput",
        "documentation":"<p>Contains the output of ActivatePipeline.</p>"
      },
      "errors":[
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        },
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails.</p> <p>If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call <a>DeactivatePipeline</a>.</p> <p>To activate a finished pipeline, modify the end date for the pipeline and then activate it.</p>"
    },
    "AddTags":{
      "name":"AddTags",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"AddTagsInput",
        "documentation":"<p>Contains the parameters for AddTags.</p>"
      },
      "output":{
        "shape":"AddTagsOutput",
        "documentation":"<p>Contains the output of AddTags.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Adds or modifies tags for the specified pipeline.</p>"
    },
    "CreatePipeline":{
      "name":"CreatePipeline",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"CreatePipelineInput",
        "documentation":"<p>Contains the parameters for CreatePipeline.</p>"
      },
      "output":{
        "shape":"CreatePipelineOutput",
        "documentation":"<p>Contains the output of CreatePipeline.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Creates a new, empty pipeline. Use <a>PutPipelineDefinition</a> to populate the pipeline.</p>"
    },
    "DeactivatePipeline":{
      "name":"DeactivatePipeline",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"DeactivatePipelineInput",
        "documentation":"<p>Contains the parameters for DeactivatePipeline.</p>"
      },
      "output":{
        "shape":"DeactivatePipelineOutput",
        "documentation":"<p>Contains the output of DeactivatePipeline.</p>"
      },
      "errors":[
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        },
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Deactivates the specified running pipeline. The pipeline is set to the <code>DEACTIVATING</code> state until the deactivation process completes.</p> <p>To resume a deactivated pipeline, use <a>ActivatePipeline</a>. By default, the pipeline resumes from the last completed execution. Optionally, you can specify the date and time to resume the pipeline.</p>"
    },
    "DeletePipeline":{
      "name":"DeletePipeline",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"DeletePipelineInput",
        "documentation":"<p>Contains the parameters for DeletePipeline.</p>"
      },
      "errors":[
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners.</p> <p>Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call <a>SetStatus</a> with the status set to <code>PAUSE</code> on individual components. Components that are paused by <a>SetStatus</a> can be resumed.</p>"
    },
    "DescribeObjects":{
      "name":"DescribeObjects",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"DescribeObjectsInput",
        "documentation":"<p>Contains the parameters for DescribeObjects.</p>"
      },
      "output":{
        "shape":"DescribeObjectsOutput",
        "documentation":"<p>Contains the output of DescribeObjects.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.</p>"
    },
    "DescribePipelines":{
      "name":"DescribePipelines",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"DescribePipelinesInput",
        "documentation":"<p>Contains the parameters for DescribePipelines.</p>"
      },
      "output":{
        "shape":"DescribePipelinesOutput",
        "documentation":"<p>Contains the output of DescribePipelines.</p>"
      },
      "errors":[
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        },
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions.</p> <p>To retrieve the full pipeline definition instead of metadata about the pipeline, call <a>GetPipelineDefinition</a>.</p>"
    },
    "EvaluateExpression":{
      "name":"EvaluateExpression",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"EvaluateExpressionInput",
        "documentation":"<p>Contains the parameters for EvaluateExpression.</p>"
      },
      "output":{
        "shape":"EvaluateExpressionOutput",
        "documentation":"<p>Contains the output of EvaluateExpression.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"TaskNotFoundException",
          "exception":true,
          "documentation":"<p>The specified task was not found. </p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Task runners call <code>EvaluateExpression</code> to evaluate a string in the context of the specified object. For example, a task runner can evaluate SQL queries stored in Amazon S3.</p>"
    },
    "GetPipelineDefinition":{
      "name":"GetPipelineDefinition",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"GetPipelineDefinitionInput",
        "documentation":"<p>Contains the parameters for GetPipelineDefinition.</p>"
      },
      "output":{
        "shape":"GetPipelineDefinitionOutput",
        "documentation":"<p>Contains the output of GetPipelineDefinition.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Gets the definition of the specified pipeline. You can call <code>GetPipelineDefinition</code> to retrieve the pipeline definition that you provided using <a>PutPipelineDefinition</a>.</p>"
    },
    "ListPipelines":{
      "name":"ListPipelines",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"ListPipelinesInput",
        "documentation":"<p>Contains the parameters for ListPipelines.</p>"
      },
      "output":{
        "shape":"ListPipelinesOutput",
        "documentation":"<p>Contains the output of ListPipelines.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Lists the pipeline identifiers for all active pipelines that you have permission to access.</p>"
    },
    "PollForTask":{
      "name":"PollForTask",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"PollForTaskInput",
        "documentation":"<p>Contains the parameters for PollForTask.</p>"
      },
      "output":{
        "shape":"PollForTaskOutput",
        "documentation":"<p>Contains the output of PollForTask.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"TaskNotFoundException",
          "exception":true,
          "documentation":"<p>The specified task was not found. </p>"
        }
      ],
      "documentation":"<p>Task runners call <code>PollForTask</code> to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform by setting a value for the <code>workerGroup</code> parameter. The task returned can come from any of the pipelines that match the <code>workerGroup</code> value passed in by the task runner and that was launched using the IAM user credentials specified by the task runner.</p> <p>If tasks are ready in the work queue, <code>PollForTask</code> returns a response immediately. If no tasks are available in the queue, <code>PollForTask</code> uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call <code>PollForTask</code> again on the same <code>workerGroup</code> until it receives a response, and this can take up to 90 seconds. </p>"
    },
    "PutPipelineDefinition":{
      "name":"PutPipelineDefinition",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"PutPipelineDefinitionInput",
        "documentation":"<p>Contains the parameters for PutPipelineDefinition.</p>"
      },
      "output":{
        "shape":"PutPipelineDefinitionOutput",
        "documentation":"<p>Contains the output of PutPipelineDefinition.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Adds tasks, schedules, and preconditions to the specified pipeline. You can use <code>PutPipelineDefinition</code> to populate a new pipeline.</p> <p> <code>PutPipelineDefinition</code> also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline. </p> <ol> <li>An object is missing a name or identifier field.</li> <li>A string or reference field is empty.</li> <li>The number of objects in the pipeline exceeds the maximum allowed objects.</li> <li>The pipeline is in a FINISHED state.</li> </ol> <p> Pipeline object definitions are passed to the <code>PutPipelineDefinition</code> action and returned by the <a>GetPipelineDefinition</a> action. </p>"
    },
    "QueryObjects":{
      "name":"QueryObjects",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"QueryObjectsInput",
        "documentation":"<p>Contains the parameters for QueryObjects.</p>"
      },
      "output":{
        "shape":"QueryObjectsOutput",
        "documentation":"<p>Contains the output of QueryObjects.</p>"
      },
      "errors":[
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        },
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Queries the specified pipeline for the names of objects that match the specified set of conditions.</p>"
    },
    "RemoveTags":{
      "name":"RemoveTags",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"RemoveTagsInput",
        "documentation":"<p>Contains the parameters for RemoveTags.</p>"
      },
      "output":{
        "shape":"RemoveTagsOutput",
        "documentation":"<p>Contains the output of RemoveTags.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Removes existing tags from the specified pipeline.</p>"
    },
    "ReportTaskProgress":{
      "name":"ReportTaskProgress",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"ReportTaskProgressInput",
        "documentation":"<p>Contains the parameters for ReportTaskProgress.</p>"
      },
      "output":{
        "shape":"ReportTaskProgressOutput",
        "documentation":"<p>Contains the output of ReportTaskProgress.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"TaskNotFoundException",
          "exception":true,
          "documentation":"<p>The specified task was not found. </p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Task runners call <code>ReportTaskProgress</code> when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent <a>PollForTask</a> call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a <code>reportProgressTimeout</code> field in your pipeline.</p> <p>If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to <a>PollForTask</a>. Task runners should call <code>ReportTaskProgress</code> every 60 seconds.</p>"
    },
    "ReportTaskRunnerHeartbeat":{
      "name":"ReportTaskRunnerHeartbeat",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"ReportTaskRunnerHeartbeatInput",
        "documentation":"<p>Contains the parameters for ReportTaskRunnerHeartbeat.</p>"
      },
      "output":{
        "shape":"ReportTaskRunnerHeartbeatOutput",
        "documentation":"<p>Contains the output of ReportTaskRunnerHeartbeat.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Task runners call <code>ReportTaskRunnerHeartbeat</code> every 15 minutes to indicate that they are operational. If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use this call to detect when the task runner application has failed and restart a new instance.</p>"
    },
    "SetStatus":{
      "name":"SetStatus",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"SetStatusInput",
        "documentation":"<p>Contains the parameters for SetStatus.</p>"
      },
      "errors":[
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        },
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        }
      ],
      "documentation":"<p>Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on <code>FINISHED</code> pipelines and attempting to do so returns <code>InvalidRequestException</code>.</p>"
    },
    "SetTaskStatus":{
      "name":"SetTaskStatus",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"SetTaskStatusInput",
        "documentation":"<p>Contains the parameters for SetTaskStatus.</p>"
      },
      "output":{
        "shape":"SetTaskStatusOutput",
        "documentation":"<p>Contains the output of SetTaskStatus.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"TaskNotFoundException",
          "exception":true,
          "documentation":"<p>The specified task was not found. </p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Task runners call <code>SetTaskStatus</code> to notify AWS Data Pipeline that a task is completed and provide information about the final status. A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call <code>SetTaskStatus</code> for tasks that are canceled by the web service during a call to <a>ReportTaskProgress</a>.</p>"
    },
    "ValidatePipelineDefinition":{
      "name":"ValidatePipelineDefinition",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"ValidatePipelineDefinitionInput",
        "documentation":"<p>Contains the parameters for ValidatePipelineDefinition.</p>"
      },
      "output":{
        "shape":"ValidatePipelineDefinitionOutput",
        "documentation":"<p>Contains the output of ValidatePipelineDefinition.</p>"
      },
      "errors":[
        {
          "shape":"InternalServiceError",
          "exception":true,
          "fault":true,
          "documentation":"<p>An internal service error occurred.</p>"
        },
        {
          "shape":"InvalidRequestException",
          "exception":true,
          "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
        },
        {
          "shape":"PipelineNotFoundException",
          "exception":true,
          "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
        },
        {
          "shape":"PipelineDeletedException",
          "exception":true,
          "documentation":"<p>The specified pipeline has been deleted.</p>"
        }
      ],
      "documentation":"<p>Validates the specified pipeline definition to ensure that it is well formed and can be run without error.</p>"
    }
  },
  "shapes":{
    "ActivatePipelineInput":{
      "type":"structure",
      "required":["pipelineId"],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "parameterValues":{
          "shape":"ParameterValueList",
          "documentation":"<p>A list of parameter values to pass to the pipeline at activation.</p>"
        },
        "startTimestamp":{
          "shape":"timestamp",
          "documentation":"<p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for ActivatePipeline.</p>"
    },
    "ActivatePipelineOutput":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Contains the output of ActivatePipeline.</p>"
    },
    "AddTagsInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "tags"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "tags":{
          "shape":"tagList",
          "documentation":"<p>The tags to add, as key/value pairs.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for AddTags.</p>"
    },
    "AddTagsOutput":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Contains the output of AddTags.</p>"
    },
    "CreatePipelineInput":{
      "type":"structure",
      "required":[
        "name",
        "uniqueId"
      ],
      "members":{
        "name":{
          "shape":"id",
          "documentation":"<p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>"
        },
        "uniqueId":{
          "shape":"id",
          "documentation":"<p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>"
        },
        "description":{
          "shape":"string",
          "documentation":"<p>The description for the pipeline.</p>"
        },
        "tags":{
          "shape":"tagList",
          "documentation":"<p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for CreatePipeline.</p>"
    },
    "CreatePipelineOutput":{
      "type":"structure",
      "required":["pipelineId"],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>"
        }
      },
      "documentation":"<p>Contains the output of CreatePipeline.</p>"
    },
    "DeactivatePipelineInput":{
      "type":"structure",
      "required":["pipelineId"],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "cancelActive":{
          "shape":"cancelActive",
          "documentation":"<p>Indicates whether to cancel any running objects. The default is true, which sets the state of any running objects to <code>CANCELED</code>. If this value is false, the pipeline is deactivated after all running objects finish.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for DeactivatePipeline.</p>"
    },
    "DeactivatePipelineOutput":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Contains the output of DeactivatePipeline.</p>"
    },
    "DeletePipelineInput":{
      "type":"structure",
      "required":["pipelineId"],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for DeletePipeline.</p>"
    },
    "DescribeObjectsInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "objectIds"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline that contains the object definitions.</p>"
        },
        "objectIds":{
          "shape":"idList",
          "documentation":"<p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>"
        },
        "evaluateExpressions":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>"
        },
        "marker":{
          "shape":"string",
          "documentation":"<p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>DescribeObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for DescribeObjects.</p>"
    },
    "DescribeObjectsOutput":{
      "type":"structure",
      "required":["pipelineObjects"],
      "members":{
        "pipelineObjects":{
          "shape":"PipelineObjectList",
          "documentation":"<p>An array of object definitions.</p>"
        },
        "marker":{
          "shape":"string",
          "documentation":"<p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code> again with this marker value. If the value is null, there are no more results.</p>"
        },
        "hasMoreResults":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether there are more results to return.</p>"
        }
      },
      "documentation":"<p>Contains the output of DescribeObjects.</p>"
    },
    "DescribePipelinesInput":{
      "type":"structure",
      "required":["pipelineIds"],
      "members":{
        "pipelineIds":{
          "shape":"idList",
          "documentation":"<p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. To obtain pipeline IDs, call <a>ListPipelines</a>.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for DescribePipelines.</p>"
    },
    "DescribePipelinesOutput":{
      "type":"structure",
      "required":["pipelineDescriptionList"],
      "members":{
        "pipelineDescriptionList":{
          "shape":"PipelineDescriptionList",
          "documentation":"<p>An array of descriptions for the specified pipelines.</p>"
        }
      },
      "documentation":"<p>Contains the output of DescribePipelines.</p>"
    },
    "EvaluateExpressionInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "objectId",
        "expression"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "objectId":{
          "shape":"id",
          "documentation":"<p>The ID of the object.</p>"
        },
        "expression":{
          "shape":"longString",
          "documentation":"<p>The expression to evaluate.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for EvaluateExpression.</p>"
    },
    "EvaluateExpressionOutput":{
      "type":"structure",
      "required":["evaluatedExpression"],
      "members":{
        "evaluatedExpression":{
          "shape":"longString",
          "documentation":"<p>The evaluated expression.</p>"
        }
      },
      "documentation":"<p>Contains the output of EvaluateExpression.</p>"
    },
    "Field":{
      "type":"structure",
      "required":["key"],
      "members":{
        "key":{
          "shape":"fieldNameString",
          "documentation":"<p>The field identifier.</p>"
        },
        "stringValue":{
          "shape":"fieldStringValue",
          "documentation":"<p>The field value, expressed as a String.</p>"
        },
        "refValue":{
          "shape":"fieldNameString",
          "documentation":"<p>The field value, expressed as the identifier of another object.</p>"
        }
      },
      "documentation":"<p>A key-value pair that describes a property of a pipeline object. The value is specified as either a string value (<code>StringValue</code>) or a reference to another object (<code>RefValue</code>) but not as both.</p>"
    },
    "GetPipelineDefinitionInput":{
      "type":"structure",
      "required":["pipelineId"],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "version":{
          "shape":"string",
          "documentation":"<p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) to use the last definition saved to the pipeline or <code>active</code> to use the last definition that was activated.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for GetPipelineDefinition.</p>"
    },
    "GetPipelineDefinitionOutput":{
      "type":"structure",
      "members":{
        "pipelineObjects":{
          "shape":"PipelineObjectList",
          "documentation":"<p>The objects defined in the pipeline.</p>"
        },
        "parameterObjects":{
          "shape":"ParameterObjectList",
          "documentation":"<p>The parameter objects used in the pipeline definition.</p>"
        },
        "parameterValues":{
          "shape":"ParameterValueList",
          "documentation":"<p>The parameter values used in the pipeline definition.</p>"
        }
      },
      "documentation":"<p>Contains the output of GetPipelineDefinition.</p>"
    },
    "InstanceIdentity":{
      "type":"structure",
      "members":{
        "document":{
          "shape":"string",
          "documentation":"<p>A description of an EC2 instance that is generated when the instance is launched and exposed to the instance via the instance metadata service in the form of a JSON representation of an object.</p>"
        },
        "signature":{
          "shape":"string",
          "documentation":"<p>A signature which can be used to verify the accuracy and authenticity of the information provided in the instance identity document.</p>"
        }
      },
      "documentation":"<p><p>Identity information for the EC2 instance that is hosting the task runner. You can get this value by calling a metadata URI from the EC2 instance. For more information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html\">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p></p>"
    },
    "InternalServiceError":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"errorMessage",
          "documentation":"<p>Description of the error message.</p>"
        }
      },
      "exception":true,
      "fault":true,
      "documentation":"<p>An internal service error occurred.</p>"
    },
    "InvalidRequestException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"errorMessage",
          "documentation":"<p>Description of the error message.</p>"
        }
      },
      "exception":true,
      "documentation":"<p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>"
    },
    "ListPipelinesInput":{
      "type":"structure",
      "members":{
        "marker":{
          "shape":"string",
          "documentation":"<p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>ListPipelines</code> with the marker value from the previous call to retrieve the next set of results.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for ListPipelines.</p>"
    },
    "ListPipelinesOutput":{
      "type":"structure",
      "required":["pipelineIdList"],
      "members":{
        "pipelineIdList":{
          "shape":"pipelineList",
          "documentation":"<p>The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call <a>DescribePipelines</a> and <a>GetPipelineDefinition</a>.</p>"
        },
        "marker":{
          "shape":"string",
          "documentation":"<p>The starting point for the next page of results. To view the next page of results, call <code>ListPipelinesOutput</code> again with this marker value. If the value is null, there are no more results.</p>"
        },
        "hasMoreResults":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether there are more results that can be obtained by a subsequent call.</p>"
        }
      },
      "documentation":"<p>Contains the output of ListPipelines.</p>"
    },
    "Operator":{
      "type":"structure",
      "members":{
        "type":{
          "shape":"OperatorType",
          "documentation":"<p> The logical operation to be performed: equal (<code>EQ</code>), equal reference (<code>REF_EQ</code>), less than or equal (<code>LE</code>), greater than or equal (<code>GE</code>), or between (<code>BETWEEN</code>). Equal reference (<code>REF_EQ</code>) can be used only with reference fields. The other comparison types can be used only with String fields. The comparison types you can use apply only to certain object fields, as detailed below. </p> <p> The comparison operators EQ and REF_EQ act on the following fields: </p> <ul> <li>name</li> <li>@sphere</li> <li>parent</li> <li>@componentParent</li> <li>@instanceParent</li> <li>@status</li> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p> The comparison operators <code>GE</code>, <code>LE</code>, and <code>BETWEEN</code> act on the following fields: </p> <ul> <li>@scheduledStartTime</li> <li>@scheduledEndTime</li> <li>@actualStartTime</li> <li>@actualEndTime</li> </ul> <p>Note that fields beginning with the at sign (@) are read-only and set by the web service. When you name fields, you should choose names containing only alpha-numeric values, as symbols may be reserved by AWS Data Pipeline. User-defined fields that you add to a pipeline should prefix their name with the string \"my\".</p>"
        },
        "values":{
          "shape":"stringList",
          "documentation":"<p>The value that the actual field value will be compared with.</p>"
        }
      },
      "documentation":"<p>Contains a logical operation for comparing the value of a field with a specified value.</p>"
    },
    "OperatorType":{
      "type":"string",
      "enum":[
        "EQ",
        "REF_EQ",
        "LE",
        "GE",
        "BETWEEN"
      ]
    },
    "ParameterAttribute":{
      "type":"structure",
      "required":[
        "key",
        "stringValue"
      ],
      "members":{
        "key":{
          "shape":"attributeNameString",
          "documentation":"<p>The field identifier.</p>"
        },
        "stringValue":{
          "shape":"attributeValueString",
          "documentation":"<p>The field value, expressed as a String.</p>"
        }
      },
      "documentation":"<p>The attributes allowed or specified with a parameter object.</p>"
    },
    "ParameterAttributeList":{
      "type":"list",
      "member":{"shape":"ParameterAttribute"}
    },
    "ParameterObject":{
      "type":"structure",
      "required":[
        "id",
        "attributes"
      ],
      "members":{
        "id":{
          "shape":"fieldNameString",
          "documentation":"<p>The ID of the parameter object. </p>"
        },
        "attributes":{
          "shape":"ParameterAttributeList",
          "documentation":"<p>The attributes of the parameter object.</p>"
        }
      },
      "documentation":"<p>Contains information about a parameter object.</p>"
    },
    "ParameterObjectList":{
      "type":"list",
      "member":{"shape":"ParameterObject"}
    },
    "ParameterValue":{
      "type":"structure",
      "required":[
        "id",
        "stringValue"
      ],
      "members":{
        "id":{
          "shape":"fieldNameString",
          "documentation":"<p>The ID of the parameter value.</p>"
        },
        "stringValue":{
          "shape":"fieldStringValue",
          "documentation":"<p>The field value, expressed as a String.</p>"
        }
      },
      "documentation":"<p>A value or list of parameter values. </p>"
    },
    "ParameterValueList":{
      "type":"list",
      "member":{"shape":"ParameterValue"}
    },
    "PipelineDeletedException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"errorMessage",
          "documentation":"<p>Description of the error message.</p>"
        }
      },
      "exception":true,
      "documentation":"<p>The specified pipeline has been deleted.</p>"
    },
    "PipelineDescription":{
      "type":"structure",
      "required":[
        "pipelineId",
        "name",
        "fields"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The pipeline identifier that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>"
        },
        "name":{
          "shape":"id",
          "documentation":"<p>The name of the pipeline.</p>"
        },
        "fields":{
          "shape":"fieldList",
          "documentation":"<p>A list of read-only fields that contain metadata about the pipeline: @userId, @accountId, and @pipelineState.</p>"
        },
        "description":{
          "shape":"string",
          "documentation":"<p>Description of the pipeline.</p>"
        },
        "tags":{
          "shape":"tagList",
          "documentation":"<p>A list of tags to associated with a pipeline. Tags let you control access to pipelines. For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>"
        }
      },
      "documentation":"<p>Contains pipeline metadata.</p>"
    },
    "PipelineDescriptionList":{
      "type":"list",
      "member":{"shape":"PipelineDescription"}
    },
    "PipelineIdName":{
      "type":"structure",
      "members":{
        "id":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>"
        },
        "name":{
          "shape":"id",
          "documentation":"<p>The name of the pipeline.</p>"
        }
      },
      "documentation":"<p>Contains the name and identifier of a pipeline.</p>"
    },
    "PipelineNotFoundException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"errorMessage",
          "documentation":"<p>Description of the error message.</p>"
        }
      },
      "exception":true,
      "documentation":"<p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>"
    },
    "PipelineObject":{
      "type":"structure",
      "required":[
        "id",
        "name",
        "fields"
      ],
      "members":{
        "id":{
          "shape":"id",
          "documentation":"<p>The ID of the object.</p>"
        },
        "name":{
          "shape":"id",
          "documentation":"<p>The name of the object.</p>"
        },
        "fields":{
          "shape":"fieldList",
          "documentation":"<p>Key-value pairs that define the properties of the object.</p>"
        }
      },
      "documentation":"<p>Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.</p>"
    },
    "PipelineObjectList":{
      "type":"list",
      "member":{"shape":"PipelineObject"}
    },
    "PipelineObjectMap":{
      "type":"map",
      "key":{"shape":"id"},
      "value":{"shape":"PipelineObject"}
    },
    "PollForTaskInput":{
      "type":"structure",
      "required":["workerGroup"],
      "members":{
        "workerGroup":{
          "shape":"string",
          "documentation":"<p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>"
        },
        "hostname":{
          "shape":"id",
          "documentation":"<p>The public DNS name of the calling task runner.</p>"
        },
        "instanceIdentity":{
          "shape":"InstanceIdentity",
          "documentation":"<p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html\">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for PollForTask.</p>"
    },
    "PollForTaskOutput":{
      "type":"structure",
      "members":{
        "taskObject":{
          "shape":"TaskObject",
          "documentation":"<p>The information needed to complete the task that is being assigned to the task runner. One of the fields returned in this object is <code>taskId</code>, which contains an identifier for the task being assigned. The calling task runner uses <code>taskId</code> in subsequent calls to <a>ReportTaskProgress</a> and <a>SetTaskStatus</a>.</p>"
        }
      },
      "documentation":"<p>Contains the output of PollForTask.</p>"
    },
    "PutPipelineDefinitionInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "pipelineObjects"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "pipelineObjects":{
          "shape":"PipelineObjectList",
          "documentation":"<p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>"
        },
        "parameterObjects":{
          "shape":"ParameterObjectList",
          "documentation":"<p>The parameter objects used with the pipeline.</p>"
        },
        "parameterValues":{
          "shape":"ParameterValueList",
          "documentation":"<p>The parameter values used with the pipeline.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for PutPipelineDefinition.</p>"
    },
    "PutPipelineDefinitionOutput":{
      "type":"structure",
      "required":["errored"],
      "members":{
        "validationErrors":{
          "shape":"ValidationErrors",
          "documentation":"<p>The validation errors that are associated with the objects defined in <code>pipelineObjects</code>.</p>"
        },
        "validationWarnings":{
          "shape":"ValidationWarnings",
          "documentation":"<p>The validation warnings that are associated with the objects defined in <code>pipelineObjects</code>.</p>"
        },
        "errored":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether there were validation errors, and the pipeline definition is stored but cannot be activated until you correct the pipeline and call <code>PutPipelineDefinition</code> to commit the corrected pipeline.</p>"
        }
      },
      "documentation":"<p>Contains the output of PutPipelineDefinition.</p>"
    },
    "Query":{
      "type":"structure",
      "members":{
        "selectors":{
          "shape":"SelectorList",
          "documentation":"<p>List of selectors that define the query. An object must satisfy all of the selectors to match the query.</p>"
        }
      },
      "documentation":"<p>Defines the query to run against an object.</p>"
    },
    "QueryObjectsInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "sphere"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "query":{
          "shape":"Query",
          "documentation":"<p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. The conditions in the query are limited to top-level String fields in the object. These filters can be applied to components, instances, and attempts.</p>"
        },
        "sphere":{
          "shape":"string",
          "documentation":"<p>Indicates whether the query applies to components or instances. The possible values are: <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>"
        },
        "marker":{
          "shape":"string",
          "documentation":"<p>The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call <code>QueryObjects</code> with the marker value from the previous call to retrieve the next set of results.</p>"
        },
        "limit":{
          "shape":"int",
          "documentation":"<p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>"
        }
      },
      "documentation":"<p>Contains the parameters for QueryObjects.</p>"
    },
    "QueryObjectsOutput":{
      "type":"structure",
      "members":{
        "ids":{
          "shape":"idList",
          "documentation":"<p>The identifiers that match the query selectors.</p>"
        },
        "marker":{
          "shape":"string",
          "documentation":"<p>The starting point for the next page of results. To view the next page of results, call <code>QueryObjects</code> again with this marker value. If the value is null, there are no more results.</p>"
        },
        "hasMoreResults":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether there are more results that can be obtained by a subsequent call.</p>"
        }
      },
      "documentation":"<p>Contains the output of QueryObjects.</p>"
    },
    "RemoveTagsInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "tagKeys"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "tagKeys":{
          "shape":"stringList",
          "documentation":"<p>The keys of the tags to remove.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for RemoveTags.</p>"
    },
    "RemoveTagsOutput":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Contains the output of RemoveTags.</p>"
    },
    "ReportTaskProgressInput":{
      "type":"structure",
      "required":["taskId"],
      "members":{
        "taskId":{
          "shape":"taskId",
          "documentation":"<p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>"
        },
        "fields":{
          "shape":"fieldList",
          "documentation":"<p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for ReportTaskProgress.</p>"
    },
    "ReportTaskProgressOutput":{
      "type":"structure",
      "required":["canceled"],
      "members":{
        "canceled":{
          "shape":"boolean",
          "documentation":"<p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>"
        }
      },
      "documentation":"<p>Contains the output of ReportTaskProgress.</p>"
    },
    "ReportTaskRunnerHeartbeatInput":{
      "type":"structure",
      "required":["taskrunnerId"],
      "members":{
        "taskrunnerId":{
          "shape":"id",
          "documentation":"<p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>"
        },
        "workerGroup":{
          "shape":"string",
          "documentation":"<p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>"
        },
        "hostname":{
          "shape":"id",
          "documentation":"<p>The public DNS name of the task runner.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for ReportTaskRunnerHeartbeat.</p>"
    },
    "ReportTaskRunnerHeartbeatOutput":{
      "type":"structure",
      "required":["terminate"],
      "members":{
        "terminate":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether the calling task runner should terminate.</p>"
        }
      },
      "documentation":"<p>Contains the output of ReportTaskRunnerHeartbeat.</p>"
    },
    "Selector":{
      "type":"structure",
      "members":{
        "fieldName":{
          "shape":"string",
          "documentation":"<p>The name of the field that the operator will be applied to. The field name is the \"key\" portion of the field definition in the pipeline definition syntax that is used by the AWS Data Pipeline API. If the field is not set on the object, the condition fails.</p>"
        },
        "operator":{"shape":"Operator"}
      },
      "documentation":"<p>A comparision that is used to determine whether a query should return this object.</p>"
    },
    "SelectorList":{
      "type":"list",
      "member":{"shape":"Selector"},
      "documentation":"<p>The list of Selectors that define queries on individual fields.</p>"
    },
    "SetStatusInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "objectIds",
        "status"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline that contains the objects.</p>"
        },
        "objectIds":{
          "shape":"idList",
          "documentation":"<p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>"
        },
        "status":{
          "shape":"string",
          "documentation":"<p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for SetStatus.</p>"
    },
    "SetTaskStatusInput":{
      "type":"structure",
      "required":[
        "taskId",
        "taskStatus"
      ],
      "members":{
        "taskId":{
          "shape":"taskId",
          "documentation":"<p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>"
        },
        "taskStatus":{
          "shape":"TaskStatus",
          "documentation":"<p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>"
        },
        "errorId":{
          "shape":"string",
          "documentation":"<p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. It is used to display error information to the user. It should not start with string \"Service_\" which is reserved by the system.</p>"
        },
        "errorMessage":{
          "shape":"errorMessage",
          "documentation":"<p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>"
        },
        "errorStackTrace":{
          "shape":"string",
          "documentation":"<p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for SetTaskStatus.</p>"
    },
    "SetTaskStatusOutput":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Contains the output of SetTaskStatus.</p>"
    },
    "Tag":{
      "type":"structure",
      "required":[
        "key",
        "value"
      ],
      "members":{
        "key":{
          "shape":"tagKey",
          "documentation":"<p>The key name of a tag defined by a user. For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>"
        },
        "value":{
          "shape":"tagValue",
          "documentation":"<p>The optional value portion of a tag defined by a user. For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>"
        }
      },
      "documentation":"<p>Tags are key/value pairs defined by a user and associated with a pipeline to control access. AWS Data Pipeline allows you to associate ten tags per pipeline. For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>"
    },
    "TaskNotFoundException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"errorMessage",
          "documentation":"<p>Description of the error message.</p>"
        }
      },
      "exception":true,
      "documentation":"<p>The specified task was not found. </p>"
    },
    "TaskObject":{
      "type":"structure",
      "members":{
        "taskId":{
          "shape":"taskId",
          "documentation":"<p>An internal identifier for the task. This ID is passed to the <a>SetTaskStatus</a> and <a>ReportTaskProgress</a> actions.</p>"
        },
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline that provided the task.</p>"
        },
        "attemptId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline task attempt object. AWS Data Pipeline uses this value to track how many times a task is attempted.</p>"
        },
        "objects":{
          "shape":"PipelineObjectMap",
          "documentation":"<p>Connection information for the location where the task runner will publish the output of the task.</p>"
        }
      },
      "documentation":"<p>Contains information about a pipeline task that is assigned to a task runner.</p>"
    },
    "TaskStatus":{
      "type":"string",
      "enum":[
        "FINISHED",
        "FAILED",
        "FALSE"
      ]
    },
    "ValidatePipelineDefinitionInput":{
      "type":"structure",
      "required":[
        "pipelineId",
        "pipelineObjects"
      ],
      "members":{
        "pipelineId":{
          "shape":"id",
          "documentation":"<p>The ID of the pipeline.</p>"
        },
        "pipelineObjects":{
          "shape":"PipelineObjectList",
          "documentation":"<p>The objects that define the pipeline changes to validate against the pipeline.</p>"
        },
        "parameterObjects":{
          "shape":"ParameterObjectList",
          "documentation":"<p>The parameter objects used with the pipeline.</p>"
        },
        "parameterValues":{
          "shape":"ParameterValueList",
          "documentation":"<p>The parameter values used with the pipeline.</p>"
        }
      },
      "documentation":"<p>Contains the parameters for ValidatePipelineDefinition.</p>"
    },
    "ValidatePipelineDefinitionOutput":{
      "type":"structure",
      "required":["errored"],
      "members":{
        "validationErrors":{
          "shape":"ValidationErrors",
          "documentation":"<p>Any validation errors that were found.</p>"
        },
        "validationWarnings":{
          "shape":"ValidationWarnings",
          "documentation":"<p>Any validation warnings that were found.</p>"
        },
        "errored":{
          "shape":"boolean",
          "documentation":"<p>Indicates whether there were validation errors.</p>"
        }
      },
      "documentation":"<p>Contains the output of ValidatePipelineDefinition.</p>"
    },
    "ValidationError":{
      "type":"structure",
      "members":{
        "id":{
          "shape":"id",
          "documentation":"<p>The identifier of the object that contains the validation error.</p>"
        },
        "errors":{
          "shape":"validationMessages",
          "documentation":"<p>A description of the validation error.</p>"
        }
      },
      "documentation":"<p>Defines a validation error. Validation errors prevent pipeline activation. The set of validation errors that can be returned are defined by AWS Data Pipeline.</p>"
    },
    "ValidationErrors":{
      "type":"list",
      "member":{"shape":"ValidationError"}
    },
    "ValidationWarning":{
      "type":"structure",
      "members":{
        "id":{
          "shape":"id",
          "documentation":"<p>The identifier of the object that contains the validation warning.</p>"
        },
        "warnings":{
          "shape":"validationMessages",
          "documentation":"<p>A description of the validation warning.</p>"
        }
      },
      "documentation":"<p>Defines a validation warning. Validation warnings do not prevent pipeline activation. The set of validation warnings that can be returned are defined by AWS Data Pipeline.</p>"
    },
    "ValidationWarnings":{
      "type":"list",
      "member":{"shape":"ValidationWarning"}
    },
    "attributeNameString":{
      "type":"string",
      "min":1,
      "max":256,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "attributeValueString":{
      "type":"string",
      "min":0,
      "max":10240,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "boolean":{"type":"boolean"},
    "cancelActive":{"type":"boolean"},
    "errorMessage":{"type":"string"},
    "fieldList":{
      "type":"list",
      "member":{"shape":"Field"}
    },
    "fieldNameString":{
      "type":"string",
      "min":1,
      "max":256,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "fieldStringValue":{
      "type":"string",
      "min":0,
      "max":10240,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "id":{
      "type":"string",
      "min":1,
      "max":1024,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "idList":{
      "type":"list",
      "member":{"shape":"id"}
    },
    "int":{"type":"integer"},
    "longString":{
      "type":"string",
      "min":0,
      "max":20971520,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "pipelineList":{
      "type":"list",
      "member":{"shape":"PipelineIdName"}
    },
    "string":{
      "type":"string",
      "min":0,
      "max":1024,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "stringList":{
      "type":"list",
      "member":{"shape":"string"}
    },
    "tagKey":{
      "type":"string",
      "min":1,
      "max":128
    },
    "tagList":{
      "type":"list",
      "member":{"shape":"Tag"},
      "min":0,
      "max":10
    },
    "tagValue":{
      "type":"string",
      "min":0,
      "max":256
    },
    "taskId":{
      "type":"string",
      "min":1,
      "max":2048,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "timestamp":{"type":"timestamp"},
    "validationMessage":{
      "type":"string",
      "min":0,
      "max":10000,
      "pattern":"[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "validationMessages":{
      "type":"list",
      "member":{"shape":"validationMessage"}
    }
  }
}

]===]))
