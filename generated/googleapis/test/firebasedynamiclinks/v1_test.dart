library googleapis.firebasedynamiclinks.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/firebasedynamiclinks/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAnalyticsInfo = 0;
buildAnalyticsInfo() {
  var o = new api.AnalyticsInfo();
  buildCounterAnalyticsInfo++;
  if (buildCounterAnalyticsInfo < 3) {
    o.googlePlayAnalytics = buildGooglePlayAnalytics();
    o.itunesConnectAnalytics = buildITunesConnectAnalytics();
  }
  buildCounterAnalyticsInfo--;
  return o;
}

checkAnalyticsInfo(api.AnalyticsInfo o) {
  buildCounterAnalyticsInfo++;
  if (buildCounterAnalyticsInfo < 3) {
    checkGooglePlayAnalytics(o.googlePlayAnalytics);
    checkITunesConnectAnalytics(o.itunesConnectAnalytics);
  }
  buildCounterAnalyticsInfo--;
}

core.int buildCounterAndroidInfo = 0;
buildAndroidInfo() {
  var o = new api.AndroidInfo();
  buildCounterAndroidInfo++;
  if (buildCounterAndroidInfo < 3) {
    o.androidFallbackLink = "foo";
    o.androidLink = "foo";
    o.androidMinPackageVersionCode = "foo";
    o.androidPackageName = "foo";
  }
  buildCounterAndroidInfo--;
  return o;
}

checkAndroidInfo(api.AndroidInfo o) {
  buildCounterAndroidInfo++;
  if (buildCounterAndroidInfo < 3) {
    unittest.expect(o.androidFallbackLink, unittest.equals('foo'));
    unittest.expect(o.androidLink, unittest.equals('foo'));
    unittest.expect(o.androidMinPackageVersionCode, unittest.equals('foo'));
    unittest.expect(o.androidPackageName, unittest.equals('foo'));
  }
  buildCounterAndroidInfo--;
}

core.int buildCounterCreateManagedShortLinkRequest = 0;
buildCreateManagedShortLinkRequest() {
  var o = new api.CreateManagedShortLinkRequest();
  buildCounterCreateManagedShortLinkRequest++;
  if (buildCounterCreateManagedShortLinkRequest < 3) {
    o.dynamicLinkInfo = buildDynamicLinkInfo();
    o.longDynamicLink = "foo";
    o.name = "foo";
    o.sdkVersion = "foo";
    o.suffix = buildSuffix();
  }
  buildCounterCreateManagedShortLinkRequest--;
  return o;
}

checkCreateManagedShortLinkRequest(api.CreateManagedShortLinkRequest o) {
  buildCounterCreateManagedShortLinkRequest++;
  if (buildCounterCreateManagedShortLinkRequest < 3) {
    checkDynamicLinkInfo(o.dynamicLinkInfo);
    unittest.expect(o.longDynamicLink, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sdkVersion, unittest.equals('foo'));
    checkSuffix(o.suffix);
  }
  buildCounterCreateManagedShortLinkRequest--;
}

buildUnnamed84() {
  var o = new core.List<api.DynamicLinkWarning>();
  o.add(buildDynamicLinkWarning());
  o.add(buildDynamicLinkWarning());
  return o;
}

checkUnnamed84(core.List<api.DynamicLinkWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicLinkWarning(o[0]);
  checkDynamicLinkWarning(o[1]);
}

core.int buildCounterCreateManagedShortLinkResponse = 0;
buildCreateManagedShortLinkResponse() {
  var o = new api.CreateManagedShortLinkResponse();
  buildCounterCreateManagedShortLinkResponse++;
  if (buildCounterCreateManagedShortLinkResponse < 3) {
    o.managedShortLink = buildManagedShortLink();
    o.previewLink = "foo";
    o.warning = buildUnnamed84();
  }
  buildCounterCreateManagedShortLinkResponse--;
  return o;
}

checkCreateManagedShortLinkResponse(api.CreateManagedShortLinkResponse o) {
  buildCounterCreateManagedShortLinkResponse++;
  if (buildCounterCreateManagedShortLinkResponse < 3) {
    checkManagedShortLink(o.managedShortLink);
    unittest.expect(o.previewLink, unittest.equals('foo'));
    checkUnnamed84(o.warning);
  }
  buildCounterCreateManagedShortLinkResponse--;
}

