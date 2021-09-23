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

import 'package:googleapis/chromemanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleChromeManagementV1AndroidAppPermission> buildUnnamed0() => [
      buildGoogleChromeManagementV1AndroidAppPermission(),
      buildGoogleChromeManagementV1AndroidAppPermission(),
    ];

void checkUnnamed0(
    core.List<api.GoogleChromeManagementV1AndroidAppPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1AndroidAppPermission(o[0]);
  checkGoogleChromeManagementV1AndroidAppPermission(o[1]);
}

core.int buildCounterGoogleChromeManagementV1AndroidAppInfo = 0;
api.GoogleChromeManagementV1AndroidAppInfo
    buildGoogleChromeManagementV1AndroidAppInfo() {
  final o = api.GoogleChromeManagementV1AndroidAppInfo();
  buildCounterGoogleChromeManagementV1AndroidAppInfo++;
  if (buildCounterGoogleChromeManagementV1AndroidAppInfo < 3) {
    o.permissions = buildUnnamed0();
  }
  buildCounterGoogleChromeManagementV1AndroidAppInfo--;
  return o;
}

void checkGoogleChromeManagementV1AndroidAppInfo(
    api.GoogleChromeManagementV1AndroidAppInfo o) {
  buildCounterGoogleChromeManagementV1AndroidAppInfo++;
  if (buildCounterGoogleChromeManagementV1AndroidAppInfo < 3) {
    checkUnnamed0(o.permissions!);
  }
  buildCounterGoogleChromeManagementV1AndroidAppInfo--;
}

