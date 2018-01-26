// This is a generated file (see the discoveryapis_generator project).

library googleapis.firebasedynamiclinks.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client firebasedynamiclinks/v1';

/// Programmatically creates and manages Firebase Dynamic Links.
class FirebasedynamiclinksApi {
  /// View and administer all your Firebase data and settings
  static const FirebaseScope = "https://www.googleapis.com/auth/firebase";

  final commons.ApiRequester _requester;

  ShortLinksResourceApi get shortLinks => new ShortLinksResourceApi(_requester);
  V1ResourceApi get v1 => new V1ResourceApi(_requester);

  FirebasedynamiclinksApi(http.Client client,
      {core.String rootUrl: "https://firebasedynamiclinks-ipv6.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ShortLinksResourceApi {
  final commons.ApiRequester _requester;

  ShortLinksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a short Dynamic Link given either a valid long Dynamic Link or
  /// details such as Dynamic Link domain, Android and iOS app information.
  /// The created short Dynamic Link will not expire.
  ///
  /// Repeated calls with the same long Dynamic Link or Dynamic Link information
  /// will produce the same short Dynamic Link.
  ///
  /// The Dynamic Link domain in the request must be owned by requester's
  /// Firebase project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateShortDynamicLinkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateShortDynamicLinkResponse> create(
      CreateShortDynamicLinkRequest request,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/shortLinks';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CreateShortDynamicLinkResponse.fromJson(data));
  }
}

class V1ResourceApi {
  final commons.ApiRequester _requester;

  V1ResourceApi(commons.ApiRequester client) : _requester = client;

  /// Fetches analytics stats of a short Dynamic Link for a given
  /// duration. Metrics include number of clicks, redirects, installs,
  /// app first opens, and app reopens.
  ///
  /// Request parameters:
  ///
  /// [dynamicLink] - Dynamic Link URL. e.g. https://abcd.app.goo.gl/wxyz
  ///
  /// [durationDays] - The span of time requested in days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DynamicLinkStats].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DynamicLinkStats> getLinkStats(core.String dynamicLink,
      {core.String durationDays, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (dynamicLink == null) {
      throw new core.ArgumentError("Parameter dynamicLink is required.");
    }
    if (durationDays != null) {
      _queryParams["durationDays"] = [durationDays];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariable('$dynamicLink') + '/linkStats';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DynamicLinkStats.fromJson(data));
  }

  /// Get iOS strong/weak-match info for post-install attribution.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetIosPostInstallAttributionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetIosPostInstallAttributionResponse> installAttribution(
      GetIosPostInstallAttributionRequest request,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/installAttribution';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GetIosPostInstallAttributionResponse.fromJson(data));
  }
}

/// Tracking parameters supported by Dynamic Link.
class AnalyticsInfo {
  /// Google Play Campaign Measurements.
  GooglePlayAnalytics googlePlayAnalytics;

  /// iTunes Connect App Analytics.
  ITunesConnectAnalytics itunesConnectAnalytics;

  AnalyticsInfo();

