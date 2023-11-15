return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/firebase"] = {
          description = "View and administer all your Firebase data and settings",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://firebasedynamiclinks.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Firebase Dynamic Links",
  description = "Programmatically creates and manages Firebase Dynamic Links.",
  discoveryVersion = "v1",
  documentationLink = "https://firebase.google.com/docs/dynamic-links/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "firebasedynamiclinks:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://firebasedynamiclinks.mtls.googleapis.com/",
  name = "firebasedynamiclinks",
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
    managedShortLinks = {
      methods = {
        create = {
          description = "Creates a managed short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. This differs from CreateShortDynamicLink in the following ways: - The request will also contain a name for the link (non unique name for the front end). - The response must be authenticated with an auth token (generated with the admin service account). - The link will appear in the FDL list of links in the console front end. The Dynamic Link domain in the request must be owned by requester's Firebase project.",
          flatPath = "v1/managedShortLinks:create",
          httpMethod = "POST",
          id = "firebasedynamiclinks.managedShortLinks.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/managedShortLinks:create",
          request = {
            ["$ref"] = "CreateManagedShortLinkRequest",
          },
          response = {
            ["$ref"] = "CreateManagedShortLinkResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/firebase",
          },
        },
      },
    },
    shortLinks = {
      methods = {
        create = {
          description = "Creates a short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. Repeated calls with the same long Dynamic Link or Dynamic Link information will produce the same short Dynamic Link. The Dynamic Link domain in the request must be owned by requester's Firebase project.",
          flatPath = "v1/shortLinks",
          httpMethod = "POST",
          id = "firebasedynamiclinks.shortLinks.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/shortLinks",
          request = {
            ["$ref"] = "CreateShortDynamicLinkRequest",
          },
          response = {
            ["$ref"] = "CreateShortDynamicLinkResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/firebase",
          },
        },
      },
    },
    v1 = {
      methods = {
        getLinkStats = {
          description = "Fetches analytics stats of a short Dynamic Link for a given duration. Metrics include number of clicks, redirects, installs, app first opens, and app reopens.",
          flatPath = "v1/{dynamicLink}/linkStats",
          httpMethod = "GET",
          id = "firebasedynamiclinks.getLinkStats",
          parameterOrder = {
            "dynamicLink",
          },
          parameters = {
            durationDays = {
              description = "The span of time requested in days.",
              format = "int64",
              location = "query",
              type = "string",
            },
            dynamicLink = {
              description = "Dynamic Link URL. e.g. https://abcd.app.goo.gl/wxyz",
              location = "path",
              required = true,
              type = "string",
            },
            sdkVersion = {
              description = "Google SDK version. Version takes the form \"$major.$minor.$patch\"",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{dynamicLink}/linkStats",
          response = {
            ["$ref"] = "DynamicLinkStats",
          },
          scopes = {
            "https://www.googleapis.com/auth/firebase",
          },
        },
        installAttribution = {
          description = "Get iOS strong/weak-match info for post-install attribution.",
          flatPath = "v1/installAttribution",
          httpMethod = "POST",
          id = "firebasedynamiclinks.installAttribution",
          parameterOrder = {},
          parameters = {},
          path = "v1/installAttribution",
          request = {
            ["$ref"] = "GetIosPostInstallAttributionRequest",
          },
          response = {
            ["$ref"] = "GetIosPostInstallAttributionResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/firebase",
          },
        },
        reopenAttribution = {
          description = "Get iOS reopen attribution for app universal link open deeplinking.",
          flatPath = "v1/reopenAttribution",
          httpMethod = "POST",
          id = "firebasedynamiclinks.reopenAttribution",
          parameterOrder = {},
          parameters = {},
          path = "v1/reopenAttribution",
          request = {
            ["$ref"] = "GetIosReopenAttributionRequest",
          },
          response = {
            ["$ref"] = "GetIosReopenAttributionResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/firebase",
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://firebasedynamiclinks.googleapis.com/",
  schemas = {
    AnalyticsInfo = {
      description = "Tracking parameters supported by Dynamic Link.",
      id = "AnalyticsInfo",
      properties = {
        googlePlayAnalytics = {
          ["$ref"] = "GooglePlayAnalytics",
          description = "Google Play Campaign Measurements.",
        },
        itunesConnectAnalytics = {
          ["$ref"] = "ITunesConnectAnalytics",
          description = "iTunes Connect App Analytics.",
        },
      },
      type = "object",
    },
    AndroidInfo = {
      description = "Android related attributes to the Dynamic Link.",
      id = "AndroidInfo",
      properties = {
        androidFallbackLink = {
          description = "Link to open on Android if the app is not installed.",
          type = "string",
        },
        androidLink = {
          description = "If specified, this overrides the ‘link’ parameter on Android.",
          type = "string",
        },
        androidMinPackageVersionCode = {
          description = "Minimum version code for the Android app. If the installed app’s version code is lower, then the user is taken to the Play Store.",
          type = "string",
        },
        androidPackageName = {
          description = "Android package name of the app.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateManagedShortLinkRequest = {
      description = "Request to create a managed Short Dynamic Link.",
      id = "CreateManagedShortLinkRequest",
      properties = {
        dynamicLinkInfo = {
          ["$ref"] = "DynamicLinkInfo",
          description = "Information about the Dynamic Link to be shortened. [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).",
        },
        longDynamicLink = {
          description = "Full long Dynamic Link URL with desired query parameters specified. For example, \"https://sample.app.goo.gl/?link=http://www.google.com&apn=com.sample\", [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).",
          type = "string",
        },
        name = {
          description = "Link name to associate with the link. It's used for marketer to identify manually-created links in the Firebase console (https://console.firebase.google.com/). Links must be named to be tracked.",
          type = "string",
        },
        sdkVersion = {
          description = "Google SDK version. Version takes the form \"$major.$minor.$patch\"",
          type = "string",
        },
        suffix = {
          ["$ref"] = "Suffix",
          description = "Short Dynamic Link suffix. Optional.",
        },
      },
      type = "object",
    },
    CreateManagedShortLinkResponse = {
      description = "Response to create a short Dynamic Link.",
      id = "CreateManagedShortLinkResponse",
      properties = {
        managedShortLink = {
          ["$ref"] = "ManagedShortLink",
          description = "Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz",
        },
        previewLink = {
          description = "Preview link to show the link flow chart. (debug info.)",
          type = "string",
        },
        warning = {
          description = "Information about potential warnings on link creation.",
          items = {
            ["$ref"] = "DynamicLinkWarning",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreateShortDynamicLinkRequest = {
      description = "Request to create a short Dynamic Link.",
      id = "CreateShortDynamicLinkRequest",
      properties = {
        dynamicLinkInfo = {
          ["$ref"] = "DynamicLinkInfo",
          description = "Information about the Dynamic Link to be shortened. [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).",
        },
        longDynamicLink = {
          description = "Full long Dynamic Link URL with desired query parameters specified. For example, \"https://sample.app.goo.gl/?link=http://www.google.com&apn=com.sample\", [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).",
          type = "string",
        },
        sdkVersion = {
          description = "Google SDK version. Version takes the form \"$major.$minor.$patch\"",
          type = "string",
        },
        suffix = {
          ["$ref"] = "Suffix",
          description = "Short Dynamic Link suffix. Optional.",
        },
      },
      type = "object",
    },
    CreateShortDynamicLinkResponse = {
      description = "Response to create a short Dynamic Link.",
      id = "CreateShortDynamicLinkResponse",
      properties = {
        previewLink = {
          description = "Preview link to show the link flow chart. (debug info.)",
          type = "string",
        },
        shortLink = {
          description = "Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz",
          type = "string",
        },
        warning = {
          description = "Information about potential warnings on link creation.",
          items = {
            ["$ref"] = "DynamicLinkWarning",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DesktopInfo = {
      description = "Desktop related attributes to the Dynamic Link.",
      id = "DesktopInfo",
      properties = {
        desktopFallbackLink = {
          description = "Link to open on desktop.",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceInfo = {
      description = "Signals associated with the device making the request.",
      id = "DeviceInfo",
      properties = {
        deviceModelName = {
          description = "Device model name.",
          type = "string",
        },
        languageCode = {
          description = "Device language code setting.",
          type = "string",
        },
        languageCodeFromWebview = {
          description = "Device language code setting obtained by executing JavaScript code in WebView.",
          type = "string",
        },
        languageCodeRaw = {
          description = "Device language code raw setting. iOS does returns language code in different format than iOS WebView. For example WebView returns en_US, but iOS returns en-US. Field below will return raw value returned by iOS.",
          type = "string",
        },
        screenResolutionHeight = {
          description = "Device display resolution height.",
          format = "int64",
          type = "string",
        },
        screenResolutionWidth = {
          description = "Device display resolution width.",
          format = "int64",
          type = "string",
        },
        timezone = {
          description = "Device timezone setting.",
          type = "string",
        },
      },
      type = "object",
    },
    DynamicLinkEventStat = {
      description = "Dynamic Link event stat.",
      id = "DynamicLinkEventStat",
      properties = {
        count = {
          description = "The number of times this event occurred.",
          format = "int64",
          type = "string",
        },
        event = {
          description = "Link event.",
          enum = {
            "DYNAMIC_LINK_EVENT_UNSPECIFIED",
            "CLICK",
            "REDIRECT",
            "APP_INSTALL",
            "APP_FIRST_OPEN",
            "APP_RE_OPEN",
          },
          enumDescriptions = {
            "Unspecified type.",
            "Indicates that an FDL is clicked by users.",
            "Indicates that an FDL redirects users to fallback link.",
            "Indicates that an FDL triggers an app install from Play store, currently it's impossible to get stats from App store.",
            "Indicates that the app is opened for the first time after an install triggered by FDLs",
            "Indicates that the app is opened via an FDL for non-first time.",
          },
          type = "string",
        },
        platform = {
          description = "Requested platform.",
          enum = {
            "DYNAMIC_LINK_PLATFORM_UNSPECIFIED",
            "ANDROID",
            "IOS",
            "DESKTOP",
            "OTHER",
          },
          enumDescriptions = {
            "Unspecified platform.",
            "Represents Android platform. All apps and browsers on Android are classfied in this category.",
            "Represents iOS platform. All apps and browsers on iOS are classfied in this category.",
            "Represents desktop.",
            "Platforms are not categorized as Android/iOS/Destop fall into here.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DynamicLinkInfo = {
      description = "Information about a Dynamic Link.",
      id = "DynamicLinkInfo",
      properties = {
        analyticsInfo = {
          ["$ref"] = "AnalyticsInfo",
          description = "Parameters used for tracking. See all tracking parameters in the [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).",
        },
        androidInfo = {
          ["$ref"] = "AndroidInfo",
          description = "Android related information. See Android related parameters in the [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).",
        },
        desktopInfo = {
          ["$ref"] = "DesktopInfo",
          description = "Desktop related information. See desktop related parameters in the [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).",
        },
        domainUriPrefix = {
          description = "E.g. https://maps.app.goo.gl, https://maps.page.link, https://g.co/maps More examples can be found in description of getNormalizedUriPrefix in j/c/g/firebase/dynamiclinks/uri/DdlDomain.java Will fallback to dynamic_link_domain is this field is missing",
          type = "string",
        },
        dynamicLinkDomain = {
          description = "Dynamic Links domain that the project owns, e.g. abcd.app.goo.gl [Learn more](https://firebase.google.com/docs/dynamic-links/android/receive) on how to set up Dynamic Link domain associated with your Firebase project. Required if missing domain_uri_prefix.",
          type = "string",
        },
        iosInfo = {
          ["$ref"] = "IosInfo",
          description = "iOS related information. See iOS related parameters in the [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).",
        },
        link = {
          description = "The link your app will open, You can specify any URL your app can handle. This link must be a well-formatted URL, be properly URL-encoded, and use the HTTP or HTTPS scheme. See 'link' parameters in the [documentation](https://firebase.google.com/docs/dynamic-links/create-manually). Required.",
          type = "string",
        },
        navigationInfo = {
          ["$ref"] = "NavigationInfo",
          description = "Information of navigation behavior of a Firebase Dynamic Links.",
        },
        socialMetaTagInfo = {
          ["$ref"] = "SocialMetaTagInfo",
          description = "Parameters for social meta tag params. Used to set meta tag data for link previews on social sites.",
        },
      },
      type = "object",
    },
    DynamicLinkStats = {
      description = "Analytics stats of a Dynamic Link for a given timeframe.",
      id = "DynamicLinkStats",
      properties = {
        linkEventStats = {
          description = "Dynamic Link event stats.",
          items = {
            ["$ref"] = "DynamicLinkEventStat",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DynamicLinkWarning = {
      description = "Dynamic Links warning messages.",
      id = "DynamicLinkWarning",
      properties = {
        warningCode = {
          description = "The warning code.",
          enum = {
            "CODE_UNSPECIFIED",
            "NOT_IN_PROJECT_ANDROID_PACKAGE_NAME",
            "NOT_INTEGER_ANDROID_PACKAGE_MIN_VERSION",
            "UNNECESSARY_ANDROID_PACKAGE_MIN_VERSION",
            "NOT_URI_ANDROID_LINK",
            "UNNECESSARY_ANDROID_LINK",
            "NOT_URI_ANDROID_FALLBACK_LINK",
            "BAD_URI_SCHEME_ANDROID_FALLBACK_LINK",
            "NOT_IN_PROJECT_IOS_BUNDLE_ID",
            "NOT_IN_PROJECT_IPAD_BUNDLE_ID",
            "UNNECESSARY_IOS_URL_SCHEME",
            "NOT_NUMERIC_IOS_APP_STORE_ID",
            "UNNECESSARY_IOS_APP_STORE_ID",
            "NOT_URI_IOS_FALLBACK_LINK",
            "BAD_URI_SCHEME_IOS_FALLBACK_LINK",
            "NOT_URI_IPAD_FALLBACK_LINK",
            "BAD_URI_SCHEME_IPAD_FALLBACK_LINK",
            "BAD_DEBUG_PARAM",
            "BAD_AD_PARAM",
            "DEPRECATED_PARAM",
            "UNRECOGNIZED_PARAM",
            "TOO_LONG_PARAM",
            "NOT_URI_SOCIAL_IMAGE_LINK",
            "BAD_URI_SCHEME_SOCIAL_IMAGE_LINK",
            "NOT_URI_SOCIAL_URL",
            "BAD_URI_SCHEME_SOCIAL_URL",
            "LINK_LENGTH_TOO_LONG",
            "LINK_WITH_FRAGMENTS",
            "NOT_MATCHING_IOS_BUNDLE_ID_AND_STORE_ID",
          },
          enumDescriptions = {
            "Unknown code.",
            "The Android package does not match any in developer's DevConsole project.",
            "The Android minimum version code has to be a valid integer.",
            "Android package min version param is not needed, e.g. when 'apn' is missing.",
            "Android link is not a valid URI.",
            "Android link param is not needed, e.g. when param 'al' and 'link' have the same value..",
            "Android fallback link is not a valid URI.",
            "Android fallback link has an invalid (non http/https) URI scheme.",
            "The iOS bundle ID does not match any in developer's DevConsole project.",
            "The iPad bundle ID does not match any in developer's DevConsole project.",
            "iOS URL scheme is not needed, e.g. when 'ibi' are 'ipbi' are all missing.",
            "iOS app store ID format is incorrect, e.g. not numeric.",
            "iOS app store ID is not needed.",
            "iOS fallback link is not a valid URI.",
            "iOS fallback link has an invalid (non http/https) URI scheme.",
            "iPad fallback link is not a valid URI.",
            "iPad fallback link has an invalid (non http/https) URI scheme.",
            "Debug param format is incorrect.",
            "isAd param format is incorrect.",
            "Indicates a certain param is deprecated.",
            "Indicates certain paramater is not recognized.",
            "Indicates certain paramater is too long.",
            "Social meta tag image link is not a valid URI.",
            "Social meta tag image link has an invalid (non http/https) URI scheme.",
            "",
            "",
            "Dynamic Link URL length is too long.",
            "Dynamic Link URL contains fragments.",
            "The iOS bundle ID does not match with the given iOS store ID.",
          },
          type = "string",
        },
        warningDocumentLink = {
          description = "The document describing the warning, and helps resolve.",
          type = "string",
        },
        warningMessage = {
          description = "The warning message to help developers improve their requests.",
          type = "string",
        },
      },
      type = "object",
    },
    GetIosPostInstallAttributionRequest = {
      description = "Request for iSDK to execute strong match flow for post-install attribution. This is meant for iOS requests only. Requests from other platforms will not be honored.",
      id = "GetIosPostInstallAttributionRequest",
      properties = {
        appInstallationTime = {
          description = "App installation epoch time (https://en.wikipedia.org/wiki/Unix_time). This is a client signal for a more accurate weak match.",
          format = "int64",
          type = "string",
        },
        bundleId = {
          description = "APP bundle ID.",
          type = "string",
        },
        device = {
          ["$ref"] = "DeviceInfo",
          description = "Device information.",
        },
        iosVersion = {
          description = "iOS version, ie: 9.3.5. Consider adding \"build\".",
          type = "string",
        },
        retrievalMethod = {
          description = "App post install attribution retrieval information. Disambiguates mechanism (iSDK or developer invoked) to retrieve payload from clicked link.",
          enum = {
            "UNKNOWN_PAYLOAD_RETRIEVAL_METHOD",
            "IMPLICIT_WEAK_MATCH",
            "EXPLICIT_WEAK_MATCH",
            "EXPLICIT_STRONG_AFTER_WEAK_MATCH",
          },
          enumDescriptions = {
            "Unknown method.",
            "iSDK performs a server lookup by device fingerprint in the background when app is first-opened; no API called by developer.",
            "iSDK performs a server lookup by device fingerprint upon a dev API call.",
            "iSDK performs a strong match only if weak match is found upon a dev API call.",
          },
          type = "string",
        },
        sdkVersion = {
          description = "Google SDK version. Version takes the form \"$major.$minor.$patch\"",
          type = "string",
        },
        uniqueMatchLinkToCheck = {
          description = "Possible unique matched link that server need to check before performing fingerprint match. If passed link is short server need to expand the link. If link is long server need to vslidate the link.",
          type = "string",
        },
        visualStyle = {
          description = "Strong match page information. Disambiguates between default UI and custom page to present when strong match succeeds/fails to find cookie.",
          enum = {
            "UNKNOWN_VISUAL_STYLE",
            "DEFAULT_STYLE",
            "CUSTOM_STYLE",
          },
          enumDescriptions = {
            "Unknown style.",
            "Default style.",
            "Custom style.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GetIosPostInstallAttributionResponse = {
      description = "Response for iSDK to execute strong match flow for post-install attribution.",
      id = "GetIosPostInstallAttributionResponse",
      properties = {
        appMinimumVersion = {
          description = "The minimum version for app, specified by dev through ?imv= parameter. Return to iSDK to allow app to evaluate if current version meets this.",
          type = "string",
        },
        attributionConfidence = {
          description = "The confidence of the returned attribution.",
          enum = {
            "UNKNOWN_ATTRIBUTION_CONFIDENCE",
            "WEAK",
            "DEFAULT",
            "UNIQUE",
          },
          enumDescriptions = {
            "Unset.",
            "Weak confidence, more than one matching link found or link suspected to be false positive",
            "Default confidence, match based on fingerprint",
            "Unique confidence, match based on \"unique match link to check\" or other means",
          },
          type = "string",
        },
        deepLink = {
          description = "The deep-link attributed post-install via one of several techniques (fingerprint, copy unique).",
          type = "string",
        },
        externalBrowserDestinationLink = {
          description = "User-agent specific custom-scheme URIs for iSDK to open. This will be set according to the user-agent tha the click was originally made in. There is no Safari-equivalent custom-scheme open URLs. ie: googlechrome://www.example.com ie: firefox://open-url?url=http://www.example.com ie: opera-http://example.com",
          type = "string",
        },
        fallbackLink = {
          description = "The link to navigate to update the app if min version is not met. This is either (in order): 1) fallback link (from ?ifl= parameter, if specified by developer) or 2) AppStore URL (from ?isi= parameter, if specified), or 3) the payload link (from required link= parameter).",
          type = "string",
        },
        invitationId = {
          description = "Invitation ID attributed post-install via one of several techniques (fingerprint, copy unique).",
          type = "string",
        },
        isStrongMatchExecutable = {
          description = "Instruction for iSDK to attemmpt to perform strong match. For instance, if browser does not support/allow cookie or outside of support browsers, this will be false.",
          type = "boolean",
        },
        matchMessage = {
          description = "Describes why match failed, ie: \"discarded due to low confidence\". This message will be publicly visible.",
          type = "string",
        },
        requestIpVersion = {
          description = "Which IP version the request was made from.",
          enum = {
            "UNKNOWN_IP_VERSION",
            "IP_V4",
            "IP_V6",
          },
          enumDescriptions = {
            "Unset.",
            "Request made from an IPv4 IP address.",
            "Request made from an IPv6 IP address.",
          },
          type = "string",
        },
        requestedLink = {
          description = "Entire FDL (short or long) attributed post-install via one of several techniques (fingerprint, copy unique).",
          type = "string",
        },
        resolvedLink = {
          description = "The entire FDL, expanded from a short link. It is the same as the requested_link, if it is long. Parameters from this should not be used directly (ie: server can default utm_[campaign|medium|source] to a value when requested_link lack them, server determine the best fallback_link when requested_link specifies >1 fallback links).",
          type = "string",
        },
        utmCampaign = {
          description = "Scion campaign value to be propagated by iSDK to Scion at post-install.",
          type = "string",
        },
        utmContent = {
          description = "Scion content value to be propagated by iSDK to Scion at app-reopen.",
          type = "string",
        },
        utmMedium = {
          description = "Scion medium value to be propagated by iSDK to Scion at post-install.",
          type = "string",
        },
        utmSource = {
          description = "Scion source value to be propagated by iSDK to Scion at post-install.",
          type = "string",
        },
        utmTerm = {
          description = "Scion term value to be propagated by iSDK to Scion at app-reopen.",
          type = "string",
        },
      },
      type = "object",
    },
    GetIosReopenAttributionRequest = {
      description = "Request for iSDK to get reopen attribution for app universal link open deeplinking. This endpoint is meant for only iOS requests.",
      id = "GetIosReopenAttributionRequest",
      properties = {
        bundleId = {
          description = "APP bundle ID.",
          type = "string",
        },
        requestedLink = {
          description = "FDL link to be verified from an app universal link open. The FDL link can be one of: 1) short FDL. e.g. .page.link/, or 2) long FDL. e.g. .page.link/?{query params}, or 3) Invite FDL. e.g. .page.link/i/",
          type = "string",
        },
        sdkVersion = {
          description = "Google SDK version. Version takes the form \"$major.$minor.$patch\"",
          type = "string",
        },
      },
      type = "object",
    },
    GetIosReopenAttributionResponse = {
      description = "Response for iSDK to get reopen attribution for app universal link open deeplinking. This endpoint is meant for only iOS requests.",
      id = "GetIosReopenAttributionResponse",
      properties = {
        deepLink = {
          description = "The deep-link attributed the app universal link open. For both regular FDL links and invite FDL links.",
          type = "string",
        },
        invitationId = {
          description = "Optional invitation ID, for only invite typed requested FDL links.",
          type = "string",
        },
        iosMinAppVersion = {
          description = "FDL input value of the \"&imv=\" parameter, minimum app version to be returned to Google Firebase SDK running on iOS-9.",
          type = "string",
        },
        resolvedLink = {
          description = "The entire FDL, expanded from a short link. It is the same as the requested_link, if it is long.",
          type = "string",
        },
        utmCampaign = {
          description = "Scion campaign value to be propagated by iSDK to Scion at app-reopen.",
          type = "string",
        },
        utmContent = {
          description = "Scion content value to be propagated by iSDK to Scion at app-reopen.",
          type = "string",
        },
        utmMedium = {
          description = "Scion medium value to be propagated by iSDK to Scion at app-reopen.",
          type = "string",
        },
        utmSource = {
          description = "Scion source value to be propagated by iSDK to Scion at app-reopen.",
          type = "string",
        },
        utmTerm = {
          description = "Scion term value to be propagated by iSDK to Scion at app-reopen.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePlayAnalytics = {
      description = "Parameters for Google Play Campaign Measurements. [Learn more](https://developers.google.com/analytics/devguides/collection/android/v4/campaigns#campaign-params)",
      id = "GooglePlayAnalytics",
      properties = {
        gclid = {
          description = "Deprecated; FDL SDK does not process nor log it.",
          type = "string",
        },
        utmCampaign = {
          description = "Campaign name; used for keyword analysis to identify a specific product promotion or strategic campaign.",
          type = "string",
        },
        utmContent = {
          description = "Campaign content; used for A/B testing and content-targeted ads to differentiate ads or links that point to the same URL.",
          type = "string",
        },
        utmMedium = {
          description = "Campaign medium; used to identify a medium such as email or cost-per-click.",
          type = "string",
        },
        utmSource = {
          description = "Campaign source; used to identify a search engine, newsletter, or other source.",
          type = "string",
        },
        utmTerm = {
          description = "Campaign term; used with paid search to supply the keywords for ads.",
          type = "string",
        },
      },
      type = "object",
    },
    ITunesConnectAnalytics = {
      description = "Parameters for iTunes Connect App Analytics.",
      id = "ITunesConnectAnalytics",
      properties = {
        at = {
          description = "Affiliate token used to create affiliate-coded links.",
          type = "string",
        },
        ct = {
          description = "Campaign text that developers can optionally add to any link in order to track sales from a specific marketing campaign.",
          type = "string",
        },
        mt = {
          description = "iTune media types, including music, podcasts, audiobooks and so on.",
          type = "string",
        },
        pt = {
          description = "Provider token that enables analytics for Dynamic Links from within iTunes Connect.",
          type = "string",
        },
      },
      type = "object",
    },
    IosInfo = {
      description = "iOS related attributes to the Dynamic Link..",
      id = "IosInfo",
      properties = {
        iosAppStoreId = {
          description = "iOS App Store ID.",
          type = "string",
        },
        iosBundleId = {
          description = "iOS bundle ID of the app.",
          type = "string",
        },
        iosCustomScheme = {
          description = "Custom (destination) scheme to use for iOS. By default, we’ll use the bundle ID as the custom scheme. Developer can override this behavior using this param.",
          type = "string",
        },
        iosFallbackLink = {
          description = "Link to open on iOS if the app is not installed.",
          type = "string",
        },
        iosIpadBundleId = {
          description = "iPad bundle ID of the app.",
          type = "string",
        },
        iosIpadFallbackLink = {
          description = "If specified, this overrides the ios_fallback_link value on iPads.",
          type = "string",
        },
        iosMinimumVersion = {
          description = "iOS minimum version.",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedShortLink = {
      description = "Managed Short Link.",
      id = "ManagedShortLink",
      properties = {
        creationTime = {
          description = "Creation timestamp of the short link.",
          format = "google-datetime",
          type = "string",
        },
        flaggedAttribute = {
          description = "Attributes that have been flagged about this short url.",
          items = {
            enum = {
              "UNSPECIFIED_ATTRIBUTE",
              "SPAM",
            },
            enumDescriptions = {
              "Indicates that no attributes were found for this short url.",
              "Indicates that short url has been flagged by AbuseIAm team as spam.",
            },
            type = "string",
          },
          type = "array",
        },
        info = {
          ["$ref"] = "DynamicLinkInfo",
          description = "Full Dyamic Link info",
        },
        link = {
          description = "Short durable link url, for example, \"https://sample.app.goo.gl/xyz123\". Required.",
          type = "string",
        },
        linkName = {
          description = "Link name defined by the creator. Required.",
          type = "string",
        },
        visibility = {
          description = "Visibility status of link.",
          enum = {
            "UNSPECIFIED_VISIBILITY",
            "UNARCHIVED",
            "ARCHIVED",
            "NEVER_SHOWN",
          },
          enumDescriptions = {
            "Visibility of the link is not specified.",
            "Link created in console and should be shown in console.",
            "Link created in console and should not be shown in console (but can be shown in the console again if it is unarchived).",
            "Link created outside of console and should never be shown in console.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NavigationInfo = {
      description = "Information of navigation behavior.",
      id = "NavigationInfo",
      properties = {
        enableForcedRedirect = {
          description = "If this option is on, FDL click will be forced to redirect rather than show an interstitial page.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SocialMetaTagInfo = {
      description = "Parameters for social meta tag params. Used to set meta tag data for link previews on social sites.",
      id = "SocialMetaTagInfo",
      properties = {
        socialDescription = {
          description = "A short description of the link. Optional.",
          type = "string",
        },
        socialImageLink = {
          description = "An image url string. Optional.",
          type = "string",
        },
        socialTitle = {
          description = "Title to be displayed. Optional.",
          type = "string",
        },
      },
      type = "object",
    },
    Suffix = {
      description = "Short Dynamic Link suffix.",
      id = "Suffix",
      properties = {
        customSuffix = {
          description = "Only applies to Option.CUSTOM.",
          type = "string",
        },
        option = {
          description = "Suffix option.",
          enum = {
            "OPTION_UNSPECIFIED",
            "UNGUESSABLE",
            "SHORT",
            "CUSTOM",
          },
          enumDescriptions = {
            "The suffix option is not specified, performs as UNGUESSABLE .",
            "Short Dynamic Link suffix is a base62 [0-9A-Za-z] encoded string of a random generated 96 bit random number, which has a length of 17 chars. For example, \"nlAR8U4SlKRZw1cb2\". It prevents other people from guessing and crawling short Dynamic Links that contain personal identifiable information.",
            "Short Dynamic Link suffix is a base62 [0-9A-Za-z] string starting with a length of 4 chars. the length will increase when all the space is occupied.",
            "Custom DDL suffix is a client specified string, for example, \"buy2get1free\". NOTE: custom suffix should only be available to managed short link creation",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Firebase Dynamic Links API",
  version = "v1",
  version_module = true,
}