core.int buildCounterCreateShortDynamicLinkRequest = 0;
buildCreateShortDynamicLinkRequest() {
  var o = new api.CreateShortDynamicLinkRequest();
  buildCounterCreateShortDynamicLinkRequest++;
  if (buildCounterCreateShortDynamicLinkRequest < 3) {
    o.dynamicLinkInfo = buildDynamicLinkInfo();
    o.longDynamicLink = "foo";
    o.sdkVersion = "foo";
    o.suffix = buildSuffix();
  }
  buildCounterCreateShortDynamicLinkRequest--;
  return o;
}

checkCreateShortDynamicLinkRequest(api.CreateShortDynamicLinkRequest o) {
  buildCounterCreateShortDynamicLinkRequest++;
  if (buildCounterCreateShortDynamicLinkRequest < 3) {
    checkDynamicLinkInfo(o.dynamicLinkInfo);
    unittest.expect(o.longDynamicLink, unittest.equals('foo'));
    unittest.expect(o.sdkVersion, unittest.equals('foo'));
    checkSuffix(o.suffix);
  }
  buildCounterCreateShortDynamicLinkRequest--;
}

buildUnnamed85() {
  var o = new core.List<api.DynamicLinkWarning>();
  o.add(buildDynamicLinkWarning());
  o.add(buildDynamicLinkWarning());
  return o;
}

checkUnnamed85(core.List<api.DynamicLinkWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicLinkWarning(o[0]);
  checkDynamicLinkWarning(o[1]);
}

core.int buildCounterCreateShortDynamicLinkResponse = 0;
buildCreateShortDynamicLinkResponse() {
  var o = new api.CreateShortDynamicLinkResponse();
  buildCounterCreateShortDynamicLinkResponse++;
  if (buildCounterCreateShortDynamicLinkResponse < 3) {
    o.previewLink = "foo";
    o.shortLink = "foo";
    o.warning = buildUnnamed85();
  }
  buildCounterCreateShortDynamicLinkResponse--;
  return o;
}

checkCreateShortDynamicLinkResponse(api.CreateShortDynamicLinkResponse o) {
  buildCounterCreateShortDynamicLinkResponse++;
  if (buildCounterCreateShortDynamicLinkResponse < 3) {
    unittest.expect(o.previewLink, unittest.equals('foo'));
    unittest.expect(o.shortLink, unittest.equals('foo'));
    checkUnnamed85(o.warning);
  }
  buildCounterCreateShortDynamicLinkResponse--;
}

core.int buildCounterDesktopInfo = 0;
buildDesktopInfo() {
  var o = new api.DesktopInfo();
  buildCounterDesktopInfo++;
  if (buildCounterDesktopInfo < 3) {
    o.desktopFallbackLink = "foo";
  }
  buildCounterDesktopInfo--;
  return o;
}

checkDesktopInfo(api.DesktopInfo o) {
  buildCounterDesktopInfo++;
  if (buildCounterDesktopInfo < 3) {
    unittest.expect(o.desktopFallbackLink, unittest.equals('foo'));
  }
  buildCounterDesktopInfo--;
}

core.int buildCounterDeviceInfo = 0;
buildDeviceInfo() {
  var o = new api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.deviceModelName = "foo";
    o.languageCode = "foo";
    o.languageCodeFromWebview = "foo";
    o.languageCodeRaw = "foo";
    o.screenResolutionHeight = "foo";
    o.screenResolutionWidth = "foo";
    o.timezone = "foo";
  }
  buildCounterDeviceInfo--;
  return o;
}

checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(o.deviceModelName, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.languageCodeFromWebview, unittest.equals('foo'));
    unittest.expect(o.languageCodeRaw, unittest.equals('foo'));
    unittest.expect(o.screenResolutionHeight, unittest.equals('foo'));
    unittest.expect(o.screenResolutionWidth, unittest.equals('foo'));
    unittest.expect(o.timezone, unittest.equals('foo'));
  }
  buildCounterDeviceInfo--;
}

