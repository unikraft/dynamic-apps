local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-06-26",
    "endpointPrefix": "forecast",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon Forecast Service",
    "serviceId": "forecast",
    "signatureVersion": "v4",
    "signingName": "forecast",
    "targetPrefix": "AmazonForecast",
    "uid": "forecast-2018-06-26"
  },
  "operations": {
    "CreateDataset": {
      "name": "CreateDataset",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDatasetRequest"
      },
      "output": {
        "shape": "CreateDatasetResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates an Amazon Forecast dataset. The information about the dataset that you provide helps Forecast understand how to consume the data for model training. This includes the following:</p> <ul> <li> <p> <i> <code>DataFrequency</code> </i> - How frequently your historical time-series data is collected.</p> </li> <li> <p> <i> <code>Domain</code> </i> and <i> <code>DatasetType</code> </i> - Each dataset has an associated dataset domain and a type within the domain. Amazon Forecast provides a list of predefined domains and types within each domain. For each unique dataset domain and type within the domain, Amazon Forecast requires your data to include a minimum set of predefined fields.</p> </li> <li> <p> <i> <code>Schema</code> </i> - A schema specifies the fields in the dataset, including the field name and data type.</p> </li> </ul> <p>After creating a dataset, you import your training data into it and add the dataset to a dataset group. You use the dataset group to create a predictor. For more information, see <a>howitworks-datasets-groups</a>.</p> <p>To get a list of all your datasets, use the <a>ListDatasets</a> operation.</p> <p>For example Forecast datasets, see the <a href=\"https://github.com/aws-samples/amazon-forecast-samples\">Amazon Forecast Sample GitHub repository</a>.</p> <note> <p>The <code>Status</code> of a dataset must be <code>ACTIVE</code> before you can import training data. Use the <a>DescribeDataset</a> operation to get the status.</p> </note>"
    },
    "CreateDatasetGroup": {
      "name": "CreateDatasetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDatasetGroupRequest"
      },
      "output": {
        "shape": "CreateDatasetGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a dataset group, which holds a collection of related datasets. You can add datasets to the dataset group when you create the dataset group, or later by using the <a>UpdateDatasetGroup</a> operation.</p> <p>After creating a dataset group and adding datasets, you use the dataset group when you create a predictor. For more information, see <a>howitworks-datasets-groups</a>.</p> <p>To get a list of all your datasets groups, use the <a>ListDatasetGroups</a> operation.</p> <note> <p>The <code>Status</code> of a dataset group must be <code>ACTIVE</code> before you can create use the dataset group to create a predictor. To get the status, use the <a>DescribeDatasetGroup</a> operation.</p> </note>"
    },
    "CreateDatasetImportJob": {
      "name": "CreateDatasetImportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDatasetImportJobRequest"
      },
      "output": {
        "shape": "CreateDatasetImportJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Imports your training data to an Amazon Forecast dataset. You provide the location of your training data in an Amazon Simple Storage Service (Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset that you want to import the data to.</p> <p>You must specify a <a>DataSource</a> object that includes an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the data, as Amazon Forecast makes a copy of your data and processes it in an internal AWS system. For more information, see <a>aws-forecast-iam-roles</a>.</p> <p>The training data must be in CSV format. The delimiter must be a comma (,).</p> <p>You can specify the path to a specific CSV file, the S3 bucket, or to a folder in the S3 bucket. For the latter two cases, Amazon Forecast imports all files up to the limit of 10,000 files.</p> <p>Because dataset imports are not aggregated, your most recent dataset import is the one that is used when training a predictor or generating a forecast. Make sure that your most recent dataset import contains all of the data you want to model off of, and not just the new data collected since the previous import.</p> <p>To get a list of all your dataset import jobs, filtered by specified criteria, use the <a>ListDatasetImportJobs</a> operation.</p>"
    },
    "CreateForecast": {
      "name": "CreateForecast",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateForecastRequest"
      },
      "output": {
        "shape": "CreateForecastResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a forecast for each item in the <code>TARGET_TIME_SERIES</code> dataset that was used to train the predictor. This is known as inference. To retrieve the forecast for a single item at low latency, use the operation. To export the complete forecast into your Amazon Simple Storage Service (Amazon S3) bucket, use the <a>CreateForecastExportJob</a> operation.</p> <p>The range of the forecast is determined by the <code>ForecastHorizon</code> value, which you specify in the <a>CreatePredictor</a> request. When you query a forecast, you can request a specific date range within the forecast.</p> <p>To get a list of all your forecasts, use the <a>ListForecasts</a> operation.</p> <note> <p>The forecasts generated by Amazon Forecast are in the same time zone as the dataset that was used to create the predictor.</p> </note> <p>For more information, see <a>howitworks-forecast</a>.</p> <note> <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query or export the forecast. Use the <a>DescribeForecast</a> operation to get the status.</p> </note>"
    },
    "CreateForecastExportJob": {
      "name": "CreateForecastExportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateForecastExportJobRequest"
      },
      "output": {
        "shape": "CreateForecastExportJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Exports a forecast created by the <a>CreateForecast</a> operation to your Amazon Simple Storage Service (Amazon S3) bucket. The forecast file name will match the following conventions:</p> <p>&lt;ForecastExportJobName&gt;_&lt;ExportTimestamp&gt;_&lt;PartNumber&gt;</p> <p>where the &lt;ExportTimestamp&gt; component is in Java SimpleDateFormat (yyyy-MM-ddTHH-mm-ssZ).</p> <p>You must specify a <a>DataDestination</a> object that includes an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket. For more information, see <a>aws-forecast-iam-roles</a>.</p> <p>For more information, see <a>howitworks-forecast</a>.</p> <p>To get a list of all your forecast export jobs, use the <a>ListForecastExportJobs</a> operation.</p> <note> <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before you can access the forecast in your Amazon S3 bucket. To get the status, use the <a>DescribeForecastExportJob</a> operation.</p> </note>"
    },
    "CreatePredictor": {
      "name": "CreatePredictor",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePredictorRequest"
      },
      "output": {
        "shape": "CreatePredictorResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates an Amazon Forecast predictor.</p> <p>In the request, you provide a dataset group and either specify an algorithm or let Amazon Forecast choose the algorithm for you using AutoML. If you specify an algorithm, you also can override algorithm-specific hyperparameters.</p> <p>Amazon Forecast uses the chosen algorithm to train a model using the latest version of the datasets in the specified dataset group. The result is called a predictor. You then generate a forecast using the <a>CreateForecast</a> operation.</p> <p>After training a model, the <code>CreatePredictor</code> operation also evaluates it. To see the evaluation metrics, use the <a>GetAccuracyMetrics</a> operation. Always review the evaluation metrics before deciding to use the predictor to generate a forecast.</p> <p>Optionally, you can specify a featurization configuration to fill and aggregate the data fields in the <code>TARGET_TIME_SERIES</code> dataset to improve model training. For more information, see <a>FeaturizationConfig</a>.</p> <p>For RELATED_TIME_SERIES datasets, <code>CreatePredictor</code> verifies that the <code>DataFrequency</code> specified when the dataset was created matches the <code>ForecastFrequency</code>. TARGET_TIME_SERIES datasets don't have this restriction. Amazon Forecast also verifies the delimiter and timestamp format. For more information, see <a>howitworks-datasets-groups</a>.</p> <p> <b>AutoML</b> </p> <p>If you want Amazon Forecast to evaluate each algorithm and choose the one that minimizes the <code>objective function</code>, set <code>PerformAutoML</code> to <code>true</code>. The <code>objective function</code> is defined as the mean of the weighted p10, p50, and p90 quantile losses. For more information, see <a>EvaluationResult</a>.</p> <p>When AutoML is enabled, the following properties are disallowed:</p> <ul> <li> <p> <code>AlgorithmArn</code> </p> </li> <li> <p> <code>HPOConfig</code> </p> </li> <li> <p> <code>PerformHPO</code> </p> </li> <li> <p> <code>TrainingParameters</code> </p> </li> </ul> <p>To get a list of all of your predictors, use the <a>ListPredictors</a> operation.</p> <note> <p>Before you can use the predictor to create a forecast, the <code>Status</code> of the predictor must be <code>ACTIVE</code>, signifying that training has completed. To get the status, use the <a>DescribePredictor</a> operation.</p> </note>"
    },
    "DeleteDataset": {
      "name": "DeleteDataset",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDatasetRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes an Amazon Forecast dataset that was created using the <a>CreateDataset</a> operation. You can only delete datasets that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status use the <a>DescribeDataset</a> operation.</p> <note> <p>Forecast does not automatically update any dataset groups that contain the deleted dataset. In order to update the dataset group, use the operation, omitting the deleted dataset's ARN.</p> </note>",
      "idempotent": true
    },
    "DeleteDatasetGroup": {
      "name": "DeleteDatasetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDatasetGroupRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a dataset group created using the <a>CreateDatasetGroup</a> operation. You can only delete dataset groups that have a status of <code>ACTIVE</code>, <code>CREATE_FAILED</code>, or <code>UPDATE_FAILED</code>. To get the status, use the <a>DescribeDatasetGroup</a> operation.</p> <p>This operation deletes only the dataset group, not the datasets in the group.</p>",
      "idempotent": true
    },
    "DeleteDatasetImportJob": {
      "name": "DeleteDatasetImportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDatasetImportJobRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a dataset import job created using the <a>CreateDatasetImportJob</a> operation. You can delete only dataset import jobs that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeDatasetImportJob</a> operation.</p>",
      "idempotent": true
    },
    "DeleteForecast": {
      "name": "DeleteForecast",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteForecastRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a forecast created using the <a>CreateForecast</a> operation. You can delete only forecasts that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeForecast</a> operation.</p> <p>You can't delete a forecast while it is being exported. After a forecast is deleted, you can no longer query the forecast.</p>",
      "idempotent": true
    },
    "DeleteForecastExportJob": {
      "name": "DeleteForecastExportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteForecastExportJobRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a forecast export job created using the <a>CreateForecastExportJob</a> operation. You can delete only export jobs that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeForecastExportJob</a> operation.</p>",
      "idempotent": true
    },
    "DeletePredictor": {
      "name": "DeletePredictor",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePredictorRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a predictor created using the <a>CreatePredictor</a> operation. You can delete only predictor that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribePredictor</a> operation.</p>",
      "idempotent": true
    },
    "DescribeDataset": {
      "name": "DescribeDataset",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDatasetRequest"
      },
      "output": {
        "shape": "DescribeDatasetResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes an Amazon Forecast dataset created using the <a>CreateDataset</a> operation.</p> <p>In addition to listing the parameters specified in the <code>CreateDataset</code> request, this operation includes the following dataset properties:</p> <ul> <li> <p> <code>CreationTime</code> </p> </li> <li> <p> <code>LastModificationTime</code> </p> </li> <li> <p> <code>Status</code> </p> </li> </ul>",
      "idempotent": true
    },
    "DescribeDatasetGroup": {
      "name": "DescribeDatasetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDatasetGroupRequest"
      },
      "output": {
        "shape": "DescribeDatasetGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a dataset group created using the <a>CreateDatasetGroup</a> operation.</p> <p>In addition to listing the parameters provided in the <code>CreateDatasetGroup</code> request, this operation includes the following properties:</p> <ul> <li> <p> <code>DatasetArns</code> - The datasets belonging to the group.</p> </li> <li> <p> <code>CreationTime</code> </p> </li> <li> <p> <code>LastModificationTime</code> </p> </li> <li> <p> <code>Status</code> </p> </li> </ul>",
      "idempotent": true
    },
    "DescribeDatasetImportJob": {
      "name": "DescribeDatasetImportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDatasetImportJobRequest"
      },
      "output": {
        "shape": "DescribeDatasetImportJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a dataset import job created using the <a>CreateDatasetImportJob</a> operation.</p> <p>In addition to listing the parameters provided in the <code>CreateDatasetImportJob</code> request, this operation includes the following properties:</p> <ul> <li> <p> <code>CreationTime</code> </p> </li> <li> <p> <code>LastModificationTime</code> </p> </li> <li> <p> <code>DataSize</code> </p> </li> <li> <p> <code>FieldStatistics</code> </p> </li> <li> <p> <code>Status</code> </p> </li> <li> <p> <code>Message</code> - If an error occurred, information about the error.</p> </li> </ul>",
      "idempotent": true
    },
    "DescribeForecast": {
      "name": "DescribeForecast",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeForecastRequest"
      },
      "output": {
        "shape": "DescribeForecastResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a forecast created using the <a>CreateForecast</a> operation.</p> <p>In addition to listing the properties provided in the <code>CreateForecast</code> request, this operation lists the following properties:</p> <ul> <li> <p> <code>DatasetGroupArn</code> - The dataset group that provided the training data.</p> </li> <li> <p> <code>CreationTime</code> </p> </li> <li> <p> <code>LastModificationTime</code> </p> </li> <li> <p> <code>Status</code> </p> </li> <li> <p> <code>Message</code> - If an error occurred, information about the error.</p> </li> </ul>",
      "idempotent": true
    },
    "DescribeForecastExportJob": {
      "name": "DescribeForecastExportJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeForecastExportJobRequest"
      },
      "output": {
        "shape": "DescribeForecastExportJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a forecast export job created using the <a>CreateForecastExportJob</a> operation.</p> <p>In addition to listing the properties provided by the user in the <code>CreateForecastExportJob</code> request, this operation lists the following properties:</p> <ul> <li> <p> <code>CreationTime</code> </p> </li> <li> <p> <code>LastModificationTime</code> </p> </li> <li> <p> <code>Status</code> </p> </li> <li> <p> <code>Message</code> - If an error occurred, information about the error.</p> </li> </ul>",
      "idempotent": true
    },
    "DescribePredictor": {
      "name": "DescribePredictor",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePredictorRequest"
      },
      "output": {
        "shape": "DescribePredictorResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a predictor created using the <a>CreatePredictor</a> operation.</p> <p>In addition to listing the properties provided in the <code>CreatePredictor</code> request, this operation lists the following properties:</p> <ul> <li> <p> <code>DatasetImportJobArns</code> - The dataset import jobs used to import training data.</p> </li> <li> <p> <code>AutoMLAlgorithmArns</code> - If AutoML is performed, the algorithms that were evaluated.</p> </li> <li> <p> <code>CreationTime</code> </p> </li> <li> <p> <code>LastModificationTime</code> </p> </li> <li> <p> <code>Status</code> </p> </li> <li> <p> <code>Message</code> - If an error occurred, information about the error.</p> </li> </ul>",
      "idempotent": true
    },
    "GetAccuracyMetrics": {
      "name": "GetAccuracyMetrics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAccuracyMetricsRequest"
      },
      "output": {
        "shape": "GetAccuracyMetricsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Provides metrics on the accuracy of the models that were trained by the <a>CreatePredictor</a> operation. Use metrics to see how well the model performed and to decide whether to use the predictor to generate a forecast. For more information, see <a>metrics</a>.</p> <p>This operation generates metrics for each backtest window that was evaluated. The number of backtest windows (<code>NumberOfBacktestWindows</code>) is specified using the <a>EvaluationParameters</a> object, which is optionally included in the <code>CreatePredictor</code> request. If <code>NumberOfBacktestWindows</code> isn't specified, the number defaults to one.</p> <p>The parameters of the <code>filling</code> method determine which items contribute to the metrics. If you want all items to contribute, specify <code>zero</code>. If you want only those items that have complete data in the range being evaluated to contribute, specify <code>nan</code>. For more information, see <a>FeaturizationMethod</a>.</p> <note> <p>Before you can get accuracy metrics, the <code>Status</code> of the predictor must be <code>ACTIVE</code>, signifying that training has completed. To get the status, use the <a>DescribePredictor</a> operation.</p> </note>",
      "idempotent": true
    },
    "ListDatasetGroups": {
      "name": "ListDatasetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatasetGroupsRequest"
      },
      "output": {
        "shape": "ListDatasetGroupsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of dataset groups created using the <a>CreateDatasetGroup</a> operation. For each dataset group, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the dataset group ARN with the <a>DescribeDatasetGroup</a> operation.</p>",
      "idempotent": true
    },
    "ListDatasetImportJobs": {
      "name": "ListDatasetImportJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatasetImportJobsRequest"
      },
      "output": {
        "shape": "ListDatasetImportJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of dataset import jobs created using the <a>CreateDatasetImportJob</a> operation. For each import job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the <a>DescribeDatasetImportJob</a> operation. You can filter the list by providing an array of <a>Filter</a> objects.</p>",
      "idempotent": true
    },
    "ListDatasets": {
      "name": "ListDatasets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatasetsRequest"
      },
      "output": {
        "shape": "ListDatasetsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns a list of datasets created using the <a>CreateDataset</a> operation. For each dataset, a summary of its properties, including its Amazon Resource Name (ARN), is returned. To retrieve the complete set of properties, use the ARN with the <a>DescribeDataset</a> operation.</p>",
      "idempotent": true
    },
    "ListForecastExportJobs": {
      "name": "ListForecastExportJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListForecastExportJobsRequest"
      },
      "output": {
        "shape": "ListForecastExportJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of forecast export jobs created using the <a>CreateForecastExportJob</a> operation. For each forecast export job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, use the ARN with the <a>DescribeForecastExportJob</a> operation. You can filter the list using an array of <a>Filter</a> objects.</p>",
      "idempotent": true
    },
    "ListForecasts": {
      "name": "ListForecasts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListForecastsRequest"
      },
      "output": {
        "shape": "ListForecastsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of forecasts created using the <a>CreateForecast</a> operation. For each forecast, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, specify the ARN with the <a>DescribeForecast</a> operation. You can filter the list using an array of <a>Filter</a> objects.</p>",
      "idempotent": true
    },
    "ListPredictors": {
      "name": "ListPredictors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPredictorsRequest"
      },
      "output": {
        "shape": "ListPredictorsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of predictors created using the <a>CreatePredictor</a> operation. For each predictor, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the <a>DescribePredictor</a> operation. You can filter the list using an array of <a>Filter</a> objects.</p>",
      "idempotent": true
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
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Lists the tags for an Amazon Forecast resource.</p>"
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
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Associates the specified tags to a resource with the specified <code>resourceArn</code>. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.</p>"
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
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Deletes the specified tags from a resource.</p>"
    },
    "UpdateDatasetGroup": {
      "name": "UpdateDatasetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDatasetGroupRequest"
      },
      "output": {
        "shape": "UpdateDatasetGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Replaces the datasets in a dataset group with the specified datasets.</p> <note> <p>The <code>Status</code> of the dataset group must be <code>ACTIVE</code> before you can use the dataset group to create a predictor. Use the <a>DescribeDatasetGroup</a> operation to get the status.</p> </note>",
      "idempotent": true
    }
  },
  "shapes": {
    "Arn": {
      "type": "string",
      "max": 256,
      "pattern": "^[a-zA-Z0-9\\-\\_\\.\\/\\:]+$"
    },
    "ArnList": {
      "type": "list",
      "member": {
        "shape": "Arn"
      }
    },
    "AttributeType": {
      "type": "string",
      "enum": [
        "string",
        "integer",
        "float",
        "timestamp"
      ]
    },
    "Boolean": {
      "type": "boolean"
    },
    "CategoricalParameterRange": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the categorical hyperparameter to tune.</p>"
        },
        "Values": {
          "shape": "Values",
          "documentation": "<p>A list of the tunable categories for the hyperparameter.</p>"
        }
      },
      "documentation": "<p>Specifies a categorical hyperparameter and it's range of tunable values. This object is part of the <a>ParameterRanges</a> object.</p>"
    },
    "CategoricalParameterRanges": {
      "type": "list",
      "member": {
        "shape": "CategoricalParameterRange"
      },
      "max": 20,
      "min": 1
    },
    "ContinuousParameterRange": {
      "type": "structure",
      "required": [
        "Name",
        "MaxValue",
        "MinValue"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the hyperparameter to tune.</p>"
        },
        "MaxValue": {
          "shape": "Double",
          "documentation": "<p>The maximum tunable value of the hyperparameter.</p>"
        },
        "MinValue": {
          "shape": "Double",
          "documentation": "<p>The minimum tunable value of the hyperparameter.</p>"
        },
        "ScalingType": {
          "shape": "ScalingType",
          "documentation": "<p>The scale that hyperparameter tuning uses to search the hyperparameter range. Valid values:</p> <dl> <dt>Auto</dt> <dd> <p>Amazon Forecast hyperparameter tuning chooses the best scale for the hyperparameter.</p> </dd> <dt>Linear</dt> <dd> <p>Hyperparameter tuning searches the values in the hyperparameter range by using a linear scale.</p> </dd> <dt>Logarithmic</dt> <dd> <p>Hyperparameter tuning searches the values in the hyperparameter range by using a logarithmic scale.</p> <p>Logarithmic scaling works only for ranges that have values greater than 0.</p> </dd> <dt>ReverseLogarithmic</dt> <dd> <p>hyperparameter tuning searches the values in the hyperparameter range by using a reverse logarithmic scale.</p> <p>Reverse logarithmic scaling works only for ranges that are entirely within the range 0 &lt;= x &lt; 1.0.</p> </dd> </dl> <p>For information about choosing a hyperparameter scale, see <a href=\"http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type\">Hyperparameter Scaling</a>. One of the following values:</p>"
        }
      },
      "documentation": "<p>Specifies a continuous hyperparameter and it's range of tunable values. This object is part of the <a>ParameterRanges</a> object.</p>"
    },
    "ContinuousParameterRanges": {
      "type": "list",
      "member": {
        "shape": "ContinuousParameterRange"
      },
      "max": 20,
      "min": 1
    },
    "CreateDatasetGroupRequest": {
      "type": "structure",
      "required": [
        "DatasetGroupName",
        "Domain"
      ],
      "members": {
        "DatasetGroupName": {
          "shape": "Name",
          "documentation": "<p>A name for the dataset group.</p>"
        },
        "Domain": {
          "shape": "Domain",
          "documentation": "<p>The domain associated with the dataset group. When you add a dataset to a dataset group, this value and the value specified for the <code>Domain</code> parameter of the <a>CreateDataset</a> operation must match.</p> <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields that must be present in training data that you import to a dataset. For example, if you choose the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the <code>DatasetType</code>, Amazon Forecast requires that <code>item_id</code>, <code>timestamp</code>, and <code>demand</code> fields are present in your data. For more information, see <a>howitworks-datasets-groups</a>.</p>"
        },
        "DatasetArns": {
          "shape": "ArnList",
          "documentation": "<p>An array of Amazon Resource Names (ARNs) of the datasets that you want to include in the dataset group.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The optional metadata that you apply to the dataset group to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreateDatasetGroupResponse": {
      "type": "structure",
      "members": {
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        }
      }
    },
    "CreateDatasetImportJobRequest": {
      "type": "structure",
      "required": [
        "DatasetImportJobName",
        "DatasetArn",
        "DataSource"
      ],
      "members": {
        "DatasetImportJobName": {
          "shape": "Name",
          "documentation": "<p>The name for the dataset import job. We recommend including the current timestamp in the name, for example, <code>20190721DatasetImport</code>. This can help you avoid getting a <code>ResourceAlreadyExistsException</code> exception.</p>"
        },
        "DatasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon Forecast dataset that you want to import data to.</p>"
        },
        "DataSource": {
          "shape": "DataSource",
          "documentation": "<p>The location of the training data to import and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p> <p>If encryption is used, <code>DataSource</code> must include an AWS Key Management Service (KMS) key and the IAM role must allow Amazon Forecast permission to access the key. The KMS key and IAM role must match those specified in the <code>EncryptionConfig</code> parameter of the <a>CreateDataset</a> operation.</p>"
        },
        "TimestampFormat": {
          "shape": "TimestampFormat",
          "documentation": "<p>The format of timestamps in the dataset. The format that you specify depends on the <code>DataFrequency</code> specified when the dataset was created. The following formats are supported</p> <ul> <li> <p>\"yyyy-MM-dd\"</p> <p>For the following data frequencies: Y, M, W, and D</p> </li> <li> <p>\"yyyy-MM-dd HH:mm:ss\"</p> <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y, M, W, and D</p> </li> </ul> <p>If the format isn't specified, Amazon Forecast expects the format to be \"yyyy-MM-dd HH:mm:ss\".</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The optional metadata that you apply to the dataset import job to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreateDatasetImportJobResponse": {
      "type": "structure",
      "members": {
        "DatasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset import job.</p>"
        }
      }
    },
    "CreateDatasetRequest": {
      "type": "structure",
      "required": [
        "DatasetName",
        "Domain",
        "DatasetType",
        "Schema"
      ],
      "members": {
        "DatasetName": {
          "shape": "Name",
          "documentation": "<p>A name for the dataset.</p>"
        },
        "Domain": {
          "shape": "Domain",
          "documentation": "<p>The domain associated with the dataset. When you add a dataset to a dataset group, this value and the value specified for the <code>Domain</code> parameter of the <a>CreateDatasetGroup</a> operation must match.</p> <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields that must be present in the training data that you import to the dataset. For example, if you choose the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the <code>DatasetType</code>, Amazon Forecast requires <code>item_id</code>, <code>timestamp</code>, and <code>demand</code> fields to be present in your data. For more information, see <a>howitworks-datasets-groups</a>.</p>"
        },
        "DatasetType": {
          "shape": "DatasetType",
          "documentation": "<p>The dataset type. Valid values depend on the chosen <code>Domain</code>.</p>"
        },
        "DataFrequency": {
          "shape": "Frequency",
          "documentation": "<p>The frequency of data collection. This parameter is required for RELATED_TIME_SERIES datasets.</p> <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute). For example, \"D\" indicates every day and \"15min\" indicates every 15 minutes.</p>"
        },
        "Schema": {
          "shape": "Schema",
          "documentation": "<p>The schema for the dataset. The schema attributes and their order must match the fields in your data. The dataset <code>Domain</code> and <code>DatasetType</code> that you choose determine the minimum required fields in your training data. For information about the required fields for a specific dataset domain and type, see <a>howitworks-domains-ds-types</a>.</p>"
        },
        "EncryptionConfig": {
          "shape": "EncryptionConfig",
          "documentation": "<p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the key.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The optional metadata that you apply to the dataset to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreateDatasetResponse": {
      "type": "structure",
      "members": {
        "DatasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        }
      }
    },
    "CreateForecastExportJobRequest": {
      "type": "structure",
      "required": [
        "ForecastExportJobName",
        "ForecastArn",
        "Destination"
      ],
      "members": {
        "ForecastExportJobName": {
          "shape": "Name",
          "documentation": "<p>The name for the forecast export job.</p>"
        },
        "ForecastArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the forecast that you want to export.</p>"
        },
        "Destination": {
          "shape": "DataDestination",
          "documentation": "<p>The location where you want to save the forecast and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the location. The forecast must be exported to an Amazon S3 bucket.</p> <p>If encryption is used, <code>Destination</code> must include an AWS Key Management Service (KMS) key. The IAM role must allow Amazon Forecast permission to access the key.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The optional metadata that you apply to the forecast export job to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreateForecastExportJobResponse": {
      "type": "structure",
      "members": {
        "ForecastExportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the export job.</p>"
        }
      }
    },
    "CreateForecastRequest": {
      "type": "structure",
      "required": [
        "ForecastName",
        "PredictorArn"
      ],
      "members": {
        "ForecastName": {
          "shape": "Name",
          "documentation": "<p>A name for the forecast.</p>"
        },
        "PredictorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the predictor to use to generate the forecast.</p>"
        },
        "ForecastTypes": {
          "shape": "ForecastTypes",
          "documentation": "<p>The quantiles at which probabilistic forecasts are generated. <b>You can currently specify up to 5 quantiles per forecast</b>. Accepted values include <code>0.01 to 0.99</code> (increments of .01 only) and <code>mean</code>. The mean forecast is different from the median (0.50) when the distribution is not symmetric (for example, Beta and Negative Binomial). The default value is <code>[\"0.1\", \"0.5\", \"0.9\"]</code>.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The optional metadata that you apply to the forecast to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreateForecastResponse": {
      "type": "structure",
      "members": {
        "ForecastArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the forecast.</p>"
        }
      }
    },
    "CreatePredictorRequest": {
      "type": "structure",
      "required": [
        "PredictorName",
        "ForecastHorizon",
        "InputDataConfig",
        "FeaturizationConfig"
      ],
      "members": {
        "PredictorName": {
          "shape": "Name",
          "documentation": "<p>A name for the predictor.</p>"
        },
        "AlgorithmArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the algorithm to use for model training. Required if <code>PerformAutoML</code> is not set to <code>true</code>.</p> <p class=\"title\"> <b>Supported algorithms:</b> </p> <ul> <li> <p> <code>arn:aws:forecast:::algorithm/ARIMA</code> </p> </li> <li> <p> <code>arn:aws:forecast:::algorithm/Deep_AR_Plus</code> </p> <p>Supports hyperparameter optimization (HPO)</p> </li> <li> <p> <code>arn:aws:forecast:::algorithm/ETS</code> </p> </li> <li> <p> <code>arn:aws:forecast:::algorithm/NPTS</code> </p> </li> <li> <p> <code>arn:aws:forecast:::algorithm/Prophet</code> </p> </li> </ul>"
        },
        "ForecastHorizon": {
          "shape": "Integer",
          "documentation": "<p>Specifies the number of time-steps that the model is trained to predict. The forecast horizon is also called the prediction length.</p> <p>For example, if you configure a dataset for daily data collection (using the <code>DataFrequency</code> parameter of the <a>CreateDataset</a> operation) and set the forecast horizon to 10, the model returns predictions for 10 days.</p> <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the TARGET_TIME_SERIES dataset length.</p>"
        },
        "PerformAutoML": {
          "shape": "Boolean",
          "documentation": "<p>Whether to perform AutoML. When Amazon Forecast performs AutoML, it evaluates the algorithms it provides and chooses the best algorithm and configuration for your training dataset.</p> <p>The default value is <code>false</code>. In this case, you are required to specify an algorithm.</p> <p>Set <code>PerformAutoML</code> to <code>true</code> to have Amazon Forecast perform AutoML. This is a good option if you aren't sure which algorithm is suitable for your training data. In this case, <code>PerformHPO</code> must be false.</p>"
        },
        "PerformHPO": {
          "shape": "Boolean",
          "documentation": "<p>Whether to perform hyperparameter optimization (HPO). HPO finds optimal hyperparameter values for your training data. The process of performing HPO is known as running a hyperparameter tuning job.</p> <p>The default value is <code>false</code>. In this case, Amazon Forecast uses default hyperparameter values from the chosen algorithm.</p> <p>To override the default values, set <code>PerformHPO</code> to <code>true</code> and, optionally, supply the <a>HyperParameterTuningJobConfig</a> object. The tuning job specifies a metric to optimize, which hyperparameters participate in tuning, and the valid range for each tunable hyperparameter. In this case, you are required to specify an algorithm and <code>PerformAutoML</code> must be false.</p> <p>The following algorithm supports HPO:</p> <ul> <li> <p>DeepAR+</p> </li> </ul>"
        },
        "TrainingParameters": {
          "shape": "TrainingParameters",
          "documentation": "<p>The hyperparameters to override for model training. The hyperparameters that you can override are listed in the individual algorithms. For the list of supported algorithms, see <a>aws-forecast-choosing-recipes</a>.</p>"
        },
        "EvaluationParameters": {
          "shape": "EvaluationParameters",
          "documentation": "<p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast evaluates a predictor by splitting a dataset into training data and testing data. The evaluation parameters define how to perform the split and the number of iterations.</p>"
        },
        "HPOConfig": {
          "shape": "HyperParameterTuningJobConfig",
          "documentation": "<p>Provides hyperparameter override values for the algorithm. If you don't provide this parameter, Amazon Forecast uses default values. The individual algorithms specify which hyperparameters support hyperparameter optimization (HPO). For more information, see <a>aws-forecast-choosing-recipes</a>.</p> <p>If you included the <code>HPOConfig</code> object, you must set <code>PerformHPO</code> to true.</p>"
        },
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>Describes the dataset group that contains the data to use to train the predictor.</p>"
        },
        "FeaturizationConfig": {
          "shape": "FeaturizationConfig",
          "documentation": "<p>The featurization configuration.</p>"
        },
        "EncryptionConfig": {
          "shape": "EncryptionConfig",
          "documentation": "<p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the key.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The optional metadata that you apply to the predictor to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreatePredictorResponse": {
      "type": "structure",
      "members": {
        "PredictorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the predictor.</p>"
        }
      }
    },
    "DataDestination": {
      "type": "structure",
      "required": [
        "S3Config"
      ],
      "members": {
        "S3Config": {
          "shape": "S3Config",
          "documentation": "<p>The path to an Amazon Simple Storage Service (Amazon S3) bucket along with the credentials to access the bucket.</p>"
        }
      },
      "documentation": "<p>The destination for an exported forecast, an AWS Identity and Access Management (IAM) role that allows Amazon Forecast to access the location and, optionally, an AWS Key Management Service (KMS) key. This object is submitted in the <a>CreateForecastExportJob</a> request.</p>"
    },
    "DataSource": {
      "type": "structure",
      "required": [
        "S3Config"
      ],
      "members": {
        "S3Config": {
          "shape": "S3Config",
          "documentation": "<p>The path to the training data stored in an Amazon Simple Storage Service (Amazon S3) bucket along with the credentials to access the data.</p>"
        }
      },
      "documentation": "<p>The source of your training data, an AWS Identity and Access Management (IAM) role that allows Amazon Forecast to access the data and, optionally, an AWS Key Management Service (KMS) key. This object is submitted in the <a>CreateDatasetImportJob</a> request.</p>"
    },
    "DatasetGroupSummary": {
      "type": "structure",
      "members": {
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        },
        "DatasetGroupName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset group.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset group was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset group was created or last updated from a call to the <a>UpdateDatasetGroup</a> operation. While the dataset group is being updated, <code>LastModificationTime</code> is the current time of the <code>ListDatasetGroups</code> call.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the dataset group properties used in the <a>ListDatasetGroups</a> operation. To get the complete set of properties, call the <a>DescribeDatasetGroup</a> operation, and provide the <code>DatasetGroupArn</code>.</p>"
    },
    "DatasetGroups": {
      "type": "list",
      "member": {
        "shape": "DatasetGroupSummary"
      }
    },
    "DatasetImportJobSummary": {
      "type": "structure",
      "members": {
        "DatasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset import job.</p>"
        },
        "DatasetImportJobName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset import job.</p>"
        },
        "DataSource": {
          "shape": "DataSource",
          "documentation": "<p>The location of the training data to import and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p> <p>If encryption is used, <code>DataSource</code> includes an AWS Key Management Service (KMS) key.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset import job. The status is reflected in the status of the dataset. For example, when the import job status is <code>CREATE_IN_PROGRESS</code>, the status of the dataset is <code>UPDATE_IN_PROGRESS</code>. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> </ul>"
        },
        "Message": {
          "shape": "ErrorMessage",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset import job was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that the dataset was modified. The time depends on the status of the job, as follows:</p> <ul> <li> <p> <code>CREATE_PENDING</code> - The same time as <code>CreationTime</code>.</p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p> </li> <li> <p> <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or failed.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Provides a summary of the dataset import job properties used in the <a>ListDatasetImportJobs</a> operation. To get the complete set of properties, call the <a>DescribeDatasetImportJob</a> operation, and provide the <code>DatasetImportJobArn</code>.</p>"
    },
    "DatasetImportJobs": {
      "type": "list",
      "member": {
        "shape": "DatasetImportJobSummary"
      }
    },
    "DatasetSummary": {
      "type": "structure",
      "members": {
        "DatasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DatasetName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset.</p>"
        },
        "DatasetType": {
          "shape": "DatasetType",
          "documentation": "<p>The dataset type.</p>"
        },
        "Domain": {
          "shape": "Domain",
          "documentation": "<p>The domain associated with the dataset.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When you create a dataset, <code>LastModificationTime</code> is the same as <code>CreationTime</code>. While data is being imported to the dataset, <code>LastModificationTime</code> is the current time of the <code>ListDatasets</code> call. After a <a>CreateDatasetImportJob</a> operation has finished, <code>LastModificationTime</code> is when the import job completed or failed.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the dataset properties used in the <a>ListDatasets</a> operation. To get the complete set of properties, call the <a>DescribeDataset</a> operation, and provide the <code>DatasetArn</code>.</p>"
    },
    "DatasetType": {
      "type": "string",
      "enum": [
        "TARGET_TIME_SERIES",
        "RELATED_TIME_SERIES",
        "ITEM_METADATA"
      ]
    },
    "Datasets": {
      "type": "list",
      "member": {
        "shape": "DatasetSummary"
      }
    },
    "DeleteDatasetGroupRequest": {
      "type": "structure",
      "required": [
        "DatasetGroupArn"
      ],
      "members": {
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group to delete.</p>"
        }
      }
    },
    "DeleteDatasetImportJobRequest": {
      "type": "structure",
      "required": [
        "DatasetImportJobArn"
      ],
      "members": {
        "DatasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset import job to delete.</p>"
        }
      }
    },
    "DeleteDatasetRequest": {
      "type": "structure",
      "required": [
        "DatasetArn"
      ],
      "members": {
        "DatasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset to delete.</p>"
        }
      }
    },
    "DeleteForecastExportJobRequest": {
      "type": "structure",
      "required": [
        "ForecastExportJobArn"
      ],
      "members": {
        "ForecastExportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the forecast export job to delete.</p>"
        }
      }
    },
    "DeleteForecastRequest": {
      "type": "structure",
      "required": [
        "ForecastArn"
      ],
      "members": {
        "ForecastArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the forecast to delete.</p>"
        }
      }
    },
    "DeletePredictorRequest": {
      "type": "structure",
      "required": [
        "PredictorArn"
      ],
      "members": {
        "PredictorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the predictor to delete.</p>"
        }
      }
    },
    "DescribeDatasetGroupRequest": {
      "type": "structure",
      "required": [
        "DatasetGroupArn"
      ],
      "members": {
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        }
      }
    },
    "DescribeDatasetGroupResponse": {
      "type": "structure",
      "members": {
        "DatasetGroupName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset group.</p>"
        },
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group.</p>"
        },
        "DatasetArns": {
          "shape": "ArnList",
          "documentation": "<p>An array of Amazon Resource Names (ARNs) of the datasets contained in the dataset group.</p>"
        },
        "Domain": {
          "shape": "Domain",
          "documentation": "<p>The domain associated with the dataset group.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset group. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> <li> <p> <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>, <code>UPDATE_FAILED</code> </p> </li> </ul> <p>The <code>UPDATE</code> states apply when you call the <a>UpdateDatasetGroup</a> operation.</p> <note> <p>The <code>Status</code> of the dataset group must be <code>ACTIVE</code> before you can use the dataset group to create a predictor.</p> </note>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset group was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset group was created or last updated from a call to the <a>UpdateDatasetGroup</a> operation. While the dataset group is being updated, <code>LastModificationTime</code> is the current time of the <code>DescribeDatasetGroup</code> call.</p>"
        }
      }
    },
    "DescribeDatasetImportJobRequest": {
      "type": "structure",
      "required": [
        "DatasetImportJobArn"
      ],
      "members": {
        "DatasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset import job.</p>"
        }
      }
    },
    "DescribeDatasetImportJobResponse": {
      "type": "structure",
      "members": {
        "DatasetImportJobName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset import job.</p>"
        },
        "DatasetImportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset import job.</p>"
        },
        "DatasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset that the training data was imported to.</p>"
        },
        "TimestampFormat": {
          "shape": "TimestampFormat",
          "documentation": "<p>The format of timestamps in the dataset. The format that you specify depends on the <code>DataFrequency</code> specified when the dataset was created. The following formats are supported</p> <ul> <li> <p>\"yyyy-MM-dd\"</p> <p>For the following data frequencies: Y, M, W, and D</p> </li> <li> <p>\"yyyy-MM-dd HH:mm:ss\"</p> <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y, M, W, and D</p> </li> </ul>"
        },
        "DataSource": {
          "shape": "DataSource",
          "documentation": "<p>The location of the training data to import and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the data.</p> <p>If encryption is used, <code>DataSource</code> includes an AWS Key Management Service (KMS) key.</p>"
        },
        "FieldStatistics": {
          "shape": "FieldStatistics",
          "documentation": "<p>Statistical information about each field in the input data.</p>"
        },
        "DataSize": {
          "shape": "Double",
          "documentation": "<p>The size of the dataset in gigabytes (GB) after the import job has finished.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset import job. The status is reflected in the status of the dataset. For example, when the import job status is <code>CREATE_IN_PROGRESS</code>, the status of the dataset is <code>UPDATE_IN_PROGRESS</code>. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> </ul>"
        },
        "Message": {
          "shape": "Message",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset import job was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that the dataset was modified. The time depends on the status of the job, as follows:</p> <ul> <li> <p> <code>CREATE_PENDING</code> - The same time as <code>CreationTime</code>.</p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> - The current timestamp.</p> </li> <li> <p> <code>ACTIVE</code> or <code>CREATE_FAILED</code> - When the job finished or failed.</p> </li> </ul>"
        }
      }
    },
    "DescribeDatasetRequest": {
      "type": "structure",
      "required": [
        "DatasetArn"
      ],
      "members": {
        "DatasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        }
      }
    },
    "DescribeDatasetResponse": {
      "type": "structure",
      "members": {
        "DatasetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DatasetName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset.</p>"
        },
        "Domain": {
          "shape": "Domain",
          "documentation": "<p>The domain associated with the dataset.</p>"
        },
        "DatasetType": {
          "shape": "DatasetType",
          "documentation": "<p>The dataset type.</p>"
        },
        "DataFrequency": {
          "shape": "Frequency",
          "documentation": "<p>The frequency of data collection.</p> <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute). For example, \"M\" indicates every month and \"30min\" indicates every 30 minutes.</p>"
        },
        "Schema": {
          "shape": "Schema",
          "documentation": "<p>An array of <code>SchemaAttribute</code> objects that specify the dataset fields. Each <code>SchemaAttribute</code> specifies the name and data type of a field.</p>"
        },
        "EncryptionConfig": {
          "shape": "EncryptionConfig",
          "documentation": "<p>The AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the key.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the dataset. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> <li> <p> <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>, <code>UPDATE_FAILED</code> </p> </li> </ul> <p>The <code>UPDATE</code> states apply while data is imported to the dataset from a call to the <a>CreateDatasetImportJob</a> operation and reflect the status of the dataset import job. For example, when the import job status is <code>CREATE_IN_PROGRESS</code>, the status of the dataset is <code>UPDATE_IN_PROGRESS</code>.</p> <note> <p>The <code>Status</code> of the dataset must be <code>ACTIVE</code> before you can import training data.</p> </note>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the dataset was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When you create a dataset, <code>LastModificationTime</code> is the same as <code>CreationTime</code>. While data is being imported to the dataset, <code>LastModificationTime</code> is the current time of the <code>DescribeDataset</code> call. After a <a>CreateDatasetImportJob</a> operation has finished, <code>LastModificationTime</code> is when the import job completed or failed.</p>"
        }
      }
    },
    "DescribeForecastExportJobRequest": {
      "type": "structure",
      "required": [
        "ForecastExportJobArn"
      ],
      "members": {
        "ForecastExportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the forecast export job.</p>"
        }
      }
    },
    "DescribeForecastExportJobResponse": {
      "type": "structure",
      "members": {
        "ForecastExportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the forecast export job.</p>"
        },
        "ForecastExportJobName": {
          "shape": "Name",
          "documentation": "<p>The name of the forecast export job.</p>"
        },
        "ForecastArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the exported forecast.</p>"
        },
        "Destination": {
          "shape": "DataDestination",
          "documentation": "<p>The path to the Amazon Simple Storage Service (Amazon S3) bucket where the forecast is exported.</p>"
        },
        "Message": {
          "shape": "Message",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the forecast export job. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> </ul> <note> <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before you can access the forecast in your S3 bucket.</p> </note>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the forecast export job was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the last successful export job finished.</p>"
        }
      }
    },
    "DescribeForecastRequest": {
      "type": "structure",
      "required": [
        "ForecastArn"
      ],
      "members": {
        "ForecastArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the forecast.</p>"
        }
      }
    },
    "DescribeForecastResponse": {
      "type": "structure",
      "members": {
        "ForecastArn": {
          "shape": "Arn",
          "documentation": "<p>The forecast ARN as specified in the request.</p>"
        },
        "ForecastName": {
          "shape": "Name",
          "documentation": "<p>The name of the forecast.</p>"
        },
        "ForecastTypes": {
          "shape": "ForecastTypes",
          "documentation": "<p>The quantiles at which probabilistic forecasts were generated.</p>"
        },
        "PredictorArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the predictor used to generate the forecast.</p>"
        },
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group that provided the data used to train the predictor.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the forecast. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> </ul> <note> <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query or export the forecast.</p> </note>"
        },
        "Message": {
          "shape": "ErrorMessage",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the forecast creation task was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Initially, the same as <code>CreationTime</code> (status is <code>CREATE_PENDING</code>). Updated when inference (creating the forecast) starts (status changed to <code>CREATE_IN_PROGRESS</code>), and when inference is complete (status changed to <code>ACTIVE</code>) or fails (status changed to <code>CREATE_FAILED</code>).</p>"
        }
      }
    },
    "DescribePredictorRequest": {
      "type": "structure",
      "required": [
        "PredictorArn"
      ],
      "members": {
        "PredictorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the predictor that you want information about.</p>"
        }
      }
    },
    "DescribePredictorResponse": {
      "type": "structure",
      "members": {
        "PredictorArn": {
          "shape": "Name",
          "documentation": "<p>The ARN of the predictor.</p>"
        },
        "PredictorName": {
          "shape": "Name",
          "documentation": "<p>The name of the predictor.</p>"
        },
        "AlgorithmArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the algorithm used for model training.</p>"
        },
        "ForecastHorizon": {
          "shape": "Integer",
          "documentation": "<p>The number of time-steps of the forecast. The forecast horizon is also called the prediction length.</p>"
        },
        "PerformAutoML": {
          "shape": "Boolean",
          "documentation": "<p>Whether the predictor is set to perform AutoML.</p>"
        },
        "PerformHPO": {
          "shape": "Boolean",
          "documentation": "<p>Whether the predictor is set to perform hyperparameter optimization (HPO).</p>"
        },
        "TrainingParameters": {
          "shape": "TrainingParameters",
          "documentation": "<p>The default training parameters or overrides selected during model training. If using the AutoML algorithm or if HPO is turned on while using the DeepAR+ algorithms, the optimized values for the chosen hyperparameters are returned. For more information, see <a>aws-forecast-choosing-recipes</a>.</p>"
        },
        "EvaluationParameters": {
          "shape": "EvaluationParameters",
          "documentation": "<p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast evaluates a predictor by splitting a dataset into training data and testing data. The evaluation parameters define how to perform the split and the number of iterations.</p>"
        },
        "HPOConfig": {
          "shape": "HyperParameterTuningJobConfig",
          "documentation": "<p>The hyperparameter override values for the algorithm.</p>"
        },
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>Describes the dataset group that contains the data to use to train the predictor.</p>"
        },
        "FeaturizationConfig": {
          "shape": "FeaturizationConfig",
          "documentation": "<p>The featurization configuration.</p>"
        },
        "EncryptionConfig": {
          "shape": "EncryptionConfig",
          "documentation": "<p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the key.</p>"
        },
        "PredictorExecutionDetails": {
          "shape": "PredictorExecutionDetails",
          "documentation": "<p>Details on the the status and results of the backtests performed to evaluate the accuracy of the predictor. You specify the number of backtests to perform when you call the operation.</p>"
        },
        "DatasetImportJobArns": {
          "shape": "ArnList",
          "documentation": "<p>An array of the ARNs of the dataset import jobs used to import training data for the predictor.</p>"
        },
        "AutoMLAlgorithmArns": {
          "shape": "ArnList",
          "documentation": "<p>When <code>PerformAutoML</code> is specified, the ARN of the chosen algorithm.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the predictor. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> <li> <p> <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>, <code>UPDATE_FAILED</code> </p> </li> </ul> <note> <p>The <code>Status</code> of the predictor must be <code>ACTIVE</code> before you can use the predictor to create a forecast.</p> </note>"
        },
        "Message": {
          "shape": "Message",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the model training task was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Initially, the same as <code>CreationTime</code> (when the status is <code>CREATE_PENDING</code>). This value is updated when training starts (when the status changes to <code>CREATE_IN_PROGRESS</code>), and when training has completed (when the status changes to <code>ACTIVE</code>) or fails (when the status changes to <code>CREATE_FAILED</code>).</p>"
        }
      }
    },
    "Domain": {
      "type": "string",
      "enum": [
        "RETAIL",
        "CUSTOM",
        "INVENTORY_PLANNING",
        "EC2_CAPACITY",
        "WORK_FORCE",
        "WEB_TRAFFIC",
        "METRICS"
      ]
    },
    "Double": {
      "type": "double"
    },
    "EncryptionConfig": {
      "type": "structure",
      "required": [
        "RoleArn",
        "KMSKeyArn"
      ],
      "members": {
        "RoleArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the IAM role that Amazon Forecast can assume to access the AWS KMS key.</p> <p>Passing a role across AWS accounts is not allowed. If you pass a role that isn't in your account, you get an <code>InvalidInputException</code> error.</p>"
        },
        "KMSKeyArn": {
          "shape": "KMSKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the KMS key.</p>"
        }
      },
      "documentation": "<p>An AWS Key Management Service (KMS) key and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the key. You can specify this optional object in the <a>CreateDataset</a> and <a>CreatePredictor</a> requests.</p>"
    },
    "ErrorMessage": {
      "type": "string"
    },
    "EvaluationParameters": {
      "type": "structure",
      "members": {
        "NumberOfBacktestWindows": {
          "shape": "Integer",
          "documentation": "<p>The number of times to split the input data. The default is 1. Valid values are 1 through 5.</p>"
        },
        "BackTestWindowOffset": {
          "shape": "Integer",
          "documentation": "<p>The point from the end of the dataset where you want to split the data for model training and testing (evaluation). Specify the value as the number of data points. The default is the value of the forecast horizon. <code>BackTestWindowOffset</code> can be used to mimic a past virtual forecast start date. This value must be greater than or equal to the forecast horizon and less than half of the TARGET_TIME_SERIES dataset length.</p> <p> <code>ForecastHorizon</code> &lt;= <code>BackTestWindowOffset</code> &lt; 1/2 * TARGET_TIME_SERIES dataset length</p>"
        }
      },
      "documentation": "<p>Parameters that define how to split a dataset into training data and testing data, and the number of iterations to perform. These parameters are specified in the predefined algorithms but you can override them in the <a>CreatePredictor</a> request.</p>"
    },
    "EvaluationResult": {
      "type": "structure",
      "members": {
        "AlgorithmArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the algorithm that was evaluated.</p>"
        },
        "TestWindows": {
          "shape": "TestWindows",
          "documentation": "<p>The array of test windows used for evaluating the algorithm. The <code>NumberOfBacktestWindows</code> from the <a>EvaluationParameters</a> object determines the number of windows in the array.</p>"
        }
      },
      "documentation": "<p>The results of evaluating an algorithm. Returned as part of the <a>GetAccuracyMetrics</a> response.</p>"
    },
    "EvaluationType": {
      "type": "string",
      "enum": [
        "SUMMARY",
        "COMPUTED"
      ]
    },
    "Featurization": {
      "type": "structure",
      "required": [
        "AttributeName"
      ],
      "members": {
        "AttributeName": {
          "shape": "Name",
          "documentation": "<p>The name of the schema attribute that specifies the data field to be featurized. Amazon Forecast supports the target field of the <code>TARGET_TIME_SERIES</code> and the <code>RELATED_TIME_SERIES</code> datasets. For example, for the <code>RETAIL</code> domain, the target is <code>demand</code>, and for the <code>CUSTOM</code> domain, the target is <code>target_value</code>. For more information, see <a>howitworks-missing-values</a>.</p>"
        },
        "FeaturizationPipeline": {
          "shape": "FeaturizationPipeline",
          "documentation": "<p>An array of one <code>FeaturizationMethod</code> object that specifies the feature transformation method.</p>"
        }
      },
      "documentation": "<p>Provides featurization (transformation) information for a dataset field. This object is part of the <a>FeaturizationConfig</a> object.</p> <p>For example:</p> <p> <code>{</code> </p> <p> <code>\"AttributeName\": \"demand\",</code> </p> <p> <code>FeaturizationPipeline [ {</code> </p> <p> <code>\"FeaturizationMethodName\": \"filling\",</code> </p> <p> <code>\"FeaturizationMethodParameters\": {\"aggregation\": \"avg\", \"backfill\": \"nan\"}</code> </p> <p> <code>} ]</code> </p> <p> <code>}</code> </p>"
    },
    "FeaturizationConfig": {
      "type": "structure",
      "required": [
        "ForecastFrequency"
      ],
      "members": {
        "ForecastFrequency": {
          "shape": "Frequency",
          "documentation": "<p>The frequency of predictions in a forecast.</p> <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute). For example, \"Y\" indicates every year and \"5min\" indicates every five minutes.</p> <p>The frequency must be greater than or equal to the TARGET_TIME_SERIES dataset frequency.</p> <p>When a RELATED_TIME_SERIES dataset is provided, the frequency must be equal to the RELATED_TIME_SERIES dataset frequency.</p>"
        },
        "ForecastDimensions": {
          "shape": "ForecastDimensions",
          "documentation": "<p>An array of dimension (field) names that specify how to group the generated forecast.</p> <p>For example, suppose that you are generating a forecast for item sales across all of your stores, and your dataset contains a <code>store_id</code> field. If you want the sales forecast for each item by store, you would specify <code>store_id</code> as the dimension.</p> <p>All forecast dimensions specified in the <code>TARGET_TIME_SERIES</code> dataset don't need to be specified in the <code>CreatePredictor</code> request. All forecast dimensions specified in the <code>RELATED_TIME_SERIES</code> dataset must be specified in the <code>CreatePredictor</code> request.</p>"
        },
        "Featurizations": {
          "shape": "Featurizations",
          "documentation": "<p>An array of featurization (transformation) information for the fields of a dataset.</p>"
        }
      },
      "documentation": "<p>In a <a>CreatePredictor</a> operation, the specified algorithm trains a model using the specified dataset group. You can optionally tell the operation to modify data fields prior to training a model. These modifications are referred to as <i>featurization</i>.</p> <p>You define featurization using the <code>FeaturizationConfig</code> object. You specify an array of transformations, one for each field that you want to featurize. You then include the <code>FeaturizationConfig</code> object in your <code>CreatePredictor</code> request. Amazon Forecast applies the featurization to the <code>TARGET_TIME_SERIES</code> and <code>RELATED_TIME_SERIES</code> datasets before model training.</p> <p>You can create multiple featurization configurations. For example, you might call the <code>CreatePredictor</code> operation twice by specifying different featurization configurations.</p>"
    },
    "FeaturizationMethod": {
      "type": "structure",
      "required": [
        "FeaturizationMethodName"
      ],
      "members": {
        "FeaturizationMethodName": {
          "shape": "FeaturizationMethodName",
          "documentation": "<p>The name of the method. The \"filling\" method is the only supported method.</p>"
        },
        "FeaturizationMethodParameters": {
          "shape": "FeaturizationMethodParameters",
          "documentation": "<p>The method parameters (key-value pairs), which are a map of override parameters. Specify these parameters to override the default values. Related Time Series attributes do not accept aggregation parameters.</p> <p>The following list shows the parameters and their valid values for the \"filling\" featurization method for a <b>Target Time Series</b> dataset. Bold signifies the default value.</p> <ul> <li> <p> <code>aggregation</code>: <b>sum</b>, <code>avg</code>, <code>first</code>, <code>min</code>, <code>max</code> </p> </li> <li> <p> <code>frontfill</code>: <b>none</b> </p> </li> <li> <p> <code>middlefill</code>: <b>zero</b>, <code>nan</code> (not a number), <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code> </p> </li> <li> <p> <code>backfill</code>: <b>zero</b>, <code>nan</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code> </p> </li> </ul> <p>The following list shows the parameters and their valid values for a <b>Related Time Series</b> featurization method (there are no defaults):</p> <ul> <li> <p> <code>middlefill</code>: <code>zero</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code> </p> </li> <li> <p> <code>backfill</code>: <code>zero</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code> </p> </li> <li> <p> <code>futurefill</code>: <code>zero</code>, <code>value</code>, <code>median</code>, <code>mean</code>, <code>min</code>, <code>max</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p>Provides information about the method that featurizes (transforms) a dataset field. The method is part of the <code>FeaturizationPipeline</code> of the <a>Featurization</a> object. </p> <p>The following is an example of how you specify a <code>FeaturizationMethod</code> object.</p> <p> <code>{</code> </p> <p> <code>\"FeaturizationMethodName\": \"filling\",</code> </p> <p> <code>\"FeaturizationMethodParameters\": {\"aggregation\": \"sum\", \"middlefill\": \"zero\", \"backfill\": \"zero\"}</code> </p> <p> <code>}</code> </p>"
    },
    "FeaturizationMethodName": {
      "type": "string",
      "enum": [
        "filling"
      ]
    },
    "FeaturizationMethodParameters": {
      "type": "map",
      "key": {
        "shape": "ParameterKey"
      },
      "value": {
        "shape": "ParameterValue"
      },
      "max": 20,
      "min": 1
    },
    "FeaturizationPipeline": {
      "type": "list",
      "member": {
        "shape": "FeaturizationMethod"
      },
      "max": 1,
      "min": 1
    },
    "Featurizations": {
      "type": "list",
      "member": {
        "shape": "Featurization"
      },
      "max": 50,
      "min": 1
    },
    "FieldStatistics": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "Statistics"
      }
    },
    "Filter": {
      "type": "structure",
      "required": [
        "Key",
        "Value",
        "Condition"
      ],
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>The name of the parameter to filter on.</p>"
        },
        "Value": {
          "shape": "Arn",
          "documentation": "<p>The value to match.</p>"
        },
        "Condition": {
          "shape": "FilterConditionString",
          "documentation": "<p>The condition to apply. To include the objects that match the statement, specify <code>IS</code>. To exclude matching objects, specify <code>IS_NOT</code>.</p>"
        }
      },
      "documentation": "<p>Describes a filter for choosing a subset of objects. Each filter consists of a condition and a match statement. The condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the objects that match the statement, respectively. The match statement consists of a key and a value.</p>"
    },
    "FilterConditionString": {
      "type": "string",
      "enum": [
        "IS",
        "IS_NOT"
      ]
    },
    "Filters": {
      "type": "list",
      "member": {
        "shape": "Filter"
      }
    },
    "ForecastDimensions": {
      "type": "list",
      "member": {
        "shape": "Name"
      },
      "max": 5,
      "min": 1
    },
    "ForecastExportJobSummary": {
      "type": "structure",
      "members": {
        "ForecastExportJobArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the forecast export job.</p>"
        },
        "ForecastExportJobName": {
          "shape": "Name",
          "documentation": "<p>The name of the forecast export job.</p>"
        },
        "Destination": {
          "shape": "DataDestination",
          "documentation": "<p>The path to the Amazon Simple Storage Service (Amazon S3) bucket where the forecast is exported.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the forecast export job. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> </ul> <note> <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before you can access the forecast in your S3 bucket.</p> </note>"
        },
        "Message": {
          "shape": "ErrorMessage",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the forecast export job was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the last successful export job finished.</p>"
        }
      },
      "documentation": "<p>Provides a summary of the forecast export job properties used in the <a>ListForecastExportJobs</a> operation. To get the complete set of properties, call the <a>DescribeForecastExportJob</a> operation, and provide the listed <code>ForecastExportJobArn</code>.</p>"
    },
    "ForecastExportJobs": {
      "type": "list",
      "member": {
        "shape": "ForecastExportJobSummary"
      }
    },
    "ForecastSummary": {
      "type": "structure",
      "members": {
        "ForecastArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the forecast.</p>"
        },
        "ForecastName": {
          "shape": "Name",
          "documentation": "<p>The name of the forecast.</p>"
        },
        "PredictorArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the predictor used to generate the forecast.</p>"
        },
        "DatasetGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group that provided the data used to train the predictor.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the forecast. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> </ul> <note> <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query or export the forecast.</p> </note>"
        },
        "Message": {
          "shape": "ErrorMessage",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the forecast creation task was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Initially, the same as <code>CreationTime</code> (status is <code>CREATE_PENDING</code>). Updated when inference (creating the forecast) starts (status changed to <code>CREATE_IN_PROGRESS</code>), and when inference is complete (status changed to <code>ACTIVE</code>) or fails (status changed to <code>CREATE_FAILED</code>).</p>"
        }
      },
      "documentation": "<p>Provides a summary of the forecast properties used in the <a>ListForecasts</a> operation. To get the complete set of properties, call the <a>DescribeForecast</a> operation, and provide the <code>ForecastArn</code> that is listed in the summary.</p>"
    },
    "ForecastType": {
      "type": "string",
      "pattern": "(^0?\\.\\d\\d?$|^mean$)"
    },
    "ForecastTypes": {
      "type": "list",
      "member": {
        "shape": "ForecastType"
      },
      "max": 20,
      "min": 1
    },
    "Forecasts": {
      "type": "list",
      "member": {
        "shape": "ForecastSummary"
      }
    },
    "Frequency": {
      "type": "string",
      "pattern": "^Y|M|W|D|H|30min|15min|10min|5min|1min$"
    },
    "GetAccuracyMetricsRequest": {
      "type": "structure",
      "required": [
        "PredictorArn"
      ],
      "members": {
        "PredictorArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the predictor to get metrics for.</p>"
        }
      }
    },
    "GetAccuracyMetricsResponse": {
      "type": "structure",
      "members": {
        "PredictorEvaluationResults": {
          "shape": "PredictorEvaluationResults",
          "documentation": "<p>An array of results from evaluating the predictor.</p>"
        }
      }
    },
    "HyperParameterTuningJobConfig": {
      "type": "structure",
      "members": {
        "ParameterRanges": {
          "shape": "ParameterRanges",
          "documentation": "<p>Specifies the ranges of valid values for the hyperparameters.</p>"
        }
      },
      "documentation": "<p>Configuration information for a hyperparameter tuning job. You specify this object in the <a>CreatePredictor</a> request.</p> <p>A <i>hyperparameter</i> is a parameter that governs the model training process. You set hyperparameters before training starts, unlike model parameters, which are determined during training. The values of the hyperparameters effect which values are chosen for the model parameters.</p> <p>In a <i>hyperparameter tuning job</i>, Amazon Forecast chooses the set of hyperparameter values that optimize a specified metric. Forecast accomplishes this by running many training jobs over a range of hyperparameter values. The optimum set of values depends on the algorithm, the training data, and the specified metric objective.</p>"
    },
    "InputDataConfig": {
      "type": "structure",
      "required": [
        "DatasetGroupArn"
      ],
      "members": {
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group.</p>"
        },
        "SupplementaryFeatures": {
          "shape": "SupplementaryFeatures",
          "documentation": "<p>An array of supplementary features. The only supported feature is a holiday calendar.</p>"
        }
      },
      "documentation": "<p>The data used to train a predictor. The data includes a dataset group and any supplementary features. You specify this object in the <a>CreatePredictor</a> request.</p>"
    },
    "Integer": {
      "type": "integer"
    },
    "IntegerParameterRange": {
      "type": "structure",
      "required": [
        "Name",
        "MaxValue",
        "MinValue"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the hyperparameter to tune.</p>"
        },
        "MaxValue": {
          "shape": "Integer",
          "documentation": "<p>The maximum tunable value of the hyperparameter.</p>"
        },
        "MinValue": {
          "shape": "Integer",
          "documentation": "<p>The minimum tunable value of the hyperparameter.</p>"
        },
        "ScalingType": {
          "shape": "ScalingType",
          "documentation": "<p>The scale that hyperparameter tuning uses to search the hyperparameter range. Valid values:</p> <dl> <dt>Auto</dt> <dd> <p>Amazon Forecast hyperparameter tuning chooses the best scale for the hyperparameter.</p> </dd> <dt>Linear</dt> <dd> <p>Hyperparameter tuning searches the values in the hyperparameter range by using a linear scale.</p> </dd> <dt>Logarithmic</dt> <dd> <p>Hyperparameter tuning searches the values in the hyperparameter range by using a logarithmic scale.</p> <p>Logarithmic scaling works only for ranges that have values greater than 0.</p> </dd> <dt>ReverseLogarithmic</dt> <dd> <p>Not supported for <code>IntegerParameterRange</code>.</p> <p>Reverse logarithmic scaling works only for ranges that are entirely within the range 0 &lt;= x &lt; 1.0.</p> </dd> </dl> <p>For information about choosing a hyperparameter scale, see <a href=\"http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type\">Hyperparameter Scaling</a>. One of the following values:</p>"
        }
      },
      "documentation": "<p>Specifies an integer hyperparameter and it's range of tunable values. This object is part of the <a>ParameterRanges</a> object.</p>"
    },
    "IntegerParameterRanges": {
      "type": "list",
      "member": {
        "shape": "IntegerParameterRange"
      },
      "max": 20,
      "min": 1
    },
    "KMSKeyArn": {
      "type": "string",
      "max": 256,
      "pattern": "arn:aws:kms:.*:key/.*"
    },
    "ListDatasetGroupsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to return in the response.</p>"
        }
      }
    },
    "ListDatasetGroupsResponse": {
      "type": "structure",
      "members": {
        "DatasetGroups": {
          "shape": "DatasetGroups",
          "documentation": "<p>An array of objects that summarize each dataset group's properties.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>"
        }
      }
    },
    "ListDatasetImportJobsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to return in the response.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the datasets that match the statement from the list, respectively. The match statement consists of a key and a value.</p> <p> <b>Filter properties</b> </p> <ul> <li> <p> <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and <code>IS_NOT</code>. To include the datasets that match the statement, specify <code>IS</code>. To exclude matching datasets, specify <code>IS_NOT</code>.</p> </li> <li> <p> <code>Key</code> - The name of the parameter to filter on. Valid values are <code>DatasetArn</code> and <code>Status</code>.</p> </li> <li> <p> <code>Value</code> - The value to match.</p> </li> </ul> <p>For example, to list all dataset import jobs whose status is ACTIVE, you specify the following filter:</p> <p> <code>\"Filters\": [ { \"Condition\": \"IS\", \"Key\": \"Status\", \"Value\": \"ACTIVE\" } ]</code> </p>"
        }
      }
    },
    "ListDatasetImportJobsResponse": {
      "type": "structure",
      "members": {
        "DatasetImportJobs": {
          "shape": "DatasetImportJobs",
          "documentation": "<p>An array of objects that summarize each dataset import job's properties.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>"
        }
      }
    },
    "ListDatasetsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to return in the response.</p>"
        }
      }
    },
    "ListDatasetsResponse": {
      "type": "structure",
      "members": {
        "Datasets": {
          "shape": "Datasets",
          "documentation": "<p>An array of objects that summarize each dataset's properties.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>"
        }
      }
    },
    "ListForecastExportJobsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to return in the response.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the forecast export jobs that match the statement from the list, respectively. The match statement consists of a key and a value.</p> <p> <b>Filter properties</b> </p> <ul> <li> <p> <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and <code>IS_NOT</code>. To include the forecast export jobs that match the statement, specify <code>IS</code>. To exclude matching forecast export jobs, specify <code>IS_NOT</code>.</p> </li> <li> <p> <code>Key</code> - The name of the parameter to filter on. Valid values are <code>ForecastArn</code> and <code>Status</code>.</p> </li> <li> <p> <code>Value</code> - The value to match.</p> </li> </ul> <p>For example, to list all jobs that export a forecast named <i>electricityforecast</i>, specify the following filter:</p> <p> <code>\"Filters\": [ { \"Condition\": \"IS\", \"Key\": \"ForecastArn\", \"Value\": \"arn:aws:forecast:us-west-2:&lt;acct-id&gt;:forecast/electricityforecast\" } ]</code> </p>"
        }
      }
    },
    "ListForecastExportJobsResponse": {
      "type": "structure",
      "members": {
        "ForecastExportJobs": {
          "shape": "ForecastExportJobs",
          "documentation": "<p>An array of objects that summarize each export job's properties.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>"
        }
      }
    },
    "ListForecastsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to return in the response.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the forecasts that match the statement from the list, respectively. The match statement consists of a key and a value.</p> <p> <b>Filter properties</b> </p> <ul> <li> <p> <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and <code>IS_NOT</code>. To include the forecasts that match the statement, specify <code>IS</code>. To exclude matching forecasts, specify <code>IS_NOT</code>.</p> </li> <li> <p> <code>Key</code> - The name of the parameter to filter on. Valid values are <code>DatasetGroupArn</code>, <code>PredictorArn</code>, and <code>Status</code>.</p> </li> <li> <p> <code>Value</code> - The value to match.</p> </li> </ul> <p>For example, to list all forecasts whose status is not ACTIVE, you would specify:</p> <p> <code>\"Filters\": [ { \"Condition\": \"IS_NOT\", \"Key\": \"Status\", \"Value\": \"ACTIVE\" } ]</code> </p>"
        }
      }
    },
    "ListForecastsResponse": {
      "type": "structure",
      "members": {
        "Forecasts": {
          "shape": "Forecasts",
          "documentation": "<p>An array of objects that summarize each forecast's properties.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>"
        }
      }
    },
    "ListPredictorsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to return in the response.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An array of filters. For each filter, you provide a condition and a match statement. The condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include or exclude the predictors that match the statement from the list, respectively. The match statement consists of a key and a value.</p> <p> <b>Filter properties</b> </p> <ul> <li> <p> <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and <code>IS_NOT</code>. To include the predictors that match the statement, specify <code>IS</code>. To exclude matching predictors, specify <code>IS_NOT</code>.</p> </li> <li> <p> <code>Key</code> - The name of the parameter to filter on. Valid values are <code>DatasetGroupArn</code> and <code>Status</code>.</p> </li> <li> <p> <code>Value</code> - The value to match.</p> </li> </ul> <p>For example, to list all predictors whose status is ACTIVE, you would specify:</p> <p> <code>\"Filters\": [ { \"Condition\": \"IS\", \"Key\": \"Status\", \"Value\": \"ACTIVE\" } ]</code> </p>"
        }
      }
    },
    "ListPredictorsResponse": {
      "type": "structure",
      "members": {
        "Predictors": {
          "shape": "Predictors",
          "documentation": "<p>An array of objects that summarize each predictor's properties.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, Amazon Forecast returns this token. To retrieve the next set of results, use the token in the next request.</p>"
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
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Forecast dataset groups, datasets, dataset import jobs, predictors, forecasts, and forecast export jobs.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags for the resource.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Message": {
      "type": "string"
    },
    "Metrics": {
      "type": "structure",
      "members": {
        "RMSE": {
          "shape": "Double",
          "documentation": "<p>The root mean square error (RMSE).</p>"
        },
        "WeightedQuantileLosses": {
          "shape": "WeightedQuantileLosses",
          "documentation": "<p>An array of weighted quantile losses. Quantiles divide a probability distribution into regions of equal probability. The distribution in this case is the loss function.</p>"
        }
      },
      "documentation": "<p>Provides metrics that are used to evaluate the performance of a predictor. This object is part of the <a>WindowSummary</a> object.</p>"
    },
    "Name": {
      "type": "string",
      "max": 63,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*"
    },
    "NextToken": {
      "type": "string",
      "max": 3000,
      "min": 1
    },
    "ParameterKey": {
      "type": "string",
      "max": 256,
      "pattern": "^[a-zA-Z0-9\\-\\_\\.\\/\\[\\]\\,\\\\]+$"
    },
    "ParameterRanges": {
      "type": "structure",
      "members": {
        "CategoricalParameterRanges": {
          "shape": "CategoricalParameterRanges",
          "documentation": "<p>Specifies the tunable range for each categorical hyperparameter.</p>"
        },
        "ContinuousParameterRanges": {
          "shape": "ContinuousParameterRanges",
          "documentation": "<p>Specifies the tunable range for each continuous hyperparameter.</p>"
        },
        "IntegerParameterRanges": {
          "shape": "IntegerParameterRanges",
          "documentation": "<p>Specifies the tunable range for each integer hyperparameter.</p>"
        }
      },
      "documentation": "<p>Specifies the categorical, continuous, and integer hyperparameters, and their ranges of tunable values. The range of tunable values determines which values that a hyperparameter tuning job can choose for the specified hyperparameter. This object is part of the <a>HyperParameterTuningJobConfig</a> object.</p>"
    },
    "ParameterValue": {
      "type": "string",
      "max": 256,
      "pattern": "^[a-zA-Z0-9\\-\\_\\.\\/\\[\\]\\,\\\"\\\\\\s]+$"
    },
    "PredictorEvaluationResults": {
      "type": "list",
      "member": {
        "shape": "EvaluationResult"
      }
    },
    "PredictorExecution": {
      "type": "structure",
      "members": {
        "AlgorithmArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the algorithm used to test the predictor.</p>"
        },
        "TestWindows": {
          "shape": "TestWindowDetails",
          "documentation": "<p>An array of test windows used to evaluate the algorithm. The <code>NumberOfBacktestWindows</code> from the object determines the number of windows in the array.</p>"
        }
      },
      "documentation": "<p>The algorithm used to perform a backtest and the status of those tests.</p>"
    },
    "PredictorExecutionDetails": {
      "type": "structure",
      "members": {
        "PredictorExecutions": {
          "shape": "PredictorExecutions",
          "documentation": "<p>An array of the backtests performed to evaluate the accuracy of the predictor against a particular algorithm. The <code>NumberOfBacktestWindows</code> from the object determines the number of windows in the array.</p>"
        }
      },
      "documentation": "<p>Contains details on the backtests performed to evaluate the accuracy of the predictor. The tests are returned in descending order of accuracy, with the most accurate backtest appearing first. You specify the number of backtests to perform when you call the operation.</p>"
    },
    "PredictorExecutions": {
      "type": "list",
      "member": {
        "shape": "PredictorExecution"
      },
      "max": 5,
      "min": 1
    },
    "PredictorSummary": {
      "type": "structure",
      "members": {
        "PredictorArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the predictor.</p>"
        },
        "PredictorName": {
          "shape": "Name",
          "documentation": "<p>The name of the predictor.</p>"
        },
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset group that contains the data used to train the predictor.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the predictor. States include:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>CREATE_FAILED</code> </p> </li> <li> <p> <code>DELETE_PENDING</code>, <code>DELETE_IN_PROGRESS</code>, <code>DELETE_FAILED</code> </p> </li> <li> <p> <code>UPDATE_PENDING</code>, <code>UPDATE_IN_PROGRESS</code>, <code>UPDATE_FAILED</code> </p> </li> </ul> <note> <p>The <code>Status</code> of the predictor must be <code>ACTIVE</code> before you can use the predictor to create a forecast.</p> </note>"
        },
        "Message": {
          "shape": "ErrorMessage",
          "documentation": "<p>If an error occurred, an informational message about the error.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the model training task was created.</p>"
        },
        "LastModificationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Initially, the same as <code>CreationTime</code> (status is <code>CREATE_PENDING</code>). Updated when training starts (status changed to <code>CREATE_IN_PROGRESS</code>), and when training is complete (status changed to <code>ACTIVE</code>) or fails (status changed to <code>CREATE_FAILED</code>).</p>"
        }
      },
      "documentation": "<p>Provides a summary of the predictor properties that are used in the <a>ListPredictors</a> operation. To get the complete set of properties, call the <a>DescribePredictor</a> operation, and provide the listed <code>PredictorArn</code>.</p>"
    },
    "Predictors": {
      "type": "list",
      "member": {
        "shape": "PredictorSummary"
      }
    },
    "S3Config": {
      "type": "structure",
      "required": [
        "Path",
        "RoleArn"
      ],
      "members": {
        "Path": {
          "shape": "S3Path",
          "documentation": "<p>The path to an Amazon Simple Storage Service (Amazon S3) bucket or file(s) in an Amazon S3 bucket.</p>"
        },
        "RoleArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket or files. If you provide a value for the <code>KMSKeyArn</code> key, the role must allow access to the key.</p> <p>Passing a role across AWS accounts is not allowed. If you pass a role that isn't in your account, you get an <code>InvalidInputException</code> error.</p>"
        },
        "KMSKeyArn": {
          "shape": "KMSKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an AWS Key Management Service (KMS) key.</p>"
        }
      },
      "documentation": "<p>The path to the file(s) in an Amazon Simple Storage Service (Amazon S3) bucket, and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the file(s). Optionally, includes an AWS Key Management Service (KMS) key. This object is part of the <a>DataSource</a> object that is submitted in the <a>CreateDatasetImportJob</a> request, and part of the <a>DataDestination</a> object that is submitted in the <a>CreateForecastExportJob</a> request.</p>"
    },
    "S3Path": {
      "type": "string",
      "pattern": "^s3://[a-z0-9].+$"
    },
    "ScalingType": {
      "type": "string",
      "enum": [
        "Auto",
        "Linear",
        "Logarithmic",
        "ReverseLogarithmic"
      ]
    },
    "Schema": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "SchemaAttributes",
          "documentation": "<p>An array of attributes specifying the name and type of each field in a dataset.</p>"
        }
      },
      "documentation": "<p>Defines the fields of a dataset. You specify this object in the <a>CreateDataset</a> request.</p>"
    },
    "SchemaAttribute": {
      "type": "structure",
      "members": {
        "AttributeName": {
          "shape": "Name",
          "documentation": "<p>The name of the dataset field.</p>"
        },
        "AttributeType": {
          "shape": "AttributeType",
          "documentation": "<p>The data type of the field.</p>"
        }
      },
      "documentation": "<p>An attribute of a schema, which defines a dataset field. A schema attribute is required for every field in a dataset. The <a>Schema</a> object contains an array of <code>SchemaAttribute</code> objects.</p>"
    },
    "SchemaAttributes": {
      "type": "list",
      "member": {
        "shape": "SchemaAttribute"
      },
      "max": 100,
      "min": 1
    },
    "Statistics": {
      "type": "structure",
      "members": {
        "Count": {
          "shape": "Integer",
          "documentation": "<p>The number of values in the field.</p>"
        },
        "CountDistinct": {
          "shape": "Integer",
          "documentation": "<p>The number of distinct values in the field.</p>"
        },
        "CountNull": {
          "shape": "Integer",
          "documentation": "<p>The number of null values in the field.</p>"
        },
        "CountNan": {
          "shape": "Integer",
          "documentation": "<p>The number of NAN (not a number) values in the field.</p>"
        },
        "Min": {
          "shape": "String",
          "documentation": "<p>For a numeric field, the minimum value in the field.</p>"
        },
        "Max": {
          "shape": "String",
          "documentation": "<p>For a numeric field, the maximum value in the field.</p>"
        },
        "Avg": {
          "shape": "Double",
          "documentation": "<p>For a numeric field, the average value in the field.</p>"
        },
        "Stddev": {
          "shape": "Double",
          "documentation": "<p>For a numeric field, the standard deviation.</p>"
        }
      },
      "documentation": "<p>Provides statistics for each data field imported into to an Amazon Forecast dataset with the <a>CreateDatasetImportJob</a> operation.</p>"
    },
    "Status": {
      "type": "string",
      "max": 256
    },
    "String": {
      "type": "string",
      "max": 256,
      "pattern": "^[a-zA-Z0-9\\_]+$"
    },
    "SupplementaryFeature": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the feature. This must be \"holiday\".</p>"
        },
        "Value": {
          "shape": "Value",
          "documentation": "<p>One of the following 2 letter country codes:</p> <ul> <li> <p>\"AR\" - ARGENTINA</p> </li> <li> <p>\"AT\" - AUSTRIA</p> </li> <li> <p>\"AU\" - AUSTRALIA</p> </li> <li> <p>\"BE\" - BELGIUM</p> </li> <li> <p>\"BR\" - BRAZIL</p> </li> <li> <p>\"CA\" - CANADA</p> </li> <li> <p>\"CN\" - CHINA</p> </li> <li> <p>\"CZ\" - CZECH REPUBLIC</p> </li> <li> <p>\"DK\" - DENMARK</p> </li> <li> <p>\"EC\" - ECUADOR</p> </li> <li> <p>\"FI\" - FINLAND</p> </li> <li> <p>\"FR\" - FRANCE</p> </li> <li> <p>\"DE\" - GERMANY</p> </li> <li> <p>\"HU\" - HUNGARY</p> </li> <li> <p>\"IE\" - IRELAND</p> </li> <li> <p>\"IN\" - INDIA</p> </li> <li> <p>\"IT\" - ITALY</p> </li> <li> <p>\"JP\" - JAPAN</p> </li> <li> <p>\"KR\" - KOREA</p> </li> <li> <p>\"LU\" - LUXEMBOURG</p> </li> <li> <p>\"MX\" - MEXICO</p> </li> <li> <p>\"NL\" - NETHERLANDS</p> </li> <li> <p>\"NO\" - NORWAY</p> </li> <li> <p>\"PL\" - POLAND</p> </li> <li> <p>\"PT\" - PORTUGAL</p> </li> <li> <p>\"RU\" - RUSSIA</p> </li> <li> <p>\"ZA\" - SOUTH AFRICA</p> </li> <li> <p>\"ES\" - SPAIN</p> </li> <li> <p>\"SE\" - SWEDEN</p> </li> <li> <p>\"CH\" - SWITZERLAND</p> </li> <li> <p>\"US\" - UNITED STATES</p> </li> <li> <p>\"UK\" - UNITED KINGDOM</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes a supplementary feature of a dataset group. This object is part of the <a>InputDataConfig</a> object.</p> <p>The only supported feature is a holiday calendar. If you use the calendar, all data in the datasets should belong to the same country as the calendar. For the holiday calendar data, see the <a href=\"http://jollyday.sourceforge.net/data.html\">Jollyday</a> web site.</p> <p>India and Korea's holidays are not included in the Jollyday library, but both are supported by Amazon Forecast. Their holidays are:</p> <p> <b>\"IN\" - INDIA</b> </p> <ul> <li> <p> <code>JANUARY 26 - REPUBLIC DAY</code> </p> </li> <li> <p> <code>AUGUST 15 - INDEPENDENCE DAY</code> </p> </li> <li> <p> <code>OCTOBER 2 GANDHI'S BIRTHDAY</code> </p> </li> </ul> <p> <b>\"KR\" - KOREA</b> </p> <ul> <li> <p> <code>JANUARY 1 - NEW YEAR</code> </p> </li> <li> <p> <code>MARCH 1 - INDEPENDENCE MOVEMENT DAY</code> </p> </li> <li> <p> <code>MAY 5 - CHILDREN'S DAY</code> </p> </li> <li> <p> <code>JUNE 6 - MEMORIAL DAY</code> </p> </li> <li> <p> <code>AUGUST 15 - LIBERATION DAY</code> </p> </li> <li> <p> <code>OCTOBER 3 - NATIONAL FOUNDATION DAY</code> </p> </li> <li> <p> <code>OCTOBER 9 - HANGEUL DAY</code> </p> </li> <li> <p> <code>DECEMBER 25 - CHRISTMAS DAY</code> </p> </li> </ul>"
    },
    "SupplementaryFeatures": {
      "type": "list",
      "member": {
        "shape": "SupplementaryFeature"
      },
      "max": 1,
      "min": 1
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
          "documentation": "<p>One part of a key-value pair that makes up a tag. A <code>key</code> is a general label that acts like a category for more specific tag values.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The optional part of a key-value pair that makes up a tag. A <code>value</code> acts as a descriptor within a tag category (key).</p>"
        }
      },
      "documentation": "<p>The optional metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Forecast dataset groups, datasets, dataset import jobs, predictors, forecasts, and forecast export jobs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to add to the resource. A tag is an array of key-value pairs.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p> </li> </ul>"
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
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 0
    },
    "TestWindowDetails": {
      "type": "list",
      "member": {
        "shape": "TestWindowSummary"
      }
    },
    "TestWindowSummary": {
      "type": "structure",
      "members": {
        "TestWindowStart": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the test began.</p>"
        },
        "TestWindowEnd": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the test ended.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the test. Possible status values are:</p> <ul> <li> <p> <code>ACTIVE</code> </p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> </p> </li> <li> <p> <code>CREATE_FAILED</code> </p> </li> </ul>"
        },
        "Message": {
          "shape": "ErrorMessage",
          "documentation": "<p>If the test failed, the reason why it failed.</p>"
        }
      },
      "documentation": "<p>The status, start time, and end time of a backtest, as well as a failure reason if applicable.</p>"
    },
    "TestWindows": {
      "type": "list",
      "member": {
        "shape": "WindowSummary"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TimestampFormat": {
      "type": "string",
      "max": 256,
      "pattern": "^[a-zA-Z0-9\\-\\:\\.\\,\\'\\s]+$"
    },
    "TrainingParameters": {
      "type": "map",
      "key": {
        "shape": "ParameterKey"
      },
      "value": {
        "shape": "ParameterValue"
      },
      "max": 100,
      "min": 0
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Forecast dataset groups, datasets, dataset import jobs, predictors, forecasts, and forecast exports.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>The keys of the tags to be removed.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDatasetGroupRequest": {
      "type": "structure",
      "required": [
        "DatasetGroupArn",
        "DatasetArns"
      ],
      "members": {
        "DatasetGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dataset group.</p>"
        },
        "DatasetArns": {
          "shape": "ArnList",
          "documentation": "<p>An array of the Amazon Resource Names (ARNs) of the datasets to add to the dataset group.</p>"
        }
      }
    },
    "UpdateDatasetGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "Value": {
      "type": "string",
      "max": 256,
      "pattern": "^[a-zA-Z0-9\\_\\-]+$"
    },
    "Values": {
      "type": "list",
      "member": {
        "shape": "Value"
      },
      "max": 20,
      "min": 1
    },
    "WeightedQuantileLoss": {
      "type": "structure",
      "members": {
        "Quantile": {
          "shape": "Double",
          "documentation": "<p>The quantile. Quantiles divide a probability distribution into regions of equal probability. For example, if the distribution was divided into 5 regions of equal probability, the quantiles would be 0.2, 0.4, 0.6, and 0.8.</p>"
        },
        "LossValue": {
          "shape": "Double",
          "documentation": "<p>The difference between the predicted value and the actual value over the quantile, weighted (normalized) by dividing by the sum over all quantiles.</p>"
        }
      },
      "documentation": "<p>The weighted loss value for a quantile. This object is part of the <a>Metrics</a> object.</p>"
    },
    "WeightedQuantileLosses": {
      "type": "list",
      "member": {
        "shape": "WeightedQuantileLoss"
      }
    },
    "WindowSummary": {
      "type": "structure",
      "members": {
        "TestWindowStart": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp that defines the start of the window.</p>"
        },
        "TestWindowEnd": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp that defines the end of the window.</p>"
        },
        "ItemCount": {
          "shape": "Integer",
          "documentation": "<p>The number of data points within the window.</p>"
        },
        "EvaluationType": {
          "shape": "EvaluationType",
          "documentation": "<p>The type of evaluation.</p> <ul> <li> <p> <code>SUMMARY</code> - The average metrics across all windows.</p> </li> <li> <p> <code>COMPUTED</code> - The metrics for the specified window.</p> </li> </ul>"
        },
        "Metrics": {
          "shape": "Metrics",
          "documentation": "<p>Provides metrics used to evaluate the performance of a predictor.</p>"
        }
      },
      "documentation": "<p>The metrics for a time range within the evaluation portion of a dataset. This object is part of the <a>EvaluationResult</a> object.</p> <p>The <code>TestWindowStart</code> and <code>TestWindowEnd</code> parameters are determined by the <code>BackTestWindowOffset</code> parameter of the <a>EvaluationParameters</a> object.</p>"
    }
  },
  "documentation": "<p>Provides APIs for creating and managing Amazon Forecast resources.</p>"
}
]===]))
