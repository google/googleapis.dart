// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/adsensehost/v4_1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.status = 'foo';
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccount--;
}

core.List<api.Account> buildUnnamed5691() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed5691(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccounts = 0;
api.Accounts buildAccounts() {
  final o = api.Accounts();
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed5691();
    o.kind = 'foo';
  }
  buildCounterAccounts--;
  return o;
}

void checkAccounts(api.Accounts o) {
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5691(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccounts--;
}

core.int buildCounterAdClient = 0;
api.AdClient buildAdClient() {
  final o = api.AdClient();
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    o.arcOptIn = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.productCode = 'foo';
    o.supportsReporting = true;
  }
  buildCounterAdClient--;
  return o;
}

void checkAdClient(api.AdClient o) {
  buildCounterAdClient++;
  if (buildCounterAdClient < 3) {
    unittest.expect(o.arcOptIn!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.supportsReporting!, unittest.isTrue);
  }
  buildCounterAdClient--;
}

core.List<api.AdClient> buildUnnamed5692() => [
      buildAdClient(),
      buildAdClient(),
    ];

void checkUnnamed5692(core.List<api.AdClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdClient(o[0]);
  checkAdClient(o[1]);
}

core.int buildCounterAdClients = 0;
api.AdClients buildAdClients() {
  final o = api.AdClients();
  buildCounterAdClients++;
  if (buildCounterAdClients < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed5692();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdClients--;
  return o;
}

void checkAdClients(api.AdClients o) {
  buildCounterAdClients++;
  if (buildCounterAdClients < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5692(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdClients--;
}

core.int buildCounterAdCode = 0;
api.AdCode buildAdCode() {
  final o = api.AdCode();
  buildCounterAdCode++;
  if (buildCounterAdCode < 3) {
    o.adCode = 'foo';
    o.kind = 'foo';
  }
  buildCounterAdCode--;
  return o;
}

void checkAdCode(api.AdCode o) {
  buildCounterAdCode++;
  if (buildCounterAdCode < 3) {
    unittest.expect(
      o.adCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdCode--;
}

core.int buildCounterAdStyleColors = 0;
api.AdStyleColors buildAdStyleColors() {
  final o = api.AdStyleColors();
  buildCounterAdStyleColors++;
  if (buildCounterAdStyleColors < 3) {
    o.background = 'foo';
    o.border = 'foo';
    o.text = 'foo';
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterAdStyleColors--;
  return o;
}

void checkAdStyleColors(api.AdStyleColors o) {
  buildCounterAdStyleColors++;
  if (buildCounterAdStyleColors < 3) {
    unittest.expect(
      o.background!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.border!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdStyleColors--;
}

core.int buildCounterAdStyleFont = 0;
api.AdStyleFont buildAdStyleFont() {
  final o = api.AdStyleFont();
  buildCounterAdStyleFont++;
  if (buildCounterAdStyleFont < 3) {
    o.family = 'foo';
    o.size = 'foo';
  }
  buildCounterAdStyleFont--;
  return o;
}

void checkAdStyleFont(api.AdStyleFont o) {
  buildCounterAdStyleFont++;
  if (buildCounterAdStyleFont < 3) {
    unittest.expect(
      o.family!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdStyleFont--;
}

core.int buildCounterAdStyle = 0;
api.AdStyle buildAdStyle() {
  final o = api.AdStyle();
  buildCounterAdStyle++;
  if (buildCounterAdStyle < 3) {
    o.colors = buildAdStyleColors();
    o.corners = 'foo';
    o.font = buildAdStyleFont();
    o.kind = 'foo';
  }
  buildCounterAdStyle--;
  return o;
}

void checkAdStyle(api.AdStyle o) {
  buildCounterAdStyle++;
  if (buildCounterAdStyle < 3) {
    checkAdStyleColors(o.colors!);
    unittest.expect(
      o.corners!,
      unittest.equals('foo'),
    );
    checkAdStyleFont(o.font!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdStyle--;
}

core.int buildCounterAdUnitContentAdsSettingsBackupOption = 0;
api.AdUnitContentAdsSettingsBackupOption
    buildAdUnitContentAdsSettingsBackupOption() {
  final o = api.AdUnitContentAdsSettingsBackupOption();
  buildCounterAdUnitContentAdsSettingsBackupOption++;
  if (buildCounterAdUnitContentAdsSettingsBackupOption < 3) {
    o.color = 'foo';
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterAdUnitContentAdsSettingsBackupOption--;
  return o;
}

void checkAdUnitContentAdsSettingsBackupOption(
    api.AdUnitContentAdsSettingsBackupOption o) {
  buildCounterAdUnitContentAdsSettingsBackupOption++;
  if (buildCounterAdUnitContentAdsSettingsBackupOption < 3) {
    unittest.expect(
      o.color!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdUnitContentAdsSettingsBackupOption--;
}

core.int buildCounterAdUnitContentAdsSettings = 0;
api.AdUnitContentAdsSettings buildAdUnitContentAdsSettings() {
  final o = api.AdUnitContentAdsSettings();
  buildCounterAdUnitContentAdsSettings++;
  if (buildCounterAdUnitContentAdsSettings < 3) {
    o.backupOption = buildAdUnitContentAdsSettingsBackupOption();
    o.size = 'foo';
    o.type = 'foo';
  }
  buildCounterAdUnitContentAdsSettings--;
  return o;
}

void checkAdUnitContentAdsSettings(api.AdUnitContentAdsSettings o) {
  buildCounterAdUnitContentAdsSettings++;
  if (buildCounterAdUnitContentAdsSettings < 3) {
    checkAdUnitContentAdsSettingsBackupOption(o.backupOption!);
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdUnitContentAdsSettings--;
}

core.int buildCounterAdUnitMobileContentAdsSettings = 0;
api.AdUnitMobileContentAdsSettings buildAdUnitMobileContentAdsSettings() {
  final o = api.AdUnitMobileContentAdsSettings();
  buildCounterAdUnitMobileContentAdsSettings++;
  if (buildCounterAdUnitMobileContentAdsSettings < 3) {
    o.markupLanguage = 'foo';
    o.scriptingLanguage = 'foo';
    o.size = 'foo';
    o.type = 'foo';
  }
  buildCounterAdUnitMobileContentAdsSettings--;
  return o;
}

void checkAdUnitMobileContentAdsSettings(api.AdUnitMobileContentAdsSettings o) {
  buildCounterAdUnitMobileContentAdsSettings++;
  if (buildCounterAdUnitMobileContentAdsSettings < 3) {
    unittest.expect(
      o.markupLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scriptingLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdUnitMobileContentAdsSettings--;
}

core.int buildCounterAdUnit = 0;
api.AdUnit buildAdUnit() {
  final o = api.AdUnit();
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    o.code = 'foo';
    o.contentAdsSettings = buildAdUnitContentAdsSettings();
    o.customStyle = buildAdStyle();
    o.id = 'foo';
    o.kind = 'foo';
    o.mobileContentAdsSettings = buildAdUnitMobileContentAdsSettings();
    o.name = 'foo';
    o.status = 'foo';
  }
  buildCounterAdUnit--;
  return o;
}

void checkAdUnit(api.AdUnit o) {
  buildCounterAdUnit++;
  if (buildCounterAdUnit < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkAdUnitContentAdsSettings(o.contentAdsSettings!);
    checkAdStyle(o.customStyle!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkAdUnitMobileContentAdsSettings(o.mobileContentAdsSettings!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdUnit--;
}

core.List<api.AdUnit> buildUnnamed5693() => [
      buildAdUnit(),
      buildAdUnit(),
    ];

void checkUnnamed5693(core.List<api.AdUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdUnit(o[0]);
  checkAdUnit(o[1]);
}

core.int buildCounterAdUnits = 0;
api.AdUnits buildAdUnits() {
  final o = api.AdUnits();
  buildCounterAdUnits++;
  if (buildCounterAdUnits < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed5693();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdUnits--;
  return o;
}

void checkAdUnits(api.AdUnits o) {
  buildCounterAdUnits++;
  if (buildCounterAdUnits < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5693(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdUnits--;
}

core.List<core.String> buildUnnamed5694() => [
      'foo',
      'foo',
    ];

void checkUnnamed5694(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAssociationSession = 0;
api.AssociationSession buildAssociationSession() {
  final o = api.AssociationSession();
  buildCounterAssociationSession++;
  if (buildCounterAssociationSession < 3) {
    o.accountId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.productCodes = buildUnnamed5694();
    o.redirectUrl = 'foo';
    o.status = 'foo';
    o.userLocale = 'foo';
    o.websiteLocale = 'foo';
    o.websiteUrl = 'foo';
  }
  buildCounterAssociationSession--;
  return o;
}

void checkAssociationSession(api.AssociationSession o) {
  buildCounterAssociationSession++;
  if (buildCounterAssociationSession < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5694(o.productCodes!);
    unittest.expect(
      o.redirectUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userLocale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteLocale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssociationSession--;
}

core.int buildCounterCustomChannel = 0;
api.CustomChannel buildCustomChannel() {
  final o = api.CustomChannel();
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    o.code = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterCustomChannel--;
  return o;
}

void checkCustomChannel(api.CustomChannel o) {
  buildCounterCustomChannel++;
  if (buildCounterCustomChannel < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomChannel--;
}

core.List<api.CustomChannel> buildUnnamed5695() => [
      buildCustomChannel(),
      buildCustomChannel(),
    ];

void checkUnnamed5695(core.List<api.CustomChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomChannel(o[0]);
  checkCustomChannel(o[1]);
}

core.int buildCounterCustomChannels = 0;
api.CustomChannels buildCustomChannels() {
  final o = api.CustomChannels();
  buildCounterCustomChannels++;
  if (buildCounterCustomChannels < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed5695();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCustomChannels--;
  return o;
}

void checkCustomChannels(api.CustomChannels o) {
  buildCounterCustomChannels++;
  if (buildCounterCustomChannels < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5695(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomChannels--;
}

core.List<core.String> buildUnnamed5696() => [
      'foo',
      'foo',
    ];

void checkUnnamed5696(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterReportHeaders = 0;
api.ReportHeaders buildReportHeaders() {
  final o = api.ReportHeaders();
  buildCounterReportHeaders++;
  if (buildCounterReportHeaders < 3) {
    o.currency = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterReportHeaders--;
  return o;
}

void checkReportHeaders(api.ReportHeaders o) {
  buildCounterReportHeaders++;
  if (buildCounterReportHeaders < 3) {
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportHeaders--;
}

core.List<api.ReportHeaders> buildUnnamed5697() => [
      buildReportHeaders(),
      buildReportHeaders(),
    ];

void checkUnnamed5697(core.List<api.ReportHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportHeaders(o[0]);
  checkReportHeaders(o[1]);
}

core.List<core.String> buildUnnamed5698() => [
      'foo',
      'foo',
    ];

void checkUnnamed5698(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.List<core.String>> buildUnnamed5699() => [
      buildUnnamed5698(),
      buildUnnamed5698(),
    ];

void checkUnnamed5699(core.List<core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5698(o[0]);
  checkUnnamed5698(o[1]);
}

core.List<core.String> buildUnnamed5700() => [
      'foo',
      'foo',
    ];

void checkUnnamed5700(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5701() => [
      'foo',
      'foo',
    ];

void checkUnnamed5701(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.averages = buildUnnamed5696();
    o.headers = buildUnnamed5697();
    o.kind = 'foo';
    o.rows = buildUnnamed5699();
    o.totalMatchedRows = 'foo';
    o.totals = buildUnnamed5700();
    o.warnings = buildUnnamed5701();
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkUnnamed5696(o.averages!);
    checkUnnamed5697(o.headers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5699(o.rows!);
    unittest.expect(
      o.totalMatchedRows!,
      unittest.equals('foo'),
    );
    checkUnnamed5700(o.totals!);
    checkUnnamed5701(o.warnings!);
  }
  buildCounterReport--;
}

core.int buildCounterUrlChannel = 0;
api.UrlChannel buildUrlChannel() {
  final o = api.UrlChannel();
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.urlPattern = 'foo';
  }
  buildCounterUrlChannel--;
  return o;
}

void checkUrlChannel(api.UrlChannel o) {
  buildCounterUrlChannel++;
  if (buildCounterUrlChannel < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlPattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrlChannel--;
}

core.List<api.UrlChannel> buildUnnamed5702() => [
      buildUrlChannel(),
      buildUrlChannel(),
    ];

void checkUnnamed5702(core.List<api.UrlChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlChannel(o[0]);
  checkUrlChannel(o[1]);
}

core.int buildCounterUrlChannels = 0;
api.UrlChannels buildUrlChannels() {
  final o = api.UrlChannels();
  buildCounterUrlChannels++;
  if (buildCounterUrlChannels < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed5702();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterUrlChannels--;
  return o;
}

void checkUrlChannels(api.UrlChannels o) {
  buildCounterUrlChannels++;
  if (buildCounterUrlChannels < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5702(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrlChannels--;
}

core.List<core.String> buildUnnamed5703() => [
      'foo',
      'foo',
    ];

void checkUnnamed5703(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5704() => [
      'foo',
      'foo',
    ];

void checkUnnamed5704(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5705() => [
      'foo',
      'foo',
    ];

void checkUnnamed5705(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5706() => [
      'foo',
      'foo',
    ];

void checkUnnamed5706(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5707() => [
      'foo',
      'foo',
    ];

void checkUnnamed5707(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5708() => [
      'foo',
      'foo',
    ];

void checkUnnamed5708(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5709() => [
      'foo',
      'foo',
    ];

void checkUnnamed5709(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5710() => [
      'foo',
      'foo',
    ];

void checkUnnamed5710(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5711() => [
      'foo',
      'foo',
    ];

void checkUnnamed5711(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5712() => [
      'foo',
      'foo',
    ];

void checkUnnamed5712(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed5713() => [
      'foo',
      'foo',
    ];

void checkUnnamed5713(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-Accounts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccounts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Accounts.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccounts(od);
    });
  });

  unittest.group('obj-schema-AdClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdClient.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdClient(od);
    });
  });

  unittest.group('obj-schema-AdClients', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdClients();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdClients.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdClients(od);
    });
  });

  unittest.group('obj-schema-AdCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdCode.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdCode(od);
    });
  });

  unittest.group('obj-schema-AdStyleColors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdStyleColors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdStyleColors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdStyleColors(od);
    });
  });

  unittest.group('obj-schema-AdStyleFont', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdStyleFont();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdStyleFont.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdStyleFont(od);
    });
  });

  unittest.group('obj-schema-AdStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdStyle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdStyle(od);
    });
  });

  unittest.group('obj-schema-AdUnitContentAdsSettingsBackupOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnitContentAdsSettingsBackupOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUnitContentAdsSettingsBackupOption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdUnitContentAdsSettingsBackupOption(od);
    });
  });

  unittest.group('obj-schema-AdUnitContentAdsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnitContentAdsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUnitContentAdsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdUnitContentAdsSettings(od);
    });
  });

  unittest.group('obj-schema-AdUnitMobileContentAdsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnitMobileContentAdsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdUnitMobileContentAdsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdUnitMobileContentAdsSettings(od);
    });
  });

  unittest.group('obj-schema-AdUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdUnit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdUnit(od);
    });
  });

  unittest.group('obj-schema-AdUnits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdUnits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdUnits.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdUnits(od);
    });
  });

  unittest.group('obj-schema-AssociationSession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssociationSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssociationSession.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAssociationSession(od);
    });
  });

  unittest.group('obj-schema-CustomChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomChannel(od);
    });
  });

  unittest.group('obj-schema-CustomChannels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomChannels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomChannels.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomChannels(od);
    });
  });

  unittest.group('obj-schema-ReportHeaders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportHeaders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportHeaders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportHeaders(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Report.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReport(od);
    });
  });

  unittest.group('obj-schema-UrlChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UrlChannel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUrlChannel(od);
    });
  });

  unittest.group('obj-schema-UrlChannels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlChannels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlChannels.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlChannels(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts;
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts;
      final arg_filterAdClientId = buildUnnamed5703();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('accounts'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filterAdClientId']!,
          unittest.equals(arg_filterAdClientId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccounts());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_filterAdClientId, $fields: arg_$fields);
      checkAccounts(response as api.Accounts);
    });
  });

  unittest.group('resource-AccountsAdclientsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adclients;
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_adClientId, $fields: arg_$fields);
      checkAdClient(response as api.AdClient);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adclients;
      final arg_accountId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/adclients'),
        );
        pathOffset += 10;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdClients());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAdClients(response as api.AdClients);
    });
  });

  unittest.group('resource-AccountsAdunitsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adunits;
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_adUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        index = path.indexOf('/adunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/adunits/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adUnitId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(
          arg_accountId, arg_adClientId, arg_adUnitId,
          $fields: arg_$fields);
      checkAdUnit(response as api.AdUnit);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adunits;
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_adUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        index = path.indexOf('/adunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/adunits/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adUnitId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_adClientId, arg_adUnitId,
          $fields: arg_$fields);
      checkAdUnit(response as api.AdUnit);
    });

    unittest.test('method--getAdCode', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adunits;
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_adUnitId = 'foo';
      final arg_hostCustomChannelId = buildUnnamed5704();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        index = path.indexOf('/adunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/adunits/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adcode', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adUnitId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/adcode'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['hostCustomChannelId']!,
          unittest.equals(arg_hostCustomChannelId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAdCode(
          arg_accountId, arg_adClientId, arg_adUnitId,
          hostCustomChannelId: arg_hostCustomChannelId, $fields: arg_$fields);
      checkAdCode(response as api.AdCode);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adunits;
      final arg_request = buildAdUnit();
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.AdUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAdUnit(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/adunits'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_adClientId,
          $fields: arg_$fields);
      checkAdUnit(response as api.AdUnit);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adunits;
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_includeInactive = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/adunits'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['includeInactive']!.first,
          unittest.equals('$arg_includeInactive'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdUnits());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_adClientId,
          includeInactive: arg_includeInactive,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAdUnits(response as api.AdUnits);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adunits;
      final arg_request = buildAdUnit();
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_adUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.AdUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAdUnit(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/adunits'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['adUnitId']!.first,
          unittest.equals(arg_adUnitId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_accountId, arg_adClientId, arg_adUnitId,
          $fields: arg_$fields);
      checkAdUnit(response as api.AdUnit);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.adunits;
      final arg_request = buildAdUnit();
      final arg_accountId = 'foo';
      final arg_adClientId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.AdUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAdUnit(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/adclients/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/adclients/'),
        );
        pathOffset += 11;
        index = path.indexOf('/adunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/adunits'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_adClientId,
          $fields: arg_$fields);
      checkAdUnit(response as api.AdUnit);
    });
  });

  unittest.group('resource-AccountsReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).accounts.reports;
      final arg_accountId = 'foo';
      final arg_startDate = 'foo';
      final arg_endDate = 'foo';
      final arg_dimension = buildUnnamed5705();
      final arg_filter = buildUnnamed5706();
      final arg_locale = 'foo';
      final arg_maxResults = 42;
      final arg_metric = buildUnnamed5707();
      final arg_sort = buildUnnamed5708();
      final arg_startIndex = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/reports'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['dimension']!,
          unittest.equals(arg_dimension),
        );
        unittest.expect(
          queryMap['filter']!,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['metric']!,
          unittest.equals(arg_metric),
        );
        unittest.expect(
          queryMap['sort']!,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(
          arg_accountId, arg_startDate, arg_endDate,
          dimension: arg_dimension,
          filter: arg_filter,
          locale: arg_locale,
          maxResults: arg_maxResults,
          metric: arg_metric,
          sort: arg_sort,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkReport(response as api.Report);
    });
  });

  unittest.group('resource-AdclientsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).adclients;
      final arg_adClientId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_adClientId, $fields: arg_$fields);
      checkAdClient(response as api.AdClient);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).adclients;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('adclients'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAdClients());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAdClients(response as api.AdClients);
    });
  });

  unittest.group('resource-AssociationsessionsResource', () {
    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).associationsessions;
      final arg_productCode = buildUnnamed5709();
      final arg_websiteUrl = 'foo';
      final arg_callbackUrl = 'foo';
      final arg_userLocale = 'foo';
      final arg_websiteLocale = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('associationsessions/start'),
        );
        pathOffset += 25;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['productCode']!,
          unittest.equals(arg_productCode),
        );
        unittest.expect(
          queryMap['websiteUrl']!.first,
          unittest.equals(arg_websiteUrl),
        );
        unittest.expect(
          queryMap['callbackUrl']!.first,
          unittest.equals(arg_callbackUrl),
        );
        unittest.expect(
          queryMap['userLocale']!.first,
          unittest.equals(arg_userLocale),
        );
        unittest.expect(
          queryMap['websiteLocale']!.first,
          unittest.equals(arg_websiteLocale),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAssociationSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.start(arg_productCode, arg_websiteUrl,
          callbackUrl: arg_callbackUrl,
          userLocale: arg_userLocale,
          websiteLocale: arg_websiteLocale,
          $fields: arg_$fields);
      checkAssociationSession(response as api.AssociationSession);
    });

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).associationsessions;
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('associationsessions/verify'),
        );
        pathOffset += 26;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAssociationSession());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.verify(arg_token, $fields: arg_$fields);
      checkAssociationSession(response as api.AssociationSession);
    });
  });

  unittest.group('resource-CustomchannelsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).customchannels;
      final arg_adClientId = 'foo';
      final arg_customChannelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/customchannels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/customchannels/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customChannelId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_adClientId, arg_customChannelId,
          $fields: arg_$fields);
      checkCustomChannel(response as api.CustomChannel);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).customchannels;
      final arg_adClientId = 'foo';
      final arg_customChannelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/customchannels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/customchannels/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customChannelId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_adClientId, arg_customChannelId,
          $fields: arg_$fields);
      checkCustomChannel(response as api.CustomChannel);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).customchannels;
      final arg_request = buildCustomChannel();
      final arg_adClientId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomChannel(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/customchannels'),
        );
        pathOffset += 15;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_adClientId, $fields: arg_$fields);
      checkCustomChannel(response as api.CustomChannel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).customchannels;
      final arg_adClientId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/customchannels'),
        );
        pathOffset += 15;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomChannels());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_adClientId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkCustomChannels(response as api.CustomChannels);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).customchannels;
      final arg_request = buildCustomChannel();
      final arg_adClientId = 'foo';
      final arg_customChannelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomChannel(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/customchannels'),
        );
        pathOffset += 15;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['customChannelId']!.first,
          unittest.equals(arg_customChannelId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_adClientId, arg_customChannelId,
          $fields: arg_$fields);
      checkCustomChannel(response as api.CustomChannel);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).customchannels;
      final arg_request = buildCustomChannel();
      final arg_adClientId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomChannel(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/customchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/customchannels'),
        );
        pathOffset += 15;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_adClientId, $fields: arg_$fields);
      checkCustomChannel(response as api.CustomChannel);
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).reports;
      final arg_startDate = 'foo';
      final arg_endDate = 'foo';
      final arg_dimension = buildUnnamed5710();
      final arg_filter = buildUnnamed5711();
      final arg_locale = 'foo';
      final arg_maxResults = 42;
      final arg_metric = buildUnnamed5712();
      final arg_sort = buildUnnamed5713();
      final arg_startIndex = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('reports'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['dimension']!,
          unittest.equals(arg_dimension),
        );
        unittest.expect(
          queryMap['filter']!,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['metric']!,
          unittest.equals(arg_metric),
        );
        unittest.expect(
          queryMap['sort']!,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(arg_startDate, arg_endDate,
          dimension: arg_dimension,
          filter: arg_filter,
          locale: arg_locale,
          maxResults: arg_maxResults,
          metric: arg_metric,
          sort: arg_sort,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkReport(response as api.Report);
    });
  });

  unittest.group('resource-UrlchannelsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).urlchannels;
      final arg_adClientId = 'foo';
      final arg_urlChannelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/urlchannels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/urlchannels/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_urlChannelId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUrlChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_adClientId, arg_urlChannelId,
          $fields: arg_$fields);
      checkUrlChannel(response as api.UrlChannel);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).urlchannels;
      final arg_request = buildUrlChannel();
      final arg_adClientId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UrlChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUrlChannel(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/urlchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/urlchannels'),
        );
        pathOffset += 12;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUrlChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_adClientId, $fields: arg_$fields);
      checkUrlChannel(response as api.UrlChannel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSenseHostApi(mock).urlchannels;
      final arg_adClientId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('adsensehost/v4.1/'),
        );
        pathOffset += 17;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('adclients/'),
        );
        pathOffset += 10;
        index = path.indexOf('/urlchannels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_adClientId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/urlchannels'),
        );
        pathOffset += 12;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUrlChannels());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_adClientId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkUrlChannels(response as api.UrlChannels);
    });
  });
}