core.int buildCounterDynamicLinkEventStat = 0;
buildDynamicLinkEventStat() {
  var o = new api.DynamicLinkEventStat();
  buildCounterDynamicLinkEventStat++;
  if (buildCounterDynamicLinkEventStat < 3) {
    o.count = "foo";
    o.event = "foo";
    o.platform = "foo";
  }
  buildCounterDynamicLinkEventStat--;
  return o;
}

checkDynamicLinkEventStat(api.DynamicLinkEventStat o) {
  buildCounterDynamicLinkEventStat++;
  if (buildCounterDynamicLinkEventStat < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.event, unittest.equals('foo'));
    unittest.expect(o.platform, unittest.equals('foo'));
  }
  buildCounterDynamicLinkEventStat--;
}

core.int buildCounterDynamicLinkInfo = 0;
buildDynamicLinkInfo() {
  var o = new api.DynamicLinkInfo();
  buildCounterDynamicLinkInfo++;
  if (buildCounterDynamicLinkInfo < 3) {
    o.analyticsInfo = buildAnalyticsInfo();
    o.androidInfo = buildAndroidInfo();
    o.desktopInfo = buildDesktopInfo();
    o.domainUriPrefix = "foo";
    o.dynamicLinkDomain = "foo";
    o.iosInfo = buildIosInfo();
    o.link = "foo";
    o.navigationInfo = buildNavigationInfo();
    o.socialMetaTagInfo = buildSocialMetaTagInfo();
  }
  buildCounterDynamicLinkInfo--;
  return o;
}

checkDynamicLinkInfo(api.DynamicLinkInfo o) {
  buildCounterDynamicLinkInfo++;
  if (buildCounterDynamicLinkInfo < 3) {
    checkAnalyticsInfo(o.analyticsInfo);
    checkAndroidInfo(o.androidInfo);
    checkDesktopInfo(o.desktopInfo);
    unittest.expect(o.domainUriPrefix, unittest.equals('foo'));
    unittest.expect(o.dynamicLinkDomain, unittest.equals('foo'));
    checkIosInfo(o.iosInfo);
    unittest.expect(o.link, unittest.equals('foo'));
    checkNavigationInfo(o.navigationInfo);
    checkSocialMetaTagInfo(o.socialMetaTagInfo);
  }
  buildCounterDynamicLinkInfo--;
}

buildUnnamed86() {
  var o = new core.List<api.DynamicLinkEventStat>();
  o.add(buildDynamicLinkEventStat());
  o.add(buildDynamicLinkEventStat());
  return o;
}

checkUnnamed86(core.List<api.DynamicLinkEventStat> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicLinkEventStat(o[0]);
  checkDynamicLinkEventStat(o[1]);
}

core.int buildCounterDynamicLinkStats = 0;
buildDynamicLinkStats() {
  var o = new api.DynamicLinkStats();
  buildCounterDynamicLinkStats++;
  if (buildCounterDynamicLinkStats < 3) {
    o.linkEventStats = buildUnnamed86();
  }
  buildCounterDynamicLinkStats--;
  return o;
}

checkDynamicLinkStats(api.DynamicLinkStats o) {
  buildCounterDynamicLinkStats++;
  if (buildCounterDynamicLinkStats < 3) {
    checkUnnamed86(o.linkEventStats);
  }
  buildCounterDynamicLinkStats--;
}

core.int buildCounterDynamicLinkWarning = 0;
buildDynamicLinkWarning() {
  var o = new api.DynamicLinkWarning();
  buildCounterDynamicLinkWarning++;
  if (buildCounterDynamicLinkWarning < 3) {
    o.warningCode = "foo";
    o.warningDocumentLink = "foo";
    o.warningMessage = "foo";
  }
  buildCounterDynamicLinkWarning--;
  return o;
}

checkDynamicLinkWarning(api.DynamicLinkWarning o) {
  buildCounterDynamicLinkWarning++;
  if (buildCounterDynamicLinkWarning < 3) {
    unittest.expect(o.warningCode, unittest.equals('foo'));
    unittest.expect(o.warningDocumentLink, unittest.equals('foo'));
    unittest.expect(o.warningMessage, unittest.equals('foo'));
  }
  buildCounterDynamicLinkWarning--;
}

