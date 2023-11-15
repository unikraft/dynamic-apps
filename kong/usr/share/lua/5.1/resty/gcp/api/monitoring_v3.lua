return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/monitoring"] = {
          description = "View and write monitoring data for all of your Google and third-party Cloud and API projects",
        },
        ["https://www.googleapis.com/auth/monitoring.read"] = {
          description = "View monitoring data for all of your Google Cloud and third-party projects",
        },
        ["https://www.googleapis.com/auth/monitoring.write"] = {
          description = "Publish metric data to your Google Cloud projects",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://monitoring.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Monitoring",
  description = "Manages your Cloud Monitoring data and configurations.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/monitoring/api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "monitoring:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://monitoring.mtls.googleapis.com/",
  name = "monitoring",
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
    folders = {
      resources = {
        timeSeries = {
          methods = {
            list = {
              description = "Lists time series that match a filter.",
              flatPath = "v3/folders/{foldersId}/timeSeries",
              httpMethod = "GET",
              id = "monitoring.folders.timeSeries.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["aggregation.alignmentPeriod"] = {
                  description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                ["aggregation.crossSeriesReducer"] = {
                  description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
                  enum = {
                    "REDUCE_NONE",
                    "REDUCE_MEAN",
                    "REDUCE_MIN",
                    "REDUCE_MAX",
                    "REDUCE_SUM",
                    "REDUCE_STDDEV",
                    "REDUCE_COUNT",
                    "REDUCE_COUNT_TRUE",
                    "REDUCE_COUNT_FALSE",
                    "REDUCE_FRACTION_TRUE",
                    "REDUCE_PERCENTILE_99",
                    "REDUCE_PERCENTILE_95",
                    "REDUCE_PERCENTILE_50",
                    "REDUCE_PERCENTILE_05",
                  },
                  enumDescriptions = {
                    "No cross-time series reduction. The output of the Aligner is returned.",
                    "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                ["aggregation.groupByFields"] = {
                  description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                ["aggregation.perSeriesAligner"] = {
                  description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
                  enum = {
                    "ALIGN_NONE",
                    "ALIGN_DELTA",
                    "ALIGN_RATE",
                    "ALIGN_INTERPOLATE",
                    "ALIGN_NEXT_OLDER",
                    "ALIGN_MIN",
                    "ALIGN_MAX",
                    "ALIGN_MEAN",
                    "ALIGN_COUNT",
                    "ALIGN_SUM",
                    "ALIGN_STDDEV",
                    "ALIGN_COUNT_TRUE",
                    "ALIGN_COUNT_FALSE",
                    "ALIGN_FRACTION_TRUE",
                    "ALIGN_PERCENTILE_99",
                    "ALIGN_PERCENTILE_95",
                    "ALIGN_PERCENTILE_50",
                    "ALIGN_PERCENTILE_05",
                    "ALIGN_PERCENT_CHANGE",
                  },
                  enumDescriptions = {
                    "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
                    "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
                    "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
                    "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
                    "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
                    "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Required. A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that specifies which time series should be returned. The filter must specify a single metric type, and can additionally specify metric labels and other information. For example: metric.type = \"compute.googleapis.com/instance/cpu/usage_time\" AND metric.labels.instance_name = \"my-instance-name\" ",
                  location = "query",
                  type = "string",
                },
                ["interval.endTime"] = {
                  description = "Required. The end of the time interval.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                ["interval.startTime"] = {
                  description = "Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name), organization or folder on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] organizations/[ORGANIZATION_ID] folders/[FOLDER_ID] ",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "Unsupported: must be left blank. The points in each time series are currently returned in reverse time order (most recent to oldest).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "A positive number that is the maximum number of results to return. If page_size is empty or more than 100,000 results, the effective page_size is 100,000 results. If view is set to FULL, this is the maximum number of Points returned. If view is set to HEADERS, this is the maximum number of TimeSeries returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.alignmentPeriod"] = {
                  description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.crossSeriesReducer"] = {
                  description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
                  enum = {
                    "REDUCE_NONE",
                    "REDUCE_MEAN",
                    "REDUCE_MIN",
                    "REDUCE_MAX",
                    "REDUCE_SUM",
                    "REDUCE_STDDEV",
                    "REDUCE_COUNT",
                    "REDUCE_COUNT_TRUE",
                    "REDUCE_COUNT_FALSE",
                    "REDUCE_FRACTION_TRUE",
                    "REDUCE_PERCENTILE_99",
                    "REDUCE_PERCENTILE_95",
                    "REDUCE_PERCENTILE_50",
                    "REDUCE_PERCENTILE_05",
                  },
                  enumDescriptions = {
                    "No cross-time series reduction. The output of the Aligner is returned.",
                    "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.groupByFields"] = {
                  description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                ["secondaryAggregation.perSeriesAligner"] = {
                  description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
                  enum = {
                    "ALIGN_NONE",
                    "ALIGN_DELTA",
                    "ALIGN_RATE",
                    "ALIGN_INTERPOLATE",
                    "ALIGN_NEXT_OLDER",
                    "ALIGN_MIN",
                    "ALIGN_MAX",
                    "ALIGN_MEAN",
                    "ALIGN_COUNT",
                    "ALIGN_SUM",
                    "ALIGN_STDDEV",
                    "ALIGN_COUNT_TRUE",
                    "ALIGN_COUNT_FALSE",
                    "ALIGN_FRACTION_TRUE",
                    "ALIGN_PERCENTILE_99",
                    "ALIGN_PERCENTILE_95",
                    "ALIGN_PERCENTILE_50",
                    "ALIGN_PERCENTILE_05",
                    "ALIGN_PERCENT_CHANGE",
                  },
                  enumDescriptions = {
                    "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
                    "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
                    "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
                    "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
                    "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
                    "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                view = {
                  description = "Required. Specifies which information is returned about the time series.",
                  enum = {
                    "FULL",
                    "HEADERS",
                  },
                  enumDescriptions = {
                    "Returns the identity of the metric(s), the time series, and the time series data.",
                    "Returns the identity of the metric and the time series resource, but not the time series data.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/timeSeries",
              response = {
                ["$ref"] = "ListTimeSeriesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
          },
        },
      },
    },
    organizations = {
      resources = {
        timeSeries = {
          methods = {
            list = {
              description = "Lists time series that match a filter.",
              flatPath = "v3/organizations/{organizationsId}/timeSeries",
              httpMethod = "GET",
              id = "monitoring.organizations.timeSeries.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["aggregation.alignmentPeriod"] = {
                  description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                ["aggregation.crossSeriesReducer"] = {
                  description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
                  enum = {
                    "REDUCE_NONE",
                    "REDUCE_MEAN",
                    "REDUCE_MIN",
                    "REDUCE_MAX",
                    "REDUCE_SUM",
                    "REDUCE_STDDEV",
                    "REDUCE_COUNT",
                    "REDUCE_COUNT_TRUE",
                    "REDUCE_COUNT_FALSE",
                    "REDUCE_FRACTION_TRUE",
                    "REDUCE_PERCENTILE_99",
                    "REDUCE_PERCENTILE_95",
                    "REDUCE_PERCENTILE_50",
                    "REDUCE_PERCENTILE_05",
                  },
                  enumDescriptions = {
                    "No cross-time series reduction. The output of the Aligner is returned.",
                    "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                ["aggregation.groupByFields"] = {
                  description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                ["aggregation.perSeriesAligner"] = {
                  description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
                  enum = {
                    "ALIGN_NONE",
                    "ALIGN_DELTA",
                    "ALIGN_RATE",
                    "ALIGN_INTERPOLATE",
                    "ALIGN_NEXT_OLDER",
                    "ALIGN_MIN",
                    "ALIGN_MAX",
                    "ALIGN_MEAN",
                    "ALIGN_COUNT",
                    "ALIGN_SUM",
                    "ALIGN_STDDEV",
                    "ALIGN_COUNT_TRUE",
                    "ALIGN_COUNT_FALSE",
                    "ALIGN_FRACTION_TRUE",
                    "ALIGN_PERCENTILE_99",
                    "ALIGN_PERCENTILE_95",
                    "ALIGN_PERCENTILE_50",
                    "ALIGN_PERCENTILE_05",
                    "ALIGN_PERCENT_CHANGE",
                  },
                  enumDescriptions = {
                    "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
                    "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
                    "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
                    "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
                    "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
                    "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Required. A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that specifies which time series should be returned. The filter must specify a single metric type, and can additionally specify metric labels and other information. For example: metric.type = \"compute.googleapis.com/instance/cpu/usage_time\" AND metric.labels.instance_name = \"my-instance-name\" ",
                  location = "query",
                  type = "string",
                },
                ["interval.endTime"] = {
                  description = "Required. The end of the time interval.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                ["interval.startTime"] = {
                  description = "Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name), organization or folder on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] organizations/[ORGANIZATION_ID] folders/[FOLDER_ID] ",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "Unsupported: must be left blank. The points in each time series are currently returned in reverse time order (most recent to oldest).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "A positive number that is the maximum number of results to return. If page_size is empty or more than 100,000 results, the effective page_size is 100,000 results. If view is set to FULL, this is the maximum number of Points returned. If view is set to HEADERS, this is the maximum number of TimeSeries returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.alignmentPeriod"] = {
                  description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.crossSeriesReducer"] = {
                  description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
                  enum = {
                    "REDUCE_NONE",
                    "REDUCE_MEAN",
                    "REDUCE_MIN",
                    "REDUCE_MAX",
                    "REDUCE_SUM",
                    "REDUCE_STDDEV",
                    "REDUCE_COUNT",
                    "REDUCE_COUNT_TRUE",
                    "REDUCE_COUNT_FALSE",
                    "REDUCE_FRACTION_TRUE",
                    "REDUCE_PERCENTILE_99",
                    "REDUCE_PERCENTILE_95",
                    "REDUCE_PERCENTILE_50",
                    "REDUCE_PERCENTILE_05",
                  },
                  enumDescriptions = {
                    "No cross-time series reduction. The output of the Aligner is returned.",
                    "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.groupByFields"] = {
                  description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                ["secondaryAggregation.perSeriesAligner"] = {
                  description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
                  enum = {
                    "ALIGN_NONE",
                    "ALIGN_DELTA",
                    "ALIGN_RATE",
                    "ALIGN_INTERPOLATE",
                    "ALIGN_NEXT_OLDER",
                    "ALIGN_MIN",
                    "ALIGN_MAX",
                    "ALIGN_MEAN",
                    "ALIGN_COUNT",
                    "ALIGN_SUM",
                    "ALIGN_STDDEV",
                    "ALIGN_COUNT_TRUE",
                    "ALIGN_COUNT_FALSE",
                    "ALIGN_FRACTION_TRUE",
                    "ALIGN_PERCENTILE_99",
                    "ALIGN_PERCENTILE_95",
                    "ALIGN_PERCENTILE_50",
                    "ALIGN_PERCENTILE_05",
                    "ALIGN_PERCENT_CHANGE",
                  },
                  enumDescriptions = {
                    "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
                    "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
                    "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
                    "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
                    "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
                    "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                view = {
                  description = "Required. Specifies which information is returned about the time series.",
                  enum = {
                    "FULL",
                    "HEADERS",
                  },
                  enumDescriptions = {
                    "Returns the identity of the metric(s), the time series, and the time series data.",
                    "Returns the identity of the metric and the time series resource, but not the time series data.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/timeSeries",
              response = {
                ["$ref"] = "ListTimeSeriesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
          },
        },
      },
    },
    projects = {
      resources = {
        alertPolicies = {
          methods = {
            create = {
              description = "Creates a new alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.",
              flatPath = "v3/projects/{projectsId}/alertPolicies",
              httpMethod = "POST",
              id = "monitoring.projects.alertPolicies.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the alerting policy. The format is: projects/[PROJECT_ID_OR_NUMBER] Note that this field names the parent container in which the alerting policy will be written, not the name of the created policy. |name| must be a host project of a Metrics Scope, otherwise INVALID_ARGUMENT error will return. The alerting policy that is returned will have a name that contains a normalized representation of this name as a prefix but adds a suffix of the form /alertPolicies/[ALERT_POLICY_ID], identifying the policy in the container.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}/alertPolicies",
              request = {
                ["$ref"] = "AlertPolicy",
              },
              response = {
                ["$ref"] = "AlertPolicy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            delete = {
              description = "Deletes an alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.",
              flatPath = "v3/projects/{projectsId}/alertPolicies/{alertPoliciesId}",
              httpMethod = "DELETE",
              id = "monitoring.projects.alertPolicies.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The alerting policy to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] For more information, see AlertPolicy.",
                  location = "path",
                  pattern = "^projects/[^/]+/alertPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            get = {
              description = "Gets a single alerting policy.",
              flatPath = "v3/projects/{projectsId}/alertPolicies/{alertPoliciesId}",
              httpMethod = "GET",
              id = "monitoring.projects.alertPolicies.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The alerting policy to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/alertPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "AlertPolicy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            list = {
              description = "Lists the existing alerting policies for the workspace.",
              flatPath = "v3/projects/{projectsId}/alertPolicies",
              httpMethod = "GET",
              id = "monitoring.projects.alertPolicies.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "If provided, this field specifies the criteria that must be met by alert policies to be included in the response.For more details, see sorting and filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose alert policies are to be listed. The format is: projects/[PROJECT_ID_OR_NUMBER] Note that this field names the parent container in which the alerting policies to be listed are stored. To retrieve a single alerting policy by name, use the GetAlertPolicy operation, instead.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "A comma-separated list of fields by which to sort the result. Supports the same set of field references as the filter field. Entries can be prefixed with a minus sign to sort by the field in descending order.For more details, see sorting and filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return in a single response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return more results from the previous method call.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/alertPolicies",
              response = {
                ["$ref"] = "ListAlertPoliciesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            patch = {
              description = "Updates an alerting policy. You can either replace the entire policy with a new one or replace only certain fields in the current alerting policy by specifying the fields to be updated via updateMask. Returns the updated alerting policy.Design your application to single-thread API calls that modify the state of alerting policies in a single project. This includes calls to CreateAlertPolicy, DeleteAlertPolicy and UpdateAlertPolicy.",
              flatPath = "v3/projects/{projectsId}/alertPolicies/{alertPoliciesId}",
              httpMethod = "PATCH",
              id = "monitoring.projects.alertPolicies.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required if the policy exists. The resource name for this policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] [ALERT_POLICY_ID] is assigned by Cloud Monitoring when the policy is created. When calling the alertPolicies.create method, do not include the name field in the alerting policy passed as part of the request.",
                  location = "path",
                  pattern = "^projects/[^/]+/alertPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. A list of alerting policy field names. If this field is not empty, each listed field in the existing alerting policy is set to the value of the corresponding field in the supplied policy (alert_policy), or to the field's default value if the field is not in the supplied alerting policy. Fields not listed retain their previous value.Examples of valid field masks include display_name, documentation, documentation.content, documentation.mime_type, user_labels, user_label.nameofkey, enabled, conditions, combiner, etc.If this field is empty, then the supplied alerting policy replaces the existing policy. It is the same as deleting the existing policy and adding the supplied policy, except for the following: The new policy will have the same [ALERT_POLICY_ID] as the former policy. This gives you continuity with the former policy in your notifications and incidents. Conditions in the new policy will keep their former [CONDITION_ID] if the supplied condition includes the name field with that [CONDITION_ID]. If the supplied condition omits the name field, then a new [CONDITION_ID] is created.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "AlertPolicy",
              },
              response = {
                ["$ref"] = "AlertPolicy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
          },
        },
        collectdTimeSeries = {
          methods = {
            create = {
              description = "Cloud Monitoring Agent only: Creates a new time series.This method is only for use by the Cloud Monitoring Agent. Use projects.timeSeries.create instead.",
              flatPath = "v3/projects/{projectsId}/collectdTimeSeries",
              httpMethod = "POST",
              id = "monitoring.projects.collectdTimeSeries.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the time series. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}/collectdTimeSeries",
              request = {
                ["$ref"] = "CreateCollectdTimeSeriesRequest",
              },
              response = {
                ["$ref"] = "CreateCollectdTimeSeriesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
          },
        },
        groups = {
          methods = {
            create = {
              description = "Creates a new group.",
              flatPath = "v3/projects/{projectsId}/groups",
              httpMethod = "POST",
              id = "monitoring.projects.groups.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the group. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "If true, validate this request but do not create the group.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v3/{+name}/groups",
              request = {
                ["$ref"] = "Group",
              },
              response = {
                ["$ref"] = "Group",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            delete = {
              description = "Deletes an existing group.",
              flatPath = "v3/projects/{projectsId}/groups/{groupsId}",
              httpMethod = "DELETE",
              id = "monitoring.projects.groups.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The group to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/groups/[^/]+$",
                  required = true,
                  type = "string",
                },
                recursive = {
                  description = "If this field is true, then the request means to delete a group with all its descendants. Otherwise, the request means to delete a group only when it has no descendants. The default value is false.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            get = {
              description = "Gets a single group.",
              flatPath = "v3/projects/{projectsId}/groups/{groupsId}",
              httpMethod = "GET",
              id = "monitoring.projects.groups.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The group to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/groups/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Group",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            list = {
              description = "Lists the existing groups.",
              flatPath = "v3/projects/{projectsId}/groups",
              httpMethod = "GET",
              id = "monitoring.projects.groups.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                ancestorsOfGroup = {
                  description = "A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] Returns groups that are ancestors of the specified group. The groups are returned in order, starting with the immediate parent and ending with the most distant ancestor. If the specified group has no immediate parent, the results are empty.",
                  location = "query",
                  type = "string",
                },
                childrenOfGroup = {
                  description = "A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] Returns groups whose parent_name field contains the group name. If no groups have this parent, the results are empty.",
                  location = "query",
                  type = "string",
                },
                descendantsOfGroup = {
                  description = "A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] Returns the descendants of the specified group. This is a superset of the results returned by the children_of_group filter, and includes children-of-children, and so forth.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose groups are to be listed. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "A positive number that is the maximum number of results to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the next_page_token value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/groups",
              response = {
                ["$ref"] = "ListGroupsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            update = {
              description = "Updates an existing group. You can change any group attributes except name.",
              flatPath = "v3/projects/{projectsId}/groups/{groupsId}",
              httpMethod = "PUT",
              id = "monitoring.projects.groups.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.",
                  location = "path",
                  pattern = "^projects/[^/]+/groups/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "If true, validate this request but do not update the existing group.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "Group",
              },
              response = {
                ["$ref"] = "Group",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
          },
          resources = {
            members = {
              methods = {
                list = {
                  description = "Lists the monitored resources that are members of a group.",
                  flatPath = "v3/projects/{projectsId}/groups/{groupsId}/members",
                  httpMethod = "GET",
                  id = "monitoring.projects.groups.members.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "An optional list filter (https://cloud.google.com/monitoring/api/learn_more#filtering) describing the members to be returned. The filter may reference the type, labels, and metadata of monitored resources that comprise the group. For example, to return only resources representing Compute Engine VM instances, use this filter: `resource.type = \"gce_instance\"` ",
                      location = "query",
                      type = "string",
                    },
                    ["interval.endTime"] = {
                      description = "Required. The end of the time interval.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    ["interval.startTime"] = {
                      description = "Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The group whose members are listed. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] ",
                      location = "path",
                      pattern = "^projects/[^/]+/groups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "A positive number that is the maximum number of results to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "If this field is not empty then it must contain the next_page_token value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v3/{+name}/members",
                  response = {
                    ["$ref"] = "ListGroupMembersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/monitoring",
                    "https://www.googleapis.com/auth/monitoring.read",
                  },
                },
              },
            },
          },
        },
        metricDescriptors = {
          methods = {
            create = {
              description = "Creates a new metric descriptor. The creation is executed asynchronously. User-created metric descriptors define custom metrics (https://cloud.google.com/monitoring/custom-metrics). The metric descriptor is updated if it already exists, except that metric labels are never removed.",
              flatPath = "v3/projects/{projectsId}/metricDescriptors",
              httpMethod = "POST",
              id = "monitoring.projects.metricDescriptors.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: 4 projects/PROJECT_ID_OR_NUMBER",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}/metricDescriptors",
              request = {
                ["$ref"] = "MetricDescriptor",
              },
              response = {
                ["$ref"] = "MetricDescriptor",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            delete = {
              description = "Deletes a metric descriptor. Only user-created custom metrics (https://cloud.google.com/monitoring/custom-metrics) can be deleted.",
              flatPath = "v3/projects/{projectsId}/metricDescriptors/{metricDescriptorsId}",
              httpMethod = "DELETE",
              id = "monitoring.projects.metricDescriptors.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The metric descriptor on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/metricDescriptors/[METRIC_ID] An example of [METRIC_ID] is: \"custom.googleapis.com/my_test_metric\".",
                  location = "path",
                  pattern = "^projects/[^/]+/metricDescriptors/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            get = {
              description = "Gets a single metric descriptor.",
              flatPath = "v3/projects/{projectsId}/metricDescriptors/{metricDescriptorsId}",
              httpMethod = "GET",
              id = "monitoring.projects.metricDescriptors.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The metric descriptor on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/metricDescriptors/[METRIC_ID] An example value of [METRIC_ID] is \"compute.googleapis.com/instance/disk/read_bytes_count\".",
                  location = "path",
                  pattern = "^projects/[^/]+/metricDescriptors/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "MetricDescriptor",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            list = {
              description = "Lists metric descriptors that match a filter.",
              flatPath = "v3/projects/{projectsId}/metricDescriptors",
              httpMethod = "GET",
              id = "monitoring.projects.metricDescriptors.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "If this field is empty, all custom and system-defined metric descriptors are returned. Otherwise, the filter (https://cloud.google.com/monitoring/api/v3/filters) specifies which metric descriptors are to be returned. For example, the following filter matches all custom metrics (https://cloud.google.com/monitoring/custom-metrics): metric.type = starts_with(\"custom.googleapis.com/\") ",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "A positive number that is the maximum number of results to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/metricDescriptors",
              response = {
                ["$ref"] = "ListMetricDescriptorsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
          },
        },
        monitoredResourceDescriptors = {
          methods = {
            get = {
              description = "Gets a single monitored resource descriptor.",
              flatPath = "v3/projects/{projectsId}/monitoredResourceDescriptors/{monitoredResourceDescriptorsId}",
              httpMethod = "GET",
              id = "monitoring.projects.monitoredResourceDescriptors.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The monitored resource descriptor to get. The format is: projects/[PROJECT_ID_OR_NUMBER]/monitoredResourceDescriptors/[RESOURCE_TYPE] The [RESOURCE_TYPE] is a predefined type, such as cloudsql_database.",
                  location = "path",
                  pattern = "^projects/[^/]+/monitoredResourceDescriptors/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "MonitoredResourceDescriptor",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            list = {
              description = "Lists monitored resource descriptors that match a filter.",
              flatPath = "v3/projects/{projectsId}/monitoredResourceDescriptors",
              httpMethod = "GET",
              id = "monitoring.projects.monitoredResourceDescriptors.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "An optional filter (https://cloud.google.com/monitoring/api/v3/filters) describing the descriptors to be returned. The filter can reference the descriptor's type and labels. For example, the following filter returns only Google Compute Engine descriptors that have an id label: resource.type = starts_with(\"gce_\") AND resource.label:id ",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "A positive number that is the maximum number of results to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/monitoredResourceDescriptors",
              response = {
                ["$ref"] = "ListMonitoredResourceDescriptorsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
          },
        },
        notificationChannelDescriptors = {
          methods = {
            get = {
              description = "Gets a single channel descriptor. The descriptor indicates which fields are expected / permitted for a notification channel of the given type.",
              flatPath = "v3/projects/{projectsId}/notificationChannelDescriptors/{notificationChannelDescriptorsId}",
              httpMethod = "GET",
              id = "monitoring.projects.notificationChannelDescriptors.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The channel type for which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannelDescriptors/[CHANNEL_TYPE] ",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationChannelDescriptors/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "NotificationChannelDescriptor",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            list = {
              description = "Lists the descriptors for supported channel types. The use of descriptors makes it possible for new channel types to be dynamically added.",
              flatPath = "v3/projects/{projectsId}/notificationChannelDescriptors",
              httpMethod = "GET",
              id = "monitoring.projects.notificationChannelDescriptors.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The REST resource name of the parent from which to retrieve the notification channel descriptors. The expected syntax is: projects/[PROJECT_ID_OR_NUMBER] Note that this names (https://cloud.google.com/monitoring/api/v3#project_name) the parent container in which to look for the descriptors; to retrieve a single descriptor by name, use the GetNotificationChannelDescriptor operation, instead.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return in a single response. If not set to a positive number, a reasonable value will be chosen by the service.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If non-empty, page_token must contain a value returned as the next_page_token in a previous response to request the next set of results.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/notificationChannelDescriptors",
              response = {
                ["$ref"] = "ListNotificationChannelDescriptorsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
          },
        },
        notificationChannels = {
          methods = {
            create = {
              description = "Creates a new notification channel, representing a single notification endpoint such as an email address, SMS number, or PagerDuty service.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.",
              flatPath = "v3/projects/{projectsId}/notificationChannels",
              httpMethod = "POST",
              id = "monitoring.projects.notificationChannels.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] This names the container into which the channel will be written, this does not name the newly created channel. The resulting channel's name will have a normalized version of this field as a prefix, but will add /notificationChannels/[CHANNEL_ID] to identify the channel.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}/notificationChannels",
              request = {
                ["$ref"] = "NotificationChannel",
              },
              response = {
                ["$ref"] = "NotificationChannel",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            delete = {
              description = "Deletes a notification channel.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.",
              flatPath = "v3/projects/{projectsId}/notificationChannels/{notificationChannelsId}",
              httpMethod = "DELETE",
              id = "monitoring.projects.notificationChannels.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                force = {
                  description = "If true, the notification channel will be deleted regardless of its use in alert policies (the policies will be updated to remove the channel). If false, channels that are still referenced by an existing alerting policy will fail to be deleted in a delete operation.",
                  location = "query",
                  type = "boolean",
                },
                name = {
                  description = "Required. The channel for which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationChannels/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            get = {
              description = "Gets a single notification channel. The channel includes the relevant configuration details with which the channel was created. However, the response may truncate or omit passwords, API keys, or other private key matter and thus the response may not be 100% identical to the information that was supplied in the call to the create method.",
              flatPath = "v3/projects/{projectsId}/notificationChannels/{notificationChannelsId}",
              httpMethod = "GET",
              id = "monitoring.projects.notificationChannels.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The channel for which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationChannels/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "NotificationChannel",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            getVerificationCode = {
              description = "Requests a verification code for an already verified channel that can then be used in a call to VerifyNotificationChannel() on a different channel with an equivalent identity in the same or in a different project. This makes it possible to copy a channel between projects without requiring manual reverification of the channel. If the channel is not in the verified state, this method will fail (in other words, this may only be used if the SendNotificationChannelVerificationCode and VerifyNotificationChannel paths have already been used to put the given channel into the verified state).There is no guarantee that the verification codes returned by this method will be of a similar structure or form as the ones that are delivered to the channel via SendNotificationChannelVerificationCode; while VerifyNotificationChannel() will recognize both the codes delivered via SendNotificationChannelVerificationCode() and returned from GetNotificationChannelVerificationCode(), it is typically the case that the verification codes delivered via SendNotificationChannelVerificationCode() will be shorter and also have a shorter expiration (e.g. codes such as \"G-123456\") whereas GetVerificationCode() will typically return a much longer, websafe base 64 encoded string that has a longer expiration time.",
              flatPath = "v3/projects/{projectsId}/notificationChannels/{notificationChannelsId}:getVerificationCode",
              httpMethod = "POST",
              id = "monitoring.projects.notificationChannels.getVerificationCode",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The notification channel for which a verification code is to be generated and retrieved. This must name a channel that is already verified; if the specified channel is not verified, the request will fail.",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationChannels/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}:getVerificationCode",
              request = {
                ["$ref"] = "GetNotificationChannelVerificationCodeRequest",
              },
              response = {
                ["$ref"] = "GetNotificationChannelVerificationCodeResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            list = {
              description = "Lists the notification channels that have been created for the project.",
              flatPath = "v3/projects/{projectsId}/notificationChannels",
              httpMethod = "GET",
              id = "monitoring.projects.notificationChannels.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "If provided, this field specifies the criteria that must be met by notification channels to be included in the response.For more details, see sorting and filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] This names the container in which to look for the notification channels; it does not name a specific channel. To query a specific channel by REST resource name, use the GetNotificationChannel operation.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "A comma-separated list of fields by which to sort the result. Supports the same set of fields as in filter. Entries can be prefixed with a minus sign to sort in descending rather than ascending order.For more details, see sorting and filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return in a single response. If not set to a positive number, a reasonable value will be chosen by the service.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If non-empty, page_token must contain a value returned as the next_page_token in a previous response to request the next set of results.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/notificationChannels",
              response = {
                ["$ref"] = "ListNotificationChannelsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            patch = {
              description = "Updates a notification channel. Fields not specified in the field mask remain unchanged.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.",
              flatPath = "v3/projects/{projectsId}/notificationChannels/{notificationChannelsId}",
              httpMethod = "PATCH",
              id = "monitoring.projects.notificationChannels.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationChannels/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The fields to update.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "NotificationChannel",
              },
              response = {
                ["$ref"] = "NotificationChannel",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            sendVerificationCode = {
              description = "Causes a verification code to be delivered to the channel. The code can then be supplied in VerifyNotificationChannel to verify the channel.",
              flatPath = "v3/projects/{projectsId}/notificationChannels/{notificationChannelsId}:sendVerificationCode",
              httpMethod = "POST",
              id = "monitoring.projects.notificationChannels.sendVerificationCode",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The notification channel to which to send a verification code.",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationChannels/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}:sendVerificationCode",
              request = {
                ["$ref"] = "SendNotificationChannelVerificationCodeRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            verify = {
              description = "Verifies a NotificationChannel by proving receipt of the code delivered to the channel as a result of calling SendNotificationChannelVerificationCode.",
              flatPath = "v3/projects/{projectsId}/notificationChannels/{notificationChannelsId}:verify",
              httpMethod = "POST",
              id = "monitoring.projects.notificationChannels.verify",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The notification channel to verify.",
                  location = "path",
                  pattern = "^projects/[^/]+/notificationChannels/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}:verify",
              request = {
                ["$ref"] = "VerifyNotificationChannelRequest",
              },
              response = {
                ["$ref"] = "NotificationChannel",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
          },
        },
        snoozes = {
          methods = {
            create = {
              description = "Creates a Snooze that will prevent alerts, which match the provided criteria, from being opened. The Snooze applies for a specific time interval.",
              flatPath = "v3/projects/{projectsId}/snoozes",
              httpMethod = "POST",
              id = "monitoring.projects.snoozes.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which a Snooze should be created. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/snoozes",
              request = {
                ["$ref"] = "Snooze",
              },
              response = {
                ["$ref"] = "Snooze",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            get = {
              description = "Retrieves a Snooze by name.",
              flatPath = "v3/projects/{projectsId}/snoozes/{snoozesId}",
              httpMethod = "GET",
              id = "monitoring.projects.snoozes.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The ID of the Snooze to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/snoozes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Snooze",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            list = {
              description = "Lists the Snoozes associated with a project. Can optionally pass in filter, which specifies predicates to match Snoozes.",
              flatPath = "v3/projects/{projectsId}/snoozes",
              httpMethod = "GET",
              id = "monitoring.projects.snoozes.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Optional filter to restrict results to the given criteria. The following fields are supported. interval.start_time interval.end_timeFor example: ``` interval.start_time > \"2022-03-11T00:00:00-08:00\" AND interval.end_time < \"2022-03-12T00:00:00-08:00\" ``` ",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of results to return for a single query. The server may further constrain the maximum number of results returned in a single page. The value should be in the range 1, 1000. If the value given is outside this range, the server will decide the number of results to be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. The next_page_token from a previous call to ListSnoozesRequest to get the next page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose Snoozes should be listed. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/snoozes",
              response = {
                ["$ref"] = "ListSnoozesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            patch = {
              description = "Updates a Snooze, identified by its name, with the parameters in the given Snooze object.",
              flatPath = "v3/projects/{projectsId}/snoozes/{snoozesId}",
              httpMethod = "PATCH",
              id = "monitoring.projects.snoozes.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the Snooze. The format is: projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID] The ID of the Snooze will be generated by the system.",
                  location = "path",
                  pattern = "^projects/[^/]+/snoozes/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The fields to update.For each field listed in update_mask: If the Snooze object supplied in the UpdateSnoozeRequest has a value for that field, the value of the field in the existing Snooze will be set to the value of the field in the supplied Snooze. If the field does not have a value in the supplied Snooze, the field in the existing Snooze is set to its default value.Fields not listed retain their existing value.The following are the field names that are accepted in update_mask: display_name interval.start_time interval.end_timeThat said, the start time and end time of the Snooze determines which fields can legally be updated. Before attempting an update, users should consult the documentation for UpdateSnoozeRequest, which talks about which fields can be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "Snooze",
              },
              response = {
                ["$ref"] = "Snooze",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
          },
        },
        timeSeries = {
          methods = {
            create = {
              description = "Creates or adds data to one or more time series. The response is empty if all time series in the request were written. If any time series could not be written, a corresponding failure message is included in the error response.",
              flatPath = "v3/projects/{projectsId}/timeSeries",
              httpMethod = "POST",
              id = "monitoring.projects.timeSeries.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}/timeSeries",
              request = {
                ["$ref"] = "CreateTimeSeriesRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            createService = {
              description = "Creates or adds data to one or more service time series. A service time series is a time series for a metric from a Google Cloud service. The response is empty if all time series in the request were written. If any time series could not be written, a corresponding failure message is included in the error response. This endpoint rejects writes to user-defined metrics. This method is only for use by Google Cloud services. Use projects.timeSeries.create instead.",
              flatPath = "v3/projects/{projectsId}/timeSeries:createService",
              httpMethod = "POST",
              id = "monitoring.projects.timeSeries.createService",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}/timeSeries:createService",
              request = {
                ["$ref"] = "CreateTimeSeriesRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            list = {
              description = "Lists time series that match a filter.",
              flatPath = "v3/projects/{projectsId}/timeSeries",
              httpMethod = "GET",
              id = "monitoring.projects.timeSeries.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                ["aggregation.alignmentPeriod"] = {
                  description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                ["aggregation.crossSeriesReducer"] = {
                  description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
                  enum = {
                    "REDUCE_NONE",
                    "REDUCE_MEAN",
                    "REDUCE_MIN",
                    "REDUCE_MAX",
                    "REDUCE_SUM",
                    "REDUCE_STDDEV",
                    "REDUCE_COUNT",
                    "REDUCE_COUNT_TRUE",
                    "REDUCE_COUNT_FALSE",
                    "REDUCE_FRACTION_TRUE",
                    "REDUCE_PERCENTILE_99",
                    "REDUCE_PERCENTILE_95",
                    "REDUCE_PERCENTILE_50",
                    "REDUCE_PERCENTILE_05",
                  },
                  enumDescriptions = {
                    "No cross-time series reduction. The output of the Aligner is returned.",
                    "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                ["aggregation.groupByFields"] = {
                  description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                ["aggregation.perSeriesAligner"] = {
                  description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
                  enum = {
                    "ALIGN_NONE",
                    "ALIGN_DELTA",
                    "ALIGN_RATE",
                    "ALIGN_INTERPOLATE",
                    "ALIGN_NEXT_OLDER",
                    "ALIGN_MIN",
                    "ALIGN_MAX",
                    "ALIGN_MEAN",
                    "ALIGN_COUNT",
                    "ALIGN_SUM",
                    "ALIGN_STDDEV",
                    "ALIGN_COUNT_TRUE",
                    "ALIGN_COUNT_FALSE",
                    "ALIGN_FRACTION_TRUE",
                    "ALIGN_PERCENTILE_99",
                    "ALIGN_PERCENTILE_95",
                    "ALIGN_PERCENTILE_50",
                    "ALIGN_PERCENTILE_05",
                    "ALIGN_PERCENT_CHANGE",
                  },
                  enumDescriptions = {
                    "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
                    "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
                    "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
                    "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
                    "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
                    "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Required. A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that specifies which time series should be returned. The filter must specify a single metric type, and can additionally specify metric labels and other information. For example: metric.type = \"compute.googleapis.com/instance/cpu/usage_time\" AND metric.labels.instance_name = \"my-instance-name\" ",
                  location = "query",
                  type = "string",
                },
                ["interval.endTime"] = {
                  description = "Required. The end of the time interval.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                ["interval.startTime"] = {
                  description = "Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name), organization or folder on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] organizations/[ORGANIZATION_ID] folders/[FOLDER_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                orderBy = {
                  description = "Unsupported: must be left blank. The points in each time series are currently returned in reverse time order (most recent to oldest).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "A positive number that is the maximum number of results to return. If page_size is empty or more than 100,000 results, the effective page_size is 100,000 results. If view is set to FULL, this is the maximum number of Points returned. If view is set to HEADERS, this is the maximum number of TimeSeries returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.alignmentPeriod"] = {
                  description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.",
                  format = "google-duration",
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.crossSeriesReducer"] = {
                  description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
                  enum = {
                    "REDUCE_NONE",
                    "REDUCE_MEAN",
                    "REDUCE_MIN",
                    "REDUCE_MAX",
                    "REDUCE_SUM",
                    "REDUCE_STDDEV",
                    "REDUCE_COUNT",
                    "REDUCE_COUNT_TRUE",
                    "REDUCE_COUNT_FALSE",
                    "REDUCE_FRACTION_TRUE",
                    "REDUCE_PERCENTILE_99",
                    "REDUCE_PERCENTILE_95",
                    "REDUCE_PERCENTILE_50",
                    "REDUCE_PERCENTILE_05",
                  },
                  enumDescriptions = {
                    "No cross-time series reduction. The output of the Aligner is returned.",
                    "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
                    "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
                    "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
                    "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                    "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                ["secondaryAggregation.groupByFields"] = {
                  description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                ["secondaryAggregation.perSeriesAligner"] = {
                  description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
                  enum = {
                    "ALIGN_NONE",
                    "ALIGN_DELTA",
                    "ALIGN_RATE",
                    "ALIGN_INTERPOLATE",
                    "ALIGN_NEXT_OLDER",
                    "ALIGN_MIN",
                    "ALIGN_MAX",
                    "ALIGN_MEAN",
                    "ALIGN_COUNT",
                    "ALIGN_SUM",
                    "ALIGN_STDDEV",
                    "ALIGN_COUNT_TRUE",
                    "ALIGN_COUNT_FALSE",
                    "ALIGN_FRACTION_TRUE",
                    "ALIGN_PERCENTILE_99",
                    "ALIGN_PERCENTILE_95",
                    "ALIGN_PERCENTILE_50",
                    "ALIGN_PERCENTILE_05",
                    "ALIGN_PERCENT_CHANGE",
                  },
                  enumDescriptions = {
                    "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
                    "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
                    "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
                    "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
                    "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
                    "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
                    "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
                    "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
                    "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
                  },
                  location = "query",
                  type = "string",
                },
                view = {
                  description = "Required. Specifies which information is returned about the time series.",
                  enum = {
                    "FULL",
                    "HEADERS",
                  },
                  enumDescriptions = {
                    "Returns the identity of the metric(s), the time series, and the time series data.",
                    "Returns the identity of the metric and the time series resource, but not the time series data.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}/timeSeries",
              response = {
                ["$ref"] = "ListTimeSeriesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            query = {
              description = "Queries time series using Monitoring Query Language.",
              flatPath = "v3/projects/{projectsId}/timeSeries:query",
              httpMethod = "POST",
              id = "monitoring.projects.timeSeries.query",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}/timeSeries:query",
              request = {
                ["$ref"] = "QueryTimeSeriesRequest",
              },
              response = {
                ["$ref"] = "QueryTimeSeriesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
          },
        },
        uptimeCheckConfigs = {
          methods = {
            create = {
              description = "Creates a new Uptime check configuration.",
              flatPath = "v3/projects/{projectsId}/uptimeCheckConfigs",
              httpMethod = "POST",
              id = "monitoring.projects.uptimeCheckConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) in which to create the Uptime check. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/uptimeCheckConfigs",
              request = {
                ["$ref"] = "UptimeCheckConfig",
              },
              response = {
                ["$ref"] = "UptimeCheckConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            delete = {
              description = "Deletes an Uptime check configuration. Note that this method will fail if the Uptime check configuration is referenced by an alert policy or other dependent configs that would be rendered invalid by the deletion.",
              flatPath = "v3/projects/{projectsId}/uptimeCheckConfigs/{uptimeCheckConfigsId}",
              httpMethod = "DELETE",
              id = "monitoring.projects.uptimeCheckConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The Uptime check configuration to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/uptimeCheckConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            get = {
              description = "Gets a single Uptime check configuration.",
              flatPath = "v3/projects/{projectsId}/uptimeCheckConfigs/{uptimeCheckConfigsId}",
              httpMethod = "GET",
              id = "monitoring.projects.uptimeCheckConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The Uptime check configuration to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/uptimeCheckConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "UptimeCheckConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            list = {
              description = "Lists the existing valid Uptime check configurations for the project (leaving out any invalid configurations).",
              flatPath = "v3/projects/{projectsId}/uptimeCheckConfigs",
              httpMethod = "GET",
              id = "monitoring.projects.uptimeCheckConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "If provided, this field specifies the criteria that must be met by uptime checks to be included in the response.For more details, see Filtering syntax (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering#filter_syntax).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return in a single response. The server may further constrain the maximum number of results returned in a single page. If the page_size is <=0, the server will decide the number of results to be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return more results from the previous method call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The project (https://cloud.google.com/monitoring/api/v3#project_name) whose Uptime check configurations are listed. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/uptimeCheckConfigs",
              response = {
                ["$ref"] = "ListUptimeCheckConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            patch = {
              description = "Updates an Uptime check configuration. You can either replace the entire configuration with a new one or replace only certain fields in the current configuration by specifying the fields to be updated via updateMask. Returns the updated configuration.",
              flatPath = "v3/projects/{projectsId}/uptimeCheckConfigs/{uptimeCheckConfigsId}",
              httpMethod = "PATCH",
              id = "monitoring.projects.uptimeCheckConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.",
                  location = "path",
                  pattern = "^projects/[^/]+/uptimeCheckConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. If present, only the listed fields in the current Uptime check configuration are updated with values from the new configuration. If this field is empty, then the current configuration is completely replaced with the new configuration.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "UptimeCheckConfig",
              },
              response = {
                ["$ref"] = "UptimeCheckConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
          },
        },
      },
    },
    services = {
      methods = {
        create = {
          description = "Create a Service.",
          flatPath = "v3/{v3Id}/{v3Id1}/services",
          httpMethod = "POST",
          id = "monitoring.services.create",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. Resource name (https://cloud.google.com/monitoring/api/v3#project_name) of the parent Metrics Scope. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            serviceId = {
              description = "Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\\-]+",
              location = "query",
              type = "string",
            },
          },
          path = "v3/{+parent}/services",
          request = {
            ["$ref"] = "Service",
          },
          response = {
            ["$ref"] = "Service",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/monitoring",
          },
        },
        delete = {
          description = "Soft delete this Service.",
          flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}",
          httpMethod = "DELETE",
          id = "monitoring.services.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name of the Service to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] ",
              location = "path",
              pattern = "^[^/]+/[^/]+/services/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/monitoring",
          },
        },
        get = {
          description = "Get the named Service.",
          flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}",
          httpMethod = "GET",
          id = "monitoring.services.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name of the Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] ",
              location = "path",
              pattern = "^[^/]+/[^/]+/services/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Service",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/monitoring",
            "https://www.googleapis.com/auth/monitoring.read",
          },
        },
        list = {
          description = "List Services for this Metrics Scope.",
          flatPath = "v3/{v3Id}/{v3Id1}/services",
          httpMethod = "GET",
          id = "monitoring.services.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            filter = {
              description = "A filter specifying what Services to return. The filter supports filtering on a particular service-identifier type or one of its attributes.To filter on a particular service-identifier type, the identifier_case refers to which option in the identifier field is populated. For example, the filter identifier_case = \"CUSTOM\" would match all services with a value for the custom field. Valid options include \"CUSTOM\", \"APP_ENGINE\", \"MESH_ISTIO\", and the other options listed at https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services#ServiceTo filter on an attribute of a service-identifier type, apply the filter name by using the snake case of the service-identifier type and the attribute of that service-identifier type, and join the two with a period. For example, to filter by the meshUid field of the MeshIstio service-identifier type, you must filter on mesh_istio.mesh_uid = \"123\" to match all services with mesh UID \"123\". Service-identifier types and their attributes are described at https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services#Service",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "A non-negative number that is the maximum number of results to return. When 0, use default page size.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. Resource name of the parent containing the listed services, either a project (https://cloud.google.com/monitoring/api/v3#project_name) or a Monitoring Metrics Scope. The formats are: projects/[PROJECT_ID_OR_NUMBER] workspaces/[HOST_PROJECT_ID_OR_NUMBER] ",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+parent}/services",
          response = {
            ["$ref"] = "ListServicesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/monitoring",
            "https://www.googleapis.com/auth/monitoring.read",
          },
        },
        patch = {
          description = "Update this Service.",
          flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}",
          httpMethod = "PATCH",
          id = "monitoring.services.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] ",
              location = "path",
              pattern = "^[^/]+/[^/]+/services/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "A set of field paths defining which fields to use for the update.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v3/{+name}",
          request = {
            ["$ref"] = "Service",
          },
          response = {
            ["$ref"] = "Service",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/monitoring",
          },
        },
      },
      resources = {
        serviceLevelObjectives = {
          methods = {
            create = {
              description = "Create a ServiceLevelObjective for the given Service.",
              flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives",
              httpMethod = "POST",
              id = "monitoring.services.serviceLevelObjectives.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name of the parent Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] ",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/services/[^/]+$",
                  required = true,
                  type = "string",
                },
                serviceLevelObjectiveId = {
                  description = "Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\\-]+",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+parent}/serviceLevelObjectives",
              request = {
                ["$ref"] = "ServiceLevelObjective",
              },
              response = {
                ["$ref"] = "ServiceLevelObjective",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            delete = {
              description = "Delete the given ServiceLevelObjective.",
              flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives/{serviceLevelObjectivesId}",
              httpMethod = "DELETE",
              id = "monitoring.services.serviceLevelObjectives.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the ServiceLevelObjective to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME] ",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/services/[^/]+/serviceLevelObjectives/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
            get = {
              description = "Get a ServiceLevelObjective by name.",
              flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives/{serviceLevelObjectivesId}",
              httpMethod = "GET",
              id = "monitoring.services.serviceLevelObjectives.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the ServiceLevelObjective to get. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME] ",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/services/[^/]+/serviceLevelObjectives/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "View of the ServiceLevelObjective to return. If DEFAULT, return the ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.",
                  enum = {
                    "VIEW_UNSPECIFIED",
                    "FULL",
                    "EXPLICIT",
                  },
                  enumDescriptions = {
                    "Same as FULL.",
                    "Return the embedded ServiceLevelIndicator in the form in which it was defined. If it was defined using a BasicSli, return that BasicSli.",
                    "For ServiceLevelIndicators using BasicSli articulation, instead return the ServiceLevelIndicator with its mode of computation fully spelled out as a RequestBasedSli. For ServiceLevelIndicators using RequestBasedSli or WindowsBasedSli, return the ServiceLevelIndicator as it was provided.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "ServiceLevelObjective",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            list = {
              description = "List the ServiceLevelObjectives for the given Service.",
              flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives",
              httpMethod = "GET",
              id = "monitoring.services.serviceLevelObjectives.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "A filter specifying what ServiceLevelObjectives to return.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "A non-negative number that is the maximum number of results to return. When 0, use default page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name of the parent containing the listed SLOs, either a project or a Monitoring Metrics Scope. The formats are: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] workspaces/[HOST_PROJECT_ID_OR_NUMBER]/services/- ",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/services/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "View of the ServiceLevelObjectives to return. If DEFAULT, return each ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.",
                  enum = {
                    "VIEW_UNSPECIFIED",
                    "FULL",
                    "EXPLICIT",
                  },
                  enumDescriptions = {
                    "Same as FULL.",
                    "Return the embedded ServiceLevelIndicator in the form in which it was defined. If it was defined using a BasicSli, return that BasicSli.",
                    "For ServiceLevelIndicators using BasicSli articulation, instead return the ServiceLevelIndicator with its mode of computation fully spelled out as a RequestBasedSli. For ServiceLevelIndicators using RequestBasedSli or WindowsBasedSli, return the ServiceLevelIndicator as it was provided.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+parent}/serviceLevelObjectives",
              response = {
                ["$ref"] = "ListServiceLevelObjectivesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            patch = {
              description = "Update the given ServiceLevelObjective.",
              flatPath = "v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives/{serviceLevelObjectivesId}",
              httpMethod = "PATCH",
              id = "monitoring.services.serviceLevelObjectives.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME] ",
                  location = "path",
                  pattern = "^[^/]+/[^/]+/services/[^/]+/serviceLevelObjectives/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "A set of field paths defining which fields to use for the update.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v3/{+name}",
              request = {
                ["$ref"] = "ServiceLevelObjective",
              },
              response = {
                ["$ref"] = "ServiceLevelObjective",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
              },
            },
          },
        },
      },
    },
    uptimeCheckIps = {
      methods = {
        list = {
          description = "Returns the list of IP addresses that checkers run from",
          flatPath = "v3/uptimeCheckIps",
          httpMethod = "GET",
          id = "monitoring.uptimeCheckIps.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of results to return in a single response. The server may further constrain the maximum number of results returned in a single page. If the page_size is <=0, the server will decide the number of results to be returned. NOTE: this field is not yet implemented",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return more results from the previous method call. NOTE: this field is not yet implemented",
              location = "query",
              type = "string",
            },
          },
          path = "v3/uptimeCheckIps",
          response = {
            ["$ref"] = "ListUptimeCheckIpsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/monitoring",
            "https://www.googleapis.com/auth/monitoring.read",
          },
        },
      },
    },
  },
  revision = "20230102",
  rootUrl = "https://monitoring.googleapis.com/",
  schemas = {
    Aggregation = {
      description = "Describes how to combine multiple time series to provide a different view of the data. Aggregation of time series is done in two steps. First, each time series in the set is aligned to the same time interval boundaries, then the set of time series is optionally reduced in number.Alignment consists of applying the per_series_aligner operation to each time series after its data has been divided into regular alignment_period time intervals. This process takes all of the data points in an alignment period, applies a mathematical transformation such as averaging, minimum, maximum, delta, etc., and converts them into a single data point per period.Reduction is when the aligned and transformed time series can optionally be combined, reducing the number of time series through similar mathematical transformations. Reduction involves applying a cross_series_reducer to all the time series, optionally sorting the time series into subsets with group_by_fields, and applying the reducer to each subset.The raw time series data can contain a huge amount of information from multiple sources. Alignment and reduction transforms this mass of data into a more manageable and representative collection of data, for example \"the 95% latency across the average of all tasks in a cluster\". This representative data can be more easily graphed and comprehended, and the individual time series data is still available for later drilldown. For more details, see Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/aggregation).",
      id = "Aggregation",
      properties = {
        alignmentPeriod = {
          description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.",
          format = "google-duration",
          type = "string",
        },
        crossSeriesReducer = {
          description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
          enum = {
            "REDUCE_NONE",
            "REDUCE_MEAN",
            "REDUCE_MIN",
            "REDUCE_MAX",
            "REDUCE_SUM",
            "REDUCE_STDDEV",
            "REDUCE_COUNT",
            "REDUCE_COUNT_TRUE",
            "REDUCE_COUNT_FALSE",
            "REDUCE_FRACTION_TRUE",
            "REDUCE_PERCENTILE_99",
            "REDUCE_PERCENTILE_95",
            "REDUCE_PERCENTILE_50",
            "REDUCE_PERCENTILE_05",
          },
          enumDescriptions = {
            "No cross-time series reduction. The output of the Aligner is returned.",
            "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
            "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
            "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
            "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
            "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
            "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
            "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
            "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
            "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
            "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
            "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
            "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
            "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
          },
          type = "string",
        },
        groupByFields = {
          description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
          items = {
            type = "string",
          },
          type = "array",
        },
        perSeriesAligner = {
          description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
          enum = {
            "ALIGN_NONE",
            "ALIGN_DELTA",
            "ALIGN_RATE",
            "ALIGN_INTERPOLATE",
            "ALIGN_NEXT_OLDER",
            "ALIGN_MIN",
            "ALIGN_MAX",
            "ALIGN_MEAN",
            "ALIGN_COUNT",
            "ALIGN_SUM",
            "ALIGN_STDDEV",
            "ALIGN_COUNT_TRUE",
            "ALIGN_COUNT_FALSE",
            "ALIGN_FRACTION_TRUE",
            "ALIGN_PERCENTILE_99",
            "ALIGN_PERCENTILE_95",
            "ALIGN_PERCENTILE_50",
            "ALIGN_PERCENTILE_05",
            "ALIGN_PERCENT_CHANGE",
          },
          enumDescriptions = {
            "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
            "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
            "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
            "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
            "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
            "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
            "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
            "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
            "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AlertPolicy = {
      description = "A description of the conditions under which some aspect of your system is considered to be \"unhealthy\" and the ways to notify people or services about this state. For an overview of alert policies, see Introduction to Alerting (https://cloud.google.com/monitoring/alerts/).",
      id = "AlertPolicy",
      properties = {
        alertStrategy = {
          ["$ref"] = "AlertStrategy",
          description = "Control over how this alert policy's notification channels are notified.",
        },
        combiner = {
          description = "How to combine the results of multiple conditions to determine if an incident should be opened. If condition_time_series_query_language is present, this must be COMBINE_UNSPECIFIED.",
          enum = {
            "COMBINE_UNSPECIFIED",
            "AND",
            "OR",
            "AND_WITH_MATCHING_RESOURCE",
          },
          enumDescriptions = {
            "An unspecified combiner.",
            "Combine conditions using the logical AND operator. An incident is created only if all the conditions are met simultaneously. This combiner is satisfied if all conditions are met, even if they are met on completely different resources.",
            "Combine conditions using the logical OR operator. An incident is created if any of the listed conditions is met.",
            "Combine conditions using logical AND operator, but unlike the regular AND option, an incident is created only if all conditions are met simultaneously on at least one resource.",
          },
          type = "string",
        },
        conditions = {
          description = "A list of conditions for the policy. The conditions are combined by AND or OR according to the combiner field. If the combined conditions evaluate to true, then an incident is created. A policy can have from one to six conditions. If condition_time_series_query_language is present, it must be the only condition.",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
        },
        creationRecord = {
          ["$ref"] = "MutationRecord",
          description = "A read-only record of the creation of the alerting policy. If provided in a call to create or update, this field will be ignored.",
        },
        displayName = {
          description = "A short name or phrase used to identify the policy in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple policies in the same project. The name is limited to 512 Unicode characters.",
          type = "string",
        },
        documentation = {
          ["$ref"] = "Documentation",
          description = "Documentation that is included with notifications and incidents related to this policy. Best practice is for the documentation to include information to help responders understand, mitigate, escalate, and correct the underlying problems detected by the alerting policy. Notification channels that have limited capacity might not show this documentation.",
        },
        enabled = {
          description = "Whether or not the policy is enabled. On write, the default interpretation if unset is that the policy is enabled. On read, clients should not make any assumption about the state if it has not been populated. The field should always be populated on List and Get operations, unless a field projection has been specified that strips it out.",
          type = "boolean",
        },
        mutationRecord = {
          ["$ref"] = "MutationRecord",
          description = "A read-only record of the most recent change to the alerting policy. If provided in a call to create or update, this field will be ignored.",
        },
        name = {
          description = "Required if the policy exists. The resource name for this policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] [ALERT_POLICY_ID] is assigned by Cloud Monitoring when the policy is created. When calling the alertPolicies.create method, do not include the name field in the alerting policy passed as part of the request.",
          type = "string",
        },
        notificationChannels = {
          description = "Identifies the notification channels to which notifications should be sent when incidents are opened or closed or when new violations occur on an already opened incident. Each element of this array corresponds to the name field in each of the NotificationChannel objects that are returned from the ListNotificationChannels method. The format of the entries in this field is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] ",
          items = {
            type = "string",
          },
          type = "array",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key/value data to be used for organizing and identifying the AlertPolicy objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.",
          type = "object",
        },
        validity = {
          ["$ref"] = "Status",
          description = "Read-only description of how the alert policy is invalid. OK if the alert policy is valid. If not OK, the alert policy will not generate incidents.",
        },
      },
      type = "object",
    },
    AlertStrategy = {
      description = "Control over how the notification channels in notification_channels are notified when this alert fires.",
      id = "AlertStrategy",
      properties = {
        autoClose = {
          description = "If an alert policy that was active has no data for this long, any open incidents will close",
          format = "google-duration",
          type = "string",
        },
        notificationRateLimit = {
          ["$ref"] = "NotificationRateLimit",
          description = "Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.",
        },
      },
      type = "object",
    },
    AppEngine = {
      description = "App Engine service. Learn more at https://cloud.google.com/appengine.",
      id = "AppEngine",
      properties = {
        moduleId = {
          description = "The ID of the App Engine module underlying this service. Corresponds to the module_id resource label in the gae_app monitored resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).",
          type = "string",
        },
      },
      type = "object",
    },
    AvailabilityCriteria = {
      description = "Future parameters for the availability SLI.",
      id = "AvailabilityCriteria",
      properties = {},
      type = "object",
    },
    BasicAuthentication = {
      description = "The authentication parameters to provide to the specified resource or URL that requires a username and password. Currently, only Basic HTTP authentication (https://tools.ietf.org/html/rfc7617) is supported in Uptime checks.",
      id = "BasicAuthentication",
      properties = {
        password = {
          description = "The password to use when authenticating with the HTTP server.",
          type = "string",
        },
        username = {
          description = "The username to use when authenticating with the HTTP server.",
          type = "string",
        },
      },
      type = "object",
    },
    BasicService = {
      description = "A well-known service type, defined by its service type and service labels. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).",
      id = "BasicService",
      properties = {
        serviceLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels that specify the resource that emits the monitoring data which is used for SLO reporting of this Service. Documentation and valid values for given service types here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).",
          type = "object",
        },
        serviceType = {
          description = "The type of service that this basic service defines, e.g. APP_ENGINE service type. Documentation and valid values here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).",
          type = "string",
        },
      },
      type = "object",
    },
    BasicSli = {
      description = "An SLI measuring performance on a well-known service type. Performance will be computed on the basis of pre-defined metrics. The type of the service_resource determines the metrics to use and the service_resource.labels and metric_labels are used to construct a monitoring filter to filter that metric down to just the data relevant to this service.",
      id = "BasicSli",
      properties = {
        availability = {
          ["$ref"] = "AvailabilityCriteria",
          description = "Good service is defined to be the count of requests made to this service that return successfully.",
        },
        latency = {
          ["$ref"] = "LatencyCriteria",
          description = "Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.",
        },
        location = {
          description = "OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don't support breaking down by location, setting this field will result in an error.",
          items = {
            type = "string",
          },
          type = "array",
        },
        method = {
          description = "OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service's methods. For service types that don't support breaking down by method, setting this field will result in an error.",
          items = {
            type = "string",
          },
          type = "array",
        },
        version = {
          description = "OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don't support breaking down by version, setting this field will result in an error.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BucketOptions = {
      description = "BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.",
      id = "BucketOptions",
      properties = {
        explicitBuckets = {
          ["$ref"] = "Explicit",
          description = "The explicit buckets.",
        },
        exponentialBuckets = {
          ["$ref"] = "Exponential",
          description = "The exponential buckets.",
        },
        linearBuckets = {
          ["$ref"] = "Linear",
          description = "The linear bucket.",
        },
      },
      type = "object",
    },
    CloudEndpoints = {
      description = "Cloud Endpoints service. Learn more at https://cloud.google.com/endpoints.",
      id = "CloudEndpoints",
      properties = {
        service = {
          description = "The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource (https://cloud.google.com/monitoring/api/resources#tag_api).",
          type = "string",
        },
      },
      type = "object",
    },
    CloudRun = {
      description = "Cloud Run service. Learn more at https://cloud.google.com/run.",
      id = "CloudRun",
      properties = {
        location = {
          description = "The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).",
          type = "string",
        },
        serviceName = {
          description = "The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).",
          type = "string",
        },
      },
      type = "object",
    },
    ClusterIstio = {
      description = "Istio service scoped to a single Kubernetes cluster. Learn more at https://istio.io. Clusters running OSS Istio will have their services ingested as this type.",
      id = "ClusterIstio",
      properties = {
        clusterName = {
          description = "The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster_name resource label in k8s_cluster resources.",
          type = "string",
        },
        location = {
          description = "The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.",
          type = "string",
        },
        serviceName = {
          description = "The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.",
          type = "string",
        },
        serviceNamespace = {
          description = "The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.",
          type = "string",
        },
      },
      type = "object",
    },
    CollectdPayload = {
      description = "A collection of data points sent from a collectd-based plugin. See the collectd documentation for more information.",
      id = "CollectdPayload",
      properties = {
        endTime = {
          description = "The end time of the interval.",
          format = "google-datetime",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            ["$ref"] = "TypedValue",
          },
          description = "The measurement metadata. Example: \"process_id\" -> 12345",
          type = "object",
        },
        plugin = {
          description = "The name of the plugin. Example: \"disk\".",
          type = "string",
        },
        pluginInstance = {
          description = "The instance name of the plugin Example: \"hdcl\".",
          type = "string",
        },
        startTime = {
          description = "The start time of the interval.",
          format = "google-datetime",
          type = "string",
        },
        type = {
          description = "The measurement type. Example: \"memory\".",
          type = "string",
        },
        typeInstance = {
          description = "The measurement type instance. Example: \"used\".",
          type = "string",
        },
        values = {
          description = "The measured values during this time interval. Each value must have a different data_source_name.",
          items = {
            ["$ref"] = "CollectdValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CollectdPayloadError = {
      description = "Describes the error status for payloads that were not written.",
      id = "CollectdPayloadError",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "Records the error status for the payload. If this field is present, the partial errors for nested values won't be populated.",
        },
        index = {
          description = "The zero-based index in CreateCollectdTimeSeriesRequest.collectd_payloads.",
          format = "int32",
          type = "integer",
        },
        valueErrors = {
          description = "Records the error status for values that were not written due to an error.Failed payloads for which nothing is written will not include partial value errors.",
          items = {
            ["$ref"] = "CollectdValueError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CollectdValue = {
      description = "A single data point from a collectd-based plugin.",
      id = "CollectdValue",
      properties = {
        dataSourceName = {
          description = "The data source for the collectd value. For example, there are two data sources for network measurements: \"rx\" and \"tx\".",
          type = "string",
        },
        dataSourceType = {
          description = "The type of measurement.",
          enum = {
            "UNSPECIFIED_DATA_SOURCE_TYPE",
            "GAUGE",
            "COUNTER",
            "DERIVE",
            "ABSOLUTE",
          },
          enumDescriptions = {
            "An unspecified data source type. This corresponds to google.api.MetricDescriptor.MetricKind.METRIC_KIND_UNSPECIFIED.",
            "An instantaneous measurement of a varying quantity. This corresponds to google.api.MetricDescriptor.MetricKind.GAUGE.",
            "A cumulative value over time. This corresponds to google.api.MetricDescriptor.MetricKind.CUMULATIVE.",
            "A rate of change of the measurement.",
            "An amount of change since the last measurement interval. This corresponds to google.api.MetricDescriptor.MetricKind.DELTA.",
          },
          type = "string",
        },
        value = {
          ["$ref"] = "TypedValue",
          description = "The measurement value.",
        },
      },
      type = "object",
    },
    CollectdValueError = {
      description = "Describes the error status for values that were not written.",
      id = "CollectdValueError",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "Records the error status for the value.",
        },
        index = {
          description = "The zero-based index in CollectdPayload.values within the parent CreateCollectdTimeSeriesRequest.collectd_payloads.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Condition = {
      description = "A condition is a true/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.",
      id = "Condition",
      properties = {
        conditionAbsent = {
          ["$ref"] = "MetricAbsence",
          description = "A condition that checks that a time series continues to receive new data points.",
        },
        conditionMatchedLog = {
          ["$ref"] = "LogMatch",
          description = "A condition that checks for log messages matching given constraints. If set, no other conditions can be present.",
        },
        conditionMonitoringQueryLanguage = {
          ["$ref"] = "MonitoringQueryLanguageCondition",
          description = "A condition that uses the Monitoring Query Language to define alerts.",
        },
        conditionThreshold = {
          ["$ref"] = "MetricThreshold",
          description = "A condition that compares a time series against a threshold.",
        },
        displayName = {
          description = "A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.",
          type = "string",
        },
        name = {
          description = "Required if the condition exists. The unique resource name for this condition. Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Cloud Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.",
          type = "string",
        },
      },
      type = "object",
    },
    ContentMatcher = {
      description = "Optional. Used to perform content matching. This allows matching based on substrings and regular expressions, together with their negations. Only the first 4 MB of an HTTP or HTTPS check's response (and the first 1 MB of a TCP check's response) are examined for purposes of content matching.",
      id = "ContentMatcher",
      properties = {
        content = {
          description = "String, regex or JSON content to match. Maximum 1024 bytes. An empty content string indicates no content matching is to be performed.",
          type = "string",
        },
        jsonPathMatcher = {
          ["$ref"] = "JsonPathMatcher",
          description = "Matcher information for MATCHES_JSON_PATH and NOT_MATCHES_JSON_PATH",
        },
        matcher = {
          description = "The type of content matcher that will be applied to the server output, compared to the content string when the check is run.",
          enum = {
            "CONTENT_MATCHER_OPTION_UNSPECIFIED",
            "CONTAINS_STRING",
            "NOT_CONTAINS_STRING",
            "MATCHES_REGEX",
            "NOT_MATCHES_REGEX",
            "MATCHES_JSON_PATH",
            "NOT_MATCHES_JSON_PATH",
          },
          enumDescriptions = {
            "No content matcher type specified (maintained for backward compatibility, but deprecated for future use). Treated as CONTAINS_STRING.",
            "Selects substring matching. The match succeeds if the output contains the content string. This is the default value for checks without a matcher option, or where the value of matcher is CONTENT_MATCHER_OPTION_UNSPECIFIED.",
            "Selects negation of substring matching. The match succeeds if the output does NOT contain the content string.",
            "Selects regular-expression matching. The match succeeds if the output matches the regular expression specified in the content string. Regex matching is only supported for HTTP/HTTPS checks.",
            "Selects negation of regular-expression matching. The match succeeds if the output does NOT match the regular expression specified in the content string. Regex matching is only supported for HTTP/HTTPS checks.",
            "Selects JSONPath matching. See JsonPathMatcher for details on when the match succeeds. JSONPath matching is only supported for HTTP/HTTPS checks.",
            "Selects JSONPath matching. See JsonPathMatcher for details on when the match succeeds. Succeeds when output does NOT match as specified. JSONPath is only supported for HTTP/HTTPS checks.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreateCollectdTimeSeriesRequest = {
      description = "The CreateCollectdTimeSeries request.",
      id = "CreateCollectdTimeSeriesRequest",
      properties = {
        collectdPayloads = {
          description = "The collectd payloads representing the time series data. You must not include more than a single point for each time series, so no two payloads can have the same values for all of the fields plugin, plugin_instance, type, and type_instance.",
          items = {
            ["$ref"] = "CollectdPayload",
          },
          type = "array",
        },
        collectdVersion = {
          description = "The version of collectd that collected the data. Example: \"5.3.0-192.el6\".",
          type = "string",
        },
        resource = {
          ["$ref"] = "MonitoredResource",
          description = "The monitored resource associated with the time series.",
        },
      },
      type = "object",
    },
    CreateCollectdTimeSeriesResponse = {
      description = "The CreateCollectdTimeSeries response.",
      id = "CreateCollectdTimeSeriesResponse",
      properties = {
        payloadErrors = {
          description = "Records the error status for points that were not written due to an error in the request.Failed requests for which nothing is written will return an error response instead. Requests where data points were rejected by the backend will set summary instead.",
          items = {
            ["$ref"] = "CollectdPayloadError",
          },
          type = "array",
        },
        summary = {
          ["$ref"] = "CreateTimeSeriesSummary",
          description = "Aggregate statistics from writing the payloads. This field is omitted if all points were successfully written, so that the response is empty. This is for backwards compatibility with clients that log errors on any non-empty response.",
        },
      },
      type = "object",
    },
    CreateTimeSeriesRequest = {
      description = "The CreateTimeSeries request.",
      id = "CreateTimeSeriesRequest",
      properties = {
        timeSeries = {
          description = "Required. The new data to be added to a list of time series. Adds at most one data point to each of several time series. The new data point must be more recent than any other point in its time series. Each TimeSeries value must fully specify a unique time series by supplying all label values for the metric and the monitored resource.The maximum number of TimeSeries objects per Create request is 200.",
          items = {
            ["$ref"] = "TimeSeries",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreateTimeSeriesSummary = {
      description = "Summary of the result of a failed request to write data to a time series.",
      id = "CreateTimeSeriesSummary",
      properties = {
        errors = {
          description = "The number of points that failed to be written. Order is not guaranteed.",
          items = {
            ["$ref"] = "Error",
          },
          type = "array",
        },
        successPointCount = {
          description = "The number of points that were successfully written.",
          format = "int32",
          type = "integer",
        },
        totalPointCount = {
          description = "The number of points in the request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Criteria = {
      description = "Criteria specific to the AlertPolicys that this Snooze applies to. The Snooze will suppress alerts that come from one of the AlertPolicys whose names are supplied.",
      id = "Criteria",
      properties = {
        policies = {
          description = "The specific AlertPolicy names for the alert that should be snoozed. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID] There is a limit of 10 policies per snooze. This limit is checked during snooze creation.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Custom = {
      description = "Use a custom service to designate a service that you want to monitor when none of the other service types (like App Engine, Cloud Run, or a GKE type) matches your intended service.",
      id = "Custom",
      properties = {},
      type = "object",
    },
    Distribution = {
      description = "Distribution contains summary statistics for a population of values. It optionally contains a histogram representing the distribution of those values across a set of buckets.The summary statistics are the count, mean, sum of the squared deviation from the mean, the minimum, and the maximum of the set of population of values. The histogram is based on a sequence of buckets and gives a count of values that fall into each bucket. The boundaries of the buckets are given either explicitly or by formulas for buckets of fixed or exponentially increasing widths.Although it is not forbidden, it is generally a bad idea to include non-finite values (infinities or NaNs) in the population of values, as this will render the mean and sum_of_squared_deviation fields meaningless.",
      id = "Distribution",
      properties = {
        bucketCounts = {
          description = "Required in the Cloud Monitoring API v3. The values for each bucket specified in bucket_options. The sum of the values in bucketCounts must equal the value in the count field of the Distribution object. The order of the bucket counts follows the numbering schemes described for the three bucket types. The underflow bucket has number 0; the finite buckets, if any, have numbers 1 through N-2; and the overflow bucket has number N-1. The size of bucket_counts must not be greater than N. If the size is less than N, then the remaining buckets are assigned values of zero.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        bucketOptions = {
          ["$ref"] = "BucketOptions",
          description = "Required in the Cloud Monitoring API v3. Defines the histogram bucket boundaries.",
        },
        count = {
          description = "The number of values in the population. Must be non-negative. This value must equal the sum of the values in bucket_counts if a histogram is provided.",
          format = "int64",
          type = "string",
        },
        exemplars = {
          description = "Must be in increasing order of value field.",
          items = {
            ["$ref"] = "Exemplar",
          },
          type = "array",
        },
        mean = {
          description = "The arithmetic mean of the values in the population. If count is zero then this field must be zero.",
          format = "double",
          type = "number",
        },
        range = {
          ["$ref"] = "Range",
          description = "If specified, contains the range of the population values. The field must not be present if the count is zero. This field is presently ignored by the Cloud Monitoring API v3.",
        },
        sumOfSquaredDeviation = {
          description = "The sum of squared deviations from the mean of the values in the population. For values x_i this is: Sum[i=1..n]((x_i - mean)^2) Knuth, \"The Art of Computer Programming\", Vol. 2, page 232, 3rd edition describes Welford's method for accumulating this sum in one pass.If count is zero then this field must be zero.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    DistributionCut = {
      description = "A DistributionCut defines a TimeSeries and thresholds used for measuring good service and total service. The TimeSeries must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service will be the estimated count of values in the Distribution that fall within the specified min and max.",
      id = "DistributionCut",
      properties = {
        distributionFilter = {
          description = "A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE.",
          type = "string",
        },
        range = {
          ["$ref"] = "GoogleMonitoringV3Range",
          description = "Range of values considered \"good.\" For a one-sided range, set one bound to an infinite value.",
        },
      },
      type = "object",
    },
    Documentation = {
      description = "A content string and a MIME type that describes the content string's format.",
      id = "Documentation",
      properties = {
        content = {
          description = "The body of the documentation, interpreted according to mime_type. The content may not exceed 8,192 Unicode characters and may not exceed more than 10,240 bytes when encoded in UTF-8 format, whichever is smaller. This text can be templatized by using variables (https://cloud.google.com/monitoring/alerts/doc-variables).",
          type = "string",
        },
        mimeType = {
          description = "The format of the content field. Presently, only the value \"text/markdown\" is supported. See Markdown (https://en.wikipedia.org/wiki/Markdown) for more information.",
          type = "string",
        },
      },
      type = "object",
    },
    DroppedLabels = {
      description = "A set of (label, value) pairs that were removed from a Distribution time series during aggregation and then added as an attachment to a Distribution.Exemplar.The full label set for the exemplars is constructed by using the dropped pairs in combination with the label values that remain on the aggregated Distribution time series. The constructed full label set can be used to identify the specific entity, such as the instance or job, which might be contributing to a long-tail. However, with dropped labels, the storage requirements are reduced because only the aggregated distribution values for a large group of time series are stored.Note that there are no guarantees on ordering of the labels from exemplar-to-exemplar and from distribution-to-distribution in the same stream, and there may be duplicates. It is up to clients to resolve any ambiguities.",
      id = "DroppedLabels",
      properties = {
        label = {
          additionalProperties = {
            type = "string",
          },
          description = "Map from label to its value, for all labels dropped in any aggregation.",
          type = "object",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } ",
      id = "Empty",
      properties = {},
      type = "object",
    },
    Error = {
      description = "Detailed information about an error category.",
      id = "Error",
      properties = {
        pointCount = {
          description = "The number of points that couldn't be written because of status.",
          format = "int32",
          type = "integer",
        },
        status = {
          ["$ref"] = "Status",
          description = "The status of the requested write operation.",
        },
      },
      type = "object",
    },
    Exemplar = {
      description = "Exemplars are example points that may be used to annotate aggregated distribution values. They are metadata that gives information about a particular value added to a Distribution bucket, such as a trace ID that was active when a value was added. They may contain further information, such as a example values and timestamps, origin, etc.",
      id = "Exemplar",
      properties = {
        attachments = {
          description = "Contextual information about the example value. Examples are:Trace: type.googleapis.com/google.monitoring.v3.SpanContextLiteral string: type.googleapis.com/google.protobuf.StringValueLabels dropped during aggregation: type.googleapis.com/google.monitoring.v3.DroppedLabelsThere may be only a single attachment of any given message type in a single exemplar, and this is enforced by the system.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        timestamp = {
          description = "The observation (sampling) time of the above value.",
          format = "google-datetime",
          type = "string",
        },
        value = {
          description = "Value of the exemplar point. This value determines to which bucket the exemplar belongs.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Explicit = {
      description = "Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.",
      id = "Explicit",
      properties = {
        bounds = {
          description = "The values must be monotonically increasing.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Exponential = {
      description = "Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i). Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).",
      id = "Exponential",
      properties = {
        growthFactor = {
          description = "Must be greater than 1.",
          format = "double",
          type = "number",
        },
        numFiniteBuckets = {
          description = "Must be greater than 0.",
          format = "int32",
          type = "integer",
        },
        scale = {
          description = "Must be greater than 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Field = {
      description = "A single field of a message type.",
      id = "Field",
      properties = {
        cardinality = {
          description = "The field cardinality.",
          enum = {
            "CARDINALITY_UNKNOWN",
            "CARDINALITY_OPTIONAL",
            "CARDINALITY_REQUIRED",
            "CARDINALITY_REPEATED",
          },
          enumDescriptions = {
            "For fields with unknown cardinality.",
            "For optional fields.",
            "For required fields. Proto2 syntax only.",
            "For repeated fields.",
          },
          type = "string",
        },
        defaultValue = {
          description = "The string value of the default value of this field. Proto2 syntax only.",
          type = "string",
        },
        jsonName = {
          description = "The field JSON name.",
          type = "string",
        },
        kind = {
          description = "The field type.",
          enum = {
            "TYPE_UNKNOWN",
            "TYPE_DOUBLE",
            "TYPE_FLOAT",
            "TYPE_INT64",
            "TYPE_UINT64",
            "TYPE_INT32",
            "TYPE_FIXED64",
            "TYPE_FIXED32",
            "TYPE_BOOL",
            "TYPE_STRING",
            "TYPE_GROUP",
            "TYPE_MESSAGE",
            "TYPE_BYTES",
            "TYPE_UINT32",
            "TYPE_ENUM",
            "TYPE_SFIXED32",
            "TYPE_SFIXED64",
            "TYPE_SINT32",
            "TYPE_SINT64",
          },
          enumDescriptions = {
            "Field type unknown.",
            "Field type double.",
            "Field type float.",
            "Field type int64.",
            "Field type uint64.",
            "Field type int32.",
            "Field type fixed64.",
            "Field type fixed32.",
            "Field type bool.",
            "Field type string.",
            "Field type group. Proto2 syntax only, and deprecated.",
            "Field type message.",
            "Field type bytes.",
            "Field type uint32.",
            "Field type enum.",
            "Field type sfixed32.",
            "Field type sfixed64.",
            "Field type sint32.",
            "Field type sint64.",
          },
          type = "string",
        },
        name = {
          description = "The field name.",
          type = "string",
        },
        number = {
          description = "The field number.",
          format = "int32",
          type = "integer",
        },
        oneofIndex = {
          description = "The index of the field type in Type.oneofs, for message or enumeration types. The first type has index 1; zero means the type is not in the list.",
          format = "int32",
          type = "integer",
        },
        options = {
          description = "The protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        packed = {
          description = "Whether to use alternative packed wire representation.",
          type = "boolean",
        },
        typeUrl = {
          description = "The field type URL, without the scheme, for message or enumeration types. Example: \"type.googleapis.com/google.protobuf.Timestamp\".",
          type = "string",
        },
      },
      type = "object",
    },
    ForecastOptions = {
      description = "Options used when forecasting the time series and testing the predicted value against the threshold.",
      id = "ForecastOptions",
      properties = {
        forecastHorizon = {
          description = "Required. The length of time into the future to forecast whether a time series will violate the threshold. If the predicted value is found to violate the threshold, and the violation is observed in all forecasts made for the configured duration, then the time series is considered to be failing.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GetNotificationChannelVerificationCodeRequest = {
      description = "The GetNotificationChannelVerificationCode request.",
      id = "GetNotificationChannelVerificationCodeRequest",
      properties = {
        expireTime = {
          description = "The desired expiration time. If specified, the API will guarantee that the returned code will not be valid after the specified timestamp; however, the API cannot guarantee that the returned code will be valid for at least as long as the requested time (the API puts an upper bound on the amount of time for which a code may be valid). If omitted, a default expiration will be used, which may be less than the max permissible expiration (so specifying an expiration may extend the code's lifetime over omitting an expiration, even though the API does impose an upper limit on the maximum expiration that is permitted).",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GetNotificationChannelVerificationCodeResponse = {
      description = "The GetNotificationChannelVerificationCode request.",
      id = "GetNotificationChannelVerificationCodeResponse",
      properties = {
        code = {
          description = "The verification code, which may be used to verify other channels that have an equivalent identity (i.e. other channels of the same type with the same fingerprint such as other email channels with the same email address or other sms channels with the same number).",
          type = "string",
        },
        expireTime = {
          description = "The expiration time associated with the code that was returned. If an expiration was provided in the request, this is the minimum of the requested expiration in the request and the max permitted expiration.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GkeNamespace = {
      description = "GKE Namespace. The field names correspond to the resource metadata labels on monitored resources that fall under a namespace (for example, k8s_container or k8s_pod).",
      id = "GkeNamespace",
      properties = {
        clusterName = {
          description = "The name of the parent cluster.",
          type = "string",
        },
        location = {
          description = "The location of the parent cluster. This may be a zone or region.",
          type = "string",
        },
        namespaceName = {
          description = "The name of this namespace.",
          type = "string",
        },
        projectId = {
          description = "Output only. The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GkeService = {
      description = "GKE Service. The \"service\" here represents a Kubernetes service object (https://kubernetes.io/docs/concepts/services-networking/service). The field names correspond to the resource labels on k8s_service monitored resources (https://cloud.google.com/monitoring/api/resources#tag_k8s_service).",
      id = "GkeService",
      properties = {
        clusterName = {
          description = "The name of the parent cluster.",
          type = "string",
        },
        location = {
          description = "The location of the parent cluster. This may be a zone or region.",
          type = "string",
        },
        namespaceName = {
          description = "The name of the parent namespace.",
          type = "string",
        },
        projectId = {
          description = "Output only. The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.",
          readOnly = true,
          type = "string",
        },
        serviceName = {
          description = "The name of this service.",
          type = "string",
        },
      },
      type = "object",
    },
    GkeWorkload = {
      description = "A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to the metadata labels on monitored resources that fall under a workload (for example, k8s_container or k8s_pod).",
      id = "GkeWorkload",
      properties = {
        clusterName = {
          description = "The name of the parent cluster.",
          type = "string",
        },
        location = {
          description = "The location of the parent cluster. This may be a zone or region.",
          type = "string",
        },
        namespaceName = {
          description = "The name of the parent namespace.",
          type = "string",
        },
        projectId = {
          description = "Output only. The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.",
          readOnly = true,
          type = "string",
        },
        topLevelControllerName = {
          description = "The name of this workload.",
          type = "string",
        },
        topLevelControllerType = {
          description = "The type of this workload (for example, \"Deployment\" or \"DaemonSet\")",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleMonitoringV3Range = {
      description = "Range of numerical values within min and max.",
      id = "GoogleMonitoringV3Range",
      properties = {
        max = {
          description = "Range maximum.",
          format = "double",
          type = "number",
        },
        min = {
          description = "Range minimum.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Group = {
      description = "The description of a dynamic collection of monitored resources. Each group has a filter that is matched against monitored resources and their associated metadata. If a group's filter matches an available monitored resource, then that resource is a member of that group. Groups can contain any number of monitored resources, and each monitored resource can be a member of any number of groups.Groups can be nested in parent-child hierarchies. The parentName field identifies an optional parent for each group. If a group has a parent, then the only monitored resources available to be matched by the group's filter are the resources contained in the parent group. In other words, a group contains the monitored resources that match its filter and the filters of all the group's ancestors. A group without a parent can contain any monitored resource.For example, consider an infrastructure running a set of instances with two user-defined tags: \"environment\" and \"role\". A parent group has a filter, environment=\"production\". A child of that parent group has a filter, role=\"transcoder\". The parent group contains all instances in the production environment, regardless of their roles. The child group contains instances that have the transcoder role and are in the production environment.The monitored resources contained in a group can change at any moment, depending on what resources exist and what filters are associated with the group and its ancestors.",
      id = "Group",
      properties = {
        displayName = {
          description = "A user-assigned name for this group, used only for display purposes.",
          type = "string",
        },
        filter = {
          description = "The filter used to determine which monitored resources belong to this group.",
          type = "string",
        },
        isCluster = {
          description = "If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.",
          type = "boolean",
        },
        name = {
          description = "Output only. The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.",
          type = "string",
        },
        parentName = {
          description = "The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, \"\".",
          type = "string",
        },
      },
      type = "object",
    },
    HttpCheck = {
      description = "Information involved in an HTTP/HTTPS Uptime check request.",
      id = "HttpCheck",
      properties = {
        acceptedResponseStatusCodes = {
          description = "If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.",
          items = {
            ["$ref"] = "ResponseStatusCode",
          },
          type = "array",
        },
        authInfo = {
          ["$ref"] = "BasicAuthentication",
          description = "The authentication information. Optional when creating an HTTP check; defaults to empty.",
        },
        body = {
          description = "The request body associated with the HTTP POST request. If content_type is URL_ENCODED, the body passed in must be URL-encoded. Users can provide a Content-Length header via the headers field or the API will do so. If the request_method is GET and body is not empty, the API will return an error. The maximum byte size is 1 megabyte.Note: If client libraries aren't used (which performs the conversion automatically) base64 encode your body data since the field is of bytes type.",
          format = "byte",
          type = "string",
        },
        contentType = {
          description = "The content type header to use for the check. The following configurations result in errors: 1. Content type is specified in both the headers field and the content_type field. 2. Request method is GET and content_type is not TYPE_UNSPECIFIED 3. Request method is POST and content_type is TYPE_UNSPECIFIED. 4. Request method is POST and a \"Content-Type\" header is provided via headers field. The content_type field should be used instead.",
          enum = {
            "TYPE_UNSPECIFIED",
            "URL_ENCODED",
          },
          enumDescriptions = {
            "No content type specified.",
            "body is in URL-encoded form. Equivalent to setting the Content-Type to application/x-www-form-urlencoded in the HTTP request.",
          },
          type = "string",
        },
        headers = {
          additionalProperties = {
            type = "string",
          },
          description = "The list of headers to send as part of the Uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.",
          type = "object",
        },
        maskHeaders = {
          description = "Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if mask_headers is set to true then the headers will be obscured with ******.",
          type = "boolean",
        },
        path = {
          description = "Optional (defaults to \"/\"). The path to the page against which to run the check. Will be combined with the host (specified within the monitored_resource) and port to construct the full URL. If the provided path does not begin with \"/\", a \"/\" will be prepended automatically.",
          type = "string",
        },
        pingConfig = {
          ["$ref"] = "PingConfig",
          description = "Contains information needed to add pings to an HTTP check.",
        },
        port = {
          description = "Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is true). The TCP port on the HTTP server against which to run the check. Will be combined with host (specified within the monitored_resource) and path to construct the full URL.",
          format = "int32",
          type = "integer",
        },
        requestMethod = {
          description = "The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then request_method defaults to GET.",
          enum = {
            "METHOD_UNSPECIFIED",
            "GET",
            "POST",
          },
          enumDescriptions = {
            "No request method specified.",
            "GET request.",
            "POST request.",
          },
          type = "string",
        },
        useSsl = {
          description = "If true, use HTTPS instead of HTTP to run the check.",
          type = "boolean",
        },
        validateSsl = {
          description = "Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where monitored_resource is set to uptime_url. If use_ssl is false, setting validate_ssl to true has no effect.",
          type = "boolean",
        },
      },
      type = "object",
    },
    InternalChecker = {
      description = "An internal checker allows Uptime checks to run on private/internal GCP resources.",
      id = "InternalChecker",
      properties = {
        displayName = {
          description = "The checker's human-readable name. The display name should be unique within a Cloud Monitoring Metrics Scope in order to make it easier to identify; however, uniqueness is not enforced.",
          type = "string",
        },
        gcpZone = {
          description = "The GCP zone the Uptime check should egress from. Only respected for internal Uptime checks, where internal_network is specified.",
          type = "string",
        },
        name = {
          description = "A unique resource name for this InternalChecker. The format is: projects/[PROJECT_ID_OR_NUMBER]/internalCheckers/[INTERNAL_CHECKER_ID] [PROJECT_ID_OR_NUMBER] is the Cloud Monitoring Metrics Scope project for the Uptime check config associated with the internal checker.",
          type = "string",
        },
        network = {
          description = "The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal resource lives (ex: \"default\").",
          type = "string",
        },
        peerProjectId = {
          description = "The GCP project ID where the internal checker lives. Not necessary the same as the Metrics Scope project.",
          type = "string",
        },
        state = {
          description = "The current operational state of the internal checker.",
          enum = {
            "UNSPECIFIED",
            "CREATING",
            "RUNNING",
          },
          enumDescriptions = {
            "An internal checker should never be in the unspecified state.",
            "The checker is being created, provisioned, and configured. A checker in this state can be returned by ListInternalCheckers or GetInternalChecker, as well as by examining the long running Operation (https://cloud.google.com/apis/design/design_patterns#long_running_operations) that created it.",
            "The checker is running and available for use. A checker in this state can be returned by ListInternalCheckers or GetInternalChecker as well as by examining the long running Operation (https://cloud.google.com/apis/design/design_patterns#long_running_operations) that created it. If a checker is being torn down, it is neither visible nor usable, so there is no \"deleting\" or \"down\" state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    IstioCanonicalService = {
      description = "Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.8 will have their services ingested as this type.",
      id = "IstioCanonicalService",
      properties = {
        canonicalService = {
          description = "The name of the canonical service underlying this service. Corresponds to the destination_canonical_service_name metric label in label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).",
          type = "string",
        },
        canonicalServiceNamespace = {
          description = "The namespace of the canonical service underlying this service. Corresponds to the destination_canonical_service_namespace metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).",
          type = "string",
        },
        meshUid = {
          description = "Identifier for the Istio mesh in which this canonical service is defined. Corresponds to the mesh_uid metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).",
          type = "string",
        },
      },
      type = "object",
    },
    JsonPathMatcher = {
      description = "Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.",
      id = "JsonPathMatcher",
      properties = {
        jsonMatcher = {
          description = "The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)",
          enum = {
            "JSON_PATH_MATCHER_OPTION_UNSPECIFIED",
            "EXACT_MATCH",
            "REGEX_MATCH",
          },
          enumDescriptions = {
            "No JSONPath matcher type specified (not valid).",
            "Selects 'exact string' matching. The match succeeds if the content at the json_path within the output is exactly the same as the content string.",
            "Selects regular-expression matching. The match succeeds if the content at the json_path within the output matches the regular expression specified in the content string.",
          },
          type = "string",
        },
        jsonPath = {
          description = "JSONPath within the response output pointing to the expected ContentMatcher::content to match against.",
          type = "string",
        },
      },
      type = "object",
    },
    LabelDescriptor = {
      description = "A description of a label.",
      id = "LabelDescriptor",
      properties = {
        description = {
          description = "A human-readable description for the label.",
          type = "string",
        },
        key = {
          description = "The key for this label. The key must meet the following criteria: Does not exceed 100 characters. Matches the following regular expression: [a-zA-Z][a-zA-Z0-9_]* The first character must be an upper- or lower-case letter. The remaining characters must be letters, digits, or underscores.",
          type = "string",
        },
        valueType = {
          description = "The type of data that can be assigned to the label.",
          enum = {
            "STRING",
            "BOOL",
            "INT64",
          },
          enumDescriptions = {
            "A variable-length string, not to exceed 1,024 characters. This is the default value type.",
            "Boolean; true or false.",
            "A 64-bit signed integer.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LabelValue = {
      description = "A label value.",
      id = "LabelValue",
      properties = {
        boolValue = {
          description = "A bool label value.",
          type = "boolean",
        },
        int64Value = {
          description = "An int64 label value.",
          format = "int64",
          type = "string",
        },
        stringValue = {
          description = "A string label value.",
          type = "string",
        },
      },
      type = "object",
    },
    LatencyCriteria = {
      description = "Parameters for a latency threshold SLI.",
      id = "LatencyCriteria",
      properties = {
        threshold = {
          description = "Good service is defined to be the count of requests made to this service that return in no more than threshold.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Linear = {
      description = "Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): offset + (width * i). Lower bound (1 <= i < N): offset + (width * (i - 1)).",
      id = "Linear",
      properties = {
        numFiniteBuckets = {
          description = "Must be greater than 0.",
          format = "int32",
          type = "integer",
        },
        offset = {
          description = "Lower bound of the first bucket.",
          format = "double",
          type = "number",
        },
        width = {
          description = "Must be greater than 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ListAlertPoliciesResponse = {
      description = "The protocol for the ListAlertPolicies response.",
      id = "ListAlertPoliciesResponse",
      properties = {
        alertPolicies = {
          description = "The returned alert policies.",
          items = {
            ["$ref"] = "AlertPolicy",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than were returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
        totalSize = {
          description = "The total number of alert policies in all pages. This number is only an estimate, and may change in subsequent pages. https://aip.dev/158",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListGroupMembersResponse = {
      description = "The ListGroupMembers response.",
      id = "ListGroupMembersResponse",
      properties = {
        members = {
          description = "A set of monitored resources in the group.",
          items = {
            ["$ref"] = "MonitoredResource",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
        totalSize = {
          description = "The total number of elements matching this request.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListGroupsResponse = {
      description = "The ListGroups response.",
      id = "ListGroupsResponse",
      properties = {
        group = {
          description = "The groups that match the specified filters.",
          items = {
            ["$ref"] = "Group",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMetricDescriptorsResponse = {
      description = "The ListMetricDescriptors response.",
      id = "ListMetricDescriptorsResponse",
      properties = {
        metricDescriptors = {
          description = "The metric descriptors that are available to the project and that match the value of filter, if present.",
          items = {
            ["$ref"] = "MetricDescriptor",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMonitoredResourceDescriptorsResponse = {
      description = "The ListMonitoredResourceDescriptors response.",
      id = "ListMonitoredResourceDescriptorsResponse",
      properties = {
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
        resourceDescriptors = {
          description = "The monitored resource descriptors that are available to this project and that match filter, if present.",
          items = {
            ["$ref"] = "MonitoredResourceDescriptor",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListNotificationChannelDescriptorsResponse = {
      description = "The ListNotificationChannelDescriptors response.",
      id = "ListNotificationChannelDescriptorsResponse",
      properties = {
        channelDescriptors = {
          description = "The monitored resource descriptors supported for the specified project, optionally filtered.",
          items = {
            ["$ref"] = "NotificationChannelDescriptor",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there may be more results that match the request. Use the value in the page_token field in a subsequent request to fetch the next set of results. If empty, all results have been returned.",
          type = "string",
        },
      },
      type = "object",
    },
    ListNotificationChannelsResponse = {
      description = "The ListNotificationChannels response.",
      id = "ListNotificationChannelsResponse",
      properties = {
        nextPageToken = {
          description = "If not empty, indicates that there may be more results that match the request. Use the value in the page_token field in a subsequent request to fetch the next set of results. If empty, all results have been returned.",
          type = "string",
        },
        notificationChannels = {
          description = "The notification channels defined for the specified project.",
          items = {
            ["$ref"] = "NotificationChannel",
          },
          type = "array",
        },
        totalSize = {
          description = "The total number of notification channels in all pages. This number is only an estimate, and may change in subsequent pages. https://aip.dev/158",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListServiceLevelObjectivesResponse = {
      description = "The ListServiceLevelObjectives response.",
      id = "ListServiceLevelObjectivesResponse",
      properties = {
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
        serviceLevelObjectives = {
          description = "The ServiceLevelObjectives matching the specified filter.",
          items = {
            ["$ref"] = "ServiceLevelObjective",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListServicesResponse = {
      description = "The ListServices response.",
      id = "ListServicesResponse",
      properties = {
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
        services = {
          description = "The Services matching the specified filter.",
          items = {
            ["$ref"] = "Service",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSnoozesResponse = {
      description = "The results of a successful ListSnoozes call, containing the matching Snoozes.",
      id = "ListSnoozesResponse",
      properties = {
        nextPageToken = {
          description = "Page token for repeated calls to ListSnoozes, to fetch additional pages of results. If this is empty or missing, there are no more pages.",
          type = "string",
        },
        snoozes = {
          description = "Snoozes matching this list call.",
          items = {
            ["$ref"] = "Snooze",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTimeSeriesResponse = {
      description = "The ListTimeSeries response.",
      id = "ListTimeSeriesResponse",
      properties = {
        executionErrors = {
          description = "Query execution errors that may have caused the time series data returned to be incomplete.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
        timeSeries = {
          description = "One or more time series that match the filter included in the request.",
          items = {
            ["$ref"] = "TimeSeries",
          },
          type = "array",
        },
        unit = {
          description = "The unit in which all time_series point values are reported. unit follows the UCUM format for units as seen in https://unitsofmeasure.org/ucum.html. If different time_series have different units (for example, because they come from different metric types, or a unit is absent), then unit will be \"{not_a_unit}\".",
          type = "string",
        },
      },
      type = "object",
    },
    ListUptimeCheckConfigsResponse = {
      description = "The protocol for the ListUptimeCheckConfigs response.",
      id = "ListUptimeCheckConfigsResponse",
      properties = {
        nextPageToken = {
          description = "This field represents the pagination token to retrieve the next page of results. If the value is empty, it means no further results for the request. To retrieve the next page of results, the value of the next_page_token is passed to the subsequent List method call (in the request message's page_token field).",
          type = "string",
        },
        totalSize = {
          description = "The total number of Uptime check configurations for the project, irrespective of any pagination.",
          format = "int32",
          type = "integer",
        },
        uptimeCheckConfigs = {
          description = "The returned Uptime check configurations.",
          items = {
            ["$ref"] = "UptimeCheckConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListUptimeCheckIpsResponse = {
      description = "The protocol for the ListUptimeCheckIps response.",
      id = "ListUptimeCheckIpsResponse",
      properties = {
        nextPageToken = {
          description = "This field represents the pagination token to retrieve the next page of results. If the value is empty, it means no further results for the request. To retrieve the next page of results, the value of the next_page_token is passed to the subsequent List method call (in the request message's page_token field). NOTE: this field is not yet implemented",
          type = "string",
        },
        uptimeCheckIps = {
          description = "The returned list of IP addresses (including region and location) that the checkers run from.",
          items = {
            ["$ref"] = "UptimeCheckIp",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LogMatch = {
      description = "A condition type that checks whether a log message in the scoping project (https://cloud.google.com/monitoring/api/v3#project_name) satisfies the given filter. Logs from other projects in the metrics scope are not evaluated.",
      id = "LogMatch",
      properties = {
        filter = {
          description = "Required. A logs-based filter. See Advanced Logs Queries (https://cloud.google.com/logging/docs/view/advanced-queries) for how this filter should be constructed.",
          type = "string",
        },
        labelExtractors = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. A map from a label key to an extractor expression, which is used to extract the value for this label key. Each entry in this map is a specification for how data should be extracted from log entries that match filter. Each combination of extracted values is treated as a separate rule for the purposes of triggering notifications. Label keys and corresponding values can be used in notifications generated by this condition.Please see the documentation on logs-based metric valueExtractors (https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.metrics#LogMetric.FIELDS.value_extractor) for syntax and examples.",
          type = "object",
        },
      },
      type = "object",
    },
    MeshIstio = {
      description = "Istio service scoped to an Istio mesh. Anthos clusters running ASM < 1.6.8 will have their services ingested as this type.",
      id = "MeshIstio",
      properties = {
        meshUid = {
          description = "Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.",
          type = "string",
        },
        serviceName = {
          description = "The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.",
          type = "string",
        },
        serviceNamespace = {
          description = "The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.",
          type = "string",
        },
      },
      type = "object",
    },
    Metric = {
      description = "A specific metric, identified by specifying values for all of the labels of a MetricDescriptor.",
      id = "Metric",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The set of label values that uniquely identify this metric. All labels listed in the MetricDescriptor must be assigned values.",
          type = "object",
        },
        type = {
          description = "An existing metric type, see google.api.MetricDescriptor. For example, custom.googleapis.com/invoice/paid/amount.",
          type = "string",
        },
      },
      type = "object",
    },
    MetricAbsence = {
      description = "A condition type that checks that monitored resources are reporting data. The configuration defines a metric and a set of monitored resources. The predicate is considered in violation when a time series for the specified metric of a monitored resource does not include any data in the specified duration.",
      id = "MetricAbsence",
      properties = {
        aggregations = {
          description = "Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.",
          items = {
            ["$ref"] = "Aggregation",
          },
          type = "array",
        },
        duration = {
          description = "The amount of time that a time series must fail to report new data to be considered failing. The minimum value of this field is 120 seconds. Larger values that are a multiple of a minute--for example, 240 or 300 seconds--are supported. If an invalid value is given, an error will be returned. The Duration.nanos field is ignored.",
          format = "google-duration",
          type = "string",
        },
        filter = {
          description = "Required. A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.",
          type = "string",
        },
        trigger = {
          ["$ref"] = "Trigger",
          description = "The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations.",
        },
      },
      type = "object",
    },
    MetricDescriptor = {
      description = "Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.",
      id = "MetricDescriptor",
      properties = {
        description = {
          description = "A detailed description of the metric, which can be used in documentation.",
          type = "string",
        },
        displayName = {
          description = "A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \"Request count\". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.",
          type = "string",
        },
        labels = {
          description = "The set of labels that can be used to describe a specific instance of this metric type. For example, the appengine.googleapis.com/http/server/response_latencies metric type has a label for the HTTP response code, response_code, so you can look at latencies for successful responses or just for responses that failed.",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        launchStage = {
          description = "Optional. The launch stage of the metric definition.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https://cloud.google.com/terms/) and the Google Cloud Platform Subject to the Deprecation Policy (https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        metadata = {
          ["$ref"] = "MetricDescriptorMetadata",
          description = "Optional. Metadata which can be used to guide usage of the metric.",
        },
        metricKind = {
          description = "Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric_kind and value_type might not be supported.",
          enum = {
            "METRIC_KIND_UNSPECIFIED",
            "GAUGE",
            "DELTA",
            "CUMULATIVE",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "An instantaneous measurement of a value.",
            "The change in a value during a time interval.",
            "A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.",
          },
          type = "string",
        },
        monitoredResourceTypes = {
          description = "Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the metric descriptor.",
          type = "string",
        },
        type = {
          description = "The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name custom.googleapis.com or external.googleapis.com. Metric types should use a natural hierarchical grouping. For example: \"custom.googleapis.com/invoice/paid/amount\" \"external.googleapis.com/prometheus/up\" \"appengine.googleapis.com/http/server/response_latencies\" ",
          type = "string",
        },
        unit = {
          description = "The units in which the metric value is reported. It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.Different systems might scale the values to be more easily displayed (so a value of 0.02kBy might be displayed as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the unit is kBy, then the value of the metric is always in thousands of bytes, no matter how it might be displayed.If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if you want a custom metric to record data in a more granular way, you can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).The supported units are a subset of The Unified Code for Units of Measure (https://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT) bit bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe grammar also includes these connectors: / division or ratio (as an infix operator). For examples, kBy/{email} or MiBy/10ms (although you should almost never have /s in a metric unit; rates should always be computed at query time from the underlying cumulative or delta value). . multiplication or composition (as an infix operator). For examples, GBy.d or k{watt}.h.The grammar for a unit is as follows: Expression = Component { \".\" Component } { \"/\" Component } ; Component = ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation | \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: Annotation is just a comment if it follows a UNIT. If the annotation is used alone, then the unit is equivalent to 1. For examples, {request}/s == 1/s, By{transmitted}/s == By/s. NAME is a sequence of non-blank printable ASCII characters not containing { or }. 1 represents a unitary dimensionless unit (https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in 1/s. It is typically used when none of the basic units are appropriate. For example, \"new users per day\" can be represented as 1/d or {new-users}/d (and a metric value 5 would mean \"5 new users). Alternatively, \"thousands of page views per day\" would be represented as 1000/d or k1/d or k{page_views}/d (and a metric value of 5.3 would mean \"5300 page views per day\"). % represents dimensionless value of 1/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a metric value 3 means \"3 percent\"). 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value 0.03 means \"3 percent\").",
          type = "string",
        },
        valueType = {
          description = "Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric_kind and value_type might not be supported.",
          enum = {
            "VALUE_TYPE_UNSPECIFIED",
            "BOOL",
            "INT64",
            "DOUBLE",
            "STRING",
            "DISTRIBUTION",
            "MONEY",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The value is a boolean. This value type can be used only if the metric kind is GAUGE.",
            "The value is a signed 64-bit integer.",
            "The value is a double precision floating point number.",
            "The value is a text string. This value type can be used only if the metric kind is GAUGE.",
            "The value is a Distribution.",
            "The value is money.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MetricDescriptorMetadata = {
      description = "Additional annotations that can be used to guide the usage of a metric.",
      id = "MetricDescriptorMetadata",
      properties = {
        ingestDelay = {
          description = "The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.",
          format = "google-duration",
          type = "string",
        },
        launchStage = {
          description = "Deprecated. Must use the MetricDescriptor.launch_stage instead.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https://cloud.google.com/terms/) and the Google Cloud Platform Subject to the Deprecation Policy (https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        samplePeriod = {
          description = "The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    MetricRange = {
      description = "A MetricRange is used when each window is good when the value x of a single TimeSeries satisfies range.min <= x <= range.max. The provided TimeSeries must have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.",
      id = "MetricRange",
      properties = {
        range = {
          ["$ref"] = "GoogleMonitoringV3Range",
          description = "Range of values considered \"good.\" For a one-sided range, set one bound to an infinite value.",
        },
        timeSeries = {
          description = "A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSeries to use for evaluating window quality.",
          type = "string",
        },
      },
      type = "object",
    },
    MetricThreshold = {
      description = "A condition type that compares a collection of time series against a threshold.",
      id = "MetricThreshold",
      properties = {
        aggregations = {
          description = "Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.",
          items = {
            ["$ref"] = "Aggregation",
          },
          type = "array",
        },
        comparison = {
          description = "The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold_value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON_LT and COMPARISON_GT are supported currently.",
          enum = {
            "COMPARISON_UNSPECIFIED",
            "COMPARISON_GT",
            "COMPARISON_GE",
            "COMPARISON_LT",
            "COMPARISON_LE",
            "COMPARISON_EQ",
            "COMPARISON_NE",
          },
          enumDescriptions = {
            "No ordering relationship is specified.",
            "True if the left argument is greater than the right argument.",
            "True if the left argument is greater than or equal to the right argument.",
            "True if the left argument is less than the right argument.",
            "True if the left argument is less than or equal to the right argument.",
            "True if the left argument is equal to the right argument.",
            "True if the left argument is not equal to the right argument.",
          },
          type = "string",
        },
        denominatorAggregations = {
          description = "Specifies the alignment of data points in individual time series selected by denominatorFilter as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources).When computing ratios, the aggregations and denominator_aggregations fields must use the same alignment period and produce time series that have the same periodicity and labels.",
          items = {
            ["$ref"] = "Aggregation",
          },
          type = "array",
        },
        denominatorFilter = {
          description = "A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold. If a denominator_filter is specified, the time series specified by the filter field will be used as the numerator.The filter must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length.",
          type = "string",
        },
        duration = {
          description = "The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.",
          format = "google-duration",
          type = "string",
        },
        evaluationMissingData = {
          description = "A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.",
          enum = {
            "EVALUATION_MISSING_DATA_UNSPECIFIED",
            "EVALUATION_MISSING_DATA_INACTIVE",
            "EVALUATION_MISSING_DATA_ACTIVE",
            "EVALUATION_MISSING_DATA_NO_OP",
          },
          enumDescriptions = {
            "An unspecified evaluation missing data option. Equivalent to EVALUATION_MISSING_DATA_NO_OP.",
            "If there is no data to evaluate the condition, then evaluate the condition as false.",
            "If there is no data to evaluate the condition, then evaluate the condition as true.",
            "Do not evaluate the condition to any value if there is no data.",
          },
          type = "string",
        },
        filter = {
          description = "Required. A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.",
          type = "string",
        },
        forecastOptions = {
          ["$ref"] = "ForecastOptions",
          description = "When this field is present, the MetricThreshold condition forecasts whether the time series is predicted to violate the threshold within the forecast_horizion. When this field is not set, the MetricThreshold tests the current value of the timeseries against the threshold.",
        },
        thresholdValue = {
          description = "A value against which to compare the time series.",
          format = "double",
          type = "number",
        },
        trigger = {
          ["$ref"] = "Trigger",
          description = "The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.",
        },
      },
      type = "object",
    },
    MonitoredResource = {
      description = "An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource's schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for \"gce_instance\" has labels \"project_id\", \"instance_id\" and \"zone\": { \"type\": \"gce_instance\", \"labels\": { \"project_id\": \"my-project\", \"instance_id\": \"12345678901234\", \"zone\": \"us-central1-a\" }} ",
      id = "MonitoredResource",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Required. Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels \"project_id\", \"instance_id\", and \"zone\".",
          type = "object",
        },
        type = {
          description = "Required. The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).",
          type = "string",
        },
      },
      type = "object",
    },
    MonitoredResourceDescriptor = {
      description = "An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of \"gce_instance\" and specifies the use of the labels \"instance_id\" and \"zone\" to identify particular VM instances.Different APIs can support different monitored resource types. APIs generally provide a list method that returns the monitored resource descriptors used by the API.",
      id = "MonitoredResourceDescriptor",
      properties = {
        description = {
          description = "Optional. A detailed description of the monitored resource type that might be used in documentation.",
          type = "string",
        },
        displayName = {
          description = "Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, \"Google Cloud SQL Database\".",
          type = "string",
        },
        labels = {
          description = "Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels \"database_id\" and \"zone\".",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        launchStage = {
          description = "Optional. The launch stage of the monitored resource definition.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https://cloud.google.com/terms/) and the Google Cloud Platform Subject to the Deprecation Policy (https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        name = {
          description = "Optional. The resource name of the monitored resource descriptor: \"projects/{project_id}/monitoredResourceDescriptors/{type}\" where {type} is the value of the type field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format \"monitoredResourceDescriptors/{type}\".",
          type = "string",
        },
        type = {
          description = "Required. The monitored resource type. For example, the type \"cloudsql_database\" represents databases in Google Cloud SQL. For a list of types, see Monitoring resource types (https://cloud.google.com/monitoring/api/resources) and Logging resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).",
          type = "string",
        },
      },
      type = "object",
    },
    MonitoredResourceMetadata = {
      description = "Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Monitoring and Logging use an ingestion pipeline to extract metadata for cloud resources of all types, and store the metadata in this message.",
      id = "MonitoredResourceMetadata",
      properties = {
        systemLabels = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Output only. Values for predefined system metadata labels. System labels are a kind of metadata extracted by Google, including \"machine_image\", \"vpc\", \"subnet_id\", \"security_group\", \"name\", etc. System label values can be only strings, Boolean values, or a list of strings. For example: { \"name\": \"my-test-instance\", \"security_group\": [\"a\", \"b\", \"c\"], \"spot_instance\": false } ",
          type = "object",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. A map of user-defined metadata labels.",
          type = "object",
        },
      },
      type = "object",
    },
    MonitoringQueryLanguageCondition = {
      description = "A condition type that allows alert policies to be defined using Monitoring Query Language (https://cloud.google.com/monitoring/mql).",
      id = "MonitoringQueryLanguageCondition",
      properties = {
        duration = {
          description = "The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.",
          format = "google-duration",
          type = "string",
        },
        evaluationMissingData = {
          description = "A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.",
          enum = {
            "EVALUATION_MISSING_DATA_UNSPECIFIED",
            "EVALUATION_MISSING_DATA_INACTIVE",
            "EVALUATION_MISSING_DATA_ACTIVE",
            "EVALUATION_MISSING_DATA_NO_OP",
          },
          enumDescriptions = {
            "An unspecified evaluation missing data option. Equivalent to EVALUATION_MISSING_DATA_NO_OP.",
            "If there is no data to evaluate the condition, then evaluate the condition as false.",
            "If there is no data to evaluate the condition, then evaluate the condition as true.",
            "Do not evaluate the condition to any value if there is no data.",
          },
          type = "string",
        },
        query = {
          description = "Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that outputs a boolean stream.",
          type = "string",
        },
        trigger = {
          ["$ref"] = "Trigger",
          description = "The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.",
        },
      },
      type = "object",
    },
    MutationRecord = {
      description = "Describes a change made to a configuration.",
      id = "MutationRecord",
      properties = {
        mutateTime = {
          description = "When the change occurred.",
          format = "google-datetime",
          type = "string",
        },
        mutatedBy = {
          description = "The email address of the user making the change.",
          type = "string",
        },
      },
      type = "object",
    },
    NotificationChannel = {
      description = "A NotificationChannel is a medium through which an alert is delivered when a policy violation is detected. Examples of channels include email, SMS, and third-party messaging applications. Fields containing sensitive information like authentication tokens or contact info are only partially populated on retrieval.",
      id = "NotificationChannel",
      properties = {
        creationRecord = {
          ["$ref"] = "MutationRecord",
          description = "Record of the creation of this channel.",
        },
        description = {
          description = "An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.",
          type = "string",
        },
        displayName = {
          description = "An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.",
          type = "string",
        },
        enabled = {
          description = "Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.",
          type = "object",
        },
        mutationRecords = {
          description = "Records of the modification of this channel.",
          items = {
            ["$ref"] = "MutationRecord",
          },
          type = "array",
        },
        name = {
          description = "The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.",
          type = "string",
        },
        type = {
          description = "The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.",
          type = "string",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.",
          type = "object",
        },
        verificationStatus = {
          description = "Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.",
          enum = {
            "VERIFICATION_STATUS_UNSPECIFIED",
            "UNVERIFIED",
            "VERIFIED",
          },
          enumDescriptions = {
            "Sentinel value used to indicate that the state is unknown, omitted, or is not applicable (as in the case of channels that neither support nor require verification in order to function).",
            "The channel has yet to be verified and requires verification to function. Note that this state also applies to the case where the verification process has been initiated by sending a verification code but where the verification code has not been submitted to complete the process.",
            "It has been proven that notifications can be received on this notification channel and that someone on the project has access to messages that are delivered to that channel.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NotificationChannelDescriptor = {
      description = "A description of a notification channel. The descriptor includes the properties of the channel and the set of labels or fields that must be specified to configure channels of a given type.",
      id = "NotificationChannelDescriptor",
      properties = {
        description = {
          description = "A human-readable description of the notification channel type. The description may include a description of the properties of the channel and pointers to external documentation.",
          type = "string",
        },
        displayName = {
          description = "A human-readable name for the notification channel type. This form of the name is suitable for a user interface.",
          type = "string",
        },
        labels = {
          description = "The set of labels that must be defined to identify a particular channel of the corresponding type. Each label includes a description for how that field should be populated.",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        launchStage = {
          description = "The product launch stage for channels of this type.",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https://cloud.google.com/terms/) and the Google Cloud Platform Subject to the Deprecation Policy (https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        name = {
          description = "The full REST resource name for this descriptor. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannelDescriptors/[TYPE] In the above, [TYPE] is the value of the type field.",
          type = "string",
        },
        supportedTiers = {
          description = "The tiers that support this notification channel; the project service tier must be one of the supported_tiers.",
          items = {
            enum = {
              "SERVICE_TIER_UNSPECIFIED",
              "SERVICE_TIER_BASIC",
              "SERVICE_TIER_PREMIUM",
            },
            enumDescriptions = {
              "An invalid sentinel value, used to indicate that a tier has not been provided explicitly.",
              "The Cloud Monitoring Basic tier, a free tier of service that provides basic features, a moderate allotment of logs, and access to built-in metrics. A number of features are not available in this tier. For more details, see the service tiers documentation (https://cloud.google.com/monitoring/workspaces/tiers).",
              "The Cloud Monitoring Premium tier, a higher, more expensive tier of service that provides access to all Cloud Monitoring features, lets you use Cloud Monitoring with AWS accounts, and has a larger allotments for logs and metrics. For more details, see the service tiers documentation (https://cloud.google.com/monitoring/workspaces/tiers).",
            },
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "The type of notification channel, such as \"email\" and \"sms\". To view the full list of channels, see Channel descriptors (https://cloud.google.com/monitoring/alerts/using-channels-api#ncd). Notification channel types are globally unique.",
          type = "string",
        },
      },
      type = "object",
    },
    NotificationRateLimit = {
      description = "Control over the rate of notifications sent to this alert policy's notification channels.",
      id = "NotificationRateLimit",
      properties = {
        period = {
          description = "Not more than one notification per period.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Contains metadata for longrunning operation for the edit Metrics Scope endpoints.",
      id = "OperationMetadata",
      properties = {
        createTime = {
          description = "The time when the batch request was received.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "RUNNING",
            "DONE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request has been received.",
            "Request is actively being processed.",
            "The batch processing is done.",
            "The batch processing was cancelled.",
          },
          type = "string",
        },
        updateTime = {
          description = "The time when the operation result was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Option = {
      description = "A protocol buffer option, which can be attached to a message, field, enumeration, etc.",
      id = "Option",
      properties = {
        name = {
          description = "The option's name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, \"map_entry\". For custom options, it should be the fully-qualified name. For example, \"google.api.http\".",
          type = "string",
        },
        value = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The option's value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google/protobuf/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.",
          type = "object",
        },
      },
      type = "object",
    },
    PerformanceThreshold = {
      description = "A PerformanceThreshold is used when each window is good when that window has a sufficiently high performance.",
      id = "PerformanceThreshold",
      properties = {
        basicSliPerformance = {
          ["$ref"] = "BasicSli",
          description = "BasicSli to evaluate to judge window quality.",
        },
        performance = {
          ["$ref"] = "RequestBasedSli",
          description = "RequestBasedSli to evaluate to judge window quality.",
        },
        threshold = {
          description = "If window performance >= threshold, the window is counted as good.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    PingConfig = {
      description = "Information involved in sending ICMP pings alongside public HTTP/TCP checks. For HTTP, the pings are performed for each part of the redirect chain.",
      id = "PingConfig",
      properties = {
        pingsCount = {
          description = "Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Point = {
      description = "A single data point in a time series.",
      id = "Point",
      properties = {
        interval = {
          ["$ref"] = "TimeInterval",
          description = "The time interval to which the data point applies. For GAUGE metrics, the start time is optional, but if it is supplied, it must equal the end time. For DELTA metrics, the start and end time should specify a non-zero interval, with subsequent points specifying contiguous and non-overlapping intervals. For CUMULATIVE metrics, the start and end time should specify a non-zero interval, with subsequent points specifying the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.",
        },
        value = {
          ["$ref"] = "TypedValue",
          description = "The value of the data point.",
        },
      },
      type = "object",
    },
    PointData = {
      description = "A point's value columns and time interval. Each point has one or more point values corresponding to the entries in point_descriptors field in the TimeSeriesDescriptor associated with this object.",
      id = "PointData",
      properties = {
        timeInterval = {
          ["$ref"] = "TimeInterval",
          description = "The time interval associated with the point.",
        },
        values = {
          description = "The values that make up the point.",
          items = {
            ["$ref"] = "TypedValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    QueryTimeSeriesRequest = {
      description = "The QueryTimeSeries request.",
      id = "QueryTimeSeriesRequest",
      properties = {
        pageSize = {
          description = "A positive number that is the maximum number of time_series_data to return.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
          type = "string",
        },
        query = {
          description = "Required. The query in the Monitoring Query Language (https://cloud.google.com/monitoring/mql/reference) format. The default time zone is in UTC.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryTimeSeriesResponse = {
      description = "The QueryTimeSeries response.",
      id = "QueryTimeSeriesResponse",
      properties = {
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
        partialErrors = {
          description = "Query execution errors that may have caused the time series data returned to be incomplete. The available data will be available in the response.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
        timeSeriesData = {
          description = "The time series data.",
          items = {
            ["$ref"] = "TimeSeriesData",
          },
          type = "array",
        },
        timeSeriesDescriptor = {
          ["$ref"] = "TimeSeriesDescriptor",
          description = "The descriptor for the time series data.",
        },
      },
      type = "object",
    },
    Range = {
      description = "The range of the population values.",
      id = "Range",
      properties = {
        max = {
          description = "The maximum of the population values.",
          format = "double",
          type = "number",
        },
        min = {
          description = "The minimum of the population values.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    RequestBasedSli = {
      description = "Service Level Indicators for which atomic units of service are counted directly.",
      id = "RequestBasedSli",
      properties = {
        distributionCut = {
          ["$ref"] = "DistributionCut",
          description = "distribution_cut is used when good_service is a count of values aggregated in a Distribution that fall into a good range. The total_service is the total count of all values aggregated in the Distribution.",
        },
        goodTotalRatio = {
          ["$ref"] = "TimeSeriesRatio",
          description = "good_total_ratio is used when the ratio of good_service to total_service is computed from two TimeSeries.",
        },
      },
      type = "object",
    },
    ResourceGroup = {
      description = "The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.",
      id = "ResourceGroup",
      properties = {
        groupId = {
          description = "The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].",
          type = "string",
        },
        resourceType = {
          description = "The resource type of the group members.",
          enum = {
            "RESOURCE_TYPE_UNSPECIFIED",
            "INSTANCE",
            "AWS_ELB_LOAD_BALANCER",
          },
          enumDescriptions = {
            "Default value (not valid).",
            "A group of instances from Google Cloud Platform (GCP) or Amazon Web Services (AWS).",
            "A group of Amazon ELB load balancers.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ResponseStatusCode = {
      description = "A status to accept. Either a status code class like \"2xx\", or an integer status code like \"200\".",
      id = "ResponseStatusCode",
      properties = {
        statusClass = {
          description = "A class of status codes to accept.",
          enum = {
            "STATUS_CLASS_UNSPECIFIED",
            "STATUS_CLASS_1XX",
            "STATUS_CLASS_2XX",
            "STATUS_CLASS_3XX",
            "STATUS_CLASS_4XX",
            "STATUS_CLASS_5XX",
            "STATUS_CLASS_ANY",
          },
          enumDescriptions = {
            "Default value that matches no status codes.",
            "The class of status codes between 100 and 199.",
            "The class of status codes between 200 and 299.",
            "The class of status codes between 300 and 399.",
            "The class of status codes between 400 and 499.",
            "The class of status codes between 500 and 599.",
            "The class of all status codes.",
          },
          type = "string",
        },
        statusValue = {
          description = "A status code to accept.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SendNotificationChannelVerificationCodeRequest = {
      description = "The SendNotificationChannelVerificationCode request.",
      id = "SendNotificationChannelVerificationCodeRequest",
      properties = {},
      type = "object",
    },
    Service = {
      description = "A Service is a discrete, autonomous, and network-accessible unit, designed to solve an individual concern (Wikipedia (https://en.wikipedia.org/wiki/Service-orientation)). In Cloud Monitoring, a Service acts as the root resource under which operational aspects of the service are accessible.",
      id = "Service",
      properties = {
        appEngine = {
          ["$ref"] = "AppEngine",
          description = "Type used for App Engine services.",
        },
        basicService = {
          ["$ref"] = "BasicService",
          description = "Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).",
        },
        cloudEndpoints = {
          ["$ref"] = "CloudEndpoints",
          description = "Type used for Cloud Endpoints services.",
        },
        cloudRun = {
          ["$ref"] = "CloudRun",
          description = "Type used for Cloud Run services.",
        },
        clusterIstio = {
          ["$ref"] = "ClusterIstio",
          description = "Type used for Istio services that live in a Kubernetes cluster.",
        },
        custom = {
          ["$ref"] = "Custom",
          description = "Custom service type.",
        },
        displayName = {
          description = "Name used for UI elements listing this Service.",
          type = "string",
        },
        gkeNamespace = {
          ["$ref"] = "GkeNamespace",
          description = "Type used for GKE Namespaces.",
        },
        gkeService = {
          ["$ref"] = "GkeService",
          description = "Type used for GKE Services (the Kubernetes concept of a service).",
        },
        gkeWorkload = {
          ["$ref"] = "GkeWorkload",
          description = "Type used for GKE Workloads.",
        },
        istioCanonicalService = {
          ["$ref"] = "IstioCanonicalService",
          description = "Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)",
        },
        meshIstio = {
          ["$ref"] = "MeshIstio",
          description = "Type used for Istio services scoped to an Istio mesh.",
        },
        name = {
          description = "Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] ",
          type = "string",
        },
        telemetry = {
          ["$ref"] = "Telemetry",
          description = "Configuration for how to query telemetry on a Service.",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.",
          type = "object",
        },
      },
      type = "object",
    },
    ServiceLevelIndicator = {
      description = "A Service-Level Indicator (SLI) describes the \"performance\" of a service. For some services, the SLI is well-defined. In such cases, the SLI can be described easily by referencing the well-known SLI and providing the needed parameters. Alternatively, a \"custom\" SLI can be defined with a query to the underlying metric store. An SLI is defined to be good_service / total_service over any queried time interval. The value of performance always falls into the range 0 <= performance <= 1. A custom SLI describes how to compute this ratio, whether this is by dividing values from a pair of time series, cutting a Distribution into good and bad counts, or counting time windows in which the service complies with a criterion. For separation of concerns, a single Service-Level Indicator measures performance for only one aspect of service quality, such as fraction of successful queries or fast-enough queries.",
      id = "ServiceLevelIndicator",
      properties = {
        basicSli = {
          ["$ref"] = "BasicSli",
          description = "Basic SLI on a well-known service type.",
        },
        requestBased = {
          ["$ref"] = "RequestBasedSli",
          description = "Request-based SLIs",
        },
        windowsBased = {
          ["$ref"] = "WindowsBasedSli",
          description = "Windows-based SLIs",
        },
      },
      type = "object",
    },
    ServiceLevelObjective = {
      description = "A Service-Level Objective (SLO) describes a level of desired good service. It consists of a service-level indicator (SLI), a performance goal, and a period over which the objective is to be evaluated against that goal. The SLO can use SLIs defined in a number of different manners. Typical SLOs might include \"99% of requests in each rolling week have latency below 200 milliseconds\" or \"99.5% of requests in each calendar month return successfully.\"",
      id = "ServiceLevelObjective",
      properties = {
        calendarPeriod = {
          description = "A calendar period, semantically \"since the start of the current \". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.",
          enum = {
            "CALENDAR_PERIOD_UNSPECIFIED",
            "DAY",
            "WEEK",
            "FORTNIGHT",
            "MONTH",
            "QUARTER",
            "HALF",
            "YEAR",
          },
          enumDescriptions = {
            "Undefined period, raises an error.",
            "A day.",
            "A week. Weeks begin on Monday, following ISO 8601 (https://en.wikipedia.org/wiki/ISO_week_date).",
            "A fortnight. The first calendar fortnight of the year begins at the start of week 1 according to ISO 8601 (https://en.wikipedia.org/wiki/ISO_week_date).",
            "A month.",
            "A quarter. Quarters start on dates 1-Jan, 1-Apr, 1-Jul, and 1-Oct of each year.",
            "A half-year. Half-years start on dates 1-Jan and 1-Jul.",
            "A year.",
          },
          type = "string",
        },
        displayName = {
          description = "Name used for UI elements listing this SLO.",
          type = "string",
        },
        goal = {
          description = "The fraction of service that must be good in order for this objective to be met. 0 < goal <= 0.999.",
          format = "double",
          type = "number",
        },
        name = {
          description = "Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME] ",
          type = "string",
        },
        rollingPeriod = {
          description = "A rolling time period, semantically \"in the past \". Must be an integer multiple of 1 day no larger than 30 days.",
          format = "google-duration",
          type = "string",
        },
        serviceLevelIndicator = {
          ["$ref"] = "ServiceLevelIndicator",
          description = "The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.",
          type = "object",
        },
      },
      type = "object",
    },
    Snooze = {
      description = "A Snooze will prevent any alerts from being opened, and close any that are already open. The Snooze will work on alerts that match the criteria defined in the Snooze. The Snooze will be active from interval.start_time through interval.end_time.",
      id = "Snooze",
      properties = {
        criteria = {
          ["$ref"] = "Criteria",
          description = "Required. This defines the criteria for applying the Snooze. See Criteria for more information.",
        },
        displayName = {
          description = "Required. A display name for the Snooze. This can be, at most, 512 unicode characters.",
          type = "string",
        },
        interval = {
          ["$ref"] = "TimeInterval",
          description = "Required. The Snooze will be active from interval.start_time through interval.end_time. interval.start_time cannot be in the past. There is a 15 second clock skew to account for the time it takes for a request to reach the API from the UI.",
        },
        name = {
          description = "Required. The name of the Snooze. The format is: projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID] The ID of the Snooze will be generated by the system.",
          type = "string",
        },
      },
      type = "object",
    },
    SourceContext = {
      description = "SourceContext represents information about the source of a protobuf element, like the file in which it is defined.",
      id = "SourceContext",
      properties = {
        fileName = {
          description = "The path-qualified name of the .proto file that contained the associated protobuf element. For example: \"google/protobuf/source_context.proto\".",
          type = "string",
        },
      },
      type = "object",
    },
    SpanContext = {
      description = "The context of a span. This is attached to an Exemplar in Distribution values during aggregation.It contains the name of a span with format: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID] ",
      id = "SpanContext",
      properties = {
        spanName = {
          description = "The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID] [TRACE_ID] is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array.[SPAN_ID] is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array.",
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).",
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
    TcpCheck = {
      description = "Information required for a TCP Uptime check request.",
      id = "TcpCheck",
      properties = {
        pingConfig = {
          ["$ref"] = "PingConfig",
          description = "Contains information needed to add pings to a TCP check.",
        },
        port = {
          description = "The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Telemetry = {
      description = "Configuration for how to query telemetry on a Service.",
      id = "Telemetry",
      properties = {
        resourceName = {
          description = "The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.",
          type = "string",
        },
      },
      type = "object",
    },
    TimeInterval = {
      description = "Describes a time interval: Reads: A half-open time interval. It includes the end time but excludes the start time: (startTime, endTime]. The start time must be specified, must be earlier than the end time, and should be no older than the data retention period for the metric. Writes: A closed time interval. It extends from the start time to the end time, and includes both: [startTime, endTime]. Valid time intervals depend on the MetricKind (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricKind) of the metric value. The end time must not be earlier than the start time, and the end time must not be more than 25 hours in the past or more than five minutes in the future. For GAUGE metrics, the startTime value is technically optional; if no value is specified, the start time defaults to the value of the end time, and the interval represents a single point in time. If both start and end times are specified, they must be identical. Such an interval is valid only for GAUGE metrics, which are point-in-time measurements. The end time of a new interval must be at least a millisecond after the end time of the previous interval. For DELTA metrics, the start time and end time must specify a non-zero interval, with subsequent points specifying contiguous and non-overlapping intervals. For DELTA metrics, the start time of the next interval must be at least a millisecond after the end time of the previous interval. For CUMULATIVE metrics, the start time and end time must specify a non-zero interval, with subsequent points specifying the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points. The new start time must be at least a millisecond after the end time of the previous interval. The start time of a new interval must be at least a millisecond after the end time of the previous interval because intervals are closed. If the start time of a new interval is the same as the end time of the previous interval, then data written at the new start time could overwrite data written at the previous end time.",
      id = "TimeInterval",
      properties = {
        endTime = {
          description = "Required. The end of the time interval.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TimeSeries = {
      description = "A collection of data points that describes the time-varying values of a metric. A time series is identified by a combination of a fully-specified monitored resource and a fully-specified metric. This type is used for both listing and creating time series.",
      id = "TimeSeries",
      properties = {
        metadata = {
          ["$ref"] = "MonitoredResourceMetadata",
          description = "Output only. The associated monitored resource metadata. When reading a time series, this field will include metadata labels that are explicitly named in the reduction. When creating a time series, this field is ignored.",
        },
        metric = {
          ["$ref"] = "Metric",
          description = "The associated metric. A fully-specified metric used to identify the time series.",
        },
        metricKind = {
          description = "The metric kind of the time series. When listing time series, this metric kind might be different from the metric kind of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the metric kind of the associated metric. If the associated metric's descriptor must be auto-created, then this field specifies the metric kind of the new descriptor and must be either GAUGE (the default) or CUMULATIVE.",
          enum = {
            "METRIC_KIND_UNSPECIFIED",
            "GAUGE",
            "DELTA",
            "CUMULATIVE",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "An instantaneous measurement of a value.",
            "The change in a value during a time interval.",
            "A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.",
          },
          type = "string",
        },
        points = {
          description = "The data points of this time series. When listing time series, points are returned in reverse time order.When creating a time series, this field must contain exactly one point and the point's type must be the same as the value type of the associated metric. If the associated metric's descriptor must be auto-created, then the value type of the descriptor is determined by the point's type, which must be BOOL, INT64, DOUBLE, or DISTRIBUTION.",
          items = {
            ["$ref"] = "Point",
          },
          type = "array",
        },
        resource = {
          ["$ref"] = "MonitoredResource",
          description = "The associated monitored resource. Custom metrics can use only certain monitored resource types in their time series data. For more information, see Monitored resources for custom metrics (https://cloud.google.com/monitoring/custom-metrics/creating-metrics#custom-metric-resources).",
        },
        unit = {
          description = "The units in which the metric value is reported. It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.",
          type = "string",
        },
        valueType = {
          description = "The value type of the time series. When listing time series, this value type might be different from the value type of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the type of the data in the points field.",
          enum = {
            "VALUE_TYPE_UNSPECIFIED",
            "BOOL",
            "INT64",
            "DOUBLE",
            "STRING",
            "DISTRIBUTION",
            "MONEY",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The value is a boolean. This value type can be used only if the metric kind is GAUGE.",
            "The value is a signed 64-bit integer.",
            "The value is a double precision floating point number.",
            "The value is a text string. This value type can be used only if the metric kind is GAUGE.",
            "The value is a Distribution.",
            "The value is money.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TimeSeriesData = {
      description = "Represents the values of a time series associated with a TimeSeriesDescriptor.",
      id = "TimeSeriesData",
      properties = {
        labelValues = {
          description = "The values of the labels in the time series identifier, given in the same order as the label_descriptors field of the TimeSeriesDescriptor associated with this object. Each value must have a value of the type given in the corresponding entry of label_descriptors.",
          items = {
            ["$ref"] = "LabelValue",
          },
          type = "array",
        },
        pointData = {
          description = "The points in the time series.",
          items = {
            ["$ref"] = "PointData",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TimeSeriesDescriptor = {
      description = "A descriptor for the labels and points in a time series.",
      id = "TimeSeriesDescriptor",
      properties = {
        labelDescriptors = {
          description = "Descriptors for the labels.",
          items = {
            ["$ref"] = "LabelDescriptor",
          },
          type = "array",
        },
        pointDescriptors = {
          description = "Descriptors for the point data value columns.",
          items = {
            ["$ref"] = "ValueDescriptor",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TimeSeriesRatio = {
      description = "A TimeSeriesRatio specifies two TimeSeries to use for computing the good_service / total_service ratio. The specified TimeSeries must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two of good, bad, and total, and the relationship good_service + bad_service = total_service will be assumed.",
      id = "TimeSeriesRatio",
      properties = {
        badServiceFilter = {
          description = "A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying bad service, either demanded service that was not provided or demanded service that was of inadequate quality. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.",
          type = "string",
        },
        goodServiceFilter = {
          description = "A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying good service provided. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.",
          type = "string",
        },
        totalServiceFilter = {
          description = "A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying total demanded service. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.",
          type = "string",
        },
      },
      type = "object",
    },
    Trigger = {
      description = "Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.",
      id = "Trigger",
      properties = {
        count = {
          description = "The absolute number of time series that must fail the predicate for the condition to be triggered.",
          format = "int32",
          type = "integer",
        },
        percent = {
          description = "The percentage of time series that must fail the predicate for the condition to be triggered.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Type = {
      description = "A protocol buffer message type.",
      id = "Type",
      properties = {
        fields = {
          description = "The list of fields.",
          items = {
            ["$ref"] = "Field",
          },
          type = "array",
        },
        name = {
          description = "The fully qualified message name.",
          type = "string",
        },
        oneofs = {
          description = "The list of types appearing in oneof definitions in this type.",
          items = {
            type = "string",
          },
          type = "array",
        },
        options = {
          description = "The protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        sourceContext = {
          ["$ref"] = "SourceContext",
          description = "The source context.",
        },
        syntax = {
          description = "The source syntax.",
          enum = {
            "SYNTAX_PROTO2",
            "SYNTAX_PROTO3",
          },
          enumDescriptions = {
            "Syntax proto2.",
            "Syntax proto3.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TypedValue = {
      description = "A single strongly-typed value.",
      id = "TypedValue",
      properties = {
        boolValue = {
          description = "A Boolean value: true or false.",
          type = "boolean",
        },
        distributionValue = {
          ["$ref"] = "Distribution",
          description = "A distribution value.",
        },
        doubleValue = {
          description = "A 64-bit double-precision floating-point number. Its magnitude is approximately ±10±300 and it has 16 significant digits of precision.",
          format = "double",
          type = "number",
        },
        int64Value = {
          description = "A 64-bit integer. Its range is approximately ±9.2x1018.",
          format = "int64",
          type = "string",
        },
        stringValue = {
          description = "A variable-length string value.",
          type = "string",
        },
      },
      type = "object",
    },
    UptimeCheckConfig = {
      description = "This message configures which resources and services to monitor for availability.",
      id = "UptimeCheckConfig",
      properties = {
        checkerType = {
          description = "The type of checkers to use to execute the Uptime check.",
          enum = {
            "CHECKER_TYPE_UNSPECIFIED",
            "STATIC_IP_CHECKERS",
            "VPC_CHECKERS",
          },
          enumDescriptions = {
            "The default checker type. Currently converted to STATIC_IP_CHECKERS on creation, the default conversion behavior may change in the future.",
            "STATIC_IP_CHECKERS are used for uptime checks that perform egress across the public internet. STATIC_IP_CHECKERS use the static IP addresses returned by ListUptimeCheckIps.",
            "VPC_CHECKERS are used for uptime checks that perform egress using Service Directory and private network access. When using VPC_CHECKERS, the monitored resource type must be servicedirectory_service.",
          },
          type = "string",
        },
        contentMatchers = {
          description = "The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the/ Uptime check.",
          items = {
            ["$ref"] = "ContentMatcher",
          },
          type = "array",
        },
        displayName = {
          description = "A human-friendly name for the Uptime check configuration. The display name should be unique within a Cloud Monitoring Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.",
          type = "string",
        },
        httpCheck = {
          ["$ref"] = "HttpCheck",
          description = "Contains information needed to make an HTTP or HTTPS check.",
        },
        internalCheckers = {
          description = "The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.",
          items = {
            ["$ref"] = "InternalChecker",
          },
          type = "array",
        },
        isInternal = {
          description = "If this is true, then checks are made only from the 'internal_checkers'. If it is false, then checks are made only from the 'selected_regions'. It is an error to provide 'selected_regions' when is_internal is true, or to provide 'internal_checkers' when is_internal is false.",
          type = "boolean",
        },
        monitoredResource = {
          ["$ref"] = "MonitoredResource",
          description = "The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer k8s_service servicedirectory_service cloud_run_revision",
        },
        name = {
          description = "A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.",
          type = "string",
        },
        period = {
          description = "How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.",
          format = "google-duration",
          type = "string",
        },
        resourceGroup = {
          ["$ref"] = "ResourceGroup",
          description = "The group resource associated with the configuration.",
        },
        selectedRegions = {
          description = "The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.",
          items = {
            enum = {
              "REGION_UNSPECIFIED",
              "USA",
              "EUROPE",
              "SOUTH_AMERICA",
              "ASIA_PACIFIC",
            },
            enumDescriptions = {
              "Default value if no region is specified. Will result in Uptime checks running from all regions.",
              "Allows checks to run from locations within the United States of America.",
              "Allows checks to run from locations within the continent of Europe.",
              "Allows checks to run from locations within the continent of South America.",
              "Allows checks to run from locations within the Asia Pacific area (ex: Singapore).",
            },
            type = "string",
          },
          type = "array",
        },
        tcpCheck = {
          ["$ref"] = "TcpCheck",
          description = "Contains information needed to make a TCP check.",
        },
        timeout = {
          description = "The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.",
          format = "google-duration",
          type = "string",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.",
          type = "object",
        },
      },
      type = "object",
    },
    UptimeCheckIp = {
      description = "Contains the region, location, and list of IP addresses where checkers in the location run from.",
      id = "UptimeCheckIp",
      properties = {
        ipAddress = {
          description = "The IP address from which the Uptime check originates. This is a fully specified IP address (not an IP address range). Most IP addresses, as of this publication, are in IPv4 format; however, one should not rely on the IP addresses being in IPv4 format indefinitely, and should support interpreting this field in either IPv4 or IPv6 format.",
          type = "string",
        },
        location = {
          description = "A more specific location within the region that typically encodes a particular city/town/metro (and its containing state/province or country) within the broader umbrella region category.",
          type = "string",
        },
        region = {
          description = "A broad region category in which the IP address is located.",
          enum = {
            "REGION_UNSPECIFIED",
            "USA",
            "EUROPE",
            "SOUTH_AMERICA",
            "ASIA_PACIFIC",
          },
          enumDescriptions = {
            "Default value if no region is specified. Will result in Uptime checks running from all regions.",
            "Allows checks to run from locations within the United States of America.",
            "Allows checks to run from locations within the continent of Europe.",
            "Allows checks to run from locations within the continent of South America.",
            "Allows checks to run from locations within the Asia Pacific area (ex: Singapore).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ValueDescriptor = {
      description = "A descriptor for the value columns in a data point.",
      id = "ValueDescriptor",
      properties = {
        key = {
          description = "The value key.",
          type = "string",
        },
        metricKind = {
          description = "The value stream kind.",
          enum = {
            "METRIC_KIND_UNSPECIFIED",
            "GAUGE",
            "DELTA",
            "CUMULATIVE",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "An instantaneous measurement of a value.",
            "The change in a value during a time interval.",
            "A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.",
          },
          type = "string",
        },
        unit = {
          description = "The unit in which time_series point values are reported. unit follows the UCUM format for units as seen in https://unitsofmeasure.org/ucum.html. unit is only valid if value_type is INTEGER, DOUBLE, DISTRIBUTION.",
          type = "string",
        },
        valueType = {
          description = "The value type.",
          enum = {
            "VALUE_TYPE_UNSPECIFIED",
            "BOOL",
            "INT64",
            "DOUBLE",
            "STRING",
            "DISTRIBUTION",
            "MONEY",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The value is a boolean. This value type can be used only if the metric kind is GAUGE.",
            "The value is a signed 64-bit integer.",
            "The value is a double precision floating point number.",
            "The value is a text string. This value type can be used only if the metric kind is GAUGE.",
            "The value is a Distribution.",
            "The value is money.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VerifyNotificationChannelRequest = {
      description = "The VerifyNotificationChannel request.",
      id = "VerifyNotificationChannelRequest",
      properties = {
        code = {
          description = "Required. The verification code that was delivered to the channel as a result of invoking the SendNotificationChannelVerificationCode API method or that was retrieved from a verified channel via GetNotificationChannelVerificationCode. For example, one might have \"G-123456\" or \"TKNZGhhd2EyN3I1MnRnMjRv\" (in general, one is only guaranteed that the code is valid UTF-8; one should not make any assumptions regarding the structure or format of the code).",
          type = "string",
        },
      },
      type = "object",
    },
    WindowsBasedSli = {
      description = "A WindowsBasedSli defines good_service as the count of time windows for which the provided service was of good quality. Criteria for determining if service was good are embedded in the window_criterion.",
      id = "WindowsBasedSli",
      properties = {
        goodBadMetricFilter = {
          description = "A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries with ValueType = BOOL. The window is good if any true values appear in the window.",
          type = "string",
        },
        goodTotalRatioThreshold = {
          ["$ref"] = "PerformanceThreshold",
          description = "A window is good if its performance is high enough.",
        },
        metricMeanInRange = {
          ["$ref"] = "MetricRange",
          description = "A window is good if the metric's value is in a good range, averaged across returned streams.",
        },
        metricSumInRange = {
          ["$ref"] = "MetricRange",
          description = "A window is good if the metric's value is in a good range, summed across returned streams.",
        },
        windowPeriod = {
          description = "Duration over which window quality is evaluated. Must be an integer fraction of a day and at least 60s.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Monitoring API",
  version = "v3",
  version_module = true,
}
