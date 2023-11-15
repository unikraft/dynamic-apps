return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "View and manage your data across Google Cloud Platform services",
        },
        ["https://www.googleapis.com/auth/cloud-translation"] = {
          description = "Translate text from one language to another using Google Translate",
        },
      },
    },
  },
  basePath = "/language/translate/",
  baseUrl = "https://translation.googleapis.com/language/translate/",
  batchPath = "batch/translate",
  canonicalName = "Translate",
  description = "The Google Cloud Translation API lets websites and programs integrate with\
    Google Translate programmatically.",
  discoveryVersion = "v1",
  documentationLink = "https://code.google.com/apis/language/translate/v2/getting_started.html",
  features = {
    "dataWrapper",
  },
  icons = {
    x16 = "https://www.google.com/images/icons/product/translate-16.png",
    x32 = "https://www.google.com/images/icons/product/translate-32.png",
  },
  id = "translate:v2",
  kind = "discovery#restDescription",
  name = "translate",
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
    bearer_token = {
      description = "OAuth bearer token.",
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
    pp = {
      default = "true",
      description = "Pretty-print response.",
      location = "query",
      type = "boolean",
    },
    prettyPrint = {
      default = "true",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.",
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
    detections = {
      methods = {
        detect = {
          description = "Detects the language of text within a request.",
          httpMethod = "POST",
          id = "language.detections.detect",
          parameterOrder = {},
          parameters = {},
          path = "v2/detect",
          request = {
            ["$ref"] = "DetectLanguageRequest",
          },
          response = {
            ["$ref"] = "DetectionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-translation",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Detects the language of text within a request.",
          httpMethod = "GET",
          id = "language.detections.list",
          parameterOrder = {
            "q",
          },
          parameters = {
            q = {
              description = "The input text upon which to perform language detection. Repeat this\
parameter to perform language detection on multiple text inputs.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "v2/detect",
          response = {
            ["$ref"] = "DetectionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-translation",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    languages = {
      methods = {
        list = {
          description = "Returns a list of supported languages for translation.",
          httpMethod = "GET",
          id = "language.languages.list",
          parameters = {
            model = {
              description = "The model type for which supported languages should be returned.",
              location = "query",
              type = "string",
            },
            target = {
              description = "The language to use to return localized, human readable names of supported\
languages.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/languages",
          response = {
            ["$ref"] = "LanguagesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-translation",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    translations = {
      methods = {
        list = {
          description = "Translates input text, returning translated text.",
          httpMethod = "GET",
          id = "language.translations.list",
          parameterOrder = {
            "q",
            "target",
          },
          parameters = {
            cid = {
              description = "The customization id for translate",
              location = "query",
              repeated = true,
              type = "string",
            },
            format = {
              description = "The format of the source text, in either HTML (default) or plain-text. A\
value of \"html\" indicates HTML and a value of \"text\" indicates plain-text.",
              enum = {
                "html",
                "text",
              },
              enumDescriptions = {
                "Specifies the input is in HTML",
                "Specifies the input is in plain textual format",
              },
              location = "query",
              type = "string",
            },
            model = {
              description = "The `model` type requested for this translation. Valid values are\
listed in public documentation.",
              location = "query",
              type = "string",
            },
            q = {
              description = "The input text to translate. Repeat this parameter to perform translation\
operations on multiple text inputs.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            source = {
              description = "The language of the source text, set to one of the language codes listed in\
Language Support. If the source language is not specified, the API will\
attempt to identify the source language automatically and return it within\
the response.",
              location = "query",
              type = "string",
            },
            target = {
              description = "The language to use for translation of the input text, set to one of the\
language codes listed in Language Support.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "v2",
          response = {
            ["$ref"] = "TranslationsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-translation",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        translate = {
          description = "Translates input text, returning translated text.",
          httpMethod = "POST",
          id = "language.translations.translate",
          parameterOrder = {},
          parameters = {},
          path = "v2",
          request = {
            ["$ref"] = "TranslateTextRequest",
          },
          response = {
            ["$ref"] = "TranslationsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-translation",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20170525",
  rootUrl = "https://translation.googleapis.com/",
  schemas = {
    DetectLanguageRequest = {
      description = "The request message for language detection.",
      id = "DetectLanguageRequest",
      properties = {
        q = {
          description = "The input text upon which to perform language detection. Repeat this\
parameter to perform language detection on multiple text inputs.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DetectionsListResponse = {
      id = "DetectionsListResponse",
      properties = {
        detections = {
          description = "A detections contains detection results of several text",
          items = {
            ["$ref"] = "DetectionsResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DetectionsResource = {
      description = "An array of languages which we detect for the given text The most likely language list first.",
      id = "DetectionsResource",
      items = {
        properties = {
          confidence = {
            description = "The confidence of the detection result of this language.",
            format = "float",
            type = "number",
          },
          isReliable = {
            description = "A boolean to indicate is the language detection result reliable.",
            type = "boolean",
          },
          language = {
            description = "The language we detected.",
            type = "string",
          },
        },
        type = "object",
      },
      type = "array",
    },
    GetSupportedLanguagesRequest = {
      description = "The request message for discovering supported languages.",
      id = "GetSupportedLanguagesRequest",
      properties = {
        target = {
          description = "The language to use to return localized, human readable names of supported\
languages.",
          type = "string",
        },
      },
      type = "object",
    },
    LanguagesListResponse = {
      id = "LanguagesListResponse",
      properties = {
        languages = {
          description = "List of source/target languages supported by the translation API. If target parameter is unspecified, the list is sorted by the ASCII code point order of the language code. If target parameter is specified, the list is sorted by the collation order of the language name in the target language.",
          items = {
            ["$ref"] = "LanguagesResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LanguagesResource = {
      id = "LanguagesResource",
      properties = {
        language = {
          description = "Supported language code, generally consisting of its ISO 639-1\
identifier. (E.g. 'en', 'ja'). In certain cases, BCP-47 codes including\
language + region identifiers are returned (e.g. 'zh-TW' and 'zh-CH')",
          type = "string",
        },
        name = {
          description = "Human readable name of the language localized to the target language.",
          type = "string",
        },
      },
      type = "object",
    },
    TranslateTextRequest = {
      description = "The main translation request message for the Cloud Translation API.",
      id = "TranslateTextRequest",
      properties = {
        format = {
          description = "The format of the source text, in either HTML (default) or plain-text. A\
value of \"html\" indicates HTML and a value of \"text\" indicates plain-text.",
          type = "string",
        },
        model = {
          description = "The `model` type requested for this translation. Valid values are\
listed in public documentation.",
          type = "string",
        },
        q = {
          description = "The input text to translate. Repeat this parameter to perform translation\
operations on multiple text inputs.",
          items = {
            type = "string",
          },
          type = "array",
        },
        source = {
          description = "The language of the source text, set to one of the language codes listed in\
Language Support. If the source language is not specified, the API will\
attempt to identify the source language automatically and return it within\
the response.",
          type = "string",
        },
        target = {
          description = "The language to use for translation of the input text, set to one of the\
language codes listed in Language Support.",
          type = "string",
        },
      },
      type = "object",
    },
    TranslationsListResponse = {
      description = "The main language translation response message.",
      id = "TranslationsListResponse",
      properties = {
        translations = {
          description = "Translations contains list of translation results of given text",
          items = {
            ["$ref"] = "TranslationsResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TranslationsResource = {
      id = "TranslationsResource",
      properties = {
        detectedSourceLanguage = {
          description = "The source language of the initial request, detected automatically, if\
no source language was passed within the initial request. If the\
source language was passed, auto-detection of the language will not\
occur and this field will be empty.",
          type = "string",
        },
        model = {
          description = "The `model` type used for this translation. Valid values are\
listed in public documentation. Can be different from requested `model`.\
Present only if specific model type was explicitly requested.",
          type = "string",
        },
        translatedText = {
          description = "Text translated into the target language.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "language/translate/",
  title = "Google Cloud Translation API",
  version = "v2",
}