core.int buildCounterGetIosPostInstallAttributionRequest = 0;
buildGetIosPostInstallAttributionRequest() {
  var o = new api.GetIosPostInstallAttributionRequest();
  buildCounterGetIosPostInstallAttributionRequest++;
  if (buildCounterGetIosPostInstallAttributionRequest < 3) {
    o.appInstallationTime = "foo";
    o.bundleId = "foo";
    o.device = buildDeviceInfo();
    o.iosVersion = "foo";
    o.retrievalMethod = "foo";
    o.sdkVersion = "foo";
    o.uniqueMatchLinkToCheck = "foo";
    o.visualStyle = "foo";
  }
  buildCounterGetIosPostInstallAttributionRequest--;
  return o;
}

checkGetIosPostInstallAttributionRequest(
    api.GetIosPostInstallAttributionRequest o) {
  buildCounterGetIosPostInstallAttributionRequest++;
  if (buildCounterGetIosPostInstallAttributionRequest < 3) {
    unittest.expect(o.appInstallationTime, unittest.equals('foo'));
    unittest.expect(o.bundleId, unittest.equals('foo'));
    checkDeviceInfo(o.device);
    unittest.expect(o.iosVersion, unittest.equals('foo'));
    unittest.expect(o.retrievalMethod, unittest.equals('foo'));
    unittest.expect(o.sdkVersion, unittest.equals('foo'));
    unittest.expect(o.uniqueMatchLinkToCheck, unittest.equals('foo'));
    unittest.expect(o.visualStyle, unittest.equals('foo'));
  }
  buildCounterGetIosPostInstallAttributionRequest--;
}

core.int buildCounterGetIosPostInstallAttributionResponse = 0;
buildGetIosPostInstallAttributionResponse() {
  var o = new api.GetIosPostInstallAttributionResponse();
  buildCounterGetIosPostInstallAttributionResponse++;
  if (buildCounterGetIosPostInstallAttributionResponse < 3) {
    o.appMinimumVersion = "foo";
    o.attributionConfidence = "foo";
    o.deepLink = "foo";
    o.externalBrowserDestinationLink = "foo";
    o.fallbackLink = "foo";
    o.invitationId = "foo";
    o.isStrongMatchExecutable = true;
    o.matchMessage = "foo";
    o.requestIpVersion = "foo";
    o.requestedLink = "foo";
    o.resolvedLink = "foo";
    o.utmCampaign = "foo";
    o.utmContent = "foo";
    o.utmMedium = "foo";
    o.utmSource = "foo";
    o.utmTerm = "foo";
  }
  buildCounterGetIosPostInstallAttributionResponse--;
  return o;
}

checkGetIosPostInstallAttributionResponse(
    api.GetIosPostInstallAttributionResponse o) {
  buildCounterGetIosPostInstallAttributionResponse++;
  if (buildCounterGetIosPostInstallAttributionResponse < 3) {
    unittest.expect(o.appMinimumVersion, unittest.equals('foo'));
    unittest.expect(o.attributionConfidence, unittest.equals('foo'));
    unittest.expect(o.deepLink, unittest.equals('foo'));
    unittest.expect(o.externalBrowserDestinationLink, unittest.equals('foo'));
    unittest.expect(o.fallbackLink, unittest.equals('foo'));
    unittest.expect(o.invitationId, unittest.equals('foo'));
    unittest.expect(o.isStrongMatchExecutable, unittest.isTrue);
    unittest.expect(o.matchMessage, unittest.equals('foo'));
    unittest.expect(o.requestIpVersion, unittest.equals('foo'));
    unittest.expect(o.requestedLink, unittest.equals('foo'));
    unittest.expect(o.resolvedLink, unittest.equals('foo'));
    unittest.expect(o.utmCampaign, unittest.equals('foo'));
    unittest.expect(o.utmContent, unittest.equals('foo'));
    unittest.expect(o.utmMedium, unittest.equals('foo'));
    unittest.expect(o.utmSource, unittest.equals('foo'));
    unittest.expect(o.utmTerm, unittest.equals('foo'));
  }
  buildCounterGetIosPostInstallAttributionResponse--;
}

