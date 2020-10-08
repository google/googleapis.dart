library googleapis.adsensehost.v4_1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/adsensehost/v4_1.dart' as api;

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

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.status = "foo";
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccount--;
}

buildUnnamed4135() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed4135(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccounts = 0;
buildAccounts() {
  var o = new api.Accounts();
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    o.etag = "foo";
    o.items = buildUnnamed4135();
    o.kind = "foo";
  }
  buildCounterAccounts--;
  return o;
}

checkAccounts(api.Accounts o) {
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4135(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounts--;
}

core.int buildCounterAdClient = 0;
buildAdClient() {
  var o = new api.AdClient();
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    o.arcOptIn = true;
    o.id = "foo";
    o.kind = "foo";
    o.productCode = "foo";
    o.supportsReporting = true;
  }
  buildCounterAdClient--;
  return o;
}

checkAdClient(api.AdClient o) {
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    unittest.expect(o.arcOptIn, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.productCode, unittest.equals('foo'));
    unittest.expect(o.supportsReporting, unittest.isTrue);
  }
  buildCounterAdClient--;
}

buildUnnamed4136() {
  var o = new core.List<api.AdClient>();
  o.add(buildAdClient());
  o.add(buildAdClient());
  return o;
}

checkUnnamed4136(core.List<api.AdClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdClient(o[0]);
  checkAdClient(o[1]);
}

