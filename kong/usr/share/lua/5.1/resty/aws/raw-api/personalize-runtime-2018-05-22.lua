local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-05-22",
    "endpointPrefix": "personalize-runtime",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Personalize Runtime",
    "serviceId": "Personalize Runtime",
    "signatureVersion": "v4",
    "signingName": "personalize",
    "uid": "personalize-runtime-2018-05-22"
  },
  "operations": {
    "GetPersonalizedRanking": {
      "name": "GetPersonalizedRanking",
      "http": {
        "method": "POST",
        "requestUri": "/personalize-ranking"
      },
      "input": {
        "shape": "GetPersonalizedRankingRequest"
      },
      "output": {
        "shape": "GetPersonalizedRankingResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user.</p> <note> <p>The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING.</p> </note>",
      "idempotent": true
    },
    "GetRecommendations": {
      "name": "GetRecommendations",
      "http": {
        "method": "POST",
        "requestUri": "/recommendations"
      },
      "input": {
        "shape": "GetRecommendationsRequest"
      },
      "output": {
        "shape": "GetRecommendationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of recommended items. The required input depends on the recipe type used to create the solution backing the campaign, as follows:</p> <ul> <li> <p>RELATED_ITEMS - <code>itemId</code> required, <code>userId</code> not used</p> </li> <li> <p>USER_PERSONALIZATION - <code>itemId</code> optional, <code>userId</code> required</p> </li> </ul> <note> <p>Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the API.</p> </note>",
      "idempotent": true
    }
  },
  "shapes": {
    "Arn": {
      "type": "string",
      "max": 256,
      "pattern": "arn:([a-z\\d-]+):personalize:.*:.*:.+"
    },
    "AttributeName": {
      "type": "string",
      "max": 150,
      "pattern": "[A-Za-z\\d_]+"
    },
    "AttributeValue": {
      "type": "string",
      "max": 1000,
      "sensitive": true
    },
    "Context": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      },
      "max": 150
    },
    "GetPersonalizedRankingRequest": {
      "type": "structure",
      "required": [
        "campaignArn",
        "inputList",
        "userId"
      ],
      "members": {
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign to use for generating the personalized ranking.</p>"
        },
        "inputList": {
          "shape": "InputList",
          "documentation": "<p>A list of items (by <code>itemId</code>) to rank. If an item was not included in the training dataset, the item is appended to the end of the reranked list. The maximum is 500.</p>"
        },
        "userId": {
          "shape": "UserID",
          "documentation": "<p>The user for which you want the campaign to provide a personalized ranking.</p>"
        },
        "context": {
          "shape": "Context",
          "documentation": "<p>The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.</p>"
        },
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a filter you created to include or exclude items from recommendations for a given user.</p>"
        }
      }
    },
    "GetPersonalizedRankingResponse": {
      "type": "structure",
      "members": {
        "personalizedRanking": {
          "shape": "ItemList",
          "documentation": "<p>A list of items in order of most likely interest to the user. The maximum is 500.</p>"
        },
        "recommendationId": {
          "shape": "RecommendationID",
          "documentation": "<p>The ID of the recommendation.</p>"
        }
      }
    },
    "GetRecommendationsRequest": {
      "type": "structure",
      "required": [
        "campaignArn"
      ],
      "members": {
        "campaignArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.</p>"
        },
        "itemId": {
          "shape": "ItemID",
          "documentation": "<p>The item ID to provide recommendations for.</p> <p>Required for <code>RELATED_ITEMS</code> recipe type.</p>"
        },
        "userId": {
          "shape": "UserID",
          "documentation": "<p>The user ID to provide recommendations for.</p> <p>Required for <code>USER_PERSONALIZATION</code> recipe type.</p>"
        },
        "numResults": {
          "shape": "NumResults",
          "documentation": "<p>The number of results to return. The default is 25. The maximum is 500.</p>"
        },
        "context": {
          "shape": "Context",
          "documentation": "<p>The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.</p>"
        },
        "filterArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the filter to apply to the returned recommendations. For more information, see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filters.html\">Using Filters with Amazon Personalize</a>.</p> <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>"
        }
      }
    },
    "GetRecommendationsResponse": {
      "type": "structure",
      "members": {
        "itemList": {
          "shape": "ItemList",
          "documentation": "<p>A list of recommendations sorted in ascending order by prediction score. There can be a maximum of 500 items in the list.</p>"
        },
        "recommendationId": {
          "shape": "RecommendationID",
          "documentation": "<p>The ID of the recommendation.</p>"
        }
      }
    },
    "InputList": {
      "type": "list",
      "member": {
        "shape": "ItemID"
      }
    },
    "ItemID": {
      "type": "string",
      "max": 256
    },
    "ItemList": {
      "type": "list",
      "member": {
        "shape": "PredictedItem"
      }
    },
    "NumResults": {
      "type": "integer",
      "min": 0
    },
    "PredictedItem": {
      "type": "structure",
      "members": {
        "itemId": {
          "shape": "ItemID",
          "documentation": "<p>The recommended item ID.</p>"
        },
        "score": {
          "shape": "Score",
          "documentation": "<p>A numeric representation of the model's certainty that the item will be the next user selection. For more information on scoring logic, see <a>how-scores-work</a>.</p>"
        }
      },
      "documentation": "<p>An object that identifies an item.</p> <p>The and APIs return a list of <code>PredictedItem</code>s.</p>"
    },
    "RecommendationID": {
      "type": "string"
    },
    "Score": {
      "type": "double"
    },
    "UserID": {
      "type": "string",
      "max": 256
    }
  },
  "documentation": "<p/>"
}
]===]))