core.int buildCounterGetIosReopenAttributionRequest = 0;
buildGetIosReopenAttributionRequest() {
  var o = new api.GetIosReopenAttributionRequest();
  buildCounterGetIosReopenAttributionRequest++;
  if (buildCounterGetIosReopenAttributionRequest < 3) {
    o.bundleId = "foo";
    o.requestedLink = "foo";
    o.sdkVersion = "foo";
  }
  buildCounterGetIosReopenAttributionRequest--;
  return o;
}

checkGetIosReopenAttributionRequest(api.GetIosReopenAttributionRequest o) {
  buildCounterGetIosReopenAttributionRequest++;
  if (buildCounterGetIosReopenAttributionRequest < 3) {
    unittest.expect(o.bundleId, unittest.equals('foo'));
    unittest.expect(o.requestedLink, unittest.equals('foo'));
    unittest.expect(o.sdkVersion, unittest.equals('foo'));
  }
  buildCounterGetIosReopenAttributionRequest--;
}

core.int buildCounterGetIosReopenAttributionResponse = 0;
buildGetIosReopenAttributionResponse() {
  var o = new api.GetIosReopenAttributionResponse();
  buildCounterGetIosReopenAttributionResponse++;
  if (buildCounterGetIosReopenAttributionResponse < 3) {
    o.deepLink = "foo";
    o.invitationId = "foo";
    o.iosMinAppVersion = "foo";
    o.resolvedLink = "foo";
    o.utmCampaign = "foo";
    o.utmContent = "foo";
    o.utmMedium = "foo";
    o.utmSource = "foo";
    o.utmTerm = "foo";
  }
  buildCounterGetIosReopenAttributionResponse--;
  return o;
}

checkGetIosReopenAttributionResponse(api.GetIosReopenAttributionResponse o) {
  buildCounterGetIosReopenAttributionResponse++;
  if (buildCounterGetIosReopenAttributionResponse < 3) {
    unittest.expect(o.deepLink, unittest.equals('foo'));
    unittest.expect(o.invitationId, unittest.equals('foo'));
    unittest.expect(o.iosMinAppVersion, unittest.equals('foo'));
    unittest.expect(o.resolvedLink, unittest.equals('foo'));
    unittest.expect(o.utmCampaign, unittest.equals('foo'));
    unittest.expect(o.utmContent, unittest.equals('foo'));
    unittest.expect(o.utmMedium, unittest.equals('foo'));
    unittest.expect(o.utmSource, unittest.equals('foo'));
    unittest.expect(o.utmTerm, unittest.equals('foo'));
  }
  buildCounterGetIosReopenAttributionResponse--;
}

core.int buildCounterGooglePlayAnalytics = 0;
buildGooglePlayAnalytics() {
  var o = new api.GooglePlayAnalytics();
  buildCounterGooglePlayAnalytics++;
  if (buildCounterGooglePlayAnalytics < 3) {
    o.gclid = "foo";
    o.utmCampaign = "foo";
    o.utmContent = "foo";
    o.utmMedium = "foo";
    o.utmSource = "foo";
    o.utmTerm = "foo";
  }
  buildCounterGooglePlayAnalytics--;
  return o;
}

checkGooglePlayAnalytics(api.GooglePlayAnalytics o) {
  buildCounterGooglePlayAnalytics++;
  if (buildCounterGooglePlayAnalytics < 3) {
    unittest.expect(o.gclid, unittest.equals('foo'));
    unittest.expect(o.utmCampaign, unittest.equals('foo'));
    unittest.expect(o.utmContent, unittest.equals('foo'));
    unittest.expect(o.utmMedium, unittest.equals('foo'));
    unittest.expect(o.utmSource, unittest.equals('foo'));
    unittest.expect(o.utmTerm, unittest.equals('foo'));
  }
  buildCounterGooglePlayAnalytics--;
}

core.int buildCounterITunesConnectAnalytics = 0;
buildITunesConnectAnalytics() {
  var o = new api.ITunesConnectAnalytics();
  buildCounterITunesConnectAnalytics++;
  if (buildCounterITunesConnectAnalytics < 3) {
    o.at = "foo";
    o.ct = "foo";
    o.mt = "foo";
    o.pt = "foo";
  }
  buildCounterITunesConnectAnalytics--;
  return o;
}

