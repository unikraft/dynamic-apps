local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-08-01",
    "endpointPrefix": "rds-data",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "AWS RDS DataService",
    "serviceId": "RDS Data",
    "signatureVersion": "v4",
    "signingName": "rds-data",
    "uid": "rds-data-2018-08-01"
  },
  "operations": {
    "BatchExecuteStatement": {
      "name": "BatchExecuteStatement",
      "http": {
        "method": "POST",
        "requestUri": "/BatchExecute",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchExecuteStatementRequest"
      },
      "output": {
        "shape": "BatchExecuteStatementResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "StatementTimeoutException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ServiceUnavailableError"
        }
      ],
      "documentation": "<p>Runs a batch SQL statement over an array of data.</p> <p>You can run bulk update and insert operations for multiple records using a DML statement with different parameter sets. Bulk operations can provide a significant performance improvement over individual insert and update operations.</p> <important> <p>If a call isn't part of a transaction because it doesn't include the <code>transactionID</code> parameter, changes that result from the call are committed automatically.</p> </important>"
    },
    "BeginTransaction": {
      "name": "BeginTransaction",
      "http": {
        "method": "POST",
        "requestUri": "/BeginTransaction",
        "responseCode": 200
      },
      "input": {
        "shape": "BeginTransactionRequest"
      },
      "output": {
        "shape": "BeginTransactionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "StatementTimeoutException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ServiceUnavailableError"
        }
      ],
      "documentation": "<p>Starts a SQL transaction.</p> <pre><code> &lt;important&gt; &lt;p&gt;A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.&lt;/p&gt; &lt;p&gt;A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.&lt;/p&gt; &lt;p&gt;DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate &lt;code&gt;ExecuteStatement&lt;/code&gt; call with &lt;code&gt;continueAfterTimeout&lt;/code&gt; enabled.&lt;/p&gt; &lt;/important&gt; </code></pre>"
    },
    "CommitTransaction": {
      "name": "CommitTransaction",
      "http": {
        "method": "POST",
        "requestUri": "/CommitTransaction",
        "responseCode": 200
      },
      "input": {
        "shape": "CommitTransactionRequest"
      },
      "output": {
        "shape": "CommitTransactionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "StatementTimeoutException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ServiceUnavailableError"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Ends a SQL transaction started with the <code>BeginTransaction</code> operation and commits the changes.</p>"
    },
    "ExecuteSql": {
      "name": "ExecuteSql",
      "http": {
        "method": "POST",
        "requestUri": "/ExecuteSql",
        "responseCode": 200
      },
      "input": {
        "shape": "ExecuteSqlRequest"
      },
      "output": {
        "shape": "ExecuteSqlResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ServiceUnavailableError"
        }
      ],
      "documentation": "<p>Runs one or more SQL statements.</p> <important> <p>This operation is deprecated. Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation.</p> </important>",
      "deprecated": true,
      "deprecatedMessage": "The ExecuteSql API is deprecated, please use the ExecuteStatement API."
    },
    "ExecuteStatement": {
      "name": "ExecuteStatement",
      "http": {
        "method": "POST",
        "requestUri": "/Execute",
        "responseCode": 200
      },
      "input": {
        "shape": "ExecuteStatementRequest"
      },
      "output": {
        "shape": "ExecuteStatementResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "StatementTimeoutException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ServiceUnavailableError"
        }
      ],
      "documentation": "<p>Runs a SQL statement against a database.</p> <important> <p>If a call isn't part of a transaction because it doesn't include the <code>transactionID</code> parameter, changes that result from the call are committed automatically.</p> </important> <p>The response size limit is 1 MB. If the call returns more than 1 MB of response data, the call is terminated.</p>"
    },
    "RollbackTransaction": {
      "name": "RollbackTransaction",
      "http": {
        "method": "POST",
        "requestUri": "/RollbackTransaction",
        "responseCode": 200
      },
      "input": {
        "shape": "RollbackTransactionRequest"
      },
      "output": {
        "shape": "RollbackTransactionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "StatementTimeoutException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "ServiceUnavailableError"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Performs a rollback of a transaction. Rolling back a transaction cancels its changes.</p>"
    }
  },
  "shapes": {
    "Arn": {
      "type": "string",
      "max": 100,
      "min": 11
    },
    "ArrayOfArray": {
      "type": "list",
      "member": {
        "shape": "ArrayValue"
      },
      "documentation": "<p>An array of arrays.</p> <note> <p>Some array entries can be null.</p> </note>"
    },
    "ArrayValue": {
      "type": "structure",
      "members": {
        "arrayValues": {
          "shape": "ArrayOfArray",
          "documentation": "<p>An array of arrays.</p>"
        },
        "booleanValues": {
          "shape": "BooleanArray",
          "documentation": "<p>An array of Boolean values.</p>"
        },
        "doubleValues": {
          "shape": "DoubleArray",
          "documentation": "<p>An array of integers.</p>"
        },
        "longValues": {
          "shape": "LongArray",
          "documentation": "<p>An array of floating point numbers.</p>"
        },
        "stringValues": {
          "shape": "StringArray",
          "documentation": "<p>An array of strings.</p>"
        }
      },
      "documentation": "<p>Contains an array.</p>"
    },
    "ArrayValueList": {
      "type": "list",
      "member": {
        "shape": "Value"
      }
    },
    "BatchExecuteStatementRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "secretArn",
        "sql"
      ],
      "members": {
        "database": {
          "shape": "DbName",
          "documentation": "<p>The name of the database.</p>"
        },
        "parameterSets": {
          "shape": "SqlParameterSets",
          "documentation": "<p>The parameter set for the batch operation.</p> <p>The SQL statement is executed as many times as the number of parameter sets provided. To execute a SQL statement with no parameters, use one of the following options:</p> <ul> <li> <p>Specify one or more empty parameter sets.</p> </li> <li> <p>Use the <code>ExecuteStatement</code> operation instead of the <code>BatchExecuteStatement</code> operation.</p> </li> </ul> <note> <p>Array parameters are not supported.</p> </note>"
        },
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>"
        },
        "schema": {
          "shape": "DbName",
          "documentation": "<p>The name of the database schema.</p>"
        },
        "secretArn": {
          "shape": "Arn",
          "documentation": "<p>The name or ARN of the secret that enables access to the DB cluster.</p>"
        },
        "sql": {
          "shape": "SqlStatement",
          "documentation": "<p>The SQL statement to run.</p>"
        },
        "transactionId": {
          "shape": "Id",
          "documentation": "<p>The identifier of a transaction that was started by using the <code>BeginTransaction</code> operation. Specify the transaction ID of the transaction that you want to include the SQL statement in.</p> <p>If the SQL statement is not part of a transaction, don't set this parameter.</p>"
        }
      },
      "documentation": "<p>The request parameters represent the input of a SQL statement over an array of data.</p>"
    },
    "BatchExecuteStatementResponse": {
      "type": "structure",
      "members": {
        "updateResults": {
          "shape": "UpdateResults",
          "documentation": "<p>The execution results of each batch entry.</p>"
        }
      },
      "documentation": "<p>The response elements represent the output of a SQL statement over an array of data.</p>"
    },
    "BeginTransactionRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "secretArn"
      ],
      "members": {
        "database": {
          "shape": "DbName",
          "documentation": "<p>The name of the database.</p>"
        },
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>"
        },
        "schema": {
          "shape": "DbName",
          "documentation": "<p>The name of the database schema.</p>"
        },
        "secretArn": {
          "shape": "Arn",
          "documentation": "<p>The name or ARN of the secret that enables access to the DB cluster.</p>"
        }
      },
      "documentation": "<p>The request parameters represent the input of a request to start a SQL transaction.</p>"
    },
    "BeginTransactionResponse": {
      "type": "structure",
      "members": {
        "transactionId": {
          "shape": "Id",
          "documentation": "<p>The transaction ID of the transaction started by the call.</p>"
        }
      },
      "documentation": "<p>The response elements represent the output of a request to start a SQL transaction.</p>"
    },
    "Blob": {
      "type": "blob"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanArray": {
      "type": "list",
      "member": {
        "shape": "BoxedBoolean"
      },
      "documentation": "<p>An array of Boolean values.</p> <note> <p>Some array entries can be null.</p> </note>"
    },
    "BoxedBoolean": {
      "type": "boolean",
      "box": true
    },
    "BoxedDouble": {
      "type": "double",
      "box": true
    },
    "BoxedFloat": {
      "type": "float",
      "box": true
    },
    "BoxedInteger": {
      "type": "integer",
      "box": true
    },
    "BoxedLong": {
      "type": "long",
      "box": true
    },
    "ColumnMetadata": {
      "type": "structure",
      "members": {
        "arrayBaseColumnType": {
          "shape": "Integer",
          "documentation": "<p>The type of the column.</p>"
        },
        "isAutoIncrement": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the column increments automatically.</p>"
        },
        "isCaseSensitive": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the column is case-sensitive.</p>"
        },
        "isCurrency": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the column contains currency values.</p>"
        },
        "isSigned": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether an integer column is signed.</p>"
        },
        "label": {
          "shape": "String",
          "documentation": "<p>The label for the column.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the column.</p>"
        },
        "nullable": {
          "shape": "Integer",
          "documentation": "<p>A value that indicates whether the column is nullable.</p>"
        },
        "precision": {
          "shape": "Integer",
          "documentation": "<p>The precision value of a decimal number column.</p>"
        },
        "scale": {
          "shape": "Integer",
          "documentation": "<p>The scale value of a decimal number column.</p>"
        },
        "schemaName": {
          "shape": "String",
          "documentation": "<p>The name of the schema that owns the table that includes the column.</p>"
        },
        "tableName": {
          "shape": "String",
          "documentation": "<p>The name of the table that includes the column.</p>"
        },
        "type": {
          "shape": "Integer",
          "documentation": "<p>The type of the column.</p>"
        },
        "typeName": {
          "shape": "String",
          "documentation": "<p>The database-specific data type of the column.</p>"
        }
      },
      "documentation": "<p>Contains the metadata for a column.</p>"
    },
    "CommitTransactionRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "secretArn",
        "transactionId"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>"
        },
        "secretArn": {
          "shape": "Arn",
          "documentation": "<p>The name or ARN of the secret that enables access to the DB cluster.</p>"
        },
        "transactionId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the transaction to end and commit.</p>"
        }
      },
      "documentation": "<p>The request parameters represent the input of a commit transaction request.</p>"
    },
    "CommitTransactionResponse": {
      "type": "structure",
      "members": {
        "transactionStatus": {
          "shape": "TransactionStatus",
          "documentation": "<p>The status of the commit operation.</p>"
        }
      },
      "documentation": "<p>The response elements represent the output of a commit transaction request.</p>"
    },
    "DbName": {
      "type": "string",
      "max": 64,
      "min": 0
    },
    "DecimalReturnType": {
      "type": "string",
      "enum": [
        "DOUBLE_OR_LONG",
        "STRING"
      ]
    },
    "DoubleArray": {
      "type": "list",
      "member": {
        "shape": "BoxedDouble"
      },
      "documentation": "<p>An array of floating point numbers.</p> <note> <p>Some array entries can be null.</p> </note>"
    },
    "ExecuteSqlRequest": {
      "type": "structure",
      "required": [
        "awsSecretStoreArn",
        "dbClusterOrInstanceArn",
        "sqlStatements"
      ],
      "members": {
        "awsSecretStoreArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster.</p>"
        },
        "database": {
          "shape": "DbName",
          "documentation": "<p>The name of the database.</p>"
        },
        "dbClusterOrInstanceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the Aurora Serverless DB cluster.</p>"
        },
        "schema": {
          "shape": "DbName",
          "documentation": "<p>The name of the database schema.</p>"
        },
        "sqlStatements": {
          "shape": "SqlStatement",
          "documentation": "<p>One or more SQL statements to run on the DB cluster.</p> <p>You can separate SQL statements from each other with a semicolon (;). Any valid SQL statement is permitted, including data definition, data manipulation, and commit statements. </p>"
        }
      },
      "documentation": "<p>The request parameters represent the input of a request to run one or more SQL statements.</p>"
    },
    "ExecuteSqlResponse": {
      "type": "structure",
      "members": {
        "sqlStatementResults": {
          "shape": "SqlStatementResults",
          "documentation": "<p>The results of the SQL statement or statements.</p>"
        }
      },
      "documentation": "<p>The response elements represent the output of a request to run one or more SQL statements.</p>"
    },
    "ExecuteStatementRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "secretArn",
        "sql"
      ],
      "members": {
        "continueAfterTimeout": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to continue running the statement after the call times out. By default, the statement stops running when the call times out.</p> <important> <p>For DDL statements, we recommend continuing to run the statement after the call times out. When a DDL statement terminates before it is finished running, it can result in errors and possibly corrupted data structures.</p> </important>"
        },
        "database": {
          "shape": "DbName",
          "documentation": "<p>The name of the database.</p>"
        },
        "includeResultMetadata": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to include metadata in the results.</p>"
        },
        "parameters": {
          "shape": "SqlParametersList",
          "documentation": "<p>The parameters for the SQL statement.</p> <note> <p>Array parameters are not supported.</p> </note>"
        },
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>"
        },
        "resultSetOptions": {
          "shape": "ResultSetOptions",
          "documentation": "<p>Options that control how the result set is returned.</p>"
        },
        "schema": {
          "shape": "DbName",
          "documentation": "<p>The name of the database schema.</p>"
        },
        "secretArn": {
          "shape": "Arn",
          "documentation": "<p>The name or ARN of the secret that enables access to the DB cluster.</p>"
        },
        "sql": {
          "shape": "SqlStatement",
          "documentation": "<p>The SQL statement to run.</p>"
        },
        "transactionId": {
          "shape": "Id",
          "documentation": "<p>The identifier of a transaction that was started by using the <code>BeginTransaction</code> operation. Specify the transaction ID of the transaction that you want to include the SQL statement in.</p> <p>If the SQL statement is not part of a transaction, don't set this parameter.</p>"
        }
      },
      "documentation": "<p>The request parameters represent the input of a request to run a SQL statement against a database.</p>"
    },
    "ExecuteStatementResponse": {
      "type": "structure",
      "members": {
        "columnMetadata": {
          "shape": "Metadata",
          "documentation": "<p>Metadata for the columns included in the results.</p>"
        },
        "generatedFields": {
          "shape": "FieldList",
          "documentation": "<p>Values for fields generated during the request.</p> <pre><code> &lt;note&gt; &lt;p&gt;The &lt;code&gt;generatedFields&lt;/code&gt; data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the &lt;code&gt;RETURNING&lt;/code&gt; clause. For more information, see &lt;a href=&quot;https://www.postgresql.org/docs/10/dml-returning.html&quot;&gt;Returning Data From Modified Rows&lt;/a&gt; in the PostgreSQL documentation.&lt;/p&gt; &lt;/note&gt; </code></pre>"
        },
        "numberOfRecordsUpdated": {
          "shape": "RecordsUpdated",
          "documentation": "<p>The number of records updated by the request.</p>"
        },
        "records": {
          "shape": "SqlRecords",
          "documentation": "<p>The records returned by the SQL statement.</p>"
        }
      },
      "documentation": "<p>The response elements represent the output of a request to run a SQL statement against a database.</p>"
    },
    "Field": {
      "type": "structure",
      "members": {
        "arrayValue": {
          "shape": "ArrayValue",
          "documentation": "<p>An array of values.</p>"
        },
        "blobValue": {
          "shape": "Blob",
          "documentation": "<p>A value of BLOB data type.</p>"
        },
        "booleanValue": {
          "shape": "BoxedBoolean",
          "documentation": "<p>A value of Boolean data type.</p>"
        },
        "doubleValue": {
          "shape": "BoxedDouble",
          "documentation": "<p>A value of double data type.</p>"
        },
        "isNull": {
          "shape": "BoxedBoolean",
          "documentation": "<p>A NULL value.</p>"
        },
        "longValue": {
          "shape": "BoxedLong",
          "documentation": "<p>A value of long data type.</p>"
        },
        "stringValue": {
          "shape": "String",
          "documentation": "<p>A value of string data type.</p>"
        }
      },
      "documentation": "<p>Contains a value.</p>"
    },
    "FieldList": {
      "type": "list",
      "member": {
        "shape": "Field"
      }
    },
    "Id": {
      "type": "string",
      "max": 192,
      "min": 0
    },
    "Integer": {
      "type": "integer"
    },
    "Long": {
      "type": "long"
    },
    "LongArray": {
      "type": "list",
      "member": {
        "shape": "BoxedLong"
      },
      "documentation": "<p>An array of integers.</p> <note> <p>Some array entries can be null.</p> </note>"
    },
    "Metadata": {
      "type": "list",
      "member": {
        "shape": "ColumnMetadata"
      }
    },
    "ParameterName": {
      "type": "string"
    },
    "Record": {
      "type": "structure",
      "members": {
        "values": {
          "shape": "Row",
          "documentation": "<p>The values returned in the record.</p>"
        }
      },
      "documentation": "<p>A record returned by a call.</p>"
    },
    "Records": {
      "type": "list",
      "member": {
        "shape": "Record"
      }
    },
    "RecordsUpdated": {
      "type": "long"
    },
    "ResultFrame": {
      "type": "structure",
      "members": {
        "records": {
          "shape": "Records",
          "documentation": "<p>The records in the result set.</p>"
        },
        "resultSetMetadata": {
          "shape": "ResultSetMetadata",
          "documentation": "<p>The result-set metadata in the result set.</p>"
        }
      },
      "documentation": "<p>The result set returned by a SQL statement.</p>"
    },
    "ResultSetMetadata": {
      "type": "structure",
      "members": {
        "columnCount": {
          "shape": "Long",
          "documentation": "<p>The number of columns in the result set.</p>"
        },
        "columnMetadata": {
          "shape": "Metadata",
          "documentation": "<p>The metadata of the columns in the result set.</p>"
        }
      },
      "documentation": "<p>The metadata of the result set returned by a SQL statement.</p>"
    },
    "ResultSetOptions": {
      "type": "structure",
      "members": {
        "decimalReturnType": {
          "shape": "DecimalReturnType",
          "documentation": "<p>A value that indicates how a field of <code>DECIMAL</code> type is represented in the response. The value of <code>STRING</code>, the default, specifies that it is converted to a String value. The value of <code>DOUBLE_OR_LONG</code> specifies that it is converted to a Long value if its scale is 0, or to a Double value otherwise.</p> <important> <p>Conversion to Double or Long can result in roundoff errors due to precision loss. We recommend converting to String, especially when working with currency values.</p> </important>"
        }
      },
      "documentation": "<p>Options that control how the result set is returned.</p>"
    },
    "RollbackTransactionRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "secretArn",
        "transactionId"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>"
        },
        "secretArn": {
          "shape": "Arn",
          "documentation": "<p>The name or ARN of the secret that enables access to the DB cluster.</p>"
        },
        "transactionId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the transaction to roll back.</p>"
        }
      },
      "documentation": "<p>The request parameters represent the input of a request to perform a rollback of a transaction.</p>"
    },
    "RollbackTransactionResponse": {
      "type": "structure",
      "members": {
        "transactionStatus": {
          "shape": "TransactionStatus",
          "documentation": "<p>The status of the rollback operation.</p>"
        }
      },
      "documentation": "<p>The response elements represent the output of a request to perform a rollback of a transaction.</p>"
    },
    "Row": {
      "type": "list",
      "member": {
        "shape": "Value"
      }
    },
    "SqlParameter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ParameterName",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "typeHint": {
          "shape": "TypeHint",
          "documentation": "<p>A hint that specifies the correct object type for data type mapping.</p> <p> <b>Values:</b> </p> <ul> <li> <p> <code>DECIMAL</code> - The corresponding <code>String</code> parameter value is sent as an object of <code>DECIMAL</code> type to the database.</p> </li> <li> <p> <code>TIMESTAMP</code> - The corresponding <code>String</code> parameter value is sent as an object of <code>TIMESTAMP</code> type to the database. The accepted format is <code>YYYY-MM-DD HH:MM:SS[.FFF]</code>.</p> </li> <li> <p> <code>TIME</code> - The corresponding <code>String</code> parameter value is sent as an object of <code>TIME</code> type to the database. The accepted format is <code>HH:MM:SS[.FFF]</code>.</p> </li> <li> <p> <code>DATE</code> - The corresponding <code>String</code> parameter value is sent as an object of <code>DATE</code> type to the database. The accepted format is <code>YYYY-MM-DD</code>.</p> </li> </ul>"
        },
        "value": {
          "shape": "Field",
          "documentation": "<p>The value of the parameter.</p>"
        }
      },
      "documentation": "<p>A parameter used in a SQL statement.</p>"
    },
    "SqlParameterSets": {
      "type": "list",
      "member": {
        "shape": "SqlParametersList"
      }
    },
    "SqlParametersList": {
      "type": "list",
      "member": {
        "shape": "SqlParameter"
      }
    },
    "SqlRecords": {
      "type": "list",
      "member": {
        "shape": "FieldList"
      }
    },
    "SqlStatement": {
      "type": "string",
      "max": 65536,
      "min": 0
    },
    "SqlStatementResult": {
      "type": "structure",
      "members": {
        "numberOfRecordsUpdated": {
          "shape": "RecordsUpdated",
          "documentation": "<p>The number of records updated by a SQL statement.</p>"
        },
        "resultFrame": {
          "shape": "ResultFrame",
          "documentation": "<p>The result set of the SQL statement.</p>"
        }
      },
      "documentation": "<p>The result of a SQL statement.</p> <pre><code> &lt;important&gt; &lt;p&gt;This data type is deprecated.&lt;/p&gt; &lt;/important&gt; </code></pre>"
    },
    "SqlStatementResults": {
      "type": "list",
      "member": {
        "shape": "SqlStatementResult"
      }
    },
    "String": {
      "type": "string"
    },
    "StringArray": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "documentation": "<p>An array of strings.</p> <note> <p>Some array entries can be null.</p> </note>"
    },
    "StructValue": {
      "type": "structure",
      "members": {
        "attributes": {
          "shape": "ArrayValueList",
          "documentation": "<p>The attributes returned in the record.</p>"
        }
      },
      "documentation": "<p>A structure value returned by a call.</p>"
    },
    "TransactionStatus": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "TypeHint": {
      "type": "string",
      "enum": [
        "DATE",
        "DECIMAL",
        "TIME",
        "TIMESTAMP"
      ]
    },
    "UpdateResult": {
      "type": "structure",
      "members": {
        "generatedFields": {
          "shape": "FieldList",
          "documentation": "<p>Values for fields generated during the request.</p>"
        }
      },
      "documentation": "<p>The response elements represent the results of an update.</p>"
    },
    "UpdateResults": {
      "type": "list",
      "member": {
        "shape": "UpdateResult"
      }
    },
    "Value": {
      "type": "structure",
      "members": {
        "arrayValues": {
          "shape": "ArrayValueList",
          "documentation": "<p>An array of column values.</p>"
        },
        "bigIntValue": {
          "shape": "BoxedLong",
          "documentation": "<p>A value for a column of big integer data type.</p>"
        },
        "bitValue": {
          "shape": "BoxedBoolean",
          "documentation": "<p>A value for a column of BIT data type.</p>"
        },
        "blobValue": {
          "shape": "Blob",
          "documentation": "<p>A value for a column of BLOB data type.</p>"
        },
        "doubleValue": {
          "shape": "BoxedDouble",
          "documentation": "<p>A value for a column of double data type.</p>"
        },
        "intValue": {
          "shape": "BoxedInteger",
          "documentation": "<p>A value for a column of integer data type.</p>"
        },
        "isNull": {
          "shape": "BoxedBoolean",
          "documentation": "<p>A NULL value.</p>"
        },
        "realValue": {
          "shape": "BoxedFloat",
          "documentation": "<p>A value for a column of real data type.</p>"
        },
        "stringValue": {
          "shape": "String",
          "documentation": "<p>A value for a column of string data type.</p>"
        },
        "structValue": {
          "shape": "StructValue",
          "documentation": "<p>A value for a column of STRUCT data type.</p>"
        }
      },
      "documentation": "<p>Contains the value of a column.</p> <pre><code> &lt;important&gt; &lt;p&gt;This data type is deprecated.&lt;/p&gt; &lt;/important&gt; </code></pre>"
    }
  },
  "documentation": "<p><fullname>Amazon RDS Data Service</fullname> <p>Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora Serverless DB cluster. To run these statements, you work with the Data Service API.</p> <p>For more information about the Data Service API, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p> <note> <p>If you have questions or comments related to the Data API, send email to <a href=\"mailto:Rds-data-api-feedback@amazon.com\">Rds-data-api-feedback@amazon.com</a>.</p> </note></p>"
}
]===]))