core.int buildCounterGoogleChromeManagementV1AndroidAppPermission = 0;
api.GoogleChromeManagementV1AndroidAppPermission
    buildGoogleChromeManagementV1AndroidAppPermission() {
  final o = api.GoogleChromeManagementV1AndroidAppPermission();
  buildCounterGoogleChromeManagementV1AndroidAppPermission++;
  if (buildCounterGoogleChromeManagementV1AndroidAppPermission < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleChromeManagementV1AndroidAppPermission--;
  return o;
}

void checkGoogleChromeManagementV1AndroidAppPermission(
    api.GoogleChromeManagementV1AndroidAppPermission o) {
  buildCounterGoogleChromeManagementV1AndroidAppPermission++;
  if (buildCounterGoogleChromeManagementV1AndroidAppPermission < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1AndroidAppPermission--;
}

core.int buildCounterGoogleChromeManagementV1AppDetails = 0;
api.GoogleChromeManagementV1AppDetails
    buildGoogleChromeManagementV1AppDetails() {
  final o = api.GoogleChromeManagementV1AppDetails();
  buildCounterGoogleChromeManagementV1AppDetails++;
  if (buildCounterGoogleChromeManagementV1AppDetails < 3) {
    o.androidAppInfo = buildGoogleChromeManagementV1AndroidAppInfo();
    o.appId = 'foo';
    o.chromeAppInfo = buildGoogleChromeManagementV1ChromeAppInfo();
    o.description = 'foo';
    o.detailUri = 'foo';
    o.displayName = 'foo';
    o.firstPublishTime = 'foo';
    o.homepageUri = 'foo';
    o.iconUri = 'foo';
    o.isPaidApp = true;
    o.latestPublishTime = 'foo';
    o.name = 'foo';
    o.privacyPolicyUri = 'foo';
    o.publisher = 'foo';
    o.reviewNumber = 'foo';
    o.reviewRating = 42.0;
    o.revisionId = 'foo';
    o.serviceError = buildGoogleRpcStatus();
    o.type = 'foo';
  }
  buildCounterGoogleChromeManagementV1AppDetails--;
  return o;
}

void checkGoogleChromeManagementV1AppDetails(
    api.GoogleChromeManagementV1AppDetails o) {
  buildCounterGoogleChromeManagementV1AppDetails++;
  if (buildCounterGoogleChromeManagementV1AppDetails < 3) {
    checkGoogleChromeManagementV1AndroidAppInfo(o.androidAppInfo!);
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    checkGoogleChromeManagementV1ChromeAppInfo(o.chromeAppInfo!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detailUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstPublishTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.homepageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isPaidApp!, unittest.isTrue);
    unittest.expect(
      o.latestPublishTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privacyPolicyUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisher!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.serviceError!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1AppDetails--;
}

core.int buildCounterGoogleChromeManagementV1BrowserVersion = 0;
api.GoogleChromeManagementV1BrowserVersion
    buildGoogleChromeManagementV1BrowserVersion() {
  final o = api.GoogleChromeManagementV1BrowserVersion();
  buildCounterGoogleChromeManagementV1BrowserVersion++;
  if (buildCounterGoogleChromeManagementV1BrowserVersion < 3) {
    o.channel = 'foo';
    o.count = 'foo';
    o.deviceOsVersion = 'foo';
    o.system = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleChromeManagementV1BrowserVersion--;
  return o;
}

void checkGoogleChromeManagementV1BrowserVersion(
    api.GoogleChromeManagementV1BrowserVersion o) {
  buildCounterGoogleChromeManagementV1BrowserVersion++;
  if (buildCounterGoogleChromeManagementV1BrowserVersion < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceOsVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.system!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1BrowserVersion--;
}

core.List<api.GoogleChromeManagementV1ChromeAppPermission> buildUnnamed1() => [
      buildGoogleChromeManagementV1ChromeAppPermission(),
      buildGoogleChromeManagementV1ChromeAppPermission(),
    ];

void checkUnnamed1(
    core.List<api.GoogleChromeManagementV1ChromeAppPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1ChromeAppPermission(o[0]);
  checkGoogleChromeManagementV1ChromeAppPermission(o[1]);
}

core.List<api.GoogleChromeManagementV1ChromeAppSiteAccess> buildUnnamed2() => [
      buildGoogleChromeManagementV1ChromeAppSiteAccess(),
      buildGoogleChromeManagementV1ChromeAppSiteAccess(),
    ];

void checkUnnamed2(
    core.List<api.GoogleChromeManagementV1ChromeAppSiteAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1ChromeAppSiteAccess(o[0]);
  checkGoogleChromeManagementV1ChromeAppSiteAccess(o[1]);
}

core.int buildCounterGoogleChromeManagementV1ChromeAppInfo = 0;
api.GoogleChromeManagementV1ChromeAppInfo
    buildGoogleChromeManagementV1ChromeAppInfo() {
  final o = api.GoogleChromeManagementV1ChromeAppInfo();
  buildCounterGoogleChromeManagementV1ChromeAppInfo++;
  if (buildCounterGoogleChromeManagementV1ChromeAppInfo < 3) {
    o.googleOwned = true;
    o.isCwsHosted = true;
    o.isTheme = true;
    o.minUserCount = 42;
    o.permissions = buildUnnamed1();
    o.siteAccess = buildUnnamed2();
    o.supportEnabled = true;
  }
  buildCounterGoogleChromeManagementV1ChromeAppInfo--;
  return o;
}

void checkGoogleChromeManagementV1ChromeAppInfo(
    api.GoogleChromeManagementV1ChromeAppInfo o) {
  buildCounterGoogleChromeManagementV1ChromeAppInfo++;
  if (buildCounterGoogleChromeManagementV1ChromeAppInfo < 3) {
    unittest.expect(o.googleOwned!, unittest.isTrue);
    unittest.expect(o.isCwsHosted!, unittest.isTrue);
    unittest.expect(o.isTheme!, unittest.isTrue);
    unittest.expect(
      o.minUserCount!,
      unittest.equals(42),
    );
    checkUnnamed1(o.permissions!);
    checkUnnamed2(o.siteAccess!);
    unittest.expect(o.supportEnabled!, unittest.isTrue);
  }
  buildCounterGoogleChromeManagementV1ChromeAppInfo--;
}

core.int buildCounterGoogleChromeManagementV1ChromeAppPermission = 0;
api.GoogleChromeManagementV1ChromeAppPermission
    buildGoogleChromeManagementV1ChromeAppPermission() {
  final o = api.GoogleChromeManagementV1ChromeAppPermission();
  buildCounterGoogleChromeManagementV1ChromeAppPermission++;
  if (buildCounterGoogleChromeManagementV1ChromeAppPermission < 3) {
    o.accessUserData = true;
    o.documentationUri = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleChromeManagementV1ChromeAppPermission--;
  return o;
}

void checkGoogleChromeManagementV1ChromeAppPermission(
    api.GoogleChromeManagementV1ChromeAppPermission o) {
  buildCounterGoogleChromeManagementV1ChromeAppPermission++;
  if (buildCounterGoogleChromeManagementV1ChromeAppPermission < 3) {
    unittest.expect(o.accessUserData!, unittest.isTrue);
    unittest.expect(
      o.documentationUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1ChromeAppPermission--;
}

core.int buildCounterGoogleChromeManagementV1ChromeAppSiteAccess = 0;
api.GoogleChromeManagementV1ChromeAppSiteAccess
    buildGoogleChromeManagementV1ChromeAppSiteAccess() {
  final o = api.GoogleChromeManagementV1ChromeAppSiteAccess();
  buildCounterGoogleChromeManagementV1ChromeAppSiteAccess++;
  if (buildCounterGoogleChromeManagementV1ChromeAppSiteAccess < 3) {
    o.hostMatch = 'foo';
  }
  buildCounterGoogleChromeManagementV1ChromeAppSiteAccess--;
  return o;
}

void checkGoogleChromeManagementV1ChromeAppSiteAccess(
    api.GoogleChromeManagementV1ChromeAppSiteAccess o) {
  buildCounterGoogleChromeManagementV1ChromeAppSiteAccess++;
  if (buildCounterGoogleChromeManagementV1ChromeAppSiteAccess < 3) {
    unittest.expect(
      o.hostMatch!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1ChromeAppSiteAccess--;
}

core.List<api.GoogleChromeManagementV1BrowserVersion> buildUnnamed3() => [
      buildGoogleChromeManagementV1BrowserVersion(),
      buildGoogleChromeManagementV1BrowserVersion(),
    ];

void checkUnnamed3(core.List<api.GoogleChromeManagementV1BrowserVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1BrowserVersion(o[0]);
  checkGoogleChromeManagementV1BrowserVersion(o[1]);
}

core.int buildCounterGoogleChromeManagementV1CountChromeVersionsResponse = 0;
api.GoogleChromeManagementV1CountChromeVersionsResponse
    buildGoogleChromeManagementV1CountChromeVersionsResponse() {
  final o = api.GoogleChromeManagementV1CountChromeVersionsResponse();
  buildCounterGoogleChromeManagementV1CountChromeVersionsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeVersionsResponse < 3) {
    o.browserVersions = buildUnnamed3();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1CountChromeVersionsResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeVersionsResponse(
    api.GoogleChromeManagementV1CountChromeVersionsResponse o) {
  buildCounterGoogleChromeManagementV1CountChromeVersionsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeVersionsResponse < 3) {
    checkUnnamed3(o.browserVersions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleChromeManagementV1CountChromeVersionsResponse--;
}

core.List<api.GoogleChromeManagementV1InstalledApp> buildUnnamed4() => [
      buildGoogleChromeManagementV1InstalledApp(),
      buildGoogleChromeManagementV1InstalledApp(),
    ];

void checkUnnamed4(core.List<api.GoogleChromeManagementV1InstalledApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1InstalledApp(o[0]);
  checkGoogleChromeManagementV1InstalledApp(o[1]);
}

core.int buildCounterGoogleChromeManagementV1CountInstalledAppsResponse = 0;
api.GoogleChromeManagementV1CountInstalledAppsResponse
    buildGoogleChromeManagementV1CountInstalledAppsResponse() {
  final o = api.GoogleChromeManagementV1CountInstalledAppsResponse();
  buildCounterGoogleChromeManagementV1CountInstalledAppsResponse++;
  if (buildCounterGoogleChromeManagementV1CountInstalledAppsResponse < 3) {
    o.installedApps = buildUnnamed4();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1CountInstalledAppsResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountInstalledAppsResponse(
    api.GoogleChromeManagementV1CountInstalledAppsResponse o) {
  buildCounterGoogleChromeManagementV1CountInstalledAppsResponse++;
  if (buildCounterGoogleChromeManagementV1CountInstalledAppsResponse < 3) {
    checkUnnamed4(o.installedApps!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleChromeManagementV1CountInstalledAppsResponse--;
}

core.int buildCounterGoogleChromeManagementV1Device = 0;
api.GoogleChromeManagementV1Device buildGoogleChromeManagementV1Device() {
  final o = api.GoogleChromeManagementV1Device();
  buildCounterGoogleChromeManagementV1Device++;
  if (buildCounterGoogleChromeManagementV1Device < 3) {
    o.deviceId = 'foo';
    o.machine = 'foo';
  }
  buildCounterGoogleChromeManagementV1Device--;
  return o;
}

void checkGoogleChromeManagementV1Device(api.GoogleChromeManagementV1Device o) {
  buildCounterGoogleChromeManagementV1Device++;
  if (buildCounterGoogleChromeManagementV1Device < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machine!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1Device--;
}

core.List<api.GoogleChromeManagementV1Device> buildUnnamed5() => [
      buildGoogleChromeManagementV1Device(),
      buildGoogleChromeManagementV1Device(),
    ];

void checkUnnamed5(core.List<api.GoogleChromeManagementV1Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1Device(o[0]);
  checkGoogleChromeManagementV1Device(o[1]);
}

core.int buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse =
    0;
api.GoogleChromeManagementV1FindInstalledAppDevicesResponse
    buildGoogleChromeManagementV1FindInstalledAppDevicesResponse() {
  final o = api.GoogleChromeManagementV1FindInstalledAppDevicesResponse();
  buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse < 3) {
    o.devices = buildUnnamed5();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse--;
  return o;
}

void checkGoogleChromeManagementV1FindInstalledAppDevicesResponse(
    api.GoogleChromeManagementV1FindInstalledAppDevicesResponse o) {
  buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse < 3) {
    checkUnnamed5(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleChromeManagementV1InstalledApp = 0;
api.GoogleChromeManagementV1InstalledApp
    buildGoogleChromeManagementV1InstalledApp() {
  final o = api.GoogleChromeManagementV1InstalledApp();
  buildCounterGoogleChromeManagementV1InstalledApp++;
  if (buildCounterGoogleChromeManagementV1InstalledApp < 3) {
    o.appId = 'foo';
    o.appInstallType = 'foo';
    o.appSource = 'foo';
    o.appType = 'foo';
    o.browserDeviceCount = 'foo';
    o.description = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.homepageUri = 'foo';
    o.osUserCount = 'foo';
    o.permissions = buildUnnamed6();
  }
  buildCounterGoogleChromeManagementV1InstalledApp--;
  return o;
}

void checkGoogleChromeManagementV1InstalledApp(
    api.GoogleChromeManagementV1InstalledApp o) {
  buildCounterGoogleChromeManagementV1InstalledApp++;
  if (buildCounterGoogleChromeManagementV1InstalledApp < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appInstallType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.browserDeviceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.homepageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osUserCount!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.permissions!);
  }
  buildCounterGoogleChromeManagementV1InstalledApp--;
}

core.Map<core.String, core.Object> buildUnnamed7() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed8() => [
      buildUnnamed7(),
      buildUnnamed7(),
    ];

void checkUnnamed8(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7(o[0]);
  checkUnnamed7(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed8(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleChromeManagementV1AndroidAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AndroidAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AndroidAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1AndroidAppInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1AndroidAppPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AndroidAppPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AndroidAppPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1AndroidAppPermission(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1AppDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AppDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AppDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1AppDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1BrowserVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BrowserVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BrowserVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1BrowserVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1ChromeAppInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1ChromeAppPermission(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppSiteAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppSiteAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1ChromeAppSiteAccess(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromeManagementV1CountChromeVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CountChromeVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CountChromeVersionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromeManagementV1CountInstalledAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CountInstalledAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CountInstalledAppsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1Device();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1Device.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1Device(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromeManagementV1FindInstalledAppDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1FindInstalledAppDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromeManagementV1FindInstalledAppDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1FindInstalledAppDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1InstalledApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1InstalledApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1InstalledApp.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1InstalledApp(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('resource-CustomersAppsAndroidResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps.android;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp =
            convert.json.encode(buildGoogleChromeManagementV1AppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementV1AppDetails(
          response as api.GoogleChromeManagementV1AppDetails);
    });
  });

  unittest.group('resource-CustomersAppsChromeResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps.chrome;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp =
            convert.json.encode(buildGoogleChromeManagementV1AppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementV1AppDetails(
          response as api.GoogleChromeManagementV1AppDetails);
    });
  });

  unittest.group('resource-CustomersAppsWebResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps.web;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp =
            convert.json.encode(buildGoogleChromeManagementV1AppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementV1AppDetails(
          response as api.GoogleChromeManagementV1AppDetails);
    });
  });

  unittest.group('resource-CustomersReportsResource', () {
    unittest.test('method--countChromeVersions', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orgUnitId']!.first,
          unittest.equals(arg_orgUnitId),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json
            .encode(buildGoogleChromeManagementV1CountChromeVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.countChromeVersions(arg_customer,
          filter: arg_filter,
          orgUnitId: arg_orgUnitId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleChromeManagementV1CountChromeVersionsResponse(
          response as api.GoogleChromeManagementV1CountChromeVersionsResponse);
    });

    unittest.test('method--countInstalledApps', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['orgUnitId']!.first,
          unittest.equals(arg_orgUnitId),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json
            .encode(buildGoogleChromeManagementV1CountInstalledAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.countInstalledApps(arg_customer,
          filter: arg_filter,
          orderBy: arg_orderBy,
          orgUnitId: arg_orgUnitId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleChromeManagementV1CountInstalledAppsResponse(
          response as api.GoogleChromeManagementV1CountInstalledAppsResponse);
    });

    unittest.test('method--findInstalledAppDevices', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_appId = 'foo';
      final arg_appType = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['appId']!.first,
          unittest.equals(arg_appId),
        );
        unittest.expect(
          queryMap['appType']!.first,
          unittest.equals(arg_appType),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['orgUnitId']!.first,
          unittest.equals(arg_orgUnitId),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(
            buildGoogleChromeManagementV1FindInstalledAppDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findInstalledAppDevices(arg_customer,
          appId: arg_appId,
          appType: arg_appType,
          filter: arg_filter,
          orderBy: arg_orderBy,
          orgUnitId: arg_orgUnitId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleChromeManagementV1FindInstalledAppDevicesResponse(response
          as api.GoogleChromeManagementV1FindInstalledAppDevicesResponse);
    });
  });
}