checkITunesConnectAnalytics(api.ITunesConnectAnalytics o) {
  buildCounterITunesConnectAnalytics++;
  if (buildCounterITunesConnectAnalytics < 3) {
    unittest.expect(o.at, unittest.equals('foo'));
    unittest.expect(o.ct, unittest.equals('foo'));
    unittest.expect(o.mt, unittest.equals('foo'));
    unittest.expect(o.pt, unittest.equals('foo'));
  }
  buildCounterITunesConnectAnalytics--;
}

core.int buildCounterIosInfo = 0;
buildIosInfo() {
  var o = new api.IosInfo();
  buildCounterIosInfo++;
  if (buildCounterIosInfo < 3) {
    o.iosAppStoreId = "foo";
    o.iosBundleId = "foo";
    o.iosCustomScheme = "foo";
    o.iosFallbackLink = "foo";
    o.iosIpadBundleId = "foo";
    o.iosIpadFallbackLink = "foo";
    o.iosMinimumVersion = "foo";
  }
  buildCounterIosInfo--;
  return o;
}

checkIosInfo(api.IosInfo o) {
  buildCounterIosInfo++;
  if (buildCounterIosInfo < 3) {
    unittest.expect(o.iosAppStoreId, unittest.equals('foo'));
    unittest.expect(o.iosBundleId, unittest.equals('foo'));
    unittest.expect(o.iosCustomScheme, unittest.equals('foo'));
    unittest.expect(o.iosFallbackLink, unittest.equals('foo'));
    unittest.expect(o.iosIpadBundleId, unittest.equals('foo'));
    unittest.expect(o.iosIpadFallbackLink, unittest.equals('foo'));
    unittest.expect(o.iosMinimumVersion, unittest.equals('foo'));
  }
  buildCounterIosInfo--;
}

buildUnnamed87() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterManagedShortLink = 0;
buildManagedShortLink() {
  var o = new api.ManagedShortLink();
  buildCounterManagedShortLink++;
  if (buildCounterManagedShortLink < 3) {
    o.creationTime = "foo";
    o.flaggedAttribute = buildUnnamed87();
    o.info = buildDynamicLinkInfo();
    o.link = "foo";
    o.linkName = "foo";
    o.visibility = "foo";
  }
  buildCounterManagedShortLink--;
  return o;
}