  AnalyticsInfo.fromJson(core.Map _json) {
    if (_json.containsKey("googlePlayAnalytics")) {
      googlePlayAnalytics =
          new GooglePlayAnalytics.fromJson(_json["googlePlayAnalytics"]);
    }
    if (_json.containsKey("itunesConnectAnalytics")) {
      itunesConnectAnalytics =
          new ITunesConnectAnalytics.fromJson(_json["itunesConnectAnalytics"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (googlePlayAnalytics != null) {
      _json["googlePlayAnalytics"] = (googlePlayAnalytics).toJson();
    }
    if (itunesConnectAnalytics != null) {
      _json["itunesConnectAnalytics"] = (itunesConnectAnalytics).toJson();
    }
    return _json;
  }
}

/// Android related attributes to the Dynamic Link.
class AndroidInfo {
  /// Link to open on Android if the app is not installed.
  core.String androidFallbackLink;

  /// If specified, this overrides the ‘link’ parameter on Android.
  core.String androidLink;

  /// Minimum version code for the Android app. If the installed app’s version
  /// code is lower, then the user is taken to the Play Store.
  core.String androidMinPackageVersionCode;

  /// Android package name of the app.
  core.String androidPackageName;

  AndroidInfo();

  AndroidInfo.fromJson(core.Map _json) {
    if (_json.containsKey("androidFallbackLink")) {
      androidFallbackLink = _json["androidFallbackLink"];
    }
    if (_json.containsKey("androidLink")) {
      androidLink = _json["androidLink"];
    }
    if (_json.containsKey("androidMinPackageVersionCode")) {
      androidMinPackageVersionCode = _json["androidMinPackageVersionCode"];
    }
    if (_json.containsKey("androidPackageName")) {
      androidPackageName = _json["androidPackageName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidFallbackLink != null) {
      _json["androidFallbackLink"] = androidFallbackLink;
    }
    if (androidLink != null) {
      _json["androidLink"] = androidLink;
    }
    if (androidMinPackageVersionCode != null) {
      _json["androidMinPackageVersionCode"] = androidMinPackageVersionCode;
    }
    if (androidPackageName != null) {
      _json["androidPackageName"] = androidPackageName;
    }
    return _json;
  }
}

/// Request to create a short Dynamic Link.
class CreateShortDynamicLinkRequest {
  /// Information about the Dynamic Link to be shortened.
  /// [Learn
  /// more](https://firebase.google.com/docs/dynamic-links/android#create-a-dynamic-link-programmatically).
  DynamicLinkInfo dynamicLinkInfo;

  /// Full long Dynamic Link URL with desired query parameters specified.
  /// For example,
  /// "https://sample.app.goo.gl/?link=http://www.google.com&apn=com.sample",
  /// [Learn
  /// more](https://firebase.google.com/docs/dynamic-links/android#create-a-dynamic-link-programmatically).
  core.String longDynamicLink;

  /// Short Dynamic Link suffix. Optional.
  Suffix suffix;

  CreateShortDynamicLinkRequest();

  CreateShortDynamicLinkRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dynamicLinkInfo")) {
      dynamicLinkInfo = new DynamicLinkInfo.fromJson(_json["dynamicLinkInfo"]);
    }
    if (_json.containsKey("longDynamicLink")) {
      longDynamicLink = _json["longDynamicLink"];
    }
    if (_json.containsKey("suffix")) {
      suffix = new Suffix.fromJson(_json["suffix"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dynamicLinkInfo != null) {
      _json["dynamicLinkInfo"] = (dynamicLinkInfo).toJson();
    }
    if (longDynamicLink != null) {
      _json["longDynamicLink"] = longDynamicLink;
    }
    if (suffix != null) {
      _json["suffix"] = (suffix).toJson();
    }
    return _json;
  }
}

/// Response to create a short Dynamic Link.
class CreateShortDynamicLinkResponse {
  /// Preivew link to show the link flow chart.
  core.String previewLink;

  /// Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz
  core.String shortLink;

  /// Information about potential warnings on link creation.
  core.List<DynamicLinkWarning> warning;

  CreateShortDynamicLinkResponse();

  CreateShortDynamicLinkResponse.fromJson(core.Map _json) {
    if (_json.containsKey("previewLink")) {
      previewLink = _json["previewLink"];
    }
    if (_json.containsKey("shortLink")) {
      shortLink = _json["shortLink"];
    }
    if (_json.containsKey("warning")) {
      warning = _json["warning"]
          .map((value) => new DynamicLinkWarning.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (previewLink != null) {
      _json["previewLink"] = previewLink;
    }
    if (shortLink != null) {
      _json["shortLink"] = shortLink;
    }
    if (warning != null) {
      _json["warning"] = warning.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Desktop related attributes to the Dynamic Link.
class DesktopInfo {
  /// Link to open on desktop.
  core.String desktopFallbackLink;

  DesktopInfo();

  DesktopInfo.fromJson(core.Map _json) {
    if (_json.containsKey("desktopFallbackLink")) {
      desktopFallbackLink = _json["desktopFallbackLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (desktopFallbackLink != null) {
      _json["desktopFallbackLink"] = desktopFallbackLink;
    }
    return _json;
  }
}

/// Signals associated with the device making the request.
class DeviceInfo {
  /// Device model name.
  core.String deviceModelName;

  /// Device language code setting.
  core.String languageCode;

  /// Device language code setting obtained by executing JavaScript code in
  /// WebView.
  core.String languageCodeFromWebview;

  /// Device language code raw setting.
  /// iOS does returns language code in different format than iOS WebView.
  /// For example WebView returns en_US, but iOS returns en-US.
  /// Field below will return raw value returned by iOS.
  core.String languageCodeRaw;

  /// Device display resolution height.
  core.String screenResolutionHeight;

  /// Device display resolution width.
  core.String screenResolutionWidth;

  /// Device timezone setting.
  core.String timezone;

  DeviceInfo();

  DeviceInfo.fromJson(core.Map _json) {
    if (_json.containsKey("deviceModelName")) {
      deviceModelName = _json["deviceModelName"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("languageCodeFromWebview")) {
      languageCodeFromWebview = _json["languageCodeFromWebview"];
    }
    if (_json.containsKey("languageCodeRaw")) {
      languageCodeRaw = _json["languageCodeRaw"];
    }
    if (_json.containsKey("screenResolutionHeight")) {
      screenResolutionHeight = _json["screenResolutionHeight"];
    }
    if (_json.containsKey("screenResolutionWidth")) {
      screenResolutionWidth = _json["screenResolutionWidth"];
    }
    if (_json.containsKey("timezone")) {
      timezone = _json["timezone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceModelName != null) {
      _json["deviceModelName"] = deviceModelName;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (languageCodeFromWebview != null) {
      _json["languageCodeFromWebview"] = languageCodeFromWebview;
    }
    if (languageCodeRaw != null) {
      _json["languageCodeRaw"] = languageCodeRaw;
    }
    if (screenResolutionHeight != null) {
      _json["screenResolutionHeight"] = screenResolutionHeight;
    }
    if (screenResolutionWidth != null) {
      _json["screenResolutionWidth"] = screenResolutionWidth;
    }
    if (timezone != null) {
      _json["timezone"] = timezone;
    }
    return _json;
  }
}

/// Dynamic Link event stat.
class DynamicLinkEventStat {
  /// The number of times this event occurred.
  core.String count;

  /// Link event.
  /// Possible string values are:
  /// - "DYNAMIC_LINK_EVENT_UNSPECIFIED" : Unspecified type.
  /// - "CLICK" : Indicates that an FDL is clicked by users.
  /// - "REDIRECT" : Indicates that an FDL redirects users to fallback link.
  /// - "APP_INSTALL" : Indicates that an FDL triggers an app install from Play
  /// store, currently
  /// it's impossible to get stats from App store.
  /// - "APP_FIRST_OPEN" : Indicates that the app is opened for the first time
  /// after an install
  /// triggered by FDLs
  /// - "APP_RE_OPEN" : Indicates that the app is opened via an FDL for
  /// non-first time.
  core.String event;

  /// Requested platform.
  /// Possible string values are:
  /// - "DYNAMIC_LINK_PLATFORM_UNSPECIFIED" : Unspecified platform.
  /// - "ANDROID" : Represents Android platform.
  /// All apps and browsers on Android are classfied in this category.
  /// - "IOS" : Represents iOS platform.
  /// All apps and browsers on iOS are classfied in this category.
  /// - "DESKTOP" : Represents desktop.
  /// Note: other platforms like Windows, Blackberry, Amazon fall into this
  /// category.
  core.String platform;

  DynamicLinkEventStat();

  DynamicLinkEventStat.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("event")) {
      event = _json["event"];
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (event != null) {
      _json["event"] = event;
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    return _json;
  }
}

/// Information about a Dynamic Link.
class DynamicLinkInfo {
  /// Parameters used for tracking. See all tracking parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  AnalyticsInfo analyticsInfo;

  /// Android related information. See Android related parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  AndroidInfo androidInfo;

  /// Desktop related information. See desktop related parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  DesktopInfo desktopInfo;

  /// Dynamic Links domain that the project owns, e.g. abcd.app.goo.gl
  /// [Learn
  /// more](https://firebase.google.com/docs/dynamic-links/android/receive)
  /// on how to set up Dynamic Link domain associated with your Firebase
  /// project.
  ///
  /// Required.
  core.String dynamicLinkDomain;

  /// iOS related information. See iOS related parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  IosInfo iosInfo;

  /// The link your app will open, You can specify any URL your app can handle.
  /// This link must be a well-formatted URL, be properly URL-encoded, and use
  /// the HTTP or HTTPS scheme. See 'link' parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  ///
  /// Required.
  core.String link;

  /// Information of navigation behavior of a Firebase Dynamic Links.
  NavigationInfo navigationInfo;

  /// Parameters for social meta tag params.
  /// Used to set meta tag data for link previews on social sites.
  SocialMetaTagInfo socialMetaTagInfo;

  DynamicLinkInfo();

  DynamicLinkInfo.fromJson(core.Map _json) {
    if (_json.containsKey("analyticsInfo")) {
      analyticsInfo = new AnalyticsInfo.fromJson(_json["analyticsInfo"]);
    }
    if (_json.containsKey("androidInfo")) {
      androidInfo = new AndroidInfo.fromJson(_json["androidInfo"]);
    }
    if (_json.containsKey("desktopInfo")) {
      desktopInfo = new DesktopInfo.fromJson(_json["desktopInfo"]);
    }
    if (_json.containsKey("dynamicLinkDomain")) {
      dynamicLinkDomain = _json["dynamicLinkDomain"];
    }
    if (_json.containsKey("iosInfo")) {
      iosInfo = new IosInfo.fromJson(_json["iosInfo"]);
    }
    if (_json.containsKey("link")) {
      link = _json["link"];
    }
    if (_json.containsKey("navigationInfo")) {
      navigationInfo = new NavigationInfo.fromJson(_json["navigationInfo"]);
    }
    if (_json.containsKey("socialMetaTagInfo")) {
      socialMetaTagInfo =
          new SocialMetaTagInfo.fromJson(_json["socialMetaTagInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyticsInfo != null) {
      _json["analyticsInfo"] = (analyticsInfo).toJson();
    }
    if (androidInfo != null) {
      _json["androidInfo"] = (androidInfo).toJson();
    }
    if (desktopInfo != null) {
      _json["desktopInfo"] = (desktopInfo).toJson();
    }
    if (dynamicLinkDomain != null) {
      _json["dynamicLinkDomain"] = dynamicLinkDomain;
    }
    if (iosInfo != null) {
      _json["iosInfo"] = (iosInfo).toJson();
    }
    if (link != null) {
      _json["link"] = link;
    }
    if (navigationInfo != null) {
      _json["navigationInfo"] = (navigationInfo).toJson();
    }
    if (socialMetaTagInfo != null) {
      _json["socialMetaTagInfo"] = (socialMetaTagInfo).toJson();
    }
    return _json;
  }
}

/// Analytics stats of a Dynamic Link for a given timeframe.
class DynamicLinkStats {
  /// Dynamic Link event stats.
  core.List<DynamicLinkEventStat> linkEventStats;

  DynamicLinkStats();

  DynamicLinkStats.fromJson(core.Map _json) {
    if (_json.containsKey("linkEventStats")) {
      linkEventStats = _json["linkEventStats"]
          .map((value) => new DynamicLinkEventStat.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (linkEventStats != null) {
      _json["linkEventStats"] =
          linkEventStats.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Dynamic Links warning messages.
class DynamicLinkWarning {
  /// The warning code.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown code.
  /// - "NOT_IN_PROJECT_ANDROID_PACKAGE_NAME" : The Android package does not
  /// match any in developer's DevConsole project.
  /// - "NOT_INTEGER_ANDROID_PACKAGE_MIN_VERSION" : The Android minimum version
  /// code has to be a valid integer.
  /// - "UNNECESSARY_ANDROID_PACKAGE_MIN_VERSION" : Android package min version
  /// param is not needed, e.g. when
  /// 'apn' is missing.
  /// - "NOT_URI_ANDROID_LINK" : Android link is not a valid URI.
  /// - "UNNECESSARY_ANDROID_LINK" : Android link param is not needed, e.g. when
  /// param 'al' and 'link' have
  /// the same value..
  /// - "NOT_URI_ANDROID_FALLBACK_LINK" : Android fallback link is not a valid
  /// URI.
  /// - "BAD_URI_SCHEME_ANDROID_FALLBACK_LINK" : Android fallback link has an
  /// invalid (non http/https) URI scheme.
  /// - "NOT_IN_PROJECT_IOS_BUNDLE_ID" : The iOS bundle ID does not match any in
  /// developer's DevConsole project.
  /// - "NOT_IN_PROJECT_IPAD_BUNDLE_ID" : The iPad bundle ID does not match any
  /// in developer's DevConsole project.
  /// - "UNNECESSARY_IOS_URL_SCHEME" : iOS URL scheme is not needed, e.g. when
  /// 'ibi' are 'ipbi' are all missing.
  /// - "NOT_NUMERIC_IOS_APP_STORE_ID" : iOS app store ID format is incorrect,
  /// e.g. not numeric.
  /// - "UNNECESSARY_IOS_APP_STORE_ID" : iOS app store ID is not needed.
  /// - "NOT_URI_IOS_FALLBACK_LINK" : iOS fallback link is not a valid URI.
  /// - "BAD_URI_SCHEME_IOS_FALLBACK_LINK" : iOS fallback link has an invalid
  /// (non http/https) URI scheme.
  /// - "NOT_URI_IPAD_FALLBACK_LINK" : iPad fallback link is not a valid URI.
  /// - "BAD_URI_SCHEME_IPAD_FALLBACK_LINK" : iPad fallback link has an invalid
  /// (non http/https) URI scheme.
  /// - "BAD_DEBUG_PARAM" : Debug param format is incorrect.
  /// - "BAD_AD_PARAM" : isAd param format is incorrect.
  /// - "DEPRECATED_PARAM" : Indicates a certain param is deprecated.
  /// - "UNRECOGNIZED_PARAM" : Indicates certain paramater is not recognized.
  /// - "TOO_LONG_PARAM" : Indicates certain paramater is too long.
  /// - "NOT_URI_SOCIAL_IMAGE_LINK" : Social meta tag image link is not a valid
  /// URI.
  /// - "BAD_URI_SCHEME_SOCIAL_IMAGE_LINK" : Social meta tag image link has an
  /// invalid (non http/https) URI scheme.
  /// - "NOT_URI_SOCIAL_URL"
  /// - "BAD_URI_SCHEME_SOCIAL_URL"
  /// - "LINK_LENGTH_TOO_LONG" : Dynamic Link URL length is too long.
  /// - "LINK_WITH_FRAGMENTS" : Dynamic Link URL contains fragments.
  /// - "NOT_MATCHING_IOS_BUNDLE_ID_AND_STORE_ID" : The iOS bundle ID does not
  /// match with the given iOS store ID.
  core.String warningCode;

  /// The document describing the warning, and helps resolve.
  core.String warningDocumentLink;

  /// The warning message to help developers improve their requests.
  core.String warningMessage;

  DynamicLinkWarning();

  DynamicLinkWarning.fromJson(core.Map _json) {
    if (_json.containsKey("warningCode")) {
      warningCode = _json["warningCode"];
    }
    if (_json.containsKey("warningDocumentLink")) {
      warningDocumentLink = _json["warningDocumentLink"];
    }
    if (_json.containsKey("warningMessage")) {
      warningMessage = _json["warningMessage"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (warningCode != null) {
      _json["warningCode"] = warningCode;
    }
    if (warningDocumentLink != null) {
      _json["warningDocumentLink"] = warningDocumentLink;
    }
    if (warningMessage != null) {
      _json["warningMessage"] = warningMessage;
    }
    return _json;
  }
}

/// Request for iSDK to execute strong match flow for post-install attribution.
/// This is meant for iOS requests only. Requests from other platforms will
/// not be honored.
class GetIosPostInstallAttributionRequest {
  /// App installation epoch time (https://en.wikipedia.org/wiki/Unix_time).
  /// This is a client signal for a more accurate weak match.
  core.String appInstallationTime;

  /// APP bundle ID.
  core.String bundleId;

  /// Device information.
  DeviceInfo device;

  /// iOS version, ie: 9.3.5.
  /// Consider adding "build".
  core.String iosVersion;

  /// App post install attribution retrieval information. Disambiguates
  /// mechanism (iSDK or developer invoked) to retrieve payload from
  /// clicked link.
  /// Possible string values are:
  /// - "UNKNOWN_PAYLOAD_RETRIEVAL_METHOD" : Unknown method.
  /// - "IMPLICIT_WEAK_MATCH" : iSDK performs a server lookup by device
  /// fingerprint in the background
  /// when app is first-opened; no API called by developer.
  /// - "EXPLICIT_WEAK_MATCH" : iSDK performs a server lookup by device
  /// fingerprint upon a dev API call.
  /// - "EXPLICIT_STRONG_AFTER_WEAK_MATCH" : iSDK performs a strong match only
  /// if weak match is found upon a dev
  /// API call.
  core.String retrievalMethod;

  /// Google SDK version.
  core.String sdkVersion;

  /// Possible unique matched link that server need to check before performing
  /// fingerprint match. If passed link is short server need to expand the link.
  /// If link is long server need to vslidate the link.
  core.String uniqueMatchLinkToCheck;

  /// Strong match page information. Disambiguates between default UI and
  /// custom page to present when strong match succeeds/fails to find cookie.
  /// Possible string values are:
  /// - "UNKNOWN_VISUAL_STYLE" : Unknown style.
  /// - "DEFAULT_STYLE" : Default style.
  /// - "CUSTOM_STYLE" : Custom style.
  core.String visualStyle;

  GetIosPostInstallAttributionRequest();

  GetIosPostInstallAttributionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("appInstallationTime")) {
      appInstallationTime = _json["appInstallationTime"];
    }
    if (_json.containsKey("bundleId")) {
      bundleId = _json["bundleId"];
    }
    if (_json.containsKey("device")) {
      device = new DeviceInfo.fromJson(_json["device"]);
    }
    if (_json.containsKey("iosVersion")) {
      iosVersion = _json["iosVersion"];
    }
    if (_json.containsKey("retrievalMethod")) {
      retrievalMethod = _json["retrievalMethod"];
    }
    if (_json.containsKey("sdkVersion")) {
      sdkVersion = _json["sdkVersion"];
    }
    if (_json.containsKey("uniqueMatchLinkToCheck")) {
      uniqueMatchLinkToCheck = _json["uniqueMatchLinkToCheck"];
    }
    if (_json.containsKey("visualStyle")) {
      visualStyle = _json["visualStyle"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appInstallationTime != null) {
      _json["appInstallationTime"] = appInstallationTime;
    }
    if (bundleId != null) {
      _json["bundleId"] = bundleId;
    }
    if (device != null) {
      _json["device"] = (device).toJson();
    }
    if (iosVersion != null) {
      _json["iosVersion"] = iosVersion;
    }
    if (retrievalMethod != null) {
      _json["retrievalMethod"] = retrievalMethod;
    }
    if (sdkVersion != null) {
      _json["sdkVersion"] = sdkVersion;
    }
    if (uniqueMatchLinkToCheck != null) {
      _json["uniqueMatchLinkToCheck"] = uniqueMatchLinkToCheck;
    }
    if (visualStyle != null) {
      _json["visualStyle"] = visualStyle;
    }
    return _json;
  }
}

/// Response for iSDK to execute strong match flow for post-install attribution.
class GetIosPostInstallAttributionResponse {
  /// The minimum version for app, specified by dev through ?imv= parameter.
  /// Return to iSDK to allow app to evaluate if current version meets this.
  core.String appMinimumVersion;

  /// The confidence of the returned attribution.
  /// Possible string values are:
  /// - "UNKNOWN_ATTRIBUTION_CONFIDENCE" : Unset.
  /// - "WEAK" : Weak confidence, more than one matching link found or link
  /// suspected to
  /// be false positive
  /// - "DEFAULT" : Default confidence, match based on fingerprint
  /// - "UNIQUE" : Unique confidence, match based on "unique match link to
  /// check" or other
  /// means
  core.String attributionConfidence;

  /// The deep-link attributed post-install via one of several techniques
  /// (fingerprint, copy unique).
  core.String deepLink;

  /// User-agent specific custom-scheme URIs for iSDK to open. This will be set
  /// according to the user-agent tha the click was originally made in. There is
  /// no Safari-equivalent custom-scheme open URLs.
  /// ie: googlechrome://www.example.com
  /// ie: firefox://open-url?url=http://www.example.com
  /// ie: opera-http://example.com
  core.String externalBrowserDestinationLink;

  /// The link to navigate to update the app if min version is not met.
  /// This is either (in order): 1) fallback link (from ?ifl= parameter, if
  /// specified by developer) or 2) AppStore URL (from ?isi= parameter, if
  /// specified), or 3) the payload link (from required link= parameter).
  core.String fallbackLink;

  /// Invitation ID attributed post-install via one of several techniques
  /// (fingerprint, copy unique).
  core.String invitationId;

  /// Instruction for iSDK to attemmpt to perform strong match. For instance,
  /// if browser does not support/allow cookie or outside of support browsers,
  /// this will be false.
  core.bool isStrongMatchExecutable;

  /// Describes why match failed, ie: "discarded due to low confidence".
  /// This message will be publicly visible.
  core.String matchMessage;

  /// Entire FDL (short or long) attributed post-install via one of several
  /// techniques (fingerprint, copy unique).
  core.String requestedLink;

  /// The entire FDL, expanded from a short link. It is the same as the
  /// requested_link, if it is long. Parameters from this should not be
  /// used directly (ie: server can default utm_[campaign|medium|source]
  /// to a value when requested_link lack them, server determine the best
  /// fallback_link when requested_link specifies >1 fallback links).
  core.String resolvedLink;

  /// Scion campaign value to be propagated by iSDK to Scion at post-install.
  core.String utmCampaign;

  /// Scion medium value to be propagated by iSDK to Scion at post-install.
  core.String utmMedium;

  /// Scion source value to be propagated by iSDK to Scion at post-install.
  core.String utmSource;

  GetIosPostInstallAttributionResponse();

  GetIosPostInstallAttributionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("appMinimumVersion")) {
      appMinimumVersion = _json["appMinimumVersion"];
    }
    if (_json.containsKey("attributionConfidence")) {
      attributionConfidence = _json["attributionConfidence"];
    }
    if (_json.containsKey("deepLink")) {
      deepLink = _json["deepLink"];
    }
    if (_json.containsKey("externalBrowserDestinationLink")) {
      externalBrowserDestinationLink = _json["externalBrowserDestinationLink"];
    }
    if (_json.containsKey("fallbackLink")) {
      fallbackLink = _json["fallbackLink"];
    }
    if (_json.containsKey("invitationId")) {
      invitationId = _json["invitationId"];
    }
    if (_json.containsKey("isStrongMatchExecutable")) {
      isStrongMatchExecutable = _json["isStrongMatchExecutable"];
    }
    if (_json.containsKey("matchMessage")) {
      matchMessage = _json["matchMessage"];
    }
    if (_json.containsKey("requestedLink")) {
      requestedLink = _json["requestedLink"];
    }
    if (_json.containsKey("resolvedLink")) {
      resolvedLink = _json["resolvedLink"];
    }
    if (_json.containsKey("utmCampaign")) {
      utmCampaign = _json["utmCampaign"];
    }
    if (_json.containsKey("utmMedium")) {
      utmMedium = _json["utmMedium"];
    }
    if (_json.containsKey("utmSource")) {
      utmSource = _json["utmSource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appMinimumVersion != null) {
      _json["appMinimumVersion"] = appMinimumVersion;
    }
    if (attributionConfidence != null) {
      _json["attributionConfidence"] = attributionConfidence;
    }
    if (deepLink != null) {
      _json["deepLink"] = deepLink;
    }
    if (externalBrowserDestinationLink != null) {
      _json["externalBrowserDestinationLink"] = externalBrowserDestinationLink;
    }
    if (fallbackLink != null) {
      _json["fallbackLink"] = fallbackLink;
    }
    if (invitationId != null) {
      _json["invitationId"] = invitationId;
    }
    if (isStrongMatchExecutable != null) {
      _json["isStrongMatchExecutable"] = isStrongMatchExecutable;
    }
    if (matchMessage != null) {
      _json["matchMessage"] = matchMessage;
    }
    if (requestedLink != null) {
      _json["requestedLink"] = requestedLink;
    }
    if (resolvedLink != null) {
      _json["resolvedLink"] = resolvedLink;
    }
    if (utmCampaign != null) {
      _json["utmCampaign"] = utmCampaign;
    }
    if (utmMedium != null) {
      _json["utmMedium"] = utmMedium;
    }
    if (utmSource != null) {
      _json["utmSource"] = utmSource;
    }
    return _json;
  }
}

/// Parameters for Google Play Campaign Measurements.
/// [Learn
/// more](https://developers.google.com/analytics/devguides/collection/android/v4/campaigns#campaign-params)
class GooglePlayAnalytics {
  /// [AdWords autotagging
  /// parameter](https://support.google.com/analytics/answer/1033981?hl=en);
  /// used to measure Google AdWords ads. This value is generated dynamically
  /// and should never be modified.
  core.String gclid;

  /// Campaign name; used for keyword analysis to identify a specific product
  /// promotion or strategic campaign.
  core.String utmCampaign;

  /// Campaign content; used for A/B testing and content-targeted ads to
  /// differentiate ads or links that point to the same URL.
  core.String utmContent;

  /// Campaign medium; used to identify a medium such as email or
  /// cost-per-click.
  core.String utmMedium;

  /// Campaign source; used to identify a search engine, newsletter, or other
  /// source.
  core.String utmSource;

  /// Campaign term; used with paid search to supply the keywords for ads.
  core.String utmTerm;

  GooglePlayAnalytics();

  GooglePlayAnalytics.fromJson(core.Map _json) {
    if (_json.containsKey("gclid")) {
      gclid = _json["gclid"];
    }
    if (_json.containsKey("utmCampaign")) {
      utmCampaign = _json["utmCampaign"];
    }
    if (_json.containsKey("utmContent")) {
      utmContent = _json["utmContent"];
    }
    if (_json.containsKey("utmMedium")) {
      utmMedium = _json["utmMedium"];
    }
    if (_json.containsKey("utmSource")) {
      utmSource = _json["utmSource"];
    }
    if (_json.containsKey("utmTerm")) {
      utmTerm = _json["utmTerm"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gclid != null) {
      _json["gclid"] = gclid;
    }
    if (utmCampaign != null) {
      _json["utmCampaign"] = utmCampaign;
    }
    if (utmContent != null) {
      _json["utmContent"] = utmContent;
    }
    if (utmMedium != null) {
      _json["utmMedium"] = utmMedium;
    }
    if (utmSource != null) {
      _json["utmSource"] = utmSource;
    }
    if (utmTerm != null) {
      _json["utmTerm"] = utmTerm;
    }
    return _json;
  }
}

/// Parameters for iTunes Connect App Analytics.
class ITunesConnectAnalytics {
  /// Affiliate token used to create affiliate-coded links.
  core.String at;

  /// Campaign text that developers can optionally add to any link in order to
  /// track sales from a specific marketing campaign.
  core.String ct;

  /// iTune media types, including music, podcasts, audiobooks and so on.
  core.String mt;

  /// Provider token that enables analytics for Dynamic Links from within iTunes
  /// Connect.
  core.String pt;

  ITunesConnectAnalytics();

  ITunesConnectAnalytics.fromJson(core.Map _json) {
    if (_json.containsKey("at")) {
      at = _json["at"];
    }
    if (_json.containsKey("ct")) {
      ct = _json["ct"];
    }
    if (_json.containsKey("mt")) {
      mt = _json["mt"];
    }
    if (_json.containsKey("pt")) {
      pt = _json["pt"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (at != null) {
      _json["at"] = at;
    }
    if (ct != null) {
      _json["ct"] = ct;
    }
    if (mt != null) {
      _json["mt"] = mt;
    }
    if (pt != null) {
      _json["pt"] = pt;
    }
    return _json;
  }
}

/// iOS related attributes to the Dynamic Link..
class IosInfo {
  /// iOS App Store ID.
  core.String iosAppStoreId;

  /// iOS bundle ID of the app.
  core.String iosBundleId;

  /// Custom (destination) scheme to use for iOS. By default, we’ll use the
  /// bundle ID as the custom scheme. Developer can override this behavior using
  /// this param.
  core.String iosCustomScheme;

  /// Link to open on iOS if the app is not installed.
  core.String iosFallbackLink;

  /// iPad bundle ID of the app.
  core.String iosIpadBundleId;

  /// If specified, this overrides the ios_fallback_link value on iPads.
  core.String iosIpadFallbackLink;

  IosInfo();

  IosInfo.fromJson(core.Map _json) {
    if (_json.containsKey("iosAppStoreId")) {
      iosAppStoreId = _json["iosAppStoreId"];
    }
    if (_json.containsKey("iosBundleId")) {
      iosBundleId = _json["iosBundleId"];
    }
    if (_json.containsKey("iosCustomScheme")) {
      iosCustomScheme = _json["iosCustomScheme"];
    }
    if (_json.containsKey("iosFallbackLink")) {
      iosFallbackLink = _json["iosFallbackLink"];
    }
    if (_json.containsKey("iosIpadBundleId")) {
      iosIpadBundleId = _json["iosIpadBundleId"];
    }
    if (_json.containsKey("iosIpadFallbackLink")) {
      iosIpadFallbackLink = _json["iosIpadFallbackLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (iosAppStoreId != null) {
      _json["iosAppStoreId"] = iosAppStoreId;
    }
    if (iosBundleId != null) {
      _json["iosBundleId"] = iosBundleId;
    }
    if (iosCustomScheme != null) {
      _json["iosCustomScheme"] = iosCustomScheme;
    }
    if (iosFallbackLink != null) {
      _json["iosFallbackLink"] = iosFallbackLink;
    }
    if (iosIpadBundleId != null) {
      _json["iosIpadBundleId"] = iosIpadBundleId;
    }
    if (iosIpadFallbackLink != null) {
      _json["iosIpadFallbackLink"] = iosIpadFallbackLink;
    }
    return _json;
  }
}

/// Information of navigation behavior.
class NavigationInfo {
  /// If this option is on, FDL click will be forced to redirect rather than
  /// show an interstitial page.
  core.bool enableForcedRedirect;

  NavigationInfo();

  NavigationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("enableForcedRedirect")) {
      enableForcedRedirect = _json["enableForcedRedirect"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enableForcedRedirect != null) {
      _json["enableForcedRedirect"] = enableForcedRedirect;
    }
    return _json;
  }
}

/// Parameters for social meta tag params.
/// Used to set meta tag data for link previews on social sites.
class SocialMetaTagInfo {
  /// A short description of the link. Optional.
  core.String socialDescription;

  /// An image url string. Optional.
  core.String socialImageLink;

  /// Title to be displayed. Optional.
  core.String socialTitle;

  SocialMetaTagInfo();

  SocialMetaTagInfo.fromJson(core.Map _json) {
    if (_json.containsKey("socialDescription")) {
      socialDescription = _json["socialDescription"];
    }
    if (_json.containsKey("socialImageLink")) {
      socialImageLink = _json["socialImageLink"];
    }
    if (_json.containsKey("socialTitle")) {
      socialTitle = _json["socialTitle"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (socialDescription != null) {
      _json["socialDescription"] = socialDescription;
    }
    if (socialImageLink != null) {
      _json["socialImageLink"] = socialImageLink;
    }
    if (socialTitle != null) {
      _json["socialTitle"] = socialTitle;
    }
    return _json;
  }
}

/// Short Dynamic Link suffix.
class Suffix {
  /// Suffix option.
  /// Possible string values are:
  /// - "OPTION_UNSPECIFIED" : The suffix option is not specified, performs as
  /// NOT_GUESSABLE .
  /// - "UNGUESSABLE" : Short Dynamic Link suffix is a base62 [0-9A-Za-z]
  /// encoded string of
  /// a random generated 96 bit random number, which has a length of 17 chars.
  /// For example, "nlAR8U4SlKRZw1cb2".
  /// It prevents other people from guessing and crawling short Dynamic Links
  /// that contain personal identifiable information.
  /// - "SHORT" : Short Dynamic Link suffix is a base62 [0-9A-Za-z] string
  /// starting with a
  /// length of 4 chars. the length will increase when all the space is
  /// occupied.
  core.String option;

  Suffix();

  Suffix.fromJson(core.Map _json) {
    if (_json.containsKey("option")) {
      option = _json["option"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (option != null) {
      _json["option"] = option;
    }
    return _json;
  }
}
