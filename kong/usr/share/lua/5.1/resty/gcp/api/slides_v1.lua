return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/drive"] = {
          description = "See, edit, create, and delete all of your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.file"] = {
          description = "See, edit, create, and delete only the specific Google Drive files you use with this app",
        },
        ["https://www.googleapis.com/auth/drive.readonly"] = {
          description = "See and download all your Google Drive files",
        },
        ["https://www.googleapis.com/auth/presentations"] = {
          description = "See, edit, create, and delete all your Google Slides presentations",
        },
        ["https://www.googleapis.com/auth/presentations.readonly"] = {
          description = "See all your Google Slides presentations",
        },
        ["https://www.googleapis.com/auth/spreadsheets"] = {
          description = "See, edit, create, and delete all your Google Sheets spreadsheets",
        },
        ["https://www.googleapis.com/auth/spreadsheets.readonly"] = {
          description = "See all your Google Sheets spreadsheets",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://slides.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Slides",
  description = "Reads and writes Google Slides presentations.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/slides/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "slides:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://slides.mtls.googleapis.com/",
  name = "slides",
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
    presentations = {
      methods = {
        batchUpdate = {
          description = "Applies one or more updates to the presentation. Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests. For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies: the reply to the third request, and another empty reply, in that order. Because other users may be editing the presentation, the presentation might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the presentation should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.",
          flatPath = "v1/presentations/{presentationId}:batchUpdate",
          httpMethod = "POST",
          id = "slides.presentations.batchUpdate",
          parameterOrder = {
            "presentationId",
          },
          parameters = {
            presentationId = {
              description = "The presentation to apply the updates to.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/presentations/{presentationId}:batchUpdate",
          request = {
            ["$ref"] = "BatchUpdatePresentationRequest",
          },
          response = {
            ["$ref"] = "BatchUpdatePresentationResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
            "https://www.googleapis.com/auth/presentations",
            "https://www.googleapis.com/auth/spreadsheets",
            "https://www.googleapis.com/auth/spreadsheets.readonly",
          },
        },
        create = {
          description = "Creates a blank presentation using the title given in the request. If a `presentationId` is provided, it is used as the ID of the new presentation. Otherwise, a new ID is generated. Other fields in the request, including any provided content, are ignored. Returns the created presentation.",
          flatPath = "v1/presentations",
          httpMethod = "POST",
          id = "slides.presentations.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/presentations",
          request = {
            ["$ref"] = "Presentation",
          },
          response = {
            ["$ref"] = "Presentation",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/presentations",
          },
        },
        get = {
          description = "Gets the latest version of the specified presentation.",
          flatPath = "v1/presentations/{presentationsId}",
          httpMethod = "GET",
          id = "slides.presentations.get",
          parameterOrder = {
            "presentationId",
          },
          parameters = {
            presentationId = {
              description = "The ID of the presentation to retrieve.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/presentations/{+presentationId}",
          response = {
            ["$ref"] = "Presentation",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
            "https://www.googleapis.com/auth/presentations",
            "https://www.googleapis.com/auth/presentations.readonly",
          },
        },
      },
      resources = {
        pages = {
          methods = {
            get = {
              description = "Gets the latest version of the specified page in the presentation.",
              flatPath = "v1/presentations/{presentationId}/pages/{pageObjectId}",
              httpMethod = "GET",
              id = "slides.presentations.pages.get",
              parameterOrder = {
                "presentationId",
                "pageObjectId",
              },
              parameters = {
                pageObjectId = {
                  description = "The object ID of the page to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                presentationId = {
                  description = "The ID of the presentation to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/presentations/{presentationId}/pages/{pageObjectId}",
              response = {
                ["$ref"] = "Page",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/presentations",
                "https://www.googleapis.com/auth/presentations.readonly",
              },
            },
            getThumbnail = {
              description = "Generates a thumbnail of the latest version of the specified page in the presentation and returns a URL to the thumbnail image. This request counts as an [expensive read request](/slides/limits) for quota purposes.",
              flatPath = "v1/presentations/{presentationId}/pages/{pageObjectId}/thumbnail",
              httpMethod = "GET",
              id = "slides.presentations.pages.getThumbnail",
              parameterOrder = {
                "presentationId",
                "pageObjectId",
              },
              parameters = {
                pageObjectId = {
                  description = "The object ID of the page whose thumbnail to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                presentationId = {
                  description = "The ID of the presentation to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["thumbnailProperties.mimeType"] = {
                  description = "The optional mime type of the thumbnail image. If you don't specify the mime type, the mime type defaults to PNG.",
                  enum = {
                    "PNG",
                  },
                  enumDescriptions = {
                    "The default mime type.",
                  },
                  location = "query",
                  type = "string",
                },
                ["thumbnailProperties.thumbnailSize"] = {
                  description = "The optional thumbnail image size. If you don't specify the size, the server chooses a default size of the image.",
                  enum = {
                    "THUMBNAIL_SIZE_UNSPECIFIED",
                    "LARGE",
                    "MEDIUM",
                    "SMALL",
                  },
                  enumDescriptions = {
                    "The default thumbnail image size. The unspecified thumbnail size implies that the server chooses the size of the image in a way that might vary in the future.",
                    "The thumbnail image width of 1600px.",
                    "The thumbnail image width of 800px.",
                    "The thumbnail image width of 200px.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/presentations/{presentationId}/pages/{pageObjectId}/thumbnail",
              response = {
                ["$ref"] = "Thumbnail",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/presentations",
                "https://www.googleapis.com/auth/presentations.readonly",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230111",
  rootUrl = "https://slides.googleapis.com/",
  schemas = {
    AffineTransform = {
      description = "AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ] to transform source coordinates (x,y) into destination coordinates (x', y') according to: x' x = shear_y scale_y translate_y 1 [ 1 ] After transformation, x' = scale_x * x + shear_x * y + translate_x; y' = scale_y * y + shear_y * x + translate_y; This message is therefore composed of these six matrix elements.",
      id = "AffineTransform",
      properties = {
        scaleX = {
          description = "The X coordinate scaling element.",
          format = "double",
          type = "number",
        },
        scaleY = {
          description = "The Y coordinate scaling element.",
          format = "double",
          type = "number",
        },
        shearX = {
          description = "The X coordinate shearing element.",
          format = "double",
          type = "number",
        },
        shearY = {
          description = "The Y coordinate shearing element.",
          format = "double",
          type = "number",
        },
        translateX = {
          description = "The X coordinate translation element.",
          format = "double",
          type = "number",
        },
        translateY = {
          description = "The Y coordinate translation element.",
          format = "double",
          type = "number",
        },
        unit = {
          description = "The units for translate elements.",
          enum = {
            "UNIT_UNSPECIFIED",
            "EMU",
            "PT",
          },
          enumDescriptions = {
            "The units are unknown.",
            "An English Metric Unit (EMU) is defined as 1/360,000 of a centimeter and thus there are 914,400 EMUs per inch, and 12,700 EMUs per point.",
            "A point, 1/72 of an inch.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AutoText = {
      description = "A TextElement kind that represents auto text.",
      id = "AutoText",
      properties = {
        content = {
          description = "The rendered content of this auto text, if available.",
          type = "string",
        },
        style = {
          ["$ref"] = "TextStyle",
          description = "The styling applied to this auto text.",
        },
        type = {
          description = "The type of this auto text.",
          enum = {
            "TYPE_UNSPECIFIED",
            "SLIDE_NUMBER",
          },
          enumDescriptions = {
            "An unspecified autotext type.",
            "Type for autotext that represents the current slide number.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Autofit = {
      description = "The autofit properties of a Shape.",
      id = "Autofit",
      properties = {
        autofitType = {
          description = "The autofit type of the shape. If the autofit type is AUTOFIT_TYPE_UNSPECIFIED, the autofit type is inherited from a parent placeholder if it exists. The field is automatically set to NONE if a request is made that might affect text fitting within its bounding text box. In this case the font_scale is applied to the font_size and the line_spacing_reduction is applied to the line_spacing. Both properties are also reset to default values.",
          enum = {
            "AUTOFIT_TYPE_UNSPECIFIED",
            "NONE",
            "TEXT_AUTOFIT",
            "SHAPE_AUTOFIT",
          },
          enumDescriptions = {
            "The autofit type is unspecified.",
            "Do not autofit.",
            "Shrink text on overflow to fit the shape.",
            "Resize the shape to fit the text.",
          },
          type = "string",
        },
        fontScale = {
          description = "The font scale applied to the shape. For shapes with autofit_type NONE or SHAPE_AUTOFIT, this value is the default value of 1. For TEXT_AUTOFIT, this value multiplied by the font_size gives the font size that is rendered in the editor. This property is read-only.",
          format = "float",
          type = "number",
        },
        lineSpacingReduction = {
          description = "The line spacing reduction applied to the shape. For shapes with autofit_type NONE or SHAPE_AUTOFIT, this value is the default value of 0. For TEXT_AUTOFIT, this value subtracted from the line_spacing gives the line spacing that is rendered in the editor. This property is read-only.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    BatchUpdatePresentationRequest = {
      description = "Request message for PresentationsService.BatchUpdatePresentation.",
      id = "BatchUpdatePresentationRequest",
      properties = {
        requests = {
          description = "A list of updates to apply to the presentation.",
          items = {
            ["$ref"] = "Request",
          },
          type = "array",
        },
        writeControl = {
          ["$ref"] = "WriteControl",
          description = "Provides control over how write requests are executed.",
        },
      },
      type = "object",
    },
    BatchUpdatePresentationResponse = {
      description = "Response message from a batch update.",
      id = "BatchUpdatePresentationResponse",
      properties = {
        presentationId = {
          description = "The presentation the updates were applied to.",
          type = "string",
        },
        replies = {
          description = "The reply of the updates. This maps 1:1 with the updates, although replies to some requests may be empty.",
          items = {
            ["$ref"] = "Response",
          },
          type = "array",
        },
        writeControl = {
          ["$ref"] = "WriteControl",
          description = "The updated write control after applying the request.",
        },
      },
      type = "object",
    },
    Bullet = {
      description = "Describes the bullet of a paragraph.",
      id = "Bullet",
      properties = {
        bulletStyle = {
          ["$ref"] = "TextStyle",
          description = "The paragraph specific text style applied to this bullet.",
        },
        glyph = {
          description = "The rendered bullet glyph for this paragraph.",
          type = "string",
        },
        listId = {
          description = "The ID of the list this paragraph belongs to.",
          type = "string",
        },
        nestingLevel = {
          description = "The nesting level of this paragraph in the list.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ColorScheme = {
      description = "The palette of predefined colors for a page.",
      id = "ColorScheme",
      properties = {
        colors = {
          description = "The ThemeColorType and corresponding concrete color pairs.",
          items = {
            ["$ref"] = "ThemeColorPair",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ColorStop = {
      description = "A color and position in a gradient band.",
      id = "ColorStop",
      properties = {
        alpha = {
          description = "The alpha value of this color in the gradient band. Defaults to 1.0, fully opaque.",
          format = "float",
          type = "number",
        },
        color = {
          ["$ref"] = "OpaqueColor",
          description = "The color of the gradient stop.",
        },
        position = {
          description = "The relative position of the color stop in the gradient band measured in percentage. The value should be in the interval [0.0, 1.0].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    CreateImageRequest = {
      description = "Creates an image.",
      id = "CreateImageRequest",
      properties = {
        elementProperties = {
          ["$ref"] = "PageElementProperties",
          description = "The element properties for the image. When the aspect ratio of the provided size does not match the image aspect ratio, the image is scaled and centered with respect to the size in order to maintain the aspect ratio. The provided transform is applied after this operation. The PageElementProperties.size property is optional. If you don't specify the size, the default size of the image is used. The PageElementProperties.transform property is optional. If you don't specify a transform, the image will be placed at the top-left corner of the page.",
        },
        objectId = {
          description = "A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater than 50. If you don't specify an ID, a unique one is generated.",
          type = "string",
        },
        url = {
          description = "The image URL. The image is fetched once at insertion time and a copy is stored for display inside the presentation. Images must be less than 50 MB in size, can't exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF formats. The provided URL can be up to 2 KB in length. The URL is saved with the image, and exposed through the Image.source_url field.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateImageResponse = {
      description = "The result of creating an image.",
      id = "CreateImageResponse",
      properties = {
        objectId = {
          description = "The object ID of the created image.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateLineRequest = {
      description = "Creates a line.",
      id = "CreateLineRequest",
      properties = {
        category = {
          description = "The category of the line to be created. The exact line type created is determined based on the category and how it's routed to connect to other page elements. If you specify both a `category` and a `line_category`, the `category` takes precedence. If you do not specify a value for `category`, but specify a value for `line_category`, then the specified `line_category` value is used. If you do not specify either, then STRAIGHT is used.",
          enum = {
            "LINE_CATEGORY_UNSPECIFIED",
            "STRAIGHT",
            "BENT",
            "CURVED",
          },
          enumDescriptions = {
            "Unspecified line category.",
            "Straight connectors, including straight connector 1.",
            "Bent connectors, including bent connector 2 to 5.",
            "Curved connectors, including curved connector 2 to 5.",
          },
          type = "string",
        },
        elementProperties = {
          ["$ref"] = "PageElementProperties",
          description = "The element properties for the line.",
        },
        lineCategory = {
          description = "The category of the line to be created. *Deprecated*: use `category` instead. The exact line type created is determined based on the category and how it's routed to connect to other page elements. If you specify both a `category` and a `line_category`, the `category` takes precedence.",
          enum = {
            "STRAIGHT",
            "BENT",
            "CURVED",
          },
          enumDescriptions = {
            "Straight connectors, including straight connector 1. The is the default category when one is not specified.",
            "Bent connectors, including bent connector 2 to 5.",
            "Curved connectors, including curved connector 2 to 5.",
          },
          type = "string",
        },
        objectId = {
          description = "A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater than 50. If you don't specify an ID, a unique one is generated.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateLineResponse = {
      description = "The result of creating a line.",
      id = "CreateLineResponse",
      properties = {
        objectId = {
          description = "The object ID of the created line.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateParagraphBulletsRequest = {
      description = "Creates bullets for all of the paragraphs that overlap with the given text index range. The nesting level of each paragraph will be determined by counting leading tabs in front of each paragraph. To avoid excess space between the bullet and the corresponding paragraph, these leading tabs are removed by this request. This may change the indices of parts of the text. If the paragraph immediately before paragraphs being updated is in a list with a matching preset, the paragraphs being updated are added to that preceding list.",
      id = "CreateParagraphBulletsRequest",
      properties = {
        bulletPreset = {
          description = "The kinds of bullet glyphs to be used. Defaults to the `BULLET_DISC_CIRCLE_SQUARE` preset.",
          enum = {
            "BULLET_DISC_CIRCLE_SQUARE",
            "BULLET_DIAMONDX_ARROW3D_SQUARE",
            "BULLET_CHECKBOX",
            "BULLET_ARROW_DIAMOND_DISC",
            "BULLET_STAR_CIRCLE_SQUARE",
            "BULLET_ARROW3D_CIRCLE_SQUARE",
            "BULLET_LEFTTRIANGLE_DIAMOND_DISC",
            "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE",
            "BULLET_DIAMOND_CIRCLE_SQUARE",
            "NUMBERED_DIGIT_ALPHA_ROMAN",
            "NUMBERED_DIGIT_ALPHA_ROMAN_PARENS",
            "NUMBERED_DIGIT_NESTED",
            "NUMBERED_UPPERALPHA_ALPHA_ROMAN",
            "NUMBERED_UPPERROMAN_UPPERALPHA_DIGIT",
            "NUMBERED_ZERODIGIT_ALPHA_ROMAN",
          },
          enumDescriptions = {
            "A bulleted list with a `DISC`, `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.",
            "A bulleted list with a `DIAMONDX`, `ARROW3D` and `SQUARE` bullet glyph for the first 3 list nesting levels.",
            "A bulleted list with `CHECKBOX` bullet glyphs for all list nesting levels.",
            "A bulleted list with a `ARROW`, `DIAMOND` and `DISC` bullet glyph for the first 3 list nesting levels.",
            "A bulleted list with a `STAR`, `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.",
            "A bulleted list with a `ARROW3D`, `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.",
            "A bulleted list with a `LEFTTRIANGLE`, `DIAMOND` and `DISC` bullet glyph for the first 3 list nesting levels.",
            "A bulleted list with a `DIAMONDX`, `HOLLOWDIAMOND` and `SQUARE` bullet glyph for the first 3 list nesting levels.",
            "A bulleted list with a `DIAMOND`, `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.",
            "A numbered list with `DIGIT`, `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels, followed by periods.",
            "A numbered list with `DIGIT`, `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels, followed by parenthesis.",
            "A numbered list with `DIGIT` numeric glyphs separated by periods, where each nesting level uses the previous nesting level's glyph as a prefix. For example: '1.', '1.1.', '2.', '2.2.'.",
            "A numbered list with `UPPERALPHA`, `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels, followed by periods.",
            "A numbered list with `UPPERROMAN`, `UPPERALPHA` and `DIGIT` numeric glyphs for the first 3 list nesting levels, followed by periods.",
            "A numbered list with `ZERODIGIT`, `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels, followed by periods.",
          },
          type = "string",
        },
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The optional table cell location if the text to be modified is in a table cell. If present, the object_id must refer to a table.",
        },
        objectId = {
          description = "The object ID of the shape or table containing the text to add bullets to.",
          type = "string",
        },
        textRange = {
          ["$ref"] = "Range",
          description = "The range of text to apply the bullet presets to, based on TextElement indexes.",
        },
      },
      type = "object",
    },
    CreateShapeRequest = {
      description = "Creates a new shape.",
      id = "CreateShapeRequest",
      properties = {
        elementProperties = {
          ["$ref"] = "PageElementProperties",
          description = "The element properties for the shape.",
        },
        objectId = {
          description = "A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater than 50. If empty, a unique identifier will be generated.",
          type = "string",
        },
        shapeType = {
          description = "The shape type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TEXT_BOX",
            "RECTANGLE",
            "ROUND_RECTANGLE",
            "ELLIPSE",
            "ARC",
            "BENT_ARROW",
            "BENT_UP_ARROW",
            "BEVEL",
            "BLOCK_ARC",
            "BRACE_PAIR",
            "BRACKET_PAIR",
            "CAN",
            "CHEVRON",
            "CHORD",
            "CLOUD",
            "CORNER",
            "CUBE",
            "CURVED_DOWN_ARROW",
            "CURVED_LEFT_ARROW",
            "CURVED_RIGHT_ARROW",
            "CURVED_UP_ARROW",
            "DECAGON",
            "DIAGONAL_STRIPE",
            "DIAMOND",
            "DODECAGON",
            "DONUT",
            "DOUBLE_WAVE",
            "DOWN_ARROW",
            "DOWN_ARROW_CALLOUT",
            "FOLDED_CORNER",
            "FRAME",
            "HALF_FRAME",
            "HEART",
            "HEPTAGON",
            "HEXAGON",
            "HOME_PLATE",
            "HORIZONTAL_SCROLL",
            "IRREGULAR_SEAL_1",
            "IRREGULAR_SEAL_2",
            "LEFT_ARROW",
            "LEFT_ARROW_CALLOUT",
            "LEFT_BRACE",
            "LEFT_BRACKET",
            "LEFT_RIGHT_ARROW",
            "LEFT_RIGHT_ARROW_CALLOUT",
            "LEFT_RIGHT_UP_ARROW",
            "LEFT_UP_ARROW",
            "LIGHTNING_BOLT",
            "MATH_DIVIDE",
            "MATH_EQUAL",
            "MATH_MINUS",
            "MATH_MULTIPLY",
            "MATH_NOT_EQUAL",
            "MATH_PLUS",
            "MOON",
            "NO_SMOKING",
            "NOTCHED_RIGHT_ARROW",
            "OCTAGON",
            "PARALLELOGRAM",
            "PENTAGON",
            "PIE",
            "PLAQUE",
            "PLUS",
            "QUAD_ARROW",
            "QUAD_ARROW_CALLOUT",
            "RIBBON",
            "RIBBON_2",
            "RIGHT_ARROW",
            "RIGHT_ARROW_CALLOUT",
            "RIGHT_BRACE",
            "RIGHT_BRACKET",
            "ROUND_1_RECTANGLE",
            "ROUND_2_DIAGONAL_RECTANGLE",
            "ROUND_2_SAME_RECTANGLE",
            "RIGHT_TRIANGLE",
            "SMILEY_FACE",
            "SNIP_1_RECTANGLE",
            "SNIP_2_DIAGONAL_RECTANGLE",
            "SNIP_2_SAME_RECTANGLE",
            "SNIP_ROUND_RECTANGLE",
            "STAR_10",
            "STAR_12",
            "STAR_16",
            "STAR_24",
            "STAR_32",
            "STAR_4",
            "STAR_5",
            "STAR_6",
            "STAR_7",
            "STAR_8",
            "STRIPED_RIGHT_ARROW",
            "SUN",
            "TRAPEZOID",
            "TRIANGLE",
            "UP_ARROW",
            "UP_ARROW_CALLOUT",
            "UP_DOWN_ARROW",
            "UTURN_ARROW",
            "VERTICAL_SCROLL",
            "WAVE",
            "WEDGE_ELLIPSE_CALLOUT",
            "WEDGE_RECTANGLE_CALLOUT",
            "WEDGE_ROUND_RECTANGLE_CALLOUT",
            "FLOW_CHART_ALTERNATE_PROCESS",
            "FLOW_CHART_COLLATE",
            "FLOW_CHART_CONNECTOR",
            "FLOW_CHART_DECISION",
            "FLOW_CHART_DELAY",
            "FLOW_CHART_DISPLAY",
            "FLOW_CHART_DOCUMENT",
            "FLOW_CHART_EXTRACT",
            "FLOW_CHART_INPUT_OUTPUT",
            "FLOW_CHART_INTERNAL_STORAGE",
            "FLOW_CHART_MAGNETIC_DISK",
            "FLOW_CHART_MAGNETIC_DRUM",
            "FLOW_CHART_MAGNETIC_TAPE",
            "FLOW_CHART_MANUAL_INPUT",
            "FLOW_CHART_MANUAL_OPERATION",
            "FLOW_CHART_MERGE",
            "FLOW_CHART_MULTIDOCUMENT",
            "FLOW_CHART_OFFLINE_STORAGE",
            "FLOW_CHART_OFFPAGE_CONNECTOR",
            "FLOW_CHART_ONLINE_STORAGE",
            "FLOW_CHART_OR",
            "FLOW_CHART_PREDEFINED_PROCESS",
            "FLOW_CHART_PREPARATION",
            "FLOW_CHART_PROCESS",
            "FLOW_CHART_PUNCHED_CARD",
            "FLOW_CHART_PUNCHED_TAPE",
            "FLOW_CHART_SORT",
            "FLOW_CHART_SUMMING_JUNCTION",
            "FLOW_CHART_TERMINATOR",
            "ARROW_EAST",
            "ARROW_NORTH_EAST",
            "ARROW_NORTH",
            "SPEECH",
            "STARBURST",
            "TEARDROP",
            "ELLIPSE_RIBBON",
            "ELLIPSE_RIBBON_2",
            "CLOUD_CALLOUT",
            "CUSTOM",
          },
          enumDescriptions = {
            "The shape type that is not predefined.",
            "Text box shape.",
            "Rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'rect'.",
            "Round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'roundRect'",
            "Ellipse shape. Corresponds to ECMA-376 ST_ShapeType 'ellipse'",
            "Curved arc shape. Corresponds to ECMA-376 ST_ShapeType 'arc'",
            "Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType 'bentArrow'",
            "Bent up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'bentUpArrow'",
            "Bevel shape. Corresponds to ECMA-376 ST_ShapeType 'bevel'",
            "Block arc shape. Corresponds to ECMA-376 ST_ShapeType 'blockArc'",
            "Brace pair shape. Corresponds to ECMA-376 ST_ShapeType 'bracePair'",
            "Bracket pair shape. Corresponds to ECMA-376 ST_ShapeType 'bracketPair'",
            "Can shape. Corresponds to ECMA-376 ST_ShapeType 'can'",
            "Chevron shape. Corresponds to ECMA-376 ST_ShapeType 'chevron'",
            "Chord shape. Corresponds to ECMA-376 ST_ShapeType 'chord'",
            "Cloud shape. Corresponds to ECMA-376 ST_ShapeType 'cloud'",
            "Corner shape. Corresponds to ECMA-376 ST_ShapeType 'corner'",
            "Cube shape. Corresponds to ECMA-376 ST_ShapeType 'cube'",
            "Curved down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedDownArrow'",
            "Curved left arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedLeftArrow'",
            "Curved right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedRightArrow'",
            "Curved up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedUpArrow'",
            "Decagon shape. Corresponds to ECMA-376 ST_ShapeType 'decagon'",
            "Diagonal stripe shape. Corresponds to ECMA-376 ST_ShapeType 'diagStripe'",
            "Diamond shape. Corresponds to ECMA-376 ST_ShapeType 'diamond'",
            "Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType 'dodecagon'",
            "Donut shape. Corresponds to ECMA-376 ST_ShapeType 'donut'",
            "Double wave shape. Corresponds to ECMA-376 ST_ShapeType 'doubleWave'",
            "Down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'downArrow'",
            "Callout down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'downArrowCallout'",
            "Folded corner shape. Corresponds to ECMA-376 ST_ShapeType 'foldedCorner'",
            "Frame shape. Corresponds to ECMA-376 ST_ShapeType 'frame'",
            "Half frame shape. Corresponds to ECMA-376 ST_ShapeType 'halfFrame'",
            "Heart shape. Corresponds to ECMA-376 ST_ShapeType 'heart'",
            "Heptagon shape. Corresponds to ECMA-376 ST_ShapeType 'heptagon'",
            "Hexagon shape. Corresponds to ECMA-376 ST_ShapeType 'hexagon'",
            "Home plate shape. Corresponds to ECMA-376 ST_ShapeType 'homePlate'",
            "Horizontal scroll shape. Corresponds to ECMA-376 ST_ShapeType 'horizontalScroll'",
            "Irregular seal 1 shape. Corresponds to ECMA-376 ST_ShapeType 'irregularSeal1'",
            "Irregular seal 2 shape. Corresponds to ECMA-376 ST_ShapeType 'irregularSeal2'",
            "Left arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftArrow'",
            "Callout left arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftArrowCallout'",
            "Left brace shape. Corresponds to ECMA-376 ST_ShapeType 'leftBrace'",
            "Left bracket shape. Corresponds to ECMA-376 ST_ShapeType 'leftBracket'",
            "Left right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftRightArrow'",
            "Callout left right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftRightArrowCallout'",
            "Left right up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftRightUpArrow'",
            "Left up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftUpArrow'",
            "Lightning bolt shape. Corresponds to ECMA-376 ST_ShapeType 'lightningBolt'",
            "Divide math shape. Corresponds to ECMA-376 ST_ShapeType 'mathDivide'",
            "Equal math shape. Corresponds to ECMA-376 ST_ShapeType 'mathEqual'",
            "Minus math shape. Corresponds to ECMA-376 ST_ShapeType 'mathMinus'",
            "Multiply math shape. Corresponds to ECMA-376 ST_ShapeType 'mathMultiply'",
            "Not equal math shape. Corresponds to ECMA-376 ST_ShapeType 'mathNotEqual'",
            "Plus math shape. Corresponds to ECMA-376 ST_ShapeType 'mathPlus'",
            "Moon shape. Corresponds to ECMA-376 ST_ShapeType 'moon'",
            "No smoking shape. Corresponds to ECMA-376 ST_ShapeType 'noSmoking'",
            "Notched right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'notchedRightArrow'",
            "Octagon shape. Corresponds to ECMA-376 ST_ShapeType 'octagon'",
            "Parallelogram shape. Corresponds to ECMA-376 ST_ShapeType 'parallelogram'",
            "Pentagon shape. Corresponds to ECMA-376 ST_ShapeType 'pentagon'",
            "Pie shape. Corresponds to ECMA-376 ST_ShapeType 'pie'",
            "Plaque shape. Corresponds to ECMA-376 ST_ShapeType 'plaque'",
            "Plus shape. Corresponds to ECMA-376 ST_ShapeType 'plus'",
            "Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType 'quadArrow'",
            "Callout quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType 'quadArrowCallout'",
            "Ribbon shape. Corresponds to ECMA-376 ST_ShapeType 'ribbon'",
            "Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType 'ribbon2'",
            "Right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'rightArrow'",
            "Callout right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'rightArrowCallout'",
            "Right brace shape. Corresponds to ECMA-376 ST_ShapeType 'rightBrace'",
            "Right bracket shape. Corresponds to ECMA-376 ST_ShapeType 'rightBracket'",
            "One round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'round1Rect'",
            "Two diagonal round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'round2DiagRect'",
            "Two same-side round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'round2SameRect'",
            "Right triangle shape. Corresponds to ECMA-376 ST_ShapeType 'rtTriangle'",
            "Smiley face shape. Corresponds to ECMA-376 ST_ShapeType 'smileyFace'",
            "One snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snip1Rect'",
            "Two diagonal snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snip2DiagRect'",
            "Two same-side snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snip2SameRect'",
            "One snip one round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snipRoundRect'",
            "Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star10'",
            "Twelve pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star12'",
            "Sixteen pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star16'",
            "Twenty four pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star24'",
            "Thirty two pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star32'",
            "Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star4'",
            "Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star5'",
            "Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star6'",
            "Seven pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star7'",
            "Eight pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star8'",
            "Striped right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'stripedRightArrow'",
            "Sun shape. Corresponds to ECMA-376 ST_ShapeType 'sun'",
            "Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType 'trapezoid'",
            "Triangle shape. Corresponds to ECMA-376 ST_ShapeType 'triangle'",
            "Up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'upArrow'",
            "Callout up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'upArrowCallout'",
            "Up down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'upDownArrow'",
            "U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType 'uturnArrow'",
            "Vertical scroll shape. Corresponds to ECMA-376 ST_ShapeType 'verticalScroll'",
            "Wave shape. Corresponds to ECMA-376 ST_ShapeType 'wave'",
            "Callout wedge ellipse shape. Corresponds to ECMA-376 ST_ShapeType 'wedgeEllipseCallout'",
            "Callout wedge rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'wedgeRectCallout'",
            "Callout wedge round rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'wedgeRoundRectCallout'",
            "Alternate process flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartAlternateProcess'",
            "Collate flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartCollate'",
            "Connector flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartConnector'",
            "Decision flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDecision'",
            "Delay flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDelay'",
            "Display flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDisplay'",
            "Document flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDocument'",
            "Extract flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartExtract'",
            "Input output flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartInputOutput'",
            "Internal storage flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartInternalStorage'",
            "Magnetic disk flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMagneticDisk'",
            "Magnetic drum flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMagneticDrum'",
            "Magnetic tape flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMagneticTape'",
            "Manual input flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartManualInput'",
            "Manual operation flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartManualOperation'",
            "Merge flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMerge'",
            "Multi-document flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMultidocument'",
            "Offline storage flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOfflineStorage'",
            "Off-page connector flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOffpageConnector'",
            "Online storage flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOnlineStorage'",
            "Or flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOr'",
            "Predefined process flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPredefinedProcess'",
            "Preparation flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPreparation'",
            "Process flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartProcess'",
            "Punched card flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPunchedCard'",
            "Punched tape flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPunchedTape'",
            "Sort flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartSort'",
            "Summing junction flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartSummingJunction'",
            "Terminator flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartTerminator'",
            "East arrow shape.",
            "Northeast arrow shape.",
            "North arrow shape.",
            "Speech shape.",
            "Star burst shape.",
            "Teardrop shape. Corresponds to ECMA-376 ST_ShapeType 'teardrop'",
            "Ellipse ribbon shape. Corresponds to ECMA-376 ST_ShapeType 'ellipseRibbon'",
            "Ellipse ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType 'ellipseRibbon2'",
            "Callout cloud shape. Corresponds to ECMA-376 ST_ShapeType 'cloudCallout'",
            "Custom shape.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreateShapeResponse = {
      description = "The result of creating a shape.",
      id = "CreateShapeResponse",
      properties = {
        objectId = {
          description = "The object ID of the created shape.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateSheetsChartRequest = {
      description = "Creates an embedded Google Sheets chart. NOTE: Chart creation requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, drive.file, or drive OAuth scopes.",
      id = "CreateSheetsChartRequest",
      properties = {
        chartId = {
          description = "The ID of the specific chart in the Google Sheets spreadsheet.",
          format = "int32",
          type = "integer",
        },
        elementProperties = {
          ["$ref"] = "PageElementProperties",
          description = "The element properties for the chart. When the aspect ratio of the provided size does not match the chart aspect ratio, the chart is scaled and centered with respect to the size in order to maintain aspect ratio. The provided transform is applied after this operation.",
        },
        linkingMode = {
          description = "The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.",
          enum = {
            "NOT_LINKED_IMAGE",
            "LINKED",
          },
          enumDescriptions = {
            "The chart is not associated with the source spreadsheet and cannot be updated. A chart that is not linked will be inserted as an image.",
            "Linking the chart allows it to be updated, and other collaborators will see a link to the spreadsheet.",
          },
          type = "string",
        },
        objectId = {
          description = "A user-supplied object ID. If specified, the ID must be unique among all pages and page elements in the presentation. The ID should start with a word character [a-zA-Z0-9_] and then followed by any number of the following characters [a-zA-Z0-9_-:]. The length of the ID should not be less than 5 or greater than 50. If empty, a unique identifier will be generated.",
          type = "string",
        },
        spreadsheetId = {
          description = "The ID of the Google Sheets spreadsheet that contains the chart. You might need to add a resource key to the HTTP header for a subset of old files. For more information, see [Access link-shared files using resource keys](https://developers.google.com/drive/api/v3/resource-keys).",
          type = "string",
        },
      },
      type = "object",
    },
    CreateSheetsChartResponse = {
      description = "The result of creating an embedded Google Sheets chart.",
      id = "CreateSheetsChartResponse",
      properties = {
        objectId = {
          description = "The object ID of the created chart.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateSlideRequest = {
      description = "Creates a slide.",
      id = "CreateSlideRequest",
      properties = {
        insertionIndex = {
          description = "The optional zero-based index indicating where to insert the slides. If you don't specify an index, the slide is created at the end.",
          format = "int32",
          type = "integer",
        },
        objectId = {
          description = "A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The ID length must be between 5 and 50 characters, inclusive. If you don't specify an ID, a unique one is generated.",
          type = "string",
        },
        placeholderIdMappings = {
          description = "An optional list of object ID mappings from the placeholder(s) on the layout to the placeholders that are created on the slide from the specified layout. Can only be used when `slide_layout_reference` is specified.",
          items = {
            ["$ref"] = "LayoutPlaceholderIdMapping",
          },
          type = "array",
        },
        slideLayoutReference = {
          ["$ref"] = "LayoutReference",
          description = "Layout reference of the slide to be inserted, based on the *current master*, which is one of the following: - The master of the previous slide index. - The master of the first slide, if the insertion_index is zero. - The first master in the presentation, if there are no slides. If the LayoutReference is not found in the current master, a 400 bad request error is returned. If you don't specify a layout reference, the slide uses the predefined `BLANK` layout.",
        },
      },
      type = "object",
    },
    CreateSlideResponse = {
      description = "The result of creating a slide.",
      id = "CreateSlideResponse",
      properties = {
        objectId = {
          description = "The object ID of the created slide.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateTableRequest = {
      description = "Creates a new table.",
      id = "CreateTableRequest",
      properties = {
        columns = {
          description = "Number of columns in the table.",
          format = "int32",
          type = "integer",
        },
        elementProperties = {
          ["$ref"] = "PageElementProperties",
          description = "The element properties for the table. The table will be created at the provided size, subject to a minimum size. If no size is provided, the table will be automatically sized. Table transforms must have a scale of 1 and no shear components. If no transform is provided, the table will be centered on the page.",
        },
        objectId = {
          description = "A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater than 50. If you don't specify an ID, a unique one is generated.",
          type = "string",
        },
        rows = {
          description = "Number of rows in the table.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CreateTableResponse = {
      description = "The result of creating a table.",
      id = "CreateTableResponse",
      properties = {
        objectId = {
          description = "The object ID of the created table.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateVideoRequest = {
      description = "Creates a video. NOTE: Creating a video from Google Drive requires that the requesting app have at least one of the drive, drive.readonly, or drive.file OAuth scopes.",
      id = "CreateVideoRequest",
      properties = {
        elementProperties = {
          ["$ref"] = "PageElementProperties",
          description = "The element properties for the video. The PageElementProperties.size property is optional. If you don't specify a size, a default size is chosen by the server. The PageElementProperties.transform property is optional. The transform must not have shear components. If you don't specify a transform, the video will be placed at the top left corner of the page.",
        },
        id = {
          description = "The video source's unique identifier for this video. e.g. For YouTube video https://www.youtube.com/watch?v=7U3axjORYZ0, the ID is 7U3axjORYZ0. For a Google Drive video https://drive.google.com/file/d/1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q the ID is 1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q. To access a Google Drive video file, you might need to add a resource key to the HTTP header for a subset of old files. For more information, see [Access link-shared files using resource keys](https://developers.google.com/drive/api/v3/resource-keys).",
          type = "string",
        },
        objectId = {
          description = "A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater than 50. If you don't specify an ID, a unique one is generated.",
          type = "string",
        },
        source = {
          description = "The video source.",
          enum = {
            "SOURCE_UNSPECIFIED",
            "YOUTUBE",
            "DRIVE",
          },
          enumDescriptions = {
            "The video source is unspecified.",
            "The video source is YouTube.",
            "The video source is Google Drive.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreateVideoResponse = {
      description = "The result of creating a video.",
      id = "CreateVideoResponse",
      properties = {
        objectId = {
          description = "The object ID of the created video.",
          type = "string",
        },
      },
      type = "object",
    },
    CropProperties = {
      description = "The crop properties of an object enclosed in a container. For example, an Image. The crop properties is represented by the offsets of four edges which define a crop rectangle. The offsets are measured in percentage from the corresponding edges of the object's original bounding rectangle towards inside, relative to the object's original dimensions. - If the offset is in the interval (0, 1), the corresponding edge of crop rectangle is positioned inside of the object's original bounding rectangle. - If the offset is negative or greater than 1, the corresponding edge of crop rectangle is positioned outside of the object's original bounding rectangle. - If the left edge of the crop rectangle is on the right side of its right edge, the object will be flipped horizontally. - If the top edge of the crop rectangle is below its bottom edge, the object will be flipped vertically. - If all offsets and rotation angle is 0, the object is not cropped. After cropping, the content in the crop rectangle will be stretched to fit its container.",
      id = "CropProperties",
      properties = {
        angle = {
          description = "The rotation angle of the crop window around its center, in radians. Rotation angle is applied after the offset.",
          format = "float",
          type = "number",
        },
        bottomOffset = {
          description = "The offset specifies the bottom edge of the crop rectangle that is located above the original bounding rectangle bottom edge, relative to the object's original height.",
          format = "float",
          type = "number",
        },
        leftOffset = {
          description = "The offset specifies the left edge of the crop rectangle that is located to the right of the original bounding rectangle left edge, relative to the object's original width.",
          format = "float",
          type = "number",
        },
        rightOffset = {
          description = "The offset specifies the right edge of the crop rectangle that is located to the left of the original bounding rectangle right edge, relative to the object's original width.",
          format = "float",
          type = "number",
        },
        topOffset = {
          description = "The offset specifies the top edge of the crop rectangle that is located below the original bounding rectangle top edge, relative to the object's original height.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    DeleteObjectRequest = {
      description = "Deletes an object, either pages or page elements, from the presentation.",
      id = "DeleteObjectRequest",
      properties = {
        objectId = {
          description = "The object ID of the page or page element to delete. If after a delete operation a group contains only 1 or no page elements, the group is also deleted. If a placeholder is deleted on a layout, any empty inheriting placeholders are also deleted.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteParagraphBulletsRequest = {
      description = "Deletes bullets from all of the paragraphs that overlap with the given text index range. The nesting level of each paragraph will be visually preserved by adding indent to the start of the corresponding paragraph.",
      id = "DeleteParagraphBulletsRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The optional table cell location if the text to be modified is in a table cell. If present, the object_id must refer to a table.",
        },
        objectId = {
          description = "The object ID of the shape or table containing the text to delete bullets from.",
          type = "string",
        },
        textRange = {
          ["$ref"] = "Range",
          description = "The range of text to delete bullets from, based on TextElement indexes.",
        },
      },
      type = "object",
    },
    DeleteTableColumnRequest = {
      description = "Deletes a column from a table.",
      id = "DeleteTableColumnRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The reference table cell location from which a column will be deleted. The column this cell spans will be deleted. If this is a merged cell, multiple columns will be deleted. If no columns remain in the table after this deletion, the whole table is deleted.",
        },
        tableObjectId = {
          description = "The table to delete columns from.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteTableRowRequest = {
      description = "Deletes a row from a table.",
      id = "DeleteTableRowRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The reference table cell location from which a row will be deleted. The row this cell spans will be deleted. If this is a merged cell, multiple rows will be deleted. If no rows remain in the table after this deletion, the whole table is deleted.",
        },
        tableObjectId = {
          description = "The table to delete rows from.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteTextRequest = {
      description = "Deletes text from a shape or a table cell.",
      id = "DeleteTextRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The optional table cell location if the text is to be deleted from a table cell. If present, the object_id must refer to a table.",
        },
        objectId = {
          description = "The object ID of the shape or table from which the text will be deleted.",
          type = "string",
        },
        textRange = {
          ["$ref"] = "Range",
          description = "The range of text to delete, based on TextElement indexes. There is always an implicit newline character at the end of a shape's or table cell's text that cannot be deleted. `Range.Type.ALL` will use the correct bounds, but care must be taken when specifying explicit bounds for range types `FROM_START_INDEX` and `FIXED_RANGE`. For example, if the text is \"ABC\", followed by an implicit newline, then the maximum value is 2 for `text_range.start_index` and 3 for `text_range.end_index`. Deleting text that crosses a paragraph boundary may result in changes to paragraph styles and lists as the two paragraphs are merged. Ranges that include only one code unit of a surrogate pair are expanded to include both code units.",
        },
      },
      type = "object",
    },
    Dimension = {
      description = "A magnitude in a single direction in the specified units.",
      id = "Dimension",
      properties = {
        magnitude = {
          description = "The magnitude.",
          format = "double",
          type = "number",
        },
        unit = {
          description = "The units for magnitude.",
          enum = {
            "UNIT_UNSPECIFIED",
            "EMU",
            "PT",
          },
          enumDescriptions = {
            "The units are unknown.",
            "An English Metric Unit (EMU) is defined as 1/360,000 of a centimeter and thus there are 914,400 EMUs per inch, and 12,700 EMUs per point.",
            "A point, 1/72 of an inch.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DuplicateObjectRequest = {
      description = "Duplicates a slide or page element. When duplicating a slide, the duplicate slide will be created immediately following the specified slide. When duplicating a page element, the duplicate will be placed on the same page at the same position as the original.",
      id = "DuplicateObjectRequest",
      properties = {
        objectId = {
          description = "The ID of the object to duplicate.",
          type = "string",
        },
        objectIds = {
          additionalProperties = {
            type = "string",
          },
          description = "The object being duplicated may contain other objects, for example when duplicating a slide or a group page element. This map defines how the IDs of duplicated objects are generated: the keys are the IDs of the original objects and its values are the IDs that will be assigned to the corresponding duplicate object. The ID of the source object's duplicate may be specified in this map as well, using the same value of the `object_id` field as a key and the newly desired ID as the value. All keys must correspond to existing IDs in the presentation. All values must be unique in the presentation and must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the new ID must not be less than 5 or greater than 50. If any IDs of source objects are omitted from the map, a new random ID will be assigned. If the map is empty or unset, all duplicate objects will receive a new random ID.",
          type = "object",
        },
      },
      type = "object",
    },
    DuplicateObjectResponse = {
      description = "The response of duplicating an object.",
      id = "DuplicateObjectResponse",
      properties = {
        objectId = {
          description = "The ID of the new duplicate object.",
          type = "string",
        },
      },
      type = "object",
    },
    Group = {
      description = "A PageElement kind representing a joined collection of PageElements.",
      id = "Group",
      properties = {
        children = {
          description = "The collection of elements in the group. The minimum size of a group is 2.",
          items = {
            ["$ref"] = "PageElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GroupObjectsRequest = {
      description = "Groups objects to create an object group. For example, groups PageElements to create a Group on the same page as all the children.",
      id = "GroupObjectsRequest",
      properties = {
        childrenObjectIds = {
          description = "The object IDs of the objects to group. Only page elements can be grouped. There should be at least two page elements on the same page that are not already in another group. Some page elements, such as videos, tables and placeholders cannot be grouped.",
          items = {
            type = "string",
          },
          type = "array",
        },
        groupObjectId = {
          description = "A user-supplied object ID for the group to be created. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater than 50. If you don't specify an ID, a unique one is generated.",
          type = "string",
        },
      },
      type = "object",
    },
    GroupObjectsResponse = {
      description = "The result of grouping objects.",
      id = "GroupObjectsResponse",
      properties = {
        objectId = {
          description = "The object ID of the created group.",
          type = "string",
        },
      },
      type = "object",
    },
    Image = {
      description = "A PageElement kind representing an image.",
      id = "Image",
      properties = {
        contentUrl = {
          description = "An URL to an image with a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the image as the original requester. Access to the image may be lost if the presentation's sharing settings change.",
          type = "string",
        },
        imageProperties = {
          ["$ref"] = "ImageProperties",
          description = "The properties of the image.",
        },
        placeholder = {
          ["$ref"] = "Placeholder",
          description = "Placeholders are page elements that inherit from corresponding placeholders on layouts and masters. If set, the image is a placeholder image and any inherited properties can be resolved by looking at the parent placeholder identified by the Placeholder.parent_object_id field.",
        },
        sourceUrl = {
          description = "The source URL is the URL used to insert the image. The source URL can be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    ImageProperties = {
      description = "The properties of the Image.",
      id = "ImageProperties",
      properties = {
        brightness = {
          description = "The brightness effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means no effect. This property is read-only.",
          format = "float",
          type = "number",
        },
        contrast = {
          description = "The contrast effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means no effect. This property is read-only.",
          format = "float",
          type = "number",
        },
        cropProperties = {
          ["$ref"] = "CropProperties",
          description = "The crop properties of the image. If not set, the image is not cropped. This property is read-only.",
        },
        link = {
          ["$ref"] = "Link",
          description = "The hyperlink destination of the image. If unset, there is no link.",
        },
        outline = {
          ["$ref"] = "Outline",
          description = "The outline of the image. If not set, the image has no outline.",
        },
        recolor = {
          ["$ref"] = "Recolor",
          description = "The recolor effect of the image. If not set, the image is not recolored. This property is read-only.",
        },
        shadow = {
          ["$ref"] = "Shadow",
          description = "The shadow of the image. If not set, the image has no shadow. This property is read-only.",
        },
        transparency = {
          description = "The transparency effect of the image. The value should be in the interval [0.0, 1.0], where 0 means no effect and 1 means completely transparent. This property is read-only.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    InsertTableColumnsRequest = {
      description = "Inserts columns into a table. Other columns in the table will be resized to fit the new column.",
      id = "InsertTableColumnsRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The reference table cell location from which columns will be inserted. A new column will be inserted to the left (or right) of the column where the reference cell is. If the reference cell is a merged cell, a new column will be inserted to the left (or right) of the merged cell.",
        },
        insertRight = {
          description = "Whether to insert new columns to the right of the reference cell location. - `True`: insert to the right. - `False`: insert to the left.",
          type = "boolean",
        },
        number = {
          description = "The number of columns to be inserted. Maximum 20 per request.",
          format = "int32",
          type = "integer",
        },
        tableObjectId = {
          description = "The table to insert columns into.",
          type = "string",
        },
      },
      type = "object",
    },
    InsertTableRowsRequest = {
      description = "Inserts rows into a table.",
      id = "InsertTableRowsRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The reference table cell location from which rows will be inserted. A new row will be inserted above (or below) the row where the reference cell is. If the reference cell is a merged cell, a new row will be inserted above (or below) the merged cell.",
        },
        insertBelow = {
          description = "Whether to insert new rows below the reference cell location. - `True`: insert below the cell. - `False`: insert above the cell.",
          type = "boolean",
        },
        number = {
          description = "The number of rows to be inserted. Maximum 20 per request.",
          format = "int32",
          type = "integer",
        },
        tableObjectId = {
          description = "The table to insert rows into.",
          type = "string",
        },
      },
      type = "object",
    },
    InsertTextRequest = {
      description = "Inserts text into a shape or a table cell.",
      id = "InsertTextRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The optional table cell location if the text is to be inserted into a table cell. If present, the object_id must refer to a table.",
        },
        insertionIndex = {
          description = "The index where the text will be inserted, in Unicode code units, based on TextElement indexes. The index is zero-based and is computed from the start of the string. The index may be adjusted to prevent insertions inside Unicode grapheme clusters. In these cases, the text will be inserted immediately after the grapheme cluster.",
          format = "int32",
          type = "integer",
        },
        objectId = {
          description = "The object ID of the shape or table where the text will be inserted.",
          type = "string",
        },
        text = {
          description = "The text to be inserted. Inserting a newline character will implicitly create a new ParagraphMarker at that index. The paragraph style of the new paragraph will be copied from the paragraph at the current insertion index, including lists and bullets. Text styles for inserted text will be determined automatically, generally preserving the styling of neighboring text. In most cases, the text will be added to the TextRun that exists at the insertion index. Some control characters (U+0000-U+0008, U+000C-U+001F) and characters from the Unicode Basic Multilingual Plane Private Use Area (U+E000-U+F8FF) will be stripped out of the inserted text.",
          type = "string",
        },
      },
      type = "object",
    },
    LayoutPlaceholderIdMapping = {
      description = "The user-specified ID mapping for a placeholder that will be created on a slide from a specified layout.",
      id = "LayoutPlaceholderIdMapping",
      properties = {
        layoutPlaceholder = {
          ["$ref"] = "Placeholder",
          description = "The placeholder on a layout that will be applied to a slide. Only type and index are needed. For example, a predefined `TITLE_AND_BODY` layout may usually have a TITLE placeholder with index 0 and a BODY placeholder with index 0.",
        },
        layoutPlaceholderObjectId = {
          description = "The object ID of the placeholder on a layout that will be applied to a slide.",
          type = "string",
        },
        objectId = {
          description = "A user-supplied object ID for the placeholder identified above that to be created onto a slide. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may include those as well as a hyphen or colon (matches regex `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater than 50. If you don't specify an ID, a unique one is generated.",
          type = "string",
        },
      },
      type = "object",
    },
    LayoutProperties = {
      description = "The properties of Page are only relevant for pages with page_type LAYOUT.",
      id = "LayoutProperties",
      properties = {
        displayName = {
          description = "The human-readable name of the layout.",
          type = "string",
        },
        masterObjectId = {
          description = "The object ID of the master that this layout is based on.",
          type = "string",
        },
        name = {
          description = "The name of the layout.",
          type = "string",
        },
      },
      type = "object",
    },
    LayoutReference = {
      description = "Slide layout reference. This may reference either: - A predefined layout - One of the layouts in the presentation.",
      id = "LayoutReference",
      properties = {
        layoutId = {
          description = "Layout ID: the object ID of one of the layouts in the presentation.",
          type = "string",
        },
        predefinedLayout = {
          description = "Predefined layout.",
          enum = {
            "PREDEFINED_LAYOUT_UNSPECIFIED",
            "BLANK",
            "CAPTION_ONLY",
            "TITLE",
            "TITLE_AND_BODY",
            "TITLE_AND_TWO_COLUMNS",
            "TITLE_ONLY",
            "SECTION_HEADER",
            "SECTION_TITLE_AND_DESCRIPTION",
            "ONE_COLUMN_TEXT",
            "MAIN_POINT",
            "BIG_NUMBER",
          },
          enumDescriptions = {
            "Unspecified layout.",
            "Blank layout, with no placeholders.",
            "Layout with a caption at the bottom.",
            "Layout with a title and a subtitle.",
            "Layout with a title and body.",
            "Layout with a title and two columns.",
            "Layout with only a title.",
            "Layout with a section title.",
            "Layout with a title and subtitle on one side and description on the other.",
            "Layout with one title and one body, arranged in a single column.",
            "Layout with a main point.",
            "Layout with a big number heading.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Line = {
      description = "A PageElement kind representing a non-connector line, straight connector, curved connector, or bent connector.",
      id = "Line",
      properties = {
        lineCategory = {
          description = "The category of the line. It matches the `category` specified in CreateLineRequest, and can be updated with UpdateLineCategoryRequest.",
          enum = {
            "LINE_CATEGORY_UNSPECIFIED",
            "STRAIGHT",
            "BENT",
            "CURVED",
          },
          enumDescriptions = {
            "Unspecified line category.",
            "Straight connectors, including straight connector 1.",
            "Bent connectors, including bent connector 2 to 5.",
            "Curved connectors, including curved connector 2 to 5.",
          },
          type = "string",
        },
        lineProperties = {
          ["$ref"] = "LineProperties",
          description = "The properties of the line.",
        },
        lineType = {
          description = "The type of the line.",
          enum = {
            "TYPE_UNSPECIFIED",
            "STRAIGHT_CONNECTOR_1",
            "BENT_CONNECTOR_2",
            "BENT_CONNECTOR_3",
            "BENT_CONNECTOR_4",
            "BENT_CONNECTOR_5",
            "CURVED_CONNECTOR_2",
            "CURVED_CONNECTOR_3",
            "CURVED_CONNECTOR_4",
            "CURVED_CONNECTOR_5",
            "STRAIGHT_LINE",
          },
          enumDescriptions = {
            "An unspecified line type.",
            "Straight connector 1 form. Corresponds to ECMA-376 ST_ShapeType 'straightConnector1'.",
            "Bent connector 2 form. Corresponds to ECMA-376 ST_ShapeType 'bentConnector2'.",
            "Bent connector 3 form. Corresponds to ECMA-376 ST_ShapeType 'bentConnector3'.",
            "Bent connector 4 form. Corresponds to ECMA-376 ST_ShapeType 'bentConnector4'.",
            "Bent connector 5 form. Corresponds to ECMA-376 ST_ShapeType 'bentConnector5'.",
            "Curved connector 2 form. Corresponds to ECMA-376 ST_ShapeType 'curvedConnector2'.",
            "Curved connector 3 form. Corresponds to ECMA-376 ST_ShapeType 'curvedConnector3'.",
            "Curved connector 4 form. Corresponds to ECMA-376 ST_ShapeType 'curvedConnector4'.",
            "Curved connector 5 form. Corresponds to ECMA-376 ST_ShapeType 'curvedConnector5'.",
            "Straight line. Corresponds to ECMA-376 ST_ShapeType 'line'. This line type is not a connector.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LineConnection = {
      description = "The properties for one end of a Line connection.",
      id = "LineConnection",
      properties = {
        connectedObjectId = {
          description = "The object ID of the connected page element. Some page elements, such as groups, tables, and lines do not have connection sites and therefore cannot be connected to a connector line.",
          type = "string",
        },
        connectionSiteIndex = {
          description = "The index of the connection site on the connected page element. In most cases, it corresponds to the predefined connection site index from the ECMA-376 standard. More information on those connection sites can be found in the description of the \"cnx\" attribute in section 20.1.9.9 and Annex H. \"Predefined DrawingML Shape and Text Geometries\" of \"Office Open XML File Formats-Fundamentals and Markup Language Reference\", part 1 of [ECMA-376 5th edition] (http://www.ecma-international.org/publications/standards/Ecma-376.htm). The position of each connection site can also be viewed from Slides editor.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    LineFill = {
      description = "The fill of the line.",
      id = "LineFill",
      properties = {
        solidFill = {
          ["$ref"] = "SolidFill",
          description = "Solid color fill.",
        },
      },
      type = "object",
    },
    LineProperties = {
      description = "The properties of the Line. When unset, these fields default to values that match the appearance of new lines created in the Slides editor.",
      id = "LineProperties",
      properties = {
        dashStyle = {
          description = "The dash style of the line.",
          enum = {
            "DASH_STYLE_UNSPECIFIED",
            "SOLID",
            "DOT",
            "DASH",
            "DASH_DOT",
            "LONG_DASH",
            "LONG_DASH_DOT",
          },
          enumDescriptions = {
            "Unspecified dash style.",
            "Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'solid'. This is the default dash style.",
            "Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dot'.",
            "Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dash'.",
            "Alternating dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dashDot'.",
            "Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal value 'lgDash'.",
            "Alternating large dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value 'lgDashDot'.",
          },
          type = "string",
        },
        endArrow = {
          description = "The style of the arrow at the end of the line.",
          enum = {
            "ARROW_STYLE_UNSPECIFIED",
            "NONE",
            "STEALTH_ARROW",
            "FILL_ARROW",
            "FILL_CIRCLE",
            "FILL_SQUARE",
            "FILL_DIAMOND",
            "OPEN_ARROW",
            "OPEN_CIRCLE",
            "OPEN_SQUARE",
            "OPEN_DIAMOND",
          },
          enumDescriptions = {
            "An unspecified arrow style.",
            "No arrow.",
            "Arrow with notched back. Corresponds to ECMA-376 ST_LineEndType value 'stealth'.",
            "Filled arrow. Corresponds to ECMA-376 ST_LineEndType value 'triangle'.",
            "Filled circle. Corresponds to ECMA-376 ST_LineEndType value 'oval'.",
            "Filled square.",
            "Filled diamond. Corresponds to ECMA-376 ST_LineEndType value 'diamond'.",
            "Hollow arrow.",
            "Hollow circle.",
            "Hollow square.",
            "Hollow diamond.",
          },
          type = "string",
        },
        endConnection = {
          ["$ref"] = "LineConnection",
          description = "The connection at the end of the line. If unset, there is no connection. Only lines with a Type indicating it is a \"connector\" can have an `end_connection`.",
        },
        lineFill = {
          ["$ref"] = "LineFill",
          description = "The fill of the line. The default line fill matches the defaults for new lines created in the Slides editor.",
        },
        link = {
          ["$ref"] = "Link",
          description = "The hyperlink destination of the line. If unset, there is no link.",
        },
        startArrow = {
          description = "The style of the arrow at the beginning of the line.",
          enum = {
            "ARROW_STYLE_UNSPECIFIED",
            "NONE",
            "STEALTH_ARROW",
            "FILL_ARROW",
            "FILL_CIRCLE",
            "FILL_SQUARE",
            "FILL_DIAMOND",
            "OPEN_ARROW",
            "OPEN_CIRCLE",
            "OPEN_SQUARE",
            "OPEN_DIAMOND",
          },
          enumDescriptions = {
            "An unspecified arrow style.",
            "No arrow.",
            "Arrow with notched back. Corresponds to ECMA-376 ST_LineEndType value 'stealth'.",
            "Filled arrow. Corresponds to ECMA-376 ST_LineEndType value 'triangle'.",
            "Filled circle. Corresponds to ECMA-376 ST_LineEndType value 'oval'.",
            "Filled square.",
            "Filled diamond. Corresponds to ECMA-376 ST_LineEndType value 'diamond'.",
            "Hollow arrow.",
            "Hollow circle.",
            "Hollow square.",
            "Hollow diamond.",
          },
          type = "string",
        },
        startConnection = {
          ["$ref"] = "LineConnection",
          description = "The connection at the beginning of the line. If unset, there is no connection. Only lines with a Type indicating it is a \"connector\" can have a `start_connection`.",
        },
        weight = {
          ["$ref"] = "Dimension",
          description = "The thickness of the line.",
        },
      },
      type = "object",
    },
    Link = {
      description = "A hypertext link.",
      id = "Link",
      properties = {
        pageObjectId = {
          description = "If set, indicates this is a link to the specific page in this presentation with this ID. A page with this ID may not exist.",
          type = "string",
        },
        relativeLink = {
          description = "If set, indicates this is a link to a slide in this presentation, addressed by its position.",
          enum = {
            "RELATIVE_SLIDE_LINK_UNSPECIFIED",
            "NEXT_SLIDE",
            "PREVIOUS_SLIDE",
            "FIRST_SLIDE",
            "LAST_SLIDE",
          },
          enumDescriptions = {
            "An unspecified relative slide link.",
            "A link to the next slide.",
            "A link to the previous slide.",
            "A link to the first slide in the presentation.",
            "A link to the last slide in the presentation.",
          },
          type = "string",
        },
        slideIndex = {
          description = "If set, indicates this is a link to the slide at this zero-based index in the presentation. There may not be a slide at this index.",
          format = "int32",
          type = "integer",
        },
        url = {
          description = "If set, indicates this is a link to the external web page at this URL.",
          type = "string",
        },
      },
      type = "object",
    },
    List = {
      description = "A List describes the look and feel of bullets belonging to paragraphs associated with a list. A paragraph that is part of a list has an implicit reference to that list's ID.",
      id = "List",
      properties = {
        listId = {
          description = "The ID of the list.",
          type = "string",
        },
        nestingLevel = {
          additionalProperties = {
            ["$ref"] = "NestingLevel",
          },
          description = "A map of nesting levels to the properties of bullets at the associated level. A list has at most nine levels of nesting, so the possible values for the keys of this map are 0 through 8, inclusive.",
          type = "object",
        },
      },
      type = "object",
    },
    MasterProperties = {
      description = "The properties of Page that are only relevant for pages with page_type MASTER.",
      id = "MasterProperties",
      properties = {
        displayName = {
          description = "The human-readable name of the master.",
          type = "string",
        },
      },
      type = "object",
    },
    MergeTableCellsRequest = {
      description = "Merges cells in a Table.",
      id = "MergeTableCellsRequest",
      properties = {
        objectId = {
          description = "The object ID of the table.",
          type = "string",
        },
        tableRange = {
          ["$ref"] = "TableRange",
          description = "The table range specifying which cells of the table to merge. Any text in the cells being merged will be concatenated and stored in the upper-left (\"head\") cell of the range. If the range is non-rectangular (which can occur in some cases where the range covers cells that are already merged), a 400 bad request error is returned.",
        },
      },
      type = "object",
    },
    NestingLevel = {
      description = "Contains properties describing the look and feel of a list bullet at a given level of nesting.",
      id = "NestingLevel",
      properties = {
        bulletStyle = {
          ["$ref"] = "TextStyle",
          description = "The style of a bullet at this level of nesting.",
        },
      },
      type = "object",
    },
    NotesProperties = {
      description = "The properties of Page that are only relevant for pages with page_type NOTES.",
      id = "NotesProperties",
      properties = {
        speakerNotesObjectId = {
          description = "The object ID of the shape on this notes page that contains the speaker notes for the corresponding slide. The actual shape may not always exist on the notes page. Inserting text using this object ID will automatically create the shape. In this case, the actual shape may have different object ID. The `GetPresentation` or `GetPage` action will always return the latest object ID.",
          type = "string",
        },
      },
      type = "object",
    },
    OpaqueColor = {
      description = "A themeable solid color value.",
      id = "OpaqueColor",
      properties = {
        rgbColor = {
          ["$ref"] = "RgbColor",
          description = "An opaque RGB color.",
        },
        themeColor = {
          description = "An opaque theme color.",
          enum = {
            "THEME_COLOR_TYPE_UNSPECIFIED",
            "DARK1",
            "LIGHT1",
            "DARK2",
            "LIGHT2",
            "ACCENT1",
            "ACCENT2",
            "ACCENT3",
            "ACCENT4",
            "ACCENT5",
            "ACCENT6",
            "HYPERLINK",
            "FOLLOWED_HYPERLINK",
            "TEXT1",
            "BACKGROUND1",
            "TEXT2",
            "BACKGROUND2",
          },
          enumDescriptions = {
            "Unspecified theme color. This value should not be used.",
            "Represents the first dark color.",
            "Represents the first light color.",
            "Represents the second dark color.",
            "Represents the second light color.",
            "Represents the first accent color.",
            "Represents the second accent color.",
            "Represents the third accent color.",
            "Represents the fourth accent color.",
            "Represents the fifth accent color.",
            "Represents the sixth accent color.",
            "Represents the color to use for hyperlinks.",
            "Represents the color to use for visited hyperlinks.",
            "Represents the first text color.",
            "Represents the first background color.",
            "Represents the second text color.",
            "Represents the second background color.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OptionalColor = {
      description = "A color that can either be fully opaque or fully transparent.",
      id = "OptionalColor",
      properties = {
        opaqueColor = {
          ["$ref"] = "OpaqueColor",
          description = "If set, this will be used as an opaque color. If unset, this represents a transparent color.",
        },
      },
      type = "object",
    },
    Outline = {
      description = "The outline of a PageElement. If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.",
      id = "Outline",
      properties = {
        dashStyle = {
          description = "The dash style of the outline.",
          enum = {
            "DASH_STYLE_UNSPECIFIED",
            "SOLID",
            "DOT",
            "DASH",
            "DASH_DOT",
            "LONG_DASH",
            "LONG_DASH_DOT",
          },
          enumDescriptions = {
            "Unspecified dash style.",
            "Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'solid'. This is the default dash style.",
            "Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dot'.",
            "Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dash'.",
            "Alternating dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dashDot'.",
            "Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal value 'lgDash'.",
            "Alternating large dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value 'lgDashDot'.",
          },
          type = "string",
        },
        outlineFill = {
          ["$ref"] = "OutlineFill",
          description = "The fill of the outline.",
        },
        propertyState = {
          description = "The outline property state. Updating the outline on a page element will implicitly update this field to `RENDERED`, unless another value is specified in the same request. To have no outline on a page element, set this field to `NOT_RENDERED`. In this case, any other outline fields set in the same request will be ignored.",
          enum = {
            "RENDERED",
            "NOT_RENDERED",
            "INHERIT",
          },
          enumDescriptions = {
            "If a property's state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.",
            "If a property's state is NOT_RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property_state to NOT_RENDERED.",
            "If a property's state is INHERIT, then the property state uses the value of corresponding `property_state` field on the parent shape. Elements that do not inherit will never have an INHERIT property state.",
          },
          type = "string",
        },
        weight = {
          ["$ref"] = "Dimension",
          description = "The thickness of the outline.",
        },
      },
      type = "object",
    },
    OutlineFill = {
      description = "The fill of the outline.",
      id = "OutlineFill",
      properties = {
        solidFill = {
          ["$ref"] = "SolidFill",
          description = "Solid color fill.",
        },
      },
      type = "object",
    },
    Page = {
      description = "A page in a presentation.",
      id = "Page",
      properties = {
        layoutProperties = {
          ["$ref"] = "LayoutProperties",
          description = "Layout specific properties. Only set if page_type = LAYOUT.",
        },
        masterProperties = {
          ["$ref"] = "MasterProperties",
          description = "Master specific properties. Only set if page_type = MASTER.",
        },
        notesProperties = {
          ["$ref"] = "NotesProperties",
          description = "Notes specific properties. Only set if page_type = NOTES.",
        },
        objectId = {
          description = "The object ID for this page. Object IDs used by Page and PageElement share the same namespace.",
          type = "string",
        },
        pageElements = {
          description = "The page elements rendered on the page.",
          items = {
            ["$ref"] = "PageElement",
          },
          type = "array",
        },
        pageProperties = {
          ["$ref"] = "PageProperties",
          description = "The properties of the page.",
        },
        pageType = {
          description = "The type of the page.",
          enum = {
            "SLIDE",
            "MASTER",
            "LAYOUT",
            "NOTES",
            "NOTES_MASTER",
          },
          enumDescriptions = {
            "A slide page.",
            "A master slide page.",
            "A layout page.",
            "A notes page.",
            "A notes master page.",
          },
          type = "string",
        },
        revisionId = {
          description = "Output only. The revision ID of the presentation. Can be used in update requests to assert the presentation revision hasn't changed since the last read operation. Only populated if the user has edit access to the presentation. The revision ID is not a sequential number but an opaque string. The format of the revision ID might change over time. A returned revision ID is only guaranteed to be valid for 24 hours after it has been returned and cannot be shared across users. If the revision ID is unchanged between calls, then the presentation has not changed. Conversely, a changed ID (for the same presentation and user) usually means the presentation has been updated. However, a changed ID can also be due to internal factors such as ID format changes.",
          type = "string",
        },
        slideProperties = {
          ["$ref"] = "SlideProperties",
          description = "Slide specific properties. Only set if page_type = SLIDE.",
        },
      },
      type = "object",
    },
    PageBackgroundFill = {
      description = "The page background fill.",
      id = "PageBackgroundFill",
      properties = {
        propertyState = {
          description = "The background fill property state. Updating the fill on a page will implicitly update this field to `RENDERED`, unless another value is specified in the same request. To have no fill on a page, set this field to `NOT_RENDERED`. In this case, any other fill fields set in the same request will be ignored.",
          enum = {
            "RENDERED",
            "NOT_RENDERED",
            "INHERIT",
          },
          enumDescriptions = {
            "If a property's state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.",
            "If a property's state is NOT_RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property_state to NOT_RENDERED.",
            "If a property's state is INHERIT, then the property state uses the value of corresponding `property_state` field on the parent shape. Elements that do not inherit will never have an INHERIT property state.",
          },
          type = "string",
        },
        solidFill = {
          ["$ref"] = "SolidFill",
          description = "Solid color fill.",
        },
        stretchedPictureFill = {
          ["$ref"] = "StretchedPictureFill",
          description = "Stretched picture fill.",
        },
      },
      type = "object",
    },
    PageElement = {
      description = "A visual element rendered on a page.",
      id = "PageElement",
      properties = {
        description = {
          description = "The description of the page element. Combined with title to display alt text. The field is not supported for Group elements.",
          type = "string",
        },
        elementGroup = {
          ["$ref"] = "Group",
          description = "A collection of page elements joined as a single unit.",
        },
        image = {
          ["$ref"] = "Image",
          description = "An image page element.",
        },
        line = {
          ["$ref"] = "Line",
          description = "A line page element.",
        },
        objectId = {
          description = "The object ID for this page element. Object IDs used by google.apps.slides.v1.Page and google.apps.slides.v1.PageElement share the same namespace.",
          type = "string",
        },
        shape = {
          ["$ref"] = "Shape",
          description = "A generic shape.",
        },
        sheetsChart = {
          ["$ref"] = "SheetsChart",
          description = "A linked chart embedded from Google Sheets. Unlinked charts are represented as images.",
        },
        size = {
          ["$ref"] = "Size",
          description = "The size of the page element.",
        },
        table = {
          ["$ref"] = "Table",
          description = "A table page element.",
        },
        title = {
          description = "The title of the page element. Combined with description to display alt text. The field is not supported for Group elements.",
          type = "string",
        },
        transform = {
          ["$ref"] = "AffineTransform",
          description = "The transform of the page element. The visual appearance of the page element is determined by its absolute transform. To compute the absolute transform, preconcatenate a page element's transform with the transforms of all of its parent groups. If the page element is not in a group, its absolute transform is the same as the value in this field. The initial transform for the newly created Group is always the identity transform.",
        },
        video = {
          ["$ref"] = "Video",
          description = "A video page element.",
        },
        wordArt = {
          ["$ref"] = "WordArt",
          description = "A word art page element.",
        },
      },
      type = "object",
    },
    PageElementProperties = {
      description = "Common properties for a page element. Note: When you initially create a PageElement, the API may modify the values of both `size` and `transform`, but the visual size will be unchanged.",
      id = "PageElementProperties",
      properties = {
        pageObjectId = {
          description = "The object ID of the page where the element is located.",
          type = "string",
        },
        size = {
          ["$ref"] = "Size",
          description = "The size of the element.",
        },
        transform = {
          ["$ref"] = "AffineTransform",
          description = "The transform for the element.",
        },
      },
      type = "object",
    },
    PageProperties = {
      description = "The properties of the Page. The page will inherit properties from the parent page. Depending on the page type the hierarchy is defined in either SlideProperties or LayoutProperties.",
      id = "PageProperties",
      properties = {
        colorScheme = {
          ["$ref"] = "ColorScheme",
          description = "The color scheme of the page. If unset, the color scheme is inherited from a parent page. If the page has no parent, the color scheme uses a default Slides color scheme, matching the defaults in the Slides editor. Only the concrete colors of the first 12 ThemeColorTypes are editable. In addition, only the color scheme on `Master` pages can be updated. To update the field, a color scheme containing mappings from all the first 12 ThemeColorTypes to their concrete colors must be provided. Colors for the remaining ThemeColorTypes will be ignored.",
        },
        pageBackgroundFill = {
          ["$ref"] = "PageBackgroundFill",
          description = "The background fill of the page. If unset, the background fill is inherited from a parent page if it exists. If the page has no parent, then the background fill defaults to the corresponding fill in the Slides editor.",
        },
      },
      type = "object",
    },
    ParagraphMarker = {
      description = "A TextElement kind that represents the beginning of a new paragraph.",
      id = "ParagraphMarker",
      properties = {
        bullet = {
          ["$ref"] = "Bullet",
          description = "The bullet for this paragraph. If not present, the paragraph does not belong to a list.",
        },
        style = {
          ["$ref"] = "ParagraphStyle",
          description = "The paragraph's style",
        },
      },
      type = "object",
    },
    ParagraphStyle = {
      description = "Styles that apply to a whole paragraph. If this text is contained in a shape with a parent placeholder, then these paragraph styles may be inherited from the parent. Which paragraph styles are inherited depend on the nesting level of lists: * A paragraph not in a list will inherit its paragraph style from the paragraph at the 0 nesting level of the list inside the parent placeholder. * A paragraph in a list will inherit its paragraph style from the paragraph at its corresponding nesting level of the list inside the parent placeholder. Inherited paragraph styles are represented as unset fields in this message.",
      id = "ParagraphStyle",
      properties = {
        alignment = {
          description = "The text alignment for this paragraph.",
          enum = {
            "ALIGNMENT_UNSPECIFIED",
            "START",
            "CENTER",
            "END",
            "JUSTIFIED",
          },
          enumDescriptions = {
            "The paragraph alignment is inherited from the parent.",
            "The paragraph is aligned to the start of the line. Left-aligned for LTR text, right-aligned otherwise.",
            "The paragraph is centered.",
            "The paragraph is aligned to the end of the line. Right-aligned for LTR text, left-aligned otherwise.",
            "The paragraph is justified.",
          },
          type = "string",
        },
        direction = {
          description = "The text direction of this paragraph. If unset, the value defaults to LEFT_TO_RIGHT since text direction is not inherited.",
          enum = {
            "TEXT_DIRECTION_UNSPECIFIED",
            "LEFT_TO_RIGHT",
            "RIGHT_TO_LEFT",
          },
          enumDescriptions = {
            "The text direction is inherited from the parent.",
            "The text goes from left to right.",
            "The text goes from right to left.",
          },
          type = "string",
        },
        indentEnd = {
          ["$ref"] = "Dimension",
          description = "The amount indentation for the paragraph on the side that corresponds to the end of the text, based on the current text direction. If unset, the value is inherited from the parent.",
        },
        indentFirstLine = {
          ["$ref"] = "Dimension",
          description = "The amount of indentation for the start of the first line of the paragraph. If unset, the value is inherited from the parent.",
        },
        indentStart = {
          ["$ref"] = "Dimension",
          description = "The amount indentation for the paragraph on the side that corresponds to the start of the text, based on the current text direction. If unset, the value is inherited from the parent.",
        },
        lineSpacing = {
          description = "The amount of space between lines, as a percentage of normal, where normal is represented as 100.0. If unset, the value is inherited from the parent.",
          format = "float",
          type = "number",
        },
        spaceAbove = {
          ["$ref"] = "Dimension",
          description = "The amount of extra space above the paragraph. If unset, the value is inherited from the parent.",
        },
        spaceBelow = {
          ["$ref"] = "Dimension",
          description = "The amount of extra space below the paragraph. If unset, the value is inherited from the parent.",
        },
        spacingMode = {
          description = "The spacing mode for the paragraph.",
          enum = {
            "SPACING_MODE_UNSPECIFIED",
            "NEVER_COLLAPSE",
            "COLLAPSE_LISTS",
          },
          enumDescriptions = {
            "The spacing mode is inherited from the parent.",
            "Paragraph spacing is always rendered.",
            "Paragraph spacing is skipped between list elements.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Placeholder = {
      description = "The placeholder information that uniquely identifies a placeholder shape.",
      id = "Placeholder",
      properties = {
        index = {
          description = "The index of the placeholder. If the same placeholder types are present in the same page, they would have different index values.",
          format = "int32",
          type = "integer",
        },
        parentObjectId = {
          description = "The object ID of this shape's parent placeholder. If unset, the parent placeholder shape does not exist, so the shape does not inherit properties from any other shape.",
          type = "string",
        },
        type = {
          description = "The type of the placeholder.",
          enum = {
            "NONE",
            "BODY",
            "CHART",
            "CLIP_ART",
            "CENTERED_TITLE",
            "DIAGRAM",
            "DATE_AND_TIME",
            "FOOTER",
            "HEADER",
            "MEDIA",
            "OBJECT",
            "PICTURE",
            "SLIDE_NUMBER",
            "SUBTITLE",
            "TABLE",
            "TITLE",
            "SLIDE_IMAGE",
          },
          enumDescriptions = {
            "Default value, signifies it is not a placeholder.",
            "Body text.",
            "Chart or graph.",
            "Clip art image.",
            "Title centered.",
            "Diagram.",
            "Date and time.",
            "Footer text.",
            "Header text.",
            "Multimedia.",
            "Any content type.",
            "Picture.",
            "Number of a slide.",
            "Subtitle.",
            "Table.",
            "Slide title.",
            "Slide image.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Presentation = {
      description = "A Google Slides presentation.",
      id = "Presentation",
      properties = {
        layouts = {
          description = "The layouts in the presentation. A layout is a template that determines how content is arranged and styled on the slides that inherit from that layout.",
          items = {
            ["$ref"] = "Page",
          },
          type = "array",
        },
        locale = {
          description = "The locale of the presentation, as an IETF BCP 47 language tag.",
          type = "string",
        },
        masters = {
          description = "The slide masters in the presentation. A slide master contains all common page elements and the common properties for a set of layouts. They serve three purposes: - Placeholder shapes on a master contain the default text styles and shape properties of all placeholder shapes on pages that use that master. - The master page properties define the common page properties inherited by its layouts. - Any other shapes on the master slide appear on all slides using that master, regardless of their layout.",
          items = {
            ["$ref"] = "Page",
          },
          type = "array",
        },
        notesMaster = {
          ["$ref"] = "Page",
          description = "The notes master in the presentation. It serves three purposes: - Placeholder shapes on a notes master contain the default text styles and shape properties of all placeholder shapes on notes pages. Specifically, a `SLIDE_IMAGE` placeholder shape contains the slide thumbnail, and a `BODY` placeholder shape contains the speaker notes. - The notes master page properties define the common page properties inherited by all notes pages. - Any other shapes on the notes master appear on all notes pages. The notes master is read-only.",
        },
        pageSize = {
          ["$ref"] = "Size",
          description = "The size of pages in the presentation.",
        },
        presentationId = {
          description = "The ID of the presentation.",
          type = "string",
        },
        revisionId = {
          description = "Output only. The revision ID of the presentation. Can be used in update requests to assert the presentation revision hasn't changed since the last read operation. Only populated if the user has edit access to the presentation. The revision ID is not a sequential number but a nebulous string. The format of the revision ID may change over time, so it should be treated opaquely. A returned revision ID is only guaranteed to be valid for 24 hours after it has been returned and cannot be shared across users. If the revision ID is unchanged between calls, then the presentation has not changed. Conversely, a changed ID (for the same presentation and user) usually means the presentation has been updated. However, a changed ID can also be due to internal factors such as ID format changes.",
          type = "string",
        },
        slides = {
          description = "The slides in the presentation. A slide inherits properties from a slide layout.",
          items = {
            ["$ref"] = "Page",
          },
          type = "array",
        },
        title = {
          description = "The title of the presentation.",
          type = "string",
        },
      },
      type = "object",
    },
    Range = {
      description = "Specifies a contiguous range of an indexed collection, such as characters in text.",
      id = "Range",
      properties = {
        endIndex = {
          description = "The optional zero-based index of the end of the collection. Required for `FIXED_RANGE` ranges.",
          format = "int32",
          type = "integer",
        },
        startIndex = {
          description = "The optional zero-based index of the beginning of the collection. Required for `FIXED_RANGE` and `FROM_START_INDEX` ranges.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of range.",
          enum = {
            "RANGE_TYPE_UNSPECIFIED",
            "FIXED_RANGE",
            "FROM_START_INDEX",
            "ALL",
          },
          enumDescriptions = {
            "Unspecified range type. This value must not be used.",
            "A fixed range. Both the `start_index` and `end_index` must be specified.",
            "Starts the range at `start_index` and continues until the end of the collection. The `end_index` must not be specified.",
            "Sets the range to be the whole length of the collection. Both the `start_index` and the `end_index` must not be specified.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Recolor = {
      description = "A recolor effect applied on an image.",
      id = "Recolor",
      properties = {
        name = {
          description = "The name of the recolor effect. The name is determined from the `recolor_stops` by matching the gradient against the colors in the page's current color scheme. This property is read-only.",
          enum = {
            "NONE",
            "LIGHT1",
            "LIGHT2",
            "LIGHT3",
            "LIGHT4",
            "LIGHT5",
            "LIGHT6",
            "LIGHT7",
            "LIGHT8",
            "LIGHT9",
            "LIGHT10",
            "DARK1",
            "DARK2",
            "DARK3",
            "DARK4",
            "DARK5",
            "DARK6",
            "DARK7",
            "DARK8",
            "DARK9",
            "DARK10",
            "GRAYSCALE",
            "NEGATIVE",
            "SEPIA",
            "CUSTOM",
          },
          enumDescriptions = {
            "No recolor effect. The default value.",
            "A recolor effect that lightens the image using the page's first available color from its color scheme.",
            "A recolor effect that lightens the image using the page's second available color from its color scheme.",
            "A recolor effect that lightens the image using the page's third available color from its color scheme.",
            "A recolor effect that lightens the image using the page's forth available color from its color scheme.",
            "A recolor effect that lightens the image using the page's fifth available color from its color scheme.",
            "A recolor effect that lightens the image using the page's sixth available color from its color scheme.",
            "A recolor effect that lightens the image using the page's seventh available color from its color scheme.",
            "A recolor effect that lightens the image using the page's eighth available color from its color scheme.",
            "A recolor effect that lightens the image using the page's ninth available color from its color scheme.",
            "A recolor effect that lightens the image using the page's tenth available color from its color scheme.",
            "A recolor effect that darkens the image using the page's first available color from its color scheme.",
            "A recolor effect that darkens the image using the page's second available color from its color scheme.",
            "A recolor effect that darkens the image using the page's third available color from its color scheme.",
            "A recolor effect that darkens the image using the page's fourth available color from its color scheme.",
            "A recolor effect that darkens the image using the page's fifth available color from its color scheme.",
            "A recolor effect that darkens the image using the page's sixth available color from its color scheme.",
            "A recolor effect that darkens the image using the page's seventh available color from its color scheme.",
            "A recolor effect that darkens the image using the page's eighth available color from its color scheme.",
            "A recolor effect that darkens the image using the page's ninth available color from its color scheme.",
            "A recolor effect that darkens the image using the page's tenth available color from its color scheme.",
            "A recolor effect that recolors the image to grayscale.",
            "A recolor effect that recolors the image to negative grayscale.",
            "A recolor effect that recolors the image using the sepia color.",
            "Custom recolor effect. Refer to `recolor_stops` for the concrete gradient.",
          },
          type = "string",
        },
        recolorStops = {
          description = "The recolor effect is represented by a gradient, which is a list of color stops. The colors in the gradient will replace the corresponding colors at the same position in the color palette and apply to the image. This property is read-only.",
          items = {
            ["$ref"] = "ColorStop",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RefreshSheetsChartRequest = {
      description = "Refreshes an embedded Google Sheets chart by replacing it with the latest version of the chart from Google Sheets. NOTE: Refreshing charts requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.",
      id = "RefreshSheetsChartRequest",
      properties = {
        objectId = {
          description = "The object ID of the chart to refresh.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplaceAllShapesWithImageRequest = {
      description = "Replaces all shapes that match the given criteria with the provided image. The images replacing the shapes are rectangular after being inserted into the presentation and do not take on the forms of the shapes.",
      id = "ReplaceAllShapesWithImageRequest",
      properties = {
        containsText = {
          ["$ref"] = "SubstringMatchCriteria",
          description = "If set, this request will replace all of the shapes that contain the given text.",
        },
        imageReplaceMethod = {
          description = "The image replace method. If you specify both a `replace_method` and an `image_replace_method`, the `image_replace_method` takes precedence. If you do not specify a value for `image_replace_method`, but specify a value for `replace_method`, then the specified `replace_method` value is used. If you do not specify either, then CENTER_INSIDE is used.",
          enum = {
            "IMAGE_REPLACE_METHOD_UNSPECIFIED",
            "CENTER_INSIDE",
            "CENTER_CROP",
          },
          enumDescriptions = {
            "Unspecified image replace method. This value must not be used.",
            "Scales and centers the image to fit within the bounds of the original shape and maintains the image's aspect ratio. The rendered size of the image may be smaller than the size of the shape. This is the default method when one is not specified.",
            "Scales and centers the image to fill the bounds of the original shape. The image may be cropped in order to fill the shape. The rendered size of the image will be the same as the original shape.",
          },
          type = "string",
        },
        imageUrl = {
          description = "The image URL. The image is fetched once at insertion time and a copy is stored for display inside the presentation. Images must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URL can be at most 2 kB in length. The URL itself is saved with the image, and exposed via the Image.source_url field.",
          type = "string",
        },
        pageObjectIds = {
          description = "If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad request error if given the page object ID of a notes page or a notes master, or if a page with that object ID doesn't exist in the presentation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        replaceMethod = {
          description = "The replace method. *Deprecated*: use `image_replace_method` instead. If you specify both a `replace_method` and an `image_replace_method`, the `image_replace_method` takes precedence.",
          enum = {
            "CENTER_INSIDE",
            "CENTER_CROP",
          },
          enumDescriptions = {
            "Scales and centers the image to fit within the bounds of the original shape and maintains the image's aspect ratio. The rendered size of the image may be smaller than the size of the shape. This is the default method when one is not specified.",
            "Scales and centers the image to fill the bounds of the original shape. The image may be cropped in order to fill the shape. The rendered size of the image will be the same as that of the original shape.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReplaceAllShapesWithImageResponse = {
      description = "The result of replacing shapes with an image.",
      id = "ReplaceAllShapesWithImageResponse",
      properties = {
        occurrencesChanged = {
          description = "The number of shapes replaced with images.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ReplaceAllShapesWithSheetsChartRequest = {
      description = "Replaces all shapes that match the given criteria with the provided Google Sheets chart. The chart will be scaled and centered to fit within the bounds of the original shape. NOTE: Replacing shapes with a chart requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.",
      id = "ReplaceAllShapesWithSheetsChartRequest",
      properties = {
        chartId = {
          description = "The ID of the specific chart in the Google Sheets spreadsheet.",
          format = "int32",
          type = "integer",
        },
        containsText = {
          ["$ref"] = "SubstringMatchCriteria",
          description = "The criteria that the shapes must match in order to be replaced. The request will replace all of the shapes that contain the given text.",
        },
        linkingMode = {
          description = "The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.",
          enum = {
            "NOT_LINKED_IMAGE",
            "LINKED",
          },
          enumDescriptions = {
            "The chart is not associated with the source spreadsheet and cannot be updated. A chart that is not linked will be inserted as an image.",
            "Linking the chart allows it to be updated, and other collaborators will see a link to the spreadsheet.",
          },
          type = "string",
        },
        pageObjectIds = {
          description = "If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad request error if given the page object ID of a notes page or a notes master, or if a page with that object ID doesn't exist in the presentation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        spreadsheetId = {
          description = "The ID of the Google Sheets spreadsheet that contains the chart.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplaceAllShapesWithSheetsChartResponse = {
      description = "The result of replacing shapes with a Google Sheets chart.",
      id = "ReplaceAllShapesWithSheetsChartResponse",
      properties = {
        occurrencesChanged = {
          description = "The number of shapes replaced with charts.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ReplaceAllTextRequest = {
      description = "Replaces all instances of text matching a criteria with replace text.",
      id = "ReplaceAllTextRequest",
      properties = {
        containsText = {
          ["$ref"] = "SubstringMatchCriteria",
          description = "Finds text in a shape matching this substring.",
        },
        pageObjectIds = {
          description = "If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad request error if given the page object ID of a notes master, or if a page with that object ID doesn't exist in the presentation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        replaceText = {
          description = "The text that will replace the matched text.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplaceAllTextResponse = {
      description = "The result of replacing text.",
      id = "ReplaceAllTextResponse",
      properties = {
        occurrencesChanged = {
          description = "The number of occurrences changed by replacing all text.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ReplaceImageRequest = {
      description = "Replaces an existing image with a new image. Replacing an image removes some image effects from the existing image.",
      id = "ReplaceImageRequest",
      properties = {
        imageObjectId = {
          description = "The ID of the existing image that will be replaced. The ID can be retrieved from the response of a get request.",
          type = "string",
        },
        imageReplaceMethod = {
          description = "The replacement method.",
          enum = {
            "IMAGE_REPLACE_METHOD_UNSPECIFIED",
            "CENTER_INSIDE",
            "CENTER_CROP",
          },
          enumDescriptions = {
            "Unspecified image replace method. This value must not be used.",
            "Scales and centers the image to fit within the bounds of the original shape and maintains the image's aspect ratio. The rendered size of the image may be smaller than the size of the shape. This is the default method when one is not specified.",
            "Scales and centers the image to fill the bounds of the original shape. The image may be cropped in order to fill the shape. The rendered size of the image will be the same as the original shape.",
          },
          type = "string",
        },
        url = {
          description = "The image URL. The image is fetched once at insertion time and a copy is stored for display inside the presentation. Images must be less than 50MB, cannot exceed 25 megapixels, and must be in PNG, JPEG, or GIF format. The provided URL can't surpass 2 KB in length. The URL is saved with the image, and exposed through the Image.source_url field.",
          type = "string",
        },
      },
      type = "object",
    },
    Request = {
      description = "A single kind of update to apply to a presentation.",
      id = "Request",
      properties = {
        createImage = {
          ["$ref"] = "CreateImageRequest",
          description = "Creates an image.",
        },
        createLine = {
          ["$ref"] = "CreateLineRequest",
          description = "Creates a line.",
        },
        createParagraphBullets = {
          ["$ref"] = "CreateParagraphBulletsRequest",
          description = "Creates bullets for paragraphs.",
        },
        createShape = {
          ["$ref"] = "CreateShapeRequest",
          description = "Creates a new shape.",
        },
        createSheetsChart = {
          ["$ref"] = "CreateSheetsChartRequest",
          description = "Creates an embedded Google Sheets chart.",
        },
        createSlide = {
          ["$ref"] = "CreateSlideRequest",
          description = "Creates a new slide.",
        },
        createTable = {
          ["$ref"] = "CreateTableRequest",
          description = "Creates a new table.",
        },
        createVideo = {
          ["$ref"] = "CreateVideoRequest",
          description = "Creates a video.",
        },
        deleteObject = {
          ["$ref"] = "DeleteObjectRequest",
          description = "Deletes a page or page element from the presentation.",
        },
        deleteParagraphBullets = {
          ["$ref"] = "DeleteParagraphBulletsRequest",
          description = "Deletes bullets from paragraphs.",
        },
        deleteTableColumn = {
          ["$ref"] = "DeleteTableColumnRequest",
          description = "Deletes a column from a table.",
        },
        deleteTableRow = {
          ["$ref"] = "DeleteTableRowRequest",
          description = "Deletes a row from a table.",
        },
        deleteText = {
          ["$ref"] = "DeleteTextRequest",
          description = "Deletes text from a shape or a table cell.",
        },
        duplicateObject = {
          ["$ref"] = "DuplicateObjectRequest",
          description = "Duplicates a slide or page element.",
        },
        groupObjects = {
          ["$ref"] = "GroupObjectsRequest",
          description = "Groups objects, such as page elements.",
        },
        insertTableColumns = {
          ["$ref"] = "InsertTableColumnsRequest",
          description = "Inserts columns into a table.",
        },
        insertTableRows = {
          ["$ref"] = "InsertTableRowsRequest",
          description = "Inserts rows into a table.",
        },
        insertText = {
          ["$ref"] = "InsertTextRequest",
          description = "Inserts text into a shape or table cell.",
        },
        mergeTableCells = {
          ["$ref"] = "MergeTableCellsRequest",
          description = "Merges cells in a Table.",
        },
        refreshSheetsChart = {
          ["$ref"] = "RefreshSheetsChartRequest",
          description = "Refreshes a Google Sheets chart.",
        },
        replaceAllShapesWithImage = {
          ["$ref"] = "ReplaceAllShapesWithImageRequest",
          description = "Replaces all shapes matching some criteria with an image.",
        },
        replaceAllShapesWithSheetsChart = {
          ["$ref"] = "ReplaceAllShapesWithSheetsChartRequest",
          description = "Replaces all shapes matching some criteria with a Google Sheets chart.",
        },
        replaceAllText = {
          ["$ref"] = "ReplaceAllTextRequest",
          description = "Replaces all instances of specified text.",
        },
        replaceImage = {
          ["$ref"] = "ReplaceImageRequest",
          description = "Replaces an existing image with a new image.",
        },
        rerouteLine = {
          ["$ref"] = "RerouteLineRequest",
          description = "Reroutes a line such that it's connected at the two closest connection sites on the connected page elements.",
        },
        ungroupObjects = {
          ["$ref"] = "UngroupObjectsRequest",
          description = "Ungroups objects, such as groups.",
        },
        unmergeTableCells = {
          ["$ref"] = "UnmergeTableCellsRequest",
          description = "Unmerges cells in a Table.",
        },
        updateImageProperties = {
          ["$ref"] = "UpdateImagePropertiesRequest",
          description = "Updates the properties of an Image.",
        },
        updateLineCategory = {
          ["$ref"] = "UpdateLineCategoryRequest",
          description = "Updates the category of a line.",
        },
        updateLineProperties = {
          ["$ref"] = "UpdateLinePropertiesRequest",
          description = "Updates the properties of a Line.",
        },
        updatePageElementAltText = {
          ["$ref"] = "UpdatePageElementAltTextRequest",
          description = "Updates the alt text title and/or description of a page element.",
        },
        updatePageElementTransform = {
          ["$ref"] = "UpdatePageElementTransformRequest",
          description = "Updates the transform of a page element.",
        },
        updatePageElementsZOrder = {
          ["$ref"] = "UpdatePageElementsZOrderRequest",
          description = "Updates the Z-order of page elements.",
        },
        updatePageProperties = {
          ["$ref"] = "UpdatePagePropertiesRequest",
          description = "Updates the properties of a Page.",
        },
        updateParagraphStyle = {
          ["$ref"] = "UpdateParagraphStyleRequest",
          description = "Updates the styling of paragraphs within a Shape or Table.",
        },
        updateShapeProperties = {
          ["$ref"] = "UpdateShapePropertiesRequest",
          description = "Updates the properties of a Shape.",
        },
        updateSlideProperties = {
          ["$ref"] = "UpdateSlidePropertiesRequest",
          description = "Updates the properties of a Slide",
        },
        updateSlidesPosition = {
          ["$ref"] = "UpdateSlidesPositionRequest",
          description = "Updates the position of a set of slides in the presentation.",
        },
        updateTableBorderProperties = {
          ["$ref"] = "UpdateTableBorderPropertiesRequest",
          description = "Updates the properties of the table borders in a Table.",
        },
        updateTableCellProperties = {
          ["$ref"] = "UpdateTableCellPropertiesRequest",
          description = "Updates the properties of a TableCell.",
        },
        updateTableColumnProperties = {
          ["$ref"] = "UpdateTableColumnPropertiesRequest",
          description = "Updates the properties of a Table column.",
        },
        updateTableRowProperties = {
          ["$ref"] = "UpdateTableRowPropertiesRequest",
          description = "Updates the properties of a Table row.",
        },
        updateTextStyle = {
          ["$ref"] = "UpdateTextStyleRequest",
          description = "Updates the styling of text within a Shape or Table.",
        },
        updateVideoProperties = {
          ["$ref"] = "UpdateVideoPropertiesRequest",
          description = "Updates the properties of a Video.",
        },
      },
      type = "object",
    },
    RerouteLineRequest = {
      description = "Reroutes a line such that it's connected at the two closest connection sites on the connected page elements.",
      id = "RerouteLineRequest",
      properties = {
        objectId = {
          description = "The object ID of the line to reroute. Only a line with a category indicating it is a \"connector\" can be rerouted. The start and end connections of the line must be on different page elements.",
          type = "string",
        },
      },
      type = "object",
    },
    Response = {
      description = "A single response from an update.",
      id = "Response",
      properties = {
        createImage = {
          ["$ref"] = "CreateImageResponse",
          description = "The result of creating an image.",
        },
        createLine = {
          ["$ref"] = "CreateLineResponse",
          description = "The result of creating a line.",
        },
        createShape = {
          ["$ref"] = "CreateShapeResponse",
          description = "The result of creating a shape.",
        },
        createSheetsChart = {
          ["$ref"] = "CreateSheetsChartResponse",
          description = "The result of creating a Google Sheets chart.",
        },
        createSlide = {
          ["$ref"] = "CreateSlideResponse",
          description = "The result of creating a slide.",
        },
        createTable = {
          ["$ref"] = "CreateTableResponse",
          description = "The result of creating a table.",
        },
        createVideo = {
          ["$ref"] = "CreateVideoResponse",
          description = "The result of creating a video.",
        },
        duplicateObject = {
          ["$ref"] = "DuplicateObjectResponse",
          description = "The result of duplicating an object.",
        },
        groupObjects = {
          ["$ref"] = "GroupObjectsResponse",
          description = "The result of grouping objects.",
        },
        replaceAllShapesWithImage = {
          ["$ref"] = "ReplaceAllShapesWithImageResponse",
          description = "The result of replacing all shapes matching some criteria with an image.",
        },
        replaceAllShapesWithSheetsChart = {
          ["$ref"] = "ReplaceAllShapesWithSheetsChartResponse",
          description = "The result of replacing all shapes matching some criteria with a Google Sheets chart.",
        },
        replaceAllText = {
          ["$ref"] = "ReplaceAllTextResponse",
          description = "The result of replacing text.",
        },
      },
      type = "object",
    },
    RgbColor = {
      description = "An RGB color.",
      id = "RgbColor",
      properties = {
        blue = {
          description = "The blue component of the color, from 0.0 to 1.0.",
          format = "float",
          type = "number",
        },
        green = {
          description = "The green component of the color, from 0.0 to 1.0.",
          format = "float",
          type = "number",
        },
        red = {
          description = "The red component of the color, from 0.0 to 1.0.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    Shadow = {
      description = "The shadow properties of a page element. If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.",
      id = "Shadow",
      properties = {
        alignment = {
          description = "The alignment point of the shadow, that sets the origin for translate, scale and skew of the shadow. This property is read-only.",
          enum = {
            "RECTANGLE_POSITION_UNSPECIFIED",
            "TOP_LEFT",
            "TOP_CENTER",
            "TOP_RIGHT",
            "LEFT_CENTER",
            "CENTER",
            "RIGHT_CENTER",
            "BOTTOM_LEFT",
            "BOTTOM_CENTER",
            "BOTTOM_RIGHT",
          },
          enumDescriptions = {
            "Unspecified.",
            "Top left.",
            "Top center.",
            "Top right.",
            "Left center.",
            "Center.",
            "Right center.",
            "Bottom left.",
            "Bottom center.",
            "Bottom right.",
          },
          type = "string",
        },
        alpha = {
          description = "The alpha of the shadow's color, from 0.0 to 1.0.",
          format = "float",
          type = "number",
        },
        blurRadius = {
          ["$ref"] = "Dimension",
          description = "The radius of the shadow blur. The larger the radius, the more diffuse the shadow becomes.",
        },
        color = {
          ["$ref"] = "OpaqueColor",
          description = "The shadow color value.",
        },
        propertyState = {
          description = "The shadow property state. Updating the shadow on a page element will implicitly update this field to `RENDERED`, unless another value is specified in the same request. To have no shadow on a page element, set this field to `NOT_RENDERED`. In this case, any other shadow fields set in the same request will be ignored.",
          enum = {
            "RENDERED",
            "NOT_RENDERED",
            "INHERIT",
          },
          enumDescriptions = {
            "If a property's state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.",
            "If a property's state is NOT_RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property_state to NOT_RENDERED.",
            "If a property's state is INHERIT, then the property state uses the value of corresponding `property_state` field on the parent shape. Elements that do not inherit will never have an INHERIT property state.",
          },
          type = "string",
        },
        rotateWithShape = {
          description = "Whether the shadow should rotate with the shape. This property is read-only.",
          type = "boolean",
        },
        transform = {
          ["$ref"] = "AffineTransform",
          description = "Transform that encodes the translate, scale, and skew of the shadow, relative to the alignment position.",
        },
        type = {
          description = "The type of the shadow. This property is read-only.",
          enum = {
            "SHADOW_TYPE_UNSPECIFIED",
            "OUTER",
          },
          enumDescriptions = {
            "Unspecified shadow type.",
            "Outer shadow.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Shape = {
      description = "A PageElement kind representing a generic shape that does not have a more specific classification.",
      id = "Shape",
      properties = {
        placeholder = {
          ["$ref"] = "Placeholder",
          description = "Placeholders are page elements that inherit from corresponding placeholders on layouts and masters. If set, the shape is a placeholder shape and any inherited properties can be resolved by looking at the parent placeholder identified by the Placeholder.parent_object_id field.",
        },
        shapeProperties = {
          ["$ref"] = "ShapeProperties",
          description = "The properties of the shape.",
        },
        shapeType = {
          description = "The type of the shape.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TEXT_BOX",
            "RECTANGLE",
            "ROUND_RECTANGLE",
            "ELLIPSE",
            "ARC",
            "BENT_ARROW",
            "BENT_UP_ARROW",
            "BEVEL",
            "BLOCK_ARC",
            "BRACE_PAIR",
            "BRACKET_PAIR",
            "CAN",
            "CHEVRON",
            "CHORD",
            "CLOUD",
            "CORNER",
            "CUBE",
            "CURVED_DOWN_ARROW",
            "CURVED_LEFT_ARROW",
            "CURVED_RIGHT_ARROW",
            "CURVED_UP_ARROW",
            "DECAGON",
            "DIAGONAL_STRIPE",
            "DIAMOND",
            "DODECAGON",
            "DONUT",
            "DOUBLE_WAVE",
            "DOWN_ARROW",
            "DOWN_ARROW_CALLOUT",
            "FOLDED_CORNER",
            "FRAME",
            "HALF_FRAME",
            "HEART",
            "HEPTAGON",
            "HEXAGON",
            "HOME_PLATE",
            "HORIZONTAL_SCROLL",
            "IRREGULAR_SEAL_1",
            "IRREGULAR_SEAL_2",
            "LEFT_ARROW",
            "LEFT_ARROW_CALLOUT",
            "LEFT_BRACE",
            "LEFT_BRACKET",
            "LEFT_RIGHT_ARROW",
            "LEFT_RIGHT_ARROW_CALLOUT",
            "LEFT_RIGHT_UP_ARROW",
            "LEFT_UP_ARROW",
            "LIGHTNING_BOLT",
            "MATH_DIVIDE",
            "MATH_EQUAL",
            "MATH_MINUS",
            "MATH_MULTIPLY",
            "MATH_NOT_EQUAL",
            "MATH_PLUS",
            "MOON",
            "NO_SMOKING",
            "NOTCHED_RIGHT_ARROW",
            "OCTAGON",
            "PARALLELOGRAM",
            "PENTAGON",
            "PIE",
            "PLAQUE",
            "PLUS",
            "QUAD_ARROW",
            "QUAD_ARROW_CALLOUT",
            "RIBBON",
            "RIBBON_2",
            "RIGHT_ARROW",
            "RIGHT_ARROW_CALLOUT",
            "RIGHT_BRACE",
            "RIGHT_BRACKET",
            "ROUND_1_RECTANGLE",
            "ROUND_2_DIAGONAL_RECTANGLE",
            "ROUND_2_SAME_RECTANGLE",
            "RIGHT_TRIANGLE",
            "SMILEY_FACE",
            "SNIP_1_RECTANGLE",
            "SNIP_2_DIAGONAL_RECTANGLE",
            "SNIP_2_SAME_RECTANGLE",
            "SNIP_ROUND_RECTANGLE",
            "STAR_10",
            "STAR_12",
            "STAR_16",
            "STAR_24",
            "STAR_32",
            "STAR_4",
            "STAR_5",
            "STAR_6",
            "STAR_7",
            "STAR_8",
            "STRIPED_RIGHT_ARROW",
            "SUN",
            "TRAPEZOID",
            "TRIANGLE",
            "UP_ARROW",
            "UP_ARROW_CALLOUT",
            "UP_DOWN_ARROW",
            "UTURN_ARROW",
            "VERTICAL_SCROLL",
            "WAVE",
            "WEDGE_ELLIPSE_CALLOUT",
            "WEDGE_RECTANGLE_CALLOUT",
            "WEDGE_ROUND_RECTANGLE_CALLOUT",
            "FLOW_CHART_ALTERNATE_PROCESS",
            "FLOW_CHART_COLLATE",
            "FLOW_CHART_CONNECTOR",
            "FLOW_CHART_DECISION",
            "FLOW_CHART_DELAY",
            "FLOW_CHART_DISPLAY",
            "FLOW_CHART_DOCUMENT",
            "FLOW_CHART_EXTRACT",
            "FLOW_CHART_INPUT_OUTPUT",
            "FLOW_CHART_INTERNAL_STORAGE",
            "FLOW_CHART_MAGNETIC_DISK",
            "FLOW_CHART_MAGNETIC_DRUM",
            "FLOW_CHART_MAGNETIC_TAPE",
            "FLOW_CHART_MANUAL_INPUT",
            "FLOW_CHART_MANUAL_OPERATION",
            "FLOW_CHART_MERGE",
            "FLOW_CHART_MULTIDOCUMENT",
            "FLOW_CHART_OFFLINE_STORAGE",
            "FLOW_CHART_OFFPAGE_CONNECTOR",
            "FLOW_CHART_ONLINE_STORAGE",
            "FLOW_CHART_OR",
            "FLOW_CHART_PREDEFINED_PROCESS",
            "FLOW_CHART_PREPARATION",
            "FLOW_CHART_PROCESS",
            "FLOW_CHART_PUNCHED_CARD",
            "FLOW_CHART_PUNCHED_TAPE",
            "FLOW_CHART_SORT",
            "FLOW_CHART_SUMMING_JUNCTION",
            "FLOW_CHART_TERMINATOR",
            "ARROW_EAST",
            "ARROW_NORTH_EAST",
            "ARROW_NORTH",
            "SPEECH",
            "STARBURST",
            "TEARDROP",
            "ELLIPSE_RIBBON",
            "ELLIPSE_RIBBON_2",
            "CLOUD_CALLOUT",
            "CUSTOM",
          },
          enumDescriptions = {
            "The shape type that is not predefined.",
            "Text box shape.",
            "Rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'rect'.",
            "Round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'roundRect'",
            "Ellipse shape. Corresponds to ECMA-376 ST_ShapeType 'ellipse'",
            "Curved arc shape. Corresponds to ECMA-376 ST_ShapeType 'arc'",
            "Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType 'bentArrow'",
            "Bent up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'bentUpArrow'",
            "Bevel shape. Corresponds to ECMA-376 ST_ShapeType 'bevel'",
            "Block arc shape. Corresponds to ECMA-376 ST_ShapeType 'blockArc'",
            "Brace pair shape. Corresponds to ECMA-376 ST_ShapeType 'bracePair'",
            "Bracket pair shape. Corresponds to ECMA-376 ST_ShapeType 'bracketPair'",
            "Can shape. Corresponds to ECMA-376 ST_ShapeType 'can'",
            "Chevron shape. Corresponds to ECMA-376 ST_ShapeType 'chevron'",
            "Chord shape. Corresponds to ECMA-376 ST_ShapeType 'chord'",
            "Cloud shape. Corresponds to ECMA-376 ST_ShapeType 'cloud'",
            "Corner shape. Corresponds to ECMA-376 ST_ShapeType 'corner'",
            "Cube shape. Corresponds to ECMA-376 ST_ShapeType 'cube'",
            "Curved down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedDownArrow'",
            "Curved left arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedLeftArrow'",
            "Curved right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedRightArrow'",
            "Curved up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'curvedUpArrow'",
            "Decagon shape. Corresponds to ECMA-376 ST_ShapeType 'decagon'",
            "Diagonal stripe shape. Corresponds to ECMA-376 ST_ShapeType 'diagStripe'",
            "Diamond shape. Corresponds to ECMA-376 ST_ShapeType 'diamond'",
            "Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType 'dodecagon'",
            "Donut shape. Corresponds to ECMA-376 ST_ShapeType 'donut'",
            "Double wave shape. Corresponds to ECMA-376 ST_ShapeType 'doubleWave'",
            "Down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'downArrow'",
            "Callout down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'downArrowCallout'",
            "Folded corner shape. Corresponds to ECMA-376 ST_ShapeType 'foldedCorner'",
            "Frame shape. Corresponds to ECMA-376 ST_ShapeType 'frame'",
            "Half frame shape. Corresponds to ECMA-376 ST_ShapeType 'halfFrame'",
            "Heart shape. Corresponds to ECMA-376 ST_ShapeType 'heart'",
            "Heptagon shape. Corresponds to ECMA-376 ST_ShapeType 'heptagon'",
            "Hexagon shape. Corresponds to ECMA-376 ST_ShapeType 'hexagon'",
            "Home plate shape. Corresponds to ECMA-376 ST_ShapeType 'homePlate'",
            "Horizontal scroll shape. Corresponds to ECMA-376 ST_ShapeType 'horizontalScroll'",
            "Irregular seal 1 shape. Corresponds to ECMA-376 ST_ShapeType 'irregularSeal1'",
            "Irregular seal 2 shape. Corresponds to ECMA-376 ST_ShapeType 'irregularSeal2'",
            "Left arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftArrow'",
            "Callout left arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftArrowCallout'",
            "Left brace shape. Corresponds to ECMA-376 ST_ShapeType 'leftBrace'",
            "Left bracket shape. Corresponds to ECMA-376 ST_ShapeType 'leftBracket'",
            "Left right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftRightArrow'",
            "Callout left right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftRightArrowCallout'",
            "Left right up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftRightUpArrow'",
            "Left up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'leftUpArrow'",
            "Lightning bolt shape. Corresponds to ECMA-376 ST_ShapeType 'lightningBolt'",
            "Divide math shape. Corresponds to ECMA-376 ST_ShapeType 'mathDivide'",
            "Equal math shape. Corresponds to ECMA-376 ST_ShapeType 'mathEqual'",
            "Minus math shape. Corresponds to ECMA-376 ST_ShapeType 'mathMinus'",
            "Multiply math shape. Corresponds to ECMA-376 ST_ShapeType 'mathMultiply'",
            "Not equal math shape. Corresponds to ECMA-376 ST_ShapeType 'mathNotEqual'",
            "Plus math shape. Corresponds to ECMA-376 ST_ShapeType 'mathPlus'",
            "Moon shape. Corresponds to ECMA-376 ST_ShapeType 'moon'",
            "No smoking shape. Corresponds to ECMA-376 ST_ShapeType 'noSmoking'",
            "Notched right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'notchedRightArrow'",
            "Octagon shape. Corresponds to ECMA-376 ST_ShapeType 'octagon'",
            "Parallelogram shape. Corresponds to ECMA-376 ST_ShapeType 'parallelogram'",
            "Pentagon shape. Corresponds to ECMA-376 ST_ShapeType 'pentagon'",
            "Pie shape. Corresponds to ECMA-376 ST_ShapeType 'pie'",
            "Plaque shape. Corresponds to ECMA-376 ST_ShapeType 'plaque'",
            "Plus shape. Corresponds to ECMA-376 ST_ShapeType 'plus'",
            "Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType 'quadArrow'",
            "Callout quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType 'quadArrowCallout'",
            "Ribbon shape. Corresponds to ECMA-376 ST_ShapeType 'ribbon'",
            "Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType 'ribbon2'",
            "Right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'rightArrow'",
            "Callout right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'rightArrowCallout'",
            "Right brace shape. Corresponds to ECMA-376 ST_ShapeType 'rightBrace'",
            "Right bracket shape. Corresponds to ECMA-376 ST_ShapeType 'rightBracket'",
            "One round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'round1Rect'",
            "Two diagonal round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'round2DiagRect'",
            "Two same-side round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'round2SameRect'",
            "Right triangle shape. Corresponds to ECMA-376 ST_ShapeType 'rtTriangle'",
            "Smiley face shape. Corresponds to ECMA-376 ST_ShapeType 'smileyFace'",
            "One snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snip1Rect'",
            "Two diagonal snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snip2DiagRect'",
            "Two same-side snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snip2SameRect'",
            "One snip one round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'snipRoundRect'",
            "Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star10'",
            "Twelve pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star12'",
            "Sixteen pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star16'",
            "Twenty four pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star24'",
            "Thirty two pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star32'",
            "Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star4'",
            "Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star5'",
            "Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star6'",
            "Seven pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star7'",
            "Eight pointed star shape. Corresponds to ECMA-376 ST_ShapeType 'star8'",
            "Striped right arrow shape. Corresponds to ECMA-376 ST_ShapeType 'stripedRightArrow'",
            "Sun shape. Corresponds to ECMA-376 ST_ShapeType 'sun'",
            "Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType 'trapezoid'",
            "Triangle shape. Corresponds to ECMA-376 ST_ShapeType 'triangle'",
            "Up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'upArrow'",
            "Callout up arrow shape. Corresponds to ECMA-376 ST_ShapeType 'upArrowCallout'",
            "Up down arrow shape. Corresponds to ECMA-376 ST_ShapeType 'upDownArrow'",
            "U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType 'uturnArrow'",
            "Vertical scroll shape. Corresponds to ECMA-376 ST_ShapeType 'verticalScroll'",
            "Wave shape. Corresponds to ECMA-376 ST_ShapeType 'wave'",
            "Callout wedge ellipse shape. Corresponds to ECMA-376 ST_ShapeType 'wedgeEllipseCallout'",
            "Callout wedge rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'wedgeRectCallout'",
            "Callout wedge round rectangle shape. Corresponds to ECMA-376 ST_ShapeType 'wedgeRoundRectCallout'",
            "Alternate process flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartAlternateProcess'",
            "Collate flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartCollate'",
            "Connector flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartConnector'",
            "Decision flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDecision'",
            "Delay flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDelay'",
            "Display flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDisplay'",
            "Document flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartDocument'",
            "Extract flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartExtract'",
            "Input output flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartInputOutput'",
            "Internal storage flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartInternalStorage'",
            "Magnetic disk flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMagneticDisk'",
            "Magnetic drum flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMagneticDrum'",
            "Magnetic tape flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMagneticTape'",
            "Manual input flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartManualInput'",
            "Manual operation flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartManualOperation'",
            "Merge flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMerge'",
            "Multi-document flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartMultidocument'",
            "Offline storage flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOfflineStorage'",
            "Off-page connector flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOffpageConnector'",
            "Online storage flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOnlineStorage'",
            "Or flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartOr'",
            "Predefined process flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPredefinedProcess'",
            "Preparation flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPreparation'",
            "Process flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartProcess'",
            "Punched card flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPunchedCard'",
            "Punched tape flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartPunchedTape'",
            "Sort flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartSort'",
            "Summing junction flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartSummingJunction'",
            "Terminator flow shape. Corresponds to ECMA-376 ST_ShapeType 'flowChartTerminator'",
            "East arrow shape.",
            "Northeast arrow shape.",
            "North arrow shape.",
            "Speech shape.",
            "Star burst shape.",
            "Teardrop shape. Corresponds to ECMA-376 ST_ShapeType 'teardrop'",
            "Ellipse ribbon shape. Corresponds to ECMA-376 ST_ShapeType 'ellipseRibbon'",
            "Ellipse ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType 'ellipseRibbon2'",
            "Callout cloud shape. Corresponds to ECMA-376 ST_ShapeType 'cloudCallout'",
            "Custom shape.",
          },
          type = "string",
        },
        text = {
          ["$ref"] = "TextContent",
          description = "The text content of the shape.",
        },
      },
      type = "object",
    },
    ShapeBackgroundFill = {
      description = "The shape background fill.",
      id = "ShapeBackgroundFill",
      properties = {
        propertyState = {
          description = "The background fill property state. Updating the fill on a shape will implicitly update this field to `RENDERED`, unless another value is specified in the same request. To have no fill on a shape, set this field to `NOT_RENDERED`. In this case, any other fill fields set in the same request will be ignored.",
          enum = {
            "RENDERED",
            "NOT_RENDERED",
            "INHERIT",
          },
          enumDescriptions = {
            "If a property's state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.",
            "If a property's state is NOT_RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property_state to NOT_RENDERED.",
            "If a property's state is INHERIT, then the property state uses the value of corresponding `property_state` field on the parent shape. Elements that do not inherit will never have an INHERIT property state.",
          },
          type = "string",
        },
        solidFill = {
          ["$ref"] = "SolidFill",
          description = "Solid color fill.",
        },
      },
      type = "object",
    },
    ShapeProperties = {
      description = "The properties of a Shape. If the shape is a placeholder shape as determined by the placeholder field, then these properties may be inherited from a parent placeholder shape. Determining the rendered value of the property depends on the corresponding property_state field value. Any text autofit settings on the shape are automatically deactivated by requests that can impact how text fits in the shape.",
      id = "ShapeProperties",
      properties = {
        autofit = {
          ["$ref"] = "Autofit",
          description = "The autofit properties of the shape. This property is only set for shapes that allow text.",
        },
        contentAlignment = {
          description = "The alignment of the content in the shape. If unspecified, the alignment is inherited from a parent placeholder if it exists. If the shape has no parent, the default alignment matches the alignment for new shapes created in the Slides editor.",
          enum = {
            "CONTENT_ALIGNMENT_UNSPECIFIED",
            "CONTENT_ALIGNMENT_UNSUPPORTED",
            "TOP",
            "MIDDLE",
            "BOTTOM",
          },
          enumDescriptions = {
            "An unspecified content alignment. The content alignment is inherited from the parent if it exists.",
            "An unsupported content alignment.",
            "An alignment that aligns the content to the top of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType 't'.",
            "An alignment that aligns the content to the middle of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'ctr'.",
            "An alignment that aligns the content to the bottom of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'b'.",
          },
          type = "string",
        },
        link = {
          ["$ref"] = "Link",
          description = "The hyperlink destination of the shape. If unset, there is no link. Links are not inherited from parent placeholders.",
        },
        outline = {
          ["$ref"] = "Outline",
          description = "The outline of the shape. If unset, the outline is inherited from a parent placeholder if it exists. If the shape has no parent, then the default outline depends on the shape type, matching the defaults for new shapes created in the Slides editor.",
        },
        shadow = {
          ["$ref"] = "Shadow",
          description = "The shadow properties of the shape. If unset, the shadow is inherited from a parent placeholder if it exists. If the shape has no parent, then the default shadow matches the defaults for new shapes created in the Slides editor. This property is read-only.",
        },
        shapeBackgroundFill = {
          ["$ref"] = "ShapeBackgroundFill",
          description = "The background fill of the shape. If unset, the background fill is inherited from a parent placeholder if it exists. If the shape has no parent, then the default background fill depends on the shape type, matching the defaults for new shapes created in the Slides editor.",
        },
      },
      type = "object",
    },
    SheetsChart = {
      description = "A PageElement kind representing a linked chart embedded from Google Sheets.",
      id = "SheetsChart",
      properties = {
        chartId = {
          description = "The ID of the specific chart in the Google Sheets spreadsheet that is embedded.",
          format = "int32",
          type = "integer",
        },
        contentUrl = {
          description = "The URL of an image of the embedded chart, with a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the image as the original requester. Access to the image may be lost if the presentation's sharing settings change.",
          type = "string",
        },
        sheetsChartProperties = {
          ["$ref"] = "SheetsChartProperties",
          description = "The properties of the Sheets chart.",
        },
        spreadsheetId = {
          description = "The ID of the Google Sheets spreadsheet that contains the source chart.",
          type = "string",
        },
      },
      type = "object",
    },
    SheetsChartProperties = {
      description = "The properties of the SheetsChart.",
      id = "SheetsChartProperties",
      properties = {
        chartImageProperties = {
          ["$ref"] = "ImageProperties",
          description = "The properties of the embedded chart image.",
        },
      },
      type = "object",
    },
    Size = {
      description = "A width and height.",
      id = "Size",
      properties = {
        height = {
          ["$ref"] = "Dimension",
          description = "The height of the object.",
        },
        width = {
          ["$ref"] = "Dimension",
          description = "The width of the object.",
        },
      },
      type = "object",
    },
    SlideProperties = {
      description = "The properties of Page that are only relevant for pages with page_type SLIDE.",
      id = "SlideProperties",
      properties = {
        isSkipped = {
          description = "Whether the slide is skipped in the presentation mode. Defaults to false.",
          type = "boolean",
        },
        layoutObjectId = {
          description = "The object ID of the layout that this slide is based on. This property is read-only.",
          type = "string",
        },
        masterObjectId = {
          description = "The object ID of the master that this slide is based on. This property is read-only.",
          type = "string",
        },
        notesPage = {
          ["$ref"] = "Page",
          description = "The notes page that this slide is associated with. It defines the visual appearance of a notes page when printing or exporting slides with speaker notes. A notes page inherits properties from the notes master. The placeholder shape with type BODY on the notes page contains the speaker notes for this slide. The ID of this shape is identified by the speakerNotesObjectId field. The notes page is read-only except for the text content and styles of the speaker notes shape. This property is read-only.",
        },
      },
      type = "object",
    },
    SolidFill = {
      description = "A solid color fill. The page or page element is filled entirely with the specified color value. If any field is unset, its value may be inherited from a parent placeholder if it exists.",
      id = "SolidFill",
      properties = {
        alpha = {
          description = "The fraction of this `color` that should be applied to the pixel. That is, the final pixel color is defined by the equation: pixel color = alpha * (color) + (1.0 - alpha) * (background color) This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color.",
          format = "float",
          type = "number",
        },
        color = {
          ["$ref"] = "OpaqueColor",
          description = "The color value of the solid fill.",
        },
      },
      type = "object",
    },
    StretchedPictureFill = {
      description = "The stretched picture fill. The page or page element is filled entirely with the specified picture. The picture is stretched to fit its container.",
      id = "StretchedPictureFill",
      properties = {
        contentUrl = {
          description = "Reading the content_url: An URL to a picture with a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the picture as the original requester. Access to the picture may be lost if the presentation's sharing settings change. Writing the content_url: The picture is fetched once at insertion time and a copy is stored for display inside the presentation. Pictures must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URL can be at most 2 kB in length.",
          type = "string",
        },
        size = {
          ["$ref"] = "Size",
          description = "The original size of the picture fill. This field is read-only.",
        },
      },
      type = "object",
    },
    SubstringMatchCriteria = {
      description = "A criteria that matches a specific string of text in a shape or table.",
      id = "SubstringMatchCriteria",
      properties = {
        matchCase = {
          description = "Indicates whether the search should respect case: - `True`: the search is case sensitive. - `False`: the search is case insensitive.",
          type = "boolean",
        },
        text = {
          description = "The text to search for in the shape or table.",
          type = "string",
        },
      },
      type = "object",
    },
    Table = {
      description = "A PageElement kind representing a table.",
      id = "Table",
      properties = {
        columns = {
          description = "Number of columns in the table.",
          format = "int32",
          type = "integer",
        },
        horizontalBorderRows = {
          description = "Properties of horizontal cell borders. A table's horizontal cell borders are represented as a grid. The grid has one more row than the number of rows in the table and the same number of columns as the table. For example, if the table is 3 x 3, its horizontal borders will be represented as a grid with 4 rows and 3 columns.",
          items = {
            ["$ref"] = "TableBorderRow",
          },
          type = "array",
        },
        rows = {
          description = "Number of rows in the table.",
          format = "int32",
          type = "integer",
        },
        tableColumns = {
          description = "Properties of each column.",
          items = {
            ["$ref"] = "TableColumnProperties",
          },
          type = "array",
        },
        tableRows = {
          description = "Properties and contents of each row. Cells that span multiple rows are contained in only one of these rows and have a row_span greater than 1.",
          items = {
            ["$ref"] = "TableRow",
          },
          type = "array",
        },
        verticalBorderRows = {
          description = "Properties of vertical cell borders. A table's vertical cell borders are represented as a grid. The grid has the same number of rows as the table and one more column than the number of columns in the table. For example, if the table is 3 x 3, its vertical borders will be represented as a grid with 3 rows and 4 columns.",
          items = {
            ["$ref"] = "TableBorderRow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TableBorderCell = {
      description = "The properties of each border cell.",
      id = "TableBorderCell",
      properties = {
        location = {
          ["$ref"] = "TableCellLocation",
          description = "The location of the border within the border table.",
        },
        tableBorderProperties = {
          ["$ref"] = "TableBorderProperties",
          description = "The border properties.",
        },
      },
      type = "object",
    },
    TableBorderFill = {
      description = "The fill of the border.",
      id = "TableBorderFill",
      properties = {
        solidFill = {
          ["$ref"] = "SolidFill",
          description = "Solid fill.",
        },
      },
      type = "object",
    },
    TableBorderProperties = {
      description = "The border styling properties of the TableBorderCell.",
      id = "TableBorderProperties",
      properties = {
        dashStyle = {
          description = "The dash style of the border.",
          enum = {
            "DASH_STYLE_UNSPECIFIED",
            "SOLID",
            "DOT",
            "DASH",
            "DASH_DOT",
            "LONG_DASH",
            "LONG_DASH_DOT",
          },
          enumDescriptions = {
            "Unspecified dash style.",
            "Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'solid'. This is the default dash style.",
            "Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dot'.",
            "Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dash'.",
            "Alternating dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value 'dashDot'.",
            "Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal value 'lgDash'.",
            "Alternating large dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value 'lgDashDot'.",
          },
          type = "string",
        },
        tableBorderFill = {
          ["$ref"] = "TableBorderFill",
          description = "The fill of the table border.",
        },
        weight = {
          ["$ref"] = "Dimension",
          description = "The thickness of the border.",
        },
      },
      type = "object",
    },
    TableBorderRow = {
      description = "Contents of each border row in a table.",
      id = "TableBorderRow",
      properties = {
        tableBorderCells = {
          description = "Properties of each border cell. When a border's adjacent table cells are merged, it is not included in the response.",
          items = {
            ["$ref"] = "TableBorderCell",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TableCell = {
      description = "Properties and contents of each table cell.",
      id = "TableCell",
      properties = {
        columnSpan = {
          description = "Column span of the cell.",
          format = "int32",
          type = "integer",
        },
        location = {
          ["$ref"] = "TableCellLocation",
          description = "The location of the cell within the table.",
        },
        rowSpan = {
          description = "Row span of the cell.",
          format = "int32",
          type = "integer",
        },
        tableCellProperties = {
          ["$ref"] = "TableCellProperties",
          description = "The properties of the table cell.",
        },
        text = {
          ["$ref"] = "TextContent",
          description = "The text content of the cell.",
        },
      },
      type = "object",
    },
    TableCellBackgroundFill = {
      description = "The table cell background fill.",
      id = "TableCellBackgroundFill",
      properties = {
        propertyState = {
          description = "The background fill property state. Updating the fill on a table cell will implicitly update this field to `RENDERED`, unless another value is specified in the same request. To have no fill on a table cell, set this field to `NOT_RENDERED`. In this case, any other fill fields set in the same request will be ignored.",
          enum = {
            "RENDERED",
            "NOT_RENDERED",
            "INHERIT",
          },
          enumDescriptions = {
            "If a property's state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.",
            "If a property's state is NOT_RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property_state to NOT_RENDERED.",
            "If a property's state is INHERIT, then the property state uses the value of corresponding `property_state` field on the parent shape. Elements that do not inherit will never have an INHERIT property state.",
          },
          type = "string",
        },
        solidFill = {
          ["$ref"] = "SolidFill",
          description = "Solid color fill.",
        },
      },
      type = "object",
    },
    TableCellLocation = {
      description = "A location of a single table cell within a table.",
      id = "TableCellLocation",
      properties = {
        columnIndex = {
          description = "The 0-based column index.",
          format = "int32",
          type = "integer",
        },
        rowIndex = {
          description = "The 0-based row index.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TableCellProperties = {
      description = "The properties of the TableCell.",
      id = "TableCellProperties",
      properties = {
        contentAlignment = {
          description = "The alignment of the content in the table cell. The default alignment matches the alignment for newly created table cells in the Slides editor.",
          enum = {
            "CONTENT_ALIGNMENT_UNSPECIFIED",
            "CONTENT_ALIGNMENT_UNSUPPORTED",
            "TOP",
            "MIDDLE",
            "BOTTOM",
          },
          enumDescriptions = {
            "An unspecified content alignment. The content alignment is inherited from the parent if it exists.",
            "An unsupported content alignment.",
            "An alignment that aligns the content to the top of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType 't'.",
            "An alignment that aligns the content to the middle of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'ctr'.",
            "An alignment that aligns the content to the bottom of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'b'.",
          },
          type = "string",
        },
        tableCellBackgroundFill = {
          ["$ref"] = "TableCellBackgroundFill",
          description = "The background fill of the table cell. The default fill matches the fill for newly created table cells in the Slides editor.",
        },
      },
      type = "object",
    },
    TableColumnProperties = {
      description = "Properties of each column in a table.",
      id = "TableColumnProperties",
      properties = {
        columnWidth = {
          ["$ref"] = "Dimension",
          description = "Width of a column.",
        },
      },
      type = "object",
    },
    TableRange = {
      description = "A table range represents a reference to a subset of a table. It's important to note that the cells specified by a table range do not necessarily form a rectangle. For example, let's say we have a 3 x 3 table where all the cells of the last row are merged together. The table looks like this: [ ] A table range with location = (0, 0), row span = 3 and column span = 2 specifies the following cells: x x [ x x x ]",
      id = "TableRange",
      properties = {
        columnSpan = {
          description = "The column span of the table range.",
          format = "int32",
          type = "integer",
        },
        location = {
          ["$ref"] = "TableCellLocation",
          description = "The starting location of the table range.",
        },
        rowSpan = {
          description = "The row span of the table range.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TableRow = {
      description = "Properties and contents of each row in a table.",
      id = "TableRow",
      properties = {
        rowHeight = {
          ["$ref"] = "Dimension",
          description = "Height of a row.",
        },
        tableCells = {
          description = "Properties and contents of each cell. Cells that span multiple columns are represented only once with a column_span greater than 1. As a result, the length of this collection does not always match the number of columns of the entire table.",
          items = {
            ["$ref"] = "TableCell",
          },
          type = "array",
        },
        tableRowProperties = {
          ["$ref"] = "TableRowProperties",
          description = "Properties of the row.",
        },
      },
      type = "object",
    },
    TableRowProperties = {
      description = "Properties of each row in a table.",
      id = "TableRowProperties",
      properties = {
        minRowHeight = {
          ["$ref"] = "Dimension",
          description = "Minimum height of the row. The row will be rendered in the Slides editor at a height equal to or greater than this value in order to show all the text in the row's cell(s).",
        },
      },
      type = "object",
    },
    TextContent = {
      description = "The general text content. The text must reside in a compatible shape (e.g. text box or rectangle) or a table cell in a page.",
      id = "TextContent",
      properties = {
        lists = {
          additionalProperties = {
            ["$ref"] = "List",
          },
          description = "The bulleted lists contained in this text, keyed by list ID.",
          type = "object",
        },
        textElements = {
          description = "The text contents broken down into its component parts, including styling information. This property is read-only.",
          items = {
            ["$ref"] = "TextElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TextElement = {
      description = "A TextElement describes the content of a range of indices in the text content of a Shape or TableCell.",
      id = "TextElement",
      properties = {
        autoText = {
          ["$ref"] = "AutoText",
          description = "A TextElement representing a spot in the text that is dynamically replaced with content that can change over time.",
        },
        endIndex = {
          description = "The zero-based end index of this text element, exclusive, in Unicode code units.",
          format = "int32",
          type = "integer",
        },
        paragraphMarker = {
          ["$ref"] = "ParagraphMarker",
          description = "A marker representing the beginning of a new paragraph. The `start_index` and `end_index` of this TextElement represent the range of the paragraph. Other TextElements with an index range contained inside this paragraph's range are considered to be part of this paragraph. The range of indices of two separate paragraphs will never overlap.",
        },
        startIndex = {
          description = "The zero-based start index of this text element, in Unicode code units.",
          format = "int32",
          type = "integer",
        },
        textRun = {
          ["$ref"] = "TextRun",
          description = "A TextElement representing a run of text where all of the characters in the run have the same TextStyle. The `start_index` and `end_index` of TextRuns will always be fully contained in the index range of a single `paragraph_marker` TextElement. In other words, a TextRun will never span multiple paragraphs.",
        },
      },
      type = "object",
    },
    TextRun = {
      description = "A TextElement kind that represents a run of text that all has the same styling.",
      id = "TextRun",
      properties = {
        content = {
          description = "The text of this run.",
          type = "string",
        },
        style = {
          ["$ref"] = "TextStyle",
          description = "The styling applied to this run.",
        },
      },
      type = "object",
    },
    TextStyle = {
      description = "Represents the styling that can be applied to a TextRun. If this text is contained in a shape with a parent placeholder, then these text styles may be inherited from the parent. Which text styles are inherited depend on the nesting level of lists: * A text run in a paragraph that is not in a list will inherit its text style from the the newline character in the paragraph at the 0 nesting level of the list inside the parent placeholder. * A text run in a paragraph that is in a list will inherit its text style from the newline character in the paragraph at its corresponding nesting level of the list inside the parent placeholder. Inherited text styles are represented as unset fields in this message. If text is contained in a shape without a parent placeholder, unsetting these fields will revert the style to a value matching the defaults in the Slides editor.",
      id = "TextStyle",
      properties = {
        backgroundColor = {
          ["$ref"] = "OptionalColor",
          description = "The background color of the text. If set, the color is either opaque or transparent, depending on if the `opaque_color` field in it is set.",
        },
        baselineOffset = {
          description = "The text's vertical offset from its normal position. Text with `SUPERSCRIPT` or `SUBSCRIPT` baseline offsets is automatically rendered in a smaller font size, computed based on the `font_size` field. The `font_size` itself is not affected by changes in this field.",
          enum = {
            "BASELINE_OFFSET_UNSPECIFIED",
            "NONE",
            "SUPERSCRIPT",
            "SUBSCRIPT",
          },
          enumDescriptions = {
            "The text's baseline offset is inherited from the parent.",
            "The text is not vertically offset.",
            "The text is vertically offset upwards (superscript).",
            "The text is vertically offset downwards (subscript).",
          },
          type = "string",
        },
        bold = {
          description = "Whether or not the text is rendered as bold.",
          type = "boolean",
        },
        fontFamily = {
          description = "The font family of the text. The font family can be any font from the Font menu in Slides or from [Google Fonts] (https://fonts.google.com/). If the font name is unrecognized, the text is rendered in `Arial`. Some fonts can affect the weight of the text. If an update request specifies values for both `font_family` and `bold`, the explicitly-set `bold` value is used.",
          type = "string",
        },
        fontSize = {
          ["$ref"] = "Dimension",
          description = "The size of the text's font. When read, the `font_size` will specified in points.",
        },
        foregroundColor = {
          ["$ref"] = "OptionalColor",
          description = "The color of the text itself. If set, the color is either opaque or transparent, depending on if the `opaque_color` field in it is set.",
        },
        italic = {
          description = "Whether or not the text is italicized.",
          type = "boolean",
        },
        link = {
          ["$ref"] = "Link",
          description = "The hyperlink destination of the text. If unset, there is no link. Links are not inherited from parent text. Changing the link in an update request causes some other changes to the text style of the range: * When setting a link, the text foreground color will be set to ThemeColorType.HYPERLINK and the text will be underlined. If these fields are modified in the same request, those values will be used instead of the link defaults. * Setting a link on a text range that overlaps with an existing link will also update the existing link to point to the new URL. * Links are not settable on newline characters. As a result, setting a link on a text range that crosses a paragraph boundary, such as `\"ABC\\n123\"`, will separate the newline character(s) into their own text runs. The link will be applied separately to the runs before and after the newline. * Removing a link will update the text style of the range to match the style of the preceding text (or the default text styles if the preceding text is another link) unless different styles are being set in the same request.",
        },
        smallCaps = {
          description = "Whether or not the text is in small capital letters.",
          type = "boolean",
        },
        strikethrough = {
          description = "Whether or not the text is struck through.",
          type = "boolean",
        },
        underline = {
          description = "Whether or not the text is underlined.",
          type = "boolean",
        },
        weightedFontFamily = {
          ["$ref"] = "WeightedFontFamily",
          description = "The font family and rendered weight of the text. This field is an extension of `font_family` meant to support explicit font weights without breaking backwards compatibility. As such, when reading the style of a range of text, the value of `weighted_font_family#font_family` will always be equal to that of `font_family`. However, when writing, if both fields are included in the field mask (either explicitly or through the wildcard `\"*\"`), their values are reconciled as follows: * If `font_family` is set and `weighted_font_family` is not, the value of `font_family` is applied with weight `400` (\"normal\"). * If both fields are set, the value of `font_family` must match that of `weighted_font_family#font_family`. If so, the font family and weight of `weighted_font_family` is applied. Otherwise, a 400 bad request error is returned. * If `weighted_font_family` is set and `font_family` is not, the font family and weight of `weighted_font_family` is applied. * If neither field is set, the font family and weight of the text inherit from the parent. Note that these properties cannot inherit separately from each other. If an update request specifies values for both `weighted_font_family` and `bold`, the `weighted_font_family` is applied first, then `bold`. If `weighted_font_family#weight` is not set, it defaults to `400`. If `weighted_font_family` is set, then `weighted_font_family#font_family` must also be set with a non-empty value. Otherwise, a 400 bad request error is returned.",
        },
      },
      type = "object",
    },
    ThemeColorPair = {
      description = "A pair mapping a theme color type to the concrete color it represents.",
      id = "ThemeColorPair",
      properties = {
        color = {
          ["$ref"] = "RgbColor",
          description = "The concrete color corresponding to the theme color type above.",
        },
        type = {
          description = "The type of the theme color.",
          enum = {
            "THEME_COLOR_TYPE_UNSPECIFIED",
            "DARK1",
            "LIGHT1",
            "DARK2",
            "LIGHT2",
            "ACCENT1",
            "ACCENT2",
            "ACCENT3",
            "ACCENT4",
            "ACCENT5",
            "ACCENT6",
            "HYPERLINK",
            "FOLLOWED_HYPERLINK",
            "TEXT1",
            "BACKGROUND1",
            "TEXT2",
            "BACKGROUND2",
          },
          enumDescriptions = {
            "Unspecified theme color. This value should not be used.",
            "Represents the first dark color.",
            "Represents the first light color.",
            "Represents the second dark color.",
            "Represents the second light color.",
            "Represents the first accent color.",
            "Represents the second accent color.",
            "Represents the third accent color.",
            "Represents the fourth accent color.",
            "Represents the fifth accent color.",
            "Represents the sixth accent color.",
            "Represents the color to use for hyperlinks.",
            "Represents the color to use for visited hyperlinks.",
            "Represents the first text color.",
            "Represents the first background color.",
            "Represents the second text color.",
            "Represents the second background color.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Thumbnail = {
      description = "The thumbnail of a page.",
      id = "Thumbnail",
      properties = {
        contentUrl = {
          description = "The content URL of the thumbnail image. The URL to the image has a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the image as the original requester. Access to the image may be lost if the presentation's sharing settings change. The mime type of the thumbnail image is the same as specified in the `GetPageThumbnailRequest`.",
          type = "string",
        },
        height = {
          description = "The positive height in pixels of the thumbnail image.",
          format = "int32",
          type = "integer",
        },
        width = {
          description = "The positive width in pixels of the thumbnail image.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UngroupObjectsRequest = {
      description = "Ungroups objects, such as groups.",
      id = "UngroupObjectsRequest",
      properties = {
        objectIds = {
          description = "The object IDs of the objects to ungroup. Only groups that are not inside other groups can be ungrouped. All the groups should be on the same page. The group itself is deleted. The visual sizes and positions of all the children are preserved.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UnmergeTableCellsRequest = {
      description = "Unmerges cells in a Table.",
      id = "UnmergeTableCellsRequest",
      properties = {
        objectId = {
          description = "The object ID of the table.",
          type = "string",
        },
        tableRange = {
          ["$ref"] = "TableRange",
          description = "The table range specifying which cells of the table to unmerge. All merged cells in this range will be unmerged, and cells that are already unmerged will not be affected. If the range has no merged cells, the request will do nothing. If there is text in any of the merged cells, the text will remain in the upper-left (\"head\") cell of the resulting block of unmerged cells.",
        },
      },
      type = "object",
    },
    UpdateImagePropertiesRequest = {
      description = "Update the properties of an Image.",
      id = "UpdateImagePropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `imageProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the image outline color, set `fields` to `\"outline.outlineFill.solidFill.color\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        imageProperties = {
          ["$ref"] = "ImageProperties",
          description = "The image properties to update.",
        },
        objectId = {
          description = "The object ID of the image the updates are applied to.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateLineCategoryRequest = {
      description = "Updates the category of a line.",
      id = "UpdateLineCategoryRequest",
      properties = {
        lineCategory = {
          description = "The line category to update to. The exact line type is determined based on the category to update to and how it's routed to connect to other page elements.",
          enum = {
            "LINE_CATEGORY_UNSPECIFIED",
            "STRAIGHT",
            "BENT",
            "CURVED",
          },
          enumDescriptions = {
            "Unspecified line category.",
            "Straight connectors, including straight connector 1.",
            "Bent connectors, including bent connector 2 to 5.",
            "Curved connectors, including curved connector 2 to 5.",
          },
          type = "string",
        },
        objectId = {
          description = "The object ID of the line the update is applied to. Only a line with a category indicating it is a \"connector\" can be updated. The line may be rerouted after updating its category.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateLinePropertiesRequest = {
      description = "Updates the properties of a Line.",
      id = "UpdateLinePropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `lineProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the line solid fill color, set `fields` to `\"lineFill.solidFill.color\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        lineProperties = {
          ["$ref"] = "LineProperties",
          description = "The line properties to update.",
        },
        objectId = {
          description = "The object ID of the line the update is applied to.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdatePageElementAltTextRequest = {
      description = "Updates the alt text title and/or description of a page element.",
      id = "UpdatePageElementAltTextRequest",
      properties = {
        description = {
          description = "The updated alt text description of the page element. If unset the existing value will be maintained. The description is exposed to screen readers and other accessibility interfaces. Only use human readable values related to the content of the page element.",
          type = "string",
        },
        objectId = {
          description = "The object ID of the page element the updates are applied to.",
          type = "string",
        },
        title = {
          description = "The updated alt text title of the page element. If unset the existing value will be maintained. The title is exposed to screen readers and other accessibility interfaces. Only use human readable values related to the content of the page element.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdatePageElementTransformRequest = {
      description = "Updates the transform of a page element. Updating the transform of a group will change the absolute transform of the page elements in that group, which can change their visual appearance. See the documentation for PageElement.transform for more details.",
      id = "UpdatePageElementTransformRequest",
      properties = {
        applyMode = {
          description = "The apply mode of the transform update.",
          enum = {
            "APPLY_MODE_UNSPECIFIED",
            "RELATIVE",
            "ABSOLUTE",
          },
          enumDescriptions = {
            "Unspecified mode.",
            "Applies the new AffineTransform matrix to the existing one, and replaces the existing one with the resulting concatenation.",
            "Replaces the existing AffineTransform matrix with the new one.",
          },
          type = "string",
        },
        objectId = {
          description = "The object ID of the page element to update.",
          type = "string",
        },
        transform = {
          ["$ref"] = "AffineTransform",
          description = "The input transform matrix used to update the page element.",
        },
      },
      type = "object",
    },
    UpdatePageElementsZOrderRequest = {
      description = "Updates the Z-order of page elements. Z-order is an ordering of the elements on the page from back to front. The page element in the front may cover the elements that are behind it.",
      id = "UpdatePageElementsZOrderRequest",
      properties = {
        operation = {
          description = "The Z-order operation to apply on the page elements. When applying the operation on multiple page elements, the relative Z-orders within these page elements before the operation is maintained.",
          enum = {
            "Z_ORDER_OPERATION_UNSPECIFIED",
            "BRING_TO_FRONT",
            "BRING_FORWARD",
            "SEND_BACKWARD",
            "SEND_TO_BACK",
          },
          enumDescriptions = {
            "Unspecified operation.",
            "Brings the page elements to the front of the page.",
            "Brings the page elements forward on the page by one element relative to the forwardmost one in the specified page elements.",
            "Sends the page elements backward on the page by one element relative to the furthest behind one in the specified page elements.",
            "Sends the page elements to the back of the page.",
          },
          type = "string",
        },
        pageElementObjectIds = {
          description = "The object IDs of the page elements to update. All the page elements must be on the same page and must not be grouped.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdatePagePropertiesRequest = {
      description = "Updates the properties of a Page.",
      id = "UpdatePagePropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `pageProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the page background solid fill color, set `fields` to `\"pageBackgroundFill.solidFill.color\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the page the update is applied to.",
          type = "string",
        },
        pageProperties = {
          ["$ref"] = "PageProperties",
          description = "The page properties to update.",
        },
      },
      type = "object",
    },
    UpdateParagraphStyleRequest = {
      description = "Updates the styling for all of the paragraphs within a Shape or Table that overlap with the given text index range.",
      id = "UpdateParagraphStyleRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The location of the cell in the table containing the paragraph(s) to style. If `object_id` refers to a table, `cell_location` must have a value. Otherwise, it must not.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `style` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example, to update the paragraph alignment, set `fields` to `\"alignment\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the shape or table with the text to be styled.",
          type = "string",
        },
        style = {
          ["$ref"] = "ParagraphStyle",
          description = "The paragraph's style.",
        },
        textRange = {
          ["$ref"] = "Range",
          description = "The range of text containing the paragraph(s) to style.",
        },
      },
      type = "object",
    },
    UpdateShapePropertiesRequest = {
      description = "Update the properties of a Shape.",
      id = "UpdateShapePropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `shapeProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the shape background solid fill color, set `fields` to `\"shapeBackgroundFill.solidFill.color\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the shape the updates are applied to.",
          type = "string",
        },
        shapeProperties = {
          ["$ref"] = "ShapeProperties",
          description = "The shape properties to update.",
        },
      },
      type = "object",
    },
    UpdateSlidePropertiesRequest = {
      description = "Updates the properties of a Slide.",
      id = "UpdateSlidePropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root 'slideProperties' is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update whether a slide is skipped, set `fields` to `\"isSkipped\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the slide the update is applied to.",
          type = "string",
        },
        slideProperties = {
          ["$ref"] = "SlideProperties",
          description = "The slide properties to update.",
        },
      },
      type = "object",
    },
    UpdateSlidesPositionRequest = {
      description = "Updates the position of slides in the presentation.",
      id = "UpdateSlidesPositionRequest",
      properties = {
        insertionIndex = {
          description = "The index where the slides should be inserted, based on the slide arrangement before the move takes place. Must be between zero and the number of slides in the presentation, inclusive.",
          format = "int32",
          type = "integer",
        },
        slideObjectIds = {
          description = "The IDs of the slides in the presentation that should be moved. The slides in this list must be in existing presentation order, without duplicates.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateTableBorderPropertiesRequest = {
      description = "Updates the properties of the table borders in a Table.",
      id = "UpdateTableBorderPropertiesRequest",
      properties = {
        borderPosition = {
          description = "The border position in the table range the updates should apply to. If a border position is not specified, the updates will apply to all borders in the table range.",
          enum = {
            "ALL",
            "BOTTOM",
            "INNER",
            "INNER_HORIZONTAL",
            "INNER_VERTICAL",
            "LEFT",
            "OUTER",
            "RIGHT",
            "TOP",
          },
          enumDescriptions = {
            "All borders in the range.",
            "Borders at the bottom of the range.",
            "Borders on the inside of the range.",
            "Horizontal borders on the inside of the range.",
            "Vertical borders on the inside of the range.",
            "Borders at the left of the range.",
            "Borders along the outside of the range.",
            "Borders at the right of the range.",
            "Borders at the top of the range.",
          },
          type = "string",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `tableBorderProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the table border solid fill color, set `fields` to `\"tableBorderFill.solidFill.color\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the table.",
          type = "string",
        },
        tableBorderProperties = {
          ["$ref"] = "TableBorderProperties",
          description = "The table border properties to update.",
        },
        tableRange = {
          ["$ref"] = "TableRange",
          description = "The table range representing the subset of the table to which the updates are applied. If a table range is not specified, the updates will apply to the entire table.",
        },
      },
      type = "object",
    },
    UpdateTableCellPropertiesRequest = {
      description = "Update the properties of a TableCell.",
      id = "UpdateTableCellPropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `tableCellProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the table cell background solid fill color, set `fields` to `\"tableCellBackgroundFill.solidFill.color\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the table.",
          type = "string",
        },
        tableCellProperties = {
          ["$ref"] = "TableCellProperties",
          description = "The table cell properties to update.",
        },
        tableRange = {
          ["$ref"] = "TableRange",
          description = "The table range representing the subset of the table to which the updates are applied. If a table range is not specified, the updates will apply to the entire table.",
        },
      },
      type = "object",
    },
    UpdateTableColumnPropertiesRequest = {
      description = "Updates the properties of a Table column.",
      id = "UpdateTableColumnPropertiesRequest",
      properties = {
        columnIndices = {
          description = "The list of zero-based indices specifying which columns to update. If no indices are provided, all columns in the table will be updated.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `tableColumnProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the column width, set `fields` to `\"column_width\"`. If '\"column_width\"' is included in the field mask but the property is left unset, the column width will default to 406,400 EMU (32 points).",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the table.",
          type = "string",
        },
        tableColumnProperties = {
          ["$ref"] = "TableColumnProperties",
          description = "The table column properties to update. If the value of `table_column_properties#column_width` in the request is less than 406,400 EMU (32 points), a 400 bad request error is returned.",
        },
      },
      type = "object",
    },
    UpdateTableRowPropertiesRequest = {
      description = "Updates the properties of a Table row.",
      id = "UpdateTableRowPropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `tableRowProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the minimum row height, set `fields` to `\"min_row_height\"`. If '\"min_row_height\"' is included in the field mask but the property is left unset, the minimum row height will default to 0.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the table.",
          type = "string",
        },
        rowIndices = {
          description = "The list of zero-based indices specifying which rows to update. If no indices are provided, all rows in the table will be updated.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        tableRowProperties = {
          ["$ref"] = "TableRowProperties",
          description = "The table row properties to update.",
        },
      },
      type = "object",
    },
    UpdateTextStyleRequest = {
      description = "Update the styling of text in a Shape or Table.",
      id = "UpdateTextStyleRequest",
      properties = {
        cellLocation = {
          ["$ref"] = "TableCellLocation",
          description = "The location of the cell in the table containing the text to style. If `object_id` refers to a table, `cell_location` must have a value. Otherwise, it must not.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `style` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example, to update the text style to bold, set `fields` to `\"bold\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the shape or table with the text to be styled.",
          type = "string",
        },
        style = {
          ["$ref"] = "TextStyle",
          description = "The style(s) to set on the text. If the value for a particular style matches that of the parent, that style will be set to inherit. Certain text style changes may cause other changes meant to mirror the behavior of the Slides editor. See the documentation of TextStyle for more information.",
        },
        textRange = {
          ["$ref"] = "Range",
          description = "The range of text to style. The range may be extended to include adjacent newlines. If the range fully contains a paragraph belonging to a list, the paragraph's bullet is also updated with the matching text style.",
        },
      },
      type = "object",
    },
    UpdateVideoPropertiesRequest = {
      description = "Update the properties of a Video.",
      id = "UpdateVideoPropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `videoProperties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field. For example to update the video outline color, set `fields` to `\"outline.outlineFill.solidFill.color\"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The object ID of the video the updates are applied to.",
          type = "string",
        },
        videoProperties = {
          ["$ref"] = "VideoProperties",
          description = "The video properties to update.",
        },
      },
      type = "object",
    },
    Video = {
      description = "A PageElement kind representing a video.",
      id = "Video",
      properties = {
        id = {
          description = "The video source's unique identifier for this video.",
          type = "string",
        },
        source = {
          description = "The video source.",
          enum = {
            "SOURCE_UNSPECIFIED",
            "YOUTUBE",
            "DRIVE",
          },
          enumDescriptions = {
            "The video source is unspecified.",
            "The video source is YouTube.",
            "The video source is Google Drive.",
          },
          type = "string",
        },
        url = {
          description = "An URL to a video. The URL is valid as long as the source video exists and sharing settings do not change.",
          type = "string",
        },
        videoProperties = {
          ["$ref"] = "VideoProperties",
          description = "The properties of the video.",
        },
      },
      type = "object",
    },
    VideoProperties = {
      description = "The properties of the Video.",
      id = "VideoProperties",
      properties = {
        autoPlay = {
          description = "Whether to enable video autoplay when the page is displayed in present mode. Defaults to false.",
          type = "boolean",
        },
        ["end"] = {
          description = "The time at which to end playback, measured in seconds from the beginning of the video. If set, the end time should be after the start time. If not set or if you set this to a value that exceeds the video's length, the video will be played until its end.",
          format = "uint32",
          type = "integer",
        },
        mute = {
          description = "Whether to mute the audio during video playback. Defaults to false.",
          type = "boolean",
        },
        outline = {
          ["$ref"] = "Outline",
          description = "The outline of the video. The default outline matches the defaults for new videos created in the Slides editor.",
        },
        start = {
          description = "The time at which to start playback, measured in seconds from the beginning of the video. If set, the start time should be before the end time. If you set this to a value that exceeds the video's length in seconds, the video will be played from the last second. If not set, the video will be played from the beginning.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    WeightedFontFamily = {
      description = "Represents a font family and weight used to style a TextRun.",
      id = "WeightedFontFamily",
      properties = {
        fontFamily = {
          description = "The font family of the text. The font family can be any font from the Font menu in Slides or from [Google Fonts] (https://fonts.google.com/). If the font name is unrecognized, the text is rendered in `Arial`.",
          type = "string",
        },
        weight = {
          description = "The rendered weight of the text. This field can have any value that is a multiple of `100` between `100` and `900`, inclusive. This range corresponds to the numerical values described in the CSS 2.1 Specification, [section 15.6](https://www.w3.org/TR/CSS21/fonts.html#font-boldness), with non-numerical values disallowed. Weights greater than or equal to `700` are considered bold, and weights less than `700`are not bold. The default value is `400` (\"normal\").",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WordArt = {
      description = "A PageElement kind representing word art.",
      id = "WordArt",
      properties = {
        renderedText = {
          description = "The text rendered as word art.",
          type = "string",
        },
      },
      type = "object",
    },
    WriteControl = {
      description = "Provides control over how write requests are executed.",
      id = "WriteControl",
      properties = {
        requiredRevisionId = {
          description = "The revision ID of the presentation required for the write request. If specified and the required revision ID doesn't match the presentation's current revision ID, the request is not processed and returns a 400 bad request error. When a required revision ID is returned in a response, it indicates the revision ID of the document after the request was applied.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Slides API",
  version = "v1",
  version_module = true,
}