checkManagedShortLink(api.ManagedShortLink o) {
  buildCounterManagedShortLink++;
  if (buildCounterManagedShortLink < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    checkUnnamed87(o.flaggedAttribute);
    checkDynamicLinkInfo(o.info);
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.linkName, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterManagedShortLink--;
}

core.int buildCounterNavigationInfo = 0;
buildNavigationInfo() {
  var o = new api.NavigationInfo();
  buildCounterNavigationInfo++;
  if (buildCounterNavigationInfo < 3) {
    o.enableForcedRedirect = true;
  }
  buildCounterNavigationInfo--;
  return o;
}

checkNavigationInfo(api.NavigationInfo o) {
  buildCounterNavigationInfo++;
  if (buildCounterNavigationInfo < 3) {
    unittest.expect(o.enableForcedRedirect, unittest.isTrue);
  }
  buildCounterNavigationInfo--;
}

core.int buildCounterSocialMetaTagInfo = 0;
buildSocialMetaTagInfo() {
  var o = new api.SocialMetaTagInfo();
  buildCounterSocialMetaTagInfo++;
  if (buildCounterSocialMetaTagInfo < 3) {
    o.socialDescription = "foo";
    o.socialImageLink = "foo";
    o.socialTitle = "foo";
  }
  buildCounterSocialMetaTagInfo--;
  return o;
}

checkSocialMetaTagInfo(api.SocialMetaTagInfo o) {
  buildCounterSocialMetaTagInfo++;
  if (buildCounterSocialMetaTagInfo < 3) {
    unittest.expect(o.socialDescription, unittest.equals('foo'));
    unittest.expect(o.socialImageLink, unittest.equals('foo'));
    unittest.expect(o.socialTitle, unittest.equals('foo'));
  }
  buildCounterSocialMetaTagInfo--;
}

core.int buildCounterSuffix = 0;
buildSuffix() {
  var o = new api.Suffix();
  buildCounterSuffix++;
  if (buildCounterSuffix < 3) {
    o.customSuffix = "foo";
    o.option = "foo";
  }
  buildCounterSuffix--;
  return o;
}

checkSuffix(api.Suffix o) {
  buildCounterSuffix++;
  if (buildCounterSuffix < 3) {
    unittest.expect(o.customSuffix, unittest.equals('foo'));
    unittest.expect(o.option, unittest.equals('foo'));
  }
  buildCounterSuffix--;
}

main() {
  unittest.group("obj-schema-AnalyticsInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyticsInfo();
      var od = new api.AnalyticsInfo.fromJson(o.toJson());
      checkAnalyticsInfo(od);
    });
  });

  unittest.group("obj-schema-AndroidInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidInfo();
      var od = new api.AndroidInfo.fromJson(o.toJson());
      checkAndroidInfo(od);
    });
  });

  unittest.group("obj-schema-CreateManagedShortLinkRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateManagedShortLinkRequest();
      var od = new api.CreateManagedShortLinkRequest.fromJson(o.toJson());
      checkCreateManagedShortLinkRequest(od);
    });
  });

  unittest.group("obj-schema-CreateManagedShortLinkResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateManagedShortLinkResponse();
      var od = new api.CreateManagedShortLinkResponse.fromJson(o.toJson());
      checkCreateManagedShortLinkResponse(od);
    });
  });

  unittest.group("obj-schema-CreateShortDynamicLinkRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateShortDynamicLinkRequest();
      var od = new api.CreateShortDynamicLinkRequest.fromJson(o.toJson());
      checkCreateShortDynamicLinkRequest(od);
    });
  });

  unittest.group("obj-schema-CreateShortDynamicLinkResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateShortDynamicLinkResponse();
      var od = new api.CreateShortDynamicLinkResponse.fromJson(o.toJson());
      checkCreateShortDynamicLinkResponse(od);
    });
  });

  unittest.group("obj-schema-DesktopInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDesktopInfo();
      var od = new api.DesktopInfo.fromJson(o.toJson());
      checkDesktopInfo(od);
    });
  });

  unittest.group("obj-schema-DeviceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceInfo();
      var od = new api.DeviceInfo.fromJson(o.toJson());
      checkDeviceInfo(od);
    });
  });

  unittest.group("obj-schema-DynamicLinkEventStat", () {
    unittest.test("to-json--from-json", () {
      var o = buildDynamicLinkEventStat();
      var od = new api.DynamicLinkEventStat.fromJson(o.toJson());
      checkDynamicLinkEventStat(od);
    });
  });

  unittest.group("obj-schema-DynamicLinkInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDynamicLinkInfo();
      var od = new api.DynamicLinkInfo.fromJson(o.toJson());
      checkDynamicLinkInfo(od);
    });
  });

  unittest.group("obj-schema-DynamicLinkStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildDynamicLinkStats();
      var od = new api.DynamicLinkStats.fromJson(o.toJson());
      checkDynamicLinkStats(od);
    });
  });

  unittest.group("obj-schema-DynamicLinkWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildDynamicLinkWarning();
      var od = new api.DynamicLinkWarning.fromJson(o.toJson());
      checkDynamicLinkWarning(od);
    });
  });

  unittest.group("obj-schema-GetIosPostInstallAttributionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIosPostInstallAttributionRequest();
      var od = new api.GetIosPostInstallAttributionRequest.fromJson(o.toJson());
      checkGetIosPostInstallAttributionRequest(od);
    });
  });

  unittest.group("obj-schema-GetIosPostInstallAttributionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIosPostInstallAttributionResponse();
      var od =
          new api.GetIosPostInstallAttributionResponse.fromJson(o.toJson());
      checkGetIosPostInstallAttributionResponse(od);
    });
  });

  unittest.group("obj-schema-GetIosReopenAttributionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIosReopenAttributionRequest();
      var od = new api.GetIosReopenAttributionRequest.fromJson(o.toJson());
      checkGetIosReopenAttributionRequest(od);
    });
  });

  unittest.group("obj-schema-GetIosReopenAttributionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIosReopenAttributionResponse();
      var od = new api.GetIosReopenAttributionResponse.fromJson(o.toJson());
      checkGetIosReopenAttributionResponse(od);
    });
  });

  unittest.group("obj-schema-GooglePlayAnalytics", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooglePlayAnalytics();
      var od = new api.GooglePlayAnalytics.fromJson(o.toJson());
      checkGooglePlayAnalytics(od);
    });
  });

  unittest.group("obj-schema-ITunesConnectAnalytics", () {
    unittest.test("to-json--from-json", () {
      var o = buildITunesConnectAnalytics();
      var od = new api.ITunesConnectAnalytics.fromJson(o.toJson());
      checkITunesConnectAnalytics(od);
    });
  });

  unittest.group("obj-schema-IosInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosInfo();
      var od = new api.IosInfo.fromJson(o.toJson());
      checkIosInfo(od);
    });
  });

  unittest.group("obj-schema-ManagedShortLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedShortLink();
      var od = new api.ManagedShortLink.fromJson(o.toJson());
      checkManagedShortLink(od);
    });
  });

  unittest.group("obj-schema-NavigationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildNavigationInfo();
      var od = new api.NavigationInfo.fromJson(o.toJson());
      checkNavigationInfo(od);
    });
  });

  unittest.group("obj-schema-SocialMetaTagInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSocialMetaTagInfo();
      var od = new api.SocialMetaTagInfo.fromJson(o.toJson());
      checkSocialMetaTagInfo(od);
    });
  });

  unittest.group("obj-schema-Suffix", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuffix();
      var od = new api.Suffix.fromJson(o.toJson());
      checkSuffix(od);
    });
  });

  unittest.group("resource-ManagedShortLinksResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ManagedShortLinksResourceApi res =
          new api.FirebasedynamiclinksApi(mock).managedShortLinks;
      var arg_request = buildCreateManagedShortLinkRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateManagedShortLinkRequest.fromJson(json);
        checkCreateManagedShortLinkRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v1/managedShortLinks:create"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreateManagedShortLinkResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateManagedShortLinkResponse(response);
      })));
    });
  });

  unittest.group("resource-ShortLinksResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ShortLinksResourceApi res =
          new api.FirebasedynamiclinksApi(mock).shortLinks;
      var arg_request = buildCreateShortDynamicLinkRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateShortDynamicLinkRequest.fromJson(json);
        checkCreateShortDynamicLinkRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/shortLinks"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreateShortDynamicLinkResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateShortDynamicLinkResponse(response);
      })));
    });
  });

  unittest.group("resource-V1ResourceApi", () {
    unittest.test("method--getLinkStats", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.FirebasedynamiclinksApi(mock).v1;
      var arg_dynamicLink = "foo";
      var arg_durationDays = "foo";
      var arg_sdkVersion = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        index = path.indexOf("/linkStats", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_dynamicLink"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/linkStats"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["durationDays"].first, unittest.equals(arg_durationDays));
        unittest.expect(
            queryMap["sdkVersion"].first, unittest.equals(arg_sdkVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDynamicLinkStats());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getLinkStats(arg_dynamicLink,
              durationDays: arg_durationDays,
              sdkVersion: arg_sdkVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDynamicLinkStats(response);
      })));
    });

    unittest.test("method--installAttribution", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.FirebasedynamiclinksApi(mock).v1;
      var arg_request = buildGetIosPostInstallAttributionRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIosPostInstallAttributionRequest.fromJson(json);
        checkGetIosPostInstallAttributionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1/installAttribution"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGetIosPostInstallAttributionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .installAttribution(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetIosPostInstallAttributionResponse(response);
      })));
    });

    unittest.test("method--reopenAttribution", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.FirebasedynamiclinksApi(mock).v1;
      var arg_request = buildGetIosReopenAttributionRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIosReopenAttributionRequest.fromJson(json);
        checkGetIosReopenAttributionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("v1/reopenAttribution"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetIosReopenAttributionResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reopenAttribution(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetIosReopenAttributionResponse(response);
      })));
    });
  });
}