core.int buildCounterAdClients = 0;
buildAdClients() {
  var o = new api.AdClients();
  buildCounterAdClients++;
  if (buildCounterAdClients < 3) {
    o.etag = "foo";
    o.items = buildUnnamed4136();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterAdClients--;
  return o;
}

checkAdClients(api.AdClients o) {
  buildCounterAdClients++;
  if (buildCounterAdClients < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4136(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdClients--;
}

core.int buildCounterAdCode = 0;
buildAdCode() {
  var o = new api.AdCode();
  buildCounterAdCode++;
  if (buildCounterAdCode < 3) {
    o.adCode = "foo";
    o.kind = "foo";
  }
  buildCounterAdCode--;
  return o;
}

checkAdCode(api.AdCode o) {
  buildCounterAdCode++;
  if (buildCounterAdCode < 3) {
    unittest.expect(o.adCode, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAdCode--;
}

core.int buildCounterAdStyleColors = 0;
buildAdStyleColors() {
  var o = new api.AdStyleColors();
  buildCounterAdStyleColors++;
  if (buildCounterAdStyleColors < 3) {
    o.background = "foo";
    o.border = "foo";
    o.text = "foo";
    o.title = "foo";
    o.url = "foo";
  }
  buildCounterAdStyleColors--;
  return o;
}

checkAdStyleColors(api.AdStyleColors o) {
  buildCounterAdStyleColors++;
  if (buildCounterAdStyleColors < 3) {
    unittest.expect(o.background, unittest.equals('foo'));
    unittest.expect(o.border, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAdStyleColors--;
}

core.int buildCounterAdStyleFont = 0;
buildAdStyleFont() {
  var o = new api.AdStyleFont();
  buildCounterAdStyleFont++;
  if (buildCounterAdStyleFont < 3) {
    o.family = "foo";
    o.size = "foo";
  }
  buildCounterAdStyleFont--;
  return o;
}

checkAdStyleFont(api.AdStyleFont o) {
  buildCounterAdStyleFont++;
  if (buildCounterAdStyleFont < 3) {
    unittest.expect(o.family, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
  }
  buildCounterAdStyleFont--;
}

core.int buildCounterAdStyle = 0;
buildAdStyle() {
  var o = new api.AdStyle();
  buildCounterAdStyle++;
  if (buildCounterAdStyle < 3) {
    o.colors = buildAdStyleColors();
    o.corners = "foo";
    o.font = buildAdStyleFont();
    o.kind = "foo";
  }
  buildCounterAdStyle--;
  return o;
}

checkAdStyle(api.AdStyle o) {
  buildCounterAdStyle++;
  if (buildCounterAdStyle < 3) {
    checkAdStyleColors(o.colors);
    unittest.expect(o.corners, unittest.equals('foo'));
    checkAdStyleFont(o.font);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAdStyle--;
}

core.int buildCounterAdUnitContentAdsSettingsBackupOption = 0;
buildAdUnitContentAdsSettingsBackupOption() {
  var o = new api.AdUnitContentAdsSettingsBackupOption();
  buildCounterAdUnitContentAdsSettingsBackupOption++;
  if (buildCounterAdUnitContentAdsSettingsBackupOption < 3) {
    o.color = "foo";
    o.type = "foo";
    o.url = "foo";
  }
  buildCounterAdUnitContentAdsSettingsBackupOption--;
  return o;
}

checkAdUnitContentAdsSettingsBackupOption(
    api.AdUnitContentAdsSettingsBackupOption o) {
  buildCounterAdUnitContentAdsSettingsBackupOption++;
  if (buildCounterAdUnitContentAdsSettingsBackupOption < 3) {
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAdUnitContentAdsSettingsBackupOption--;
}

core.int buildCounterAdUnitContentAdsSettings = 0;
buildAdUnitContentAdsSettings() {
  var o = new api.AdUnitContentAdsSettings();
  buildCounterAdUnitContentAdsSettings++;
  if (buildCounterAdUnitContentAdsSettings < 3) {
    o.backupOption = buildAdUnitContentAdsSettingsBackupOption();
    o.size = "foo";
    o.type = "foo";
  }
  buildCounterAdUnitContentAdsSettings--;
  return o;
}

checkAdUnitContentAdsSettings(api.AdUnitContentAdsSettings o) {
  buildCounterAdUnitContentAdsSettings++;
  if (buildCounterAdUnitContentAdsSettings < 3) {
    checkAdUnitContentAdsSettingsBackupOption(o.backupOption);
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAdUnitContentAdsSettings--;
}

core.int buildCounterAdUnitMobileContentAdsSettings = 0;
buildAdUnitMobileContentAdsSettings() {
  var o = new api.AdUnitMobileContentAdsSettings();
  buildCounterAdUnitMobileContentAdsSettings++;
  if (buildCounterAdUnitMobileContentAdsSettings < 3) {
    o.markupLanguage = "foo";
    o.scriptingLanguage = "foo";
    o.size = "foo";
    o.type = "foo";
  }
  buildCounterAdUnitMobileContentAdsSettings--;
  return o;
}

checkAdUnitMobileContentAdsSettings(api.AdUnitMobileContentAdsSettings o) {
  buildCounterAdUnitMobileContentAdsSettings++;
  if (buildCounterAdUnitMobileContentAdsSettings < 3) {
    unittest.expect(o.markupLanguage, unittest.equals('foo'));
    unittest.expect(o.scriptingLanguage, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAdUnitMobileContentAdsSettings--;
}

core.int buildCounterAdUnit = 0;
buildAdUnit() {
  var o = new api.AdUnit();
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    o.code = "foo";
    o.contentAdsSettings = buildAdUnitContentAdsSettings();
    o.customStyle = buildAdStyle();
    o.id = "foo";
    o.kind = "foo";
    o.mobileContentAdsSettings = buildAdUnitMobileContentAdsSettings();
    o.name = "foo";
    o.status = "foo";
  }
  buildCounterAdUnit--;
  return o;
}

checkAdUnit(api.AdUnit o) {
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkAdUnitContentAdsSettings(o.contentAdsSettings);
    checkAdStyle(o.customStyle);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkAdUnitMobileContentAdsSettings(o.mobileContentAdsSettings);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAdUnit--;
}

buildUnnamed4137() {
  var o = new core.List<api.AdUnit>();
  o.add(buildAdUnit());
  o.add(buildAdUnit());
  return o;
}

checkUnnamed4137(core.List<api.AdUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnit(o[0]);
  checkAdUnit(o[1]);
}

core.int buildCounterAdUnits = 0;
buildAdUnits() {
  var o = new api.AdUnits();
  buildCounterAdUnits++;
  if (buildCounterAdUnits < 3) {
    o.etag = "foo";
    o.items = buildUnnamed4137();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterAdUnits--;
  return o;
}

checkAdUnits(api.AdUnits o) {
  buildCounterAdUnits++;
  if (buildCounterAdUnits < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4137(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdUnits--;
}

buildUnnamed4138() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4138(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAssociationSession = 0;
buildAssociationSession() {
  var o = new api.AssociationSession();
  buildCounterAssociationSession++;
  if (buildCounterAssociationSession < 3) {
    o.accountId = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.productCodes = buildUnnamed4138();
    o.redirectUrl = "foo";
    o.status = "foo";
    o.userLocale = "foo";
    o.websiteLocale = "foo";
    o.websiteUrl = "foo";
  }
  buildCounterAssociationSession--;
  return o;
}

checkAssociationSession(api.AssociationSession o) {
  buildCounterAssociationSession++;
  if (buildCounterAssociationSession < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4138(o.productCodes);
    unittest.expect(o.redirectUrl, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.userLocale, unittest.equals('foo'));
    unittest.expect(o.websiteLocale, unittest.equals('foo'));
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
  }
  buildCounterAssociationSession--;
}

core.int buildCounterCustomChannel = 0;
buildCustomChannel() {
  var o = new api.CustomChannel();
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    o.code = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterCustomChannel--;
  return o;
}

checkCustomChannel(api.CustomChannel o) {
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCustomChannel--;
}

buildUnnamed4139() {
  var o = new core.List<api.CustomChannel>();
  o.add(buildCustomChannel());
  o.add(buildCustomChannel());
  return o;
}

checkUnnamed4139(core.List<api.CustomChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomChannel(o[0]);
  checkCustomChannel(o[1]);
}

core.int buildCounterCustomChannels = 0;
buildCustomChannels() {
  var o = new api.CustomChannels();
  buildCounterCustomChannels++;
  if (buildCounterCustomChannels < 3) {
    o.etag = "foo";
    o.items = buildUnnamed4139();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCustomChannels--;
  return o;
}

checkCustomChannels(api.CustomChannels o) {
  buildCounterCustomChannels++;
  if (buildCounterCustomChannels < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4139(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCustomChannels--;
}

buildUnnamed4140() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4140(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportHeaders = 0;
buildReportHeaders() {
  var o = new api.ReportHeaders();
  buildCounterReportHeaders++;
  if (buildCounterReportHeaders < 3) {
    o.currency = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterReportHeaders--;
  return o;
}

checkReportHeaders(api.ReportHeaders o) {
  buildCounterReportHeaders++;
  if (buildCounterReportHeaders < 3) {
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReportHeaders--;
}

buildUnnamed4141() {
  var o = new core.List<api.ReportHeaders>();
  o.add(buildReportHeaders());
  o.add(buildReportHeaders());
  return o;
}

checkUnnamed4141(core.List<api.ReportHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportHeaders(o[0]);
  checkReportHeaders(o[1]);
}

buildUnnamed4142() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4143() {
  var o = new core.List<core.List<core.String>>();
  o.add(buildUnnamed4142());
  o.add(buildUnnamed4142());
  return o;
}

checkUnnamed4143(core.List<core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4142(o[0]);
  checkUnnamed4142(o[1]);
}

buildUnnamed4144() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4144(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4145() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReport = 0;
buildReport() {
  var o = new api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.averages = buildUnnamed4140();
    o.headers = buildUnnamed4141();
    o.kind = "foo";
    o.rows = buildUnnamed4143();
    o.totalMatchedRows = "foo";
    o.totals = buildUnnamed4144();
    o.warnings = buildUnnamed4145();
  }
  buildCounterReport--;
  return o;
}

checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkUnnamed4140(o.averages);
    checkUnnamed4141(o.headers);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4143(o.rows);
    unittest.expect(o.totalMatchedRows, unittest.equals('foo'));
    checkUnnamed4144(o.totals);
    checkUnnamed4145(o.warnings);
  }
  buildCounterReport--;
}

core.int buildCounterUrlChannel = 0;
buildUrlChannel() {
  var o = new api.UrlChannel();
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.urlPattern = "foo";
  }
  buildCounterUrlChannel--;
  return o;
}

checkUrlChannel(api.UrlChannel o) {
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.urlPattern, unittest.equals('foo'));
  }
  buildCounterUrlChannel--;
}

buildUnnamed4146() {
  var o = new core.List<api.UrlChannel>();
  o.add(buildUrlChannel());
  o.add(buildUrlChannel());
  return o;
}

checkUnnamed4146(core.List<api.UrlChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlChannel(o[0]);
  checkUrlChannel(o[1]);
}

core.int buildCounterUrlChannels = 0;
buildUrlChannels() {
  var o = new api.UrlChannels();
  buildCounterUrlChannels++;
  if (buildCounterUrlChannels < 3) {
    o.etag = "foo";
    o.items = buildUnnamed4146();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterUrlChannels--;
  return o;
}

checkUrlChannels(api.UrlChannels o) {
  buildCounterUrlChannels++;
  if (buildCounterUrlChannels < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4146(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterUrlChannels--;
}

buildUnnamed4147() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4148() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4148(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4149() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4150() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4150(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4151() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4151(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4152() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4152(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4153() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4153(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4154() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4154(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4155() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4156() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4156(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4157() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4157(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Account", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccount();
      var od = new api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group("obj-schema-Accounts", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounts();
      var od = new api.Accounts.fromJson(o.toJson());
      checkAccounts(od);
    });
  });

  unittest.group("obj-schema-AdClient", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdClient();
      var od = new api.AdClient.fromJson(o.toJson());
      checkAdClient(od);
    });
  });

  unittest.group("obj-schema-AdClients", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdClients();
      var od = new api.AdClients.fromJson(o.toJson());
      checkAdClients(od);
    });
  });

  unittest.group("obj-schema-AdCode", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdCode();
      var od = new api.AdCode.fromJson(o.toJson());
      checkAdCode(od);
    });
  });

  unittest.group("obj-schema-AdStyleColors", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdStyleColors();
      var od = new api.AdStyleColors.fromJson(o.toJson());
      checkAdStyleColors(od);
    });
  });

  unittest.group("obj-schema-AdStyleFont", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdStyleFont();
      var od = new api.AdStyleFont.fromJson(o.toJson());
      checkAdStyleFont(od);
    });
  });

  unittest.group("obj-schema-AdStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdStyle();
      var od = new api.AdStyle.fromJson(o.toJson());
      checkAdStyle(od);
    });
  });

  unittest.group("obj-schema-AdUnitContentAdsSettingsBackupOption", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdUnitContentAdsSettingsBackupOption();
      var od =
          new api.AdUnitContentAdsSettingsBackupOption.fromJson(o.toJson());
      checkAdUnitContentAdsSettingsBackupOption(od);
    });
  });

  unittest.group("obj-schema-AdUnitContentAdsSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdUnitContentAdsSettings();
      var od = new api.AdUnitContentAdsSettings.fromJson(o.toJson());
      checkAdUnitContentAdsSettings(od);
    });
  });

  unittest.group("obj-schema-AdUnitMobileContentAdsSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdUnitMobileContentAdsSettings();
      var od = new api.AdUnitMobileContentAdsSettings.fromJson(o.toJson());
      checkAdUnitMobileContentAdsSettings(od);
    });
  });

  unittest.group("obj-schema-AdUnit", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdUnit();
      var od = new api.AdUnit.fromJson(o.toJson());
      checkAdUnit(od);
    });
  });

  unittest.group("obj-schema-AdUnits", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdUnits();
      var od = new api.AdUnits.fromJson(o.toJson());
      checkAdUnits(od);
    });
  });

  unittest.group("obj-schema-AssociationSession", () {
    unittest.test("to-json--from-json", () {
      var o = buildAssociationSession();
      var od = new api.AssociationSession.fromJson(o.toJson());
      checkAssociationSession(od);
    });
  });

  unittest.group("obj-schema-CustomChannel", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomChannel();
      var od = new api.CustomChannel.fromJson(o.toJson());
      checkCustomChannel(od);
    });
  });

  unittest.group("obj-schema-CustomChannels", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomChannels();
      var od = new api.CustomChannels.fromJson(o.toJson());
      checkCustomChannels(od);
    });
  });

  unittest.group("obj-schema-ReportHeaders", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportHeaders();
      var od = new api.ReportHeaders.fromJson(o.toJson());
      checkReportHeaders(od);
    });
  });

  unittest.group("obj-schema-Report", () {
    unittest.test("to-json--from-json", () {
      var o = buildReport();
      var od = new api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });

  unittest.group("obj-schema-UrlChannel", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlChannel();
      var od = new api.UrlChannel.fromJson(o.toJson());
      checkUrlChannel(od);
    });
  });

  unittest.group("obj-schema-UrlChannels", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlChannels();
      var od = new api.UrlChannels.fromJson(o.toJson());
      checkUrlChannels(od);
    });
  });

  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdsensehostApi(mock).accounts;
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

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
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdsensehostApi(mock).accounts;
      var arg_filterAdClientId = buildUnnamed4147();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("accounts"));
        pathOffset += 8;

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
        unittest.expect(queryMap["filterAdClientId"],
            unittest.equals(arg_filterAdClientId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccounts());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterAdClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccounts(response);
      })));
    });
  });

  unittest.group("resource-AccountsAdclientsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsAdclientsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adclients;
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));

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
        var resp = convert.json.encode(buildAdClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClient(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsAdclientsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adclients;
      var arg_accountId = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/adclients"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAdClients());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClients(response);
      })));
    });
  });

  unittest.group("resource-AccountsAdunitsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_adUnitId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf("/adunits/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/adunits/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_adUnitId"));

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
        var resp = convert.json.encode(buildAdUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_accountId, arg_adClientId, arg_adUnitId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_adUnitId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf("/adunits/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/adunits/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_adUnitId"));

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
        var resp = convert.json.encode(buildAdUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_adClientId, arg_adUnitId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test("method--getAdCode", () {
      var mock = new HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_adUnitId = "foo";
      var arg_hostCustomChannelId = buildUnnamed4148();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf("/adunits/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/adunits/"));
        pathOffset += 9;
        index = path.indexOf("/adcode", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adUnitId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/adcode"));
        pathOffset += 7;

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
        unittest.expect(queryMap["hostCustomChannelId"],
            unittest.equals(arg_hostCustomChannelId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAdCode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAdCode(arg_accountId, arg_adClientId, arg_adUnitId,
              hostCustomChannelId: arg_hostCustomChannelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdCode(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adunits;
      var arg_request = buildAdUnit();
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AdUnit.fromJson(json);
        checkAdUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf("/adunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildAdUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_accountId, arg_adClientId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adunits;
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_includeInactive = true;
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf("/adunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

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
        unittest.expect(queryMap["includeInactive"].first,
            unittest.equals("$arg_includeInactive"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAdUnits());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, arg_adClientId,
              includeInactive: arg_includeInactive,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnits(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adunits;
      var arg_request = buildAdUnit();
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_adUnitId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AdUnit.fromJson(json);
        checkAdUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf("/adunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

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
            queryMap["adUnitId"].first, unittest.equals(arg_adUnitId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAdUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_adClientId, arg_adUnitId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsAdunitsResourceApi res =
          new api.AdsensehostApi(mock).accounts.adunits;
      var arg_request = buildAdUnit();
      var arg_accountId = "foo";
      var arg_adClientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AdUnit.fromJson(json);
        checkAdUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/adclients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/adclients/"));
        pathOffset += 11;
        index = path.indexOf("/adunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/adunits"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildAdUnit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_adClientId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdUnit(response);
      })));
    });
  });

  unittest.group("resource-AccountsReportsResourceApi", () {
    unittest.test("method--generate", () {
      var mock = new HttpServerMock();
      api.AccountsReportsResourceApi res =
          new api.AdsensehostApi(mock).accounts.reports;
      var arg_accountId = "foo";
      var arg_startDate = "foo";
      var arg_endDate = "foo";
      var arg_sort = buildUnnamed4149();
      var arg_startIndex = 42;
      var arg_filter = buildUnnamed4150();
      var arg_metric = buildUnnamed4151();
      var arg_locale = "foo";
      var arg_dimension = buildUnnamed4152();
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/reports", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/reports"));
        pathOffset += 8;

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
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(queryMap["sort"], unittest.equals(arg_sort));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(queryMap["filter"], unittest.equals(arg_filter));
        unittest.expect(queryMap["metric"], unittest.equals(arg_metric));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(queryMap["dimension"], unittest.equals(arg_dimension));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_accountId, arg_startDate, arg_endDate,
              sort: arg_sort,
              startIndex: arg_startIndex,
              filter: arg_filter,
              metric: arg_metric,
              locale: arg_locale,
              dimension: arg_dimension,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });
  });

  unittest.group("resource-AdclientsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AdclientsResourceApi res = new api.AdsensehostApi(mock).adclients;
      var arg_adClientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));

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
        var resp = convert.json.encode(buildAdClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClient(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AdclientsResourceApi res = new api.AdsensehostApi(mock).adclients;
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("adclients"));
        pathOffset += 9;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAdClients());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdClients(response);
      })));
    });
  });

  unittest.group("resource-AssociationsessionsResourceApi", () {
    unittest.test("method--start", () {
      var mock = new HttpServerMock();
      api.AssociationsessionsResourceApi res =
          new api.AdsensehostApi(mock).associationsessions;
      var arg_productCode = buildUnnamed4153();
      var arg_websiteUrl = "foo";
      var arg_userLocale = "foo";
      var arg_callbackUrl = "foo";
      var arg_websiteLocale = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("associationsessions/start"));
        pathOffset += 25;

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
            queryMap["productCode"], unittest.equals(arg_productCode));
        unittest.expect(
            queryMap["websiteUrl"].first, unittest.equals(arg_websiteUrl));
        unittest.expect(
            queryMap["userLocale"].first, unittest.equals(arg_userLocale));
        unittest.expect(
            queryMap["callbackUrl"].first, unittest.equals(arg_callbackUrl));
        unittest.expect(queryMap["websiteLocale"].first,
            unittest.equals(arg_websiteLocale));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAssociationSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .start(arg_productCode, arg_websiteUrl,
              userLocale: arg_userLocale,
              callbackUrl: arg_callbackUrl,
              websiteLocale: arg_websiteLocale,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssociationSession(response);
      })));
    });

    unittest.test("method--verify", () {
      var mock = new HttpServerMock();
      api.AssociationsessionsResourceApi res =
          new api.AdsensehostApi(mock).associationsessions;
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("associationsessions/verify"));
        pathOffset += 26;

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
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAssociationSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verify(arg_token, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAssociationSession(response);
      })));
    });
  });

  unittest.group("resource-CustomchannelsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CustomchannelsResourceApi res =
          new api.AdsensehostApi(mock).customchannels;
      var arg_adClientId = "foo";
      var arg_customChannelId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/customchannels/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/customchannels/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_customChannelId"));

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
        var resp = convert.json.encode(buildCustomChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_adClientId, arg_customChannelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CustomchannelsResourceApi res =
          new api.AdsensehostApi(mock).customchannels;
      var arg_adClientId = "foo";
      var arg_customChannelId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/customchannels/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/customchannels/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_customChannelId"));

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
        var resp = convert.json.encode(buildCustomChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_adClientId, arg_customChannelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.CustomchannelsResourceApi res =
          new api.AdsensehostApi(mock).customchannels;
      var arg_request = buildCustomChannel();
      var arg_adClientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CustomChannel.fromJson(json);
        checkCustomChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/customchannels", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildCustomChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomchannelsResourceApi res =
          new api.AdsensehostApi(mock).customchannels;
      var arg_adClientId = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/customchannels", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCustomChannels());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_adClientId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannels(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CustomchannelsResourceApi res =
          new api.AdsensehostApi(mock).customchannels;
      var arg_request = buildCustomChannel();
      var arg_adClientId = "foo";
      var arg_customChannelId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CustomChannel.fromJson(json);
        checkCustomChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/customchannels", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

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
        unittest.expect(queryMap["customChannelId"].first,
            unittest.equals(arg_customChannelId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCustomChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_adClientId, arg_customChannelId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.CustomchannelsResourceApi res =
          new api.AdsensehostApi(mock).customchannels;
      var arg_request = buildCustomChannel();
      var arg_adClientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CustomChannel.fromJson(json);
        checkCustomChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/customchannels", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/customchannels"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildCustomChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomChannel(response);
      })));
    });
  });

  unittest.group("resource-ReportsResourceApi", () {
    unittest.test("method--generate", () {
      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.AdsensehostApi(mock).reports;
      var arg_startDate = "foo";
      var arg_endDate = "foo";
      var arg_filter = buildUnnamed4154();
      var arg_metric = buildUnnamed4155();
      var arg_dimension = buildUnnamed4156();
      var arg_locale = "foo";
      var arg_startIndex = 42;
      var arg_maxResults = 42;
      var arg_sort = buildUnnamed4157();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("reports"));
        pathOffset += 7;

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
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(queryMap["filter"], unittest.equals(arg_filter));
        unittest.expect(queryMap["metric"], unittest.equals(arg_metric));
        unittest.expect(queryMap["dimension"], unittest.equals(arg_dimension));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["sort"], unittest.equals(arg_sort));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generate(arg_startDate, arg_endDate,
              filter: arg_filter,
              metric: arg_metric,
              dimension: arg_dimension,
              locale: arg_locale,
              startIndex: arg_startIndex,
              maxResults: arg_maxResults,
              sort: arg_sort,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });
  });

  unittest.group("resource-UrlchannelsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UrlchannelsResourceApi res = new api.AdsensehostApi(mock).urlchannels;
      var arg_adClientId = "foo";
      var arg_urlChannelId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/urlchannels/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/urlchannels/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_urlChannelId"));

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
        var resp = convert.json.encode(buildUrlChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_adClientId, arg_urlChannelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlChannel(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.UrlchannelsResourceApi res = new api.AdsensehostApi(mock).urlchannels;
      var arg_request = buildUrlChannel();
      var arg_adClientId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlChannel.fromJson(json);
        checkUrlChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/urlchannels", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/urlchannels"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildUrlChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_adClientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlChannel(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UrlchannelsResourceApi res = new api.AdsensehostApi(mock).urlchannels;
      var arg_adClientId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("adsensehost/v4.1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("adclients/"));
        pathOffset += 10;
        index = path.indexOf("/urlchannels", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_adClientId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/urlchannels"));
        pathOffset += 12;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUrlChannels());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_adClientId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlChannels(response);
      })));
    });
  });
}
