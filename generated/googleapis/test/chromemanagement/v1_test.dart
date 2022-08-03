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

core.int buildCounterGoogleChromeManagementV1AudioStatusReport = 0;
api.GoogleChromeManagementV1AudioStatusReport
    buildGoogleChromeManagementV1AudioStatusReport() {
  final o = api.GoogleChromeManagementV1AudioStatusReport();
  buildCounterGoogleChromeManagementV1AudioStatusReport++;
  if (buildCounterGoogleChromeManagementV1AudioStatusReport < 3) {
    o.inputDevice = 'foo';
    o.inputGain = 42;
    o.inputMute = true;
    o.outputDevice = 'foo';
    o.outputMute = true;
    o.outputVolume = 42;
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1AudioStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1AudioStatusReport(
    api.GoogleChromeManagementV1AudioStatusReport o) {
  buildCounterGoogleChromeManagementV1AudioStatusReport++;
  if (buildCounterGoogleChromeManagementV1AudioStatusReport < 3) {
    unittest.expect(
      o.inputDevice!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputGain!,
      unittest.equals(42),
    );
    unittest.expect(o.inputMute!, unittest.isTrue);
    unittest.expect(
      o.outputDevice!,
      unittest.equals('foo'),
    );
    unittest.expect(o.outputMute!, unittest.isTrue);
    unittest.expect(
      o.outputVolume!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1AudioStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1BatteryInfo = 0;
api.GoogleChromeManagementV1BatteryInfo
    buildGoogleChromeManagementV1BatteryInfo() {
  final o = api.GoogleChromeManagementV1BatteryInfo();
  buildCounterGoogleChromeManagementV1BatteryInfo++;
  if (buildCounterGoogleChromeManagementV1BatteryInfo < 3) {
    o.designCapacity = 'foo';
    o.designMinVoltage = 42;
    o.manufactureDate = buildGoogleTypeDate();
    o.manufacturer = 'foo';
    o.serialNumber = 'foo';
    o.technology = 'foo';
  }
  buildCounterGoogleChromeManagementV1BatteryInfo--;
  return o;
}

void checkGoogleChromeManagementV1BatteryInfo(
    api.GoogleChromeManagementV1BatteryInfo o) {
  buildCounterGoogleChromeManagementV1BatteryInfo++;
  if (buildCounterGoogleChromeManagementV1BatteryInfo < 3) {
    unittest.expect(
      o.designCapacity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.designMinVoltage!,
      unittest.equals(42),
    );
    checkGoogleTypeDate(o.manufactureDate!);
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.technology!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1BatteryInfo--;
}

core.int buildCounterGoogleChromeManagementV1BatterySampleReport = 0;
api.GoogleChromeManagementV1BatterySampleReport
    buildGoogleChromeManagementV1BatterySampleReport() {
  final o = api.GoogleChromeManagementV1BatterySampleReport();
  buildCounterGoogleChromeManagementV1BatterySampleReport++;
  if (buildCounterGoogleChromeManagementV1BatterySampleReport < 3) {
    o.chargeRate = 42;
    o.current = 'foo';
    o.dischargeRate = 42;
    o.remainingCapacity = 'foo';
    o.reportTime = 'foo';
    o.status = 'foo';
    o.temperature = 42;
    o.voltage = 'foo';
  }
  buildCounterGoogleChromeManagementV1BatterySampleReport--;
  return o;
}

void checkGoogleChromeManagementV1BatterySampleReport(
    api.GoogleChromeManagementV1BatterySampleReport o) {
  buildCounterGoogleChromeManagementV1BatterySampleReport++;
  if (buildCounterGoogleChromeManagementV1BatterySampleReport < 3) {
    unittest.expect(
      o.chargeRate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.current!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dischargeRate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.remainingCapacity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.temperature!,
      unittest.equals(42),
    );
    unittest.expect(
      o.voltage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1BatterySampleReport--;
}

core.List<api.GoogleChromeManagementV1BatterySampleReport> buildUnnamed1() => [
      buildGoogleChromeManagementV1BatterySampleReport(),
      buildGoogleChromeManagementV1BatterySampleReport(),
    ];

void checkUnnamed1(
    core.List<api.GoogleChromeManagementV1BatterySampleReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1BatterySampleReport(o[0]);
  checkGoogleChromeManagementV1BatterySampleReport(o[1]);
}

core.int buildCounterGoogleChromeManagementV1BatteryStatusReport = 0;
api.GoogleChromeManagementV1BatteryStatusReport
    buildGoogleChromeManagementV1BatteryStatusReport() {
  final o = api.GoogleChromeManagementV1BatteryStatusReport();
  buildCounterGoogleChromeManagementV1BatteryStatusReport++;
  if (buildCounterGoogleChromeManagementV1BatteryStatusReport < 3) {
    o.batteryHealth = 'foo';
    o.cycleCount = 42;
    o.fullChargeCapacity = 'foo';
    o.reportTime = 'foo';
    o.sample = buildUnnamed1();
    o.serialNumber = 'foo';
  }
  buildCounterGoogleChromeManagementV1BatteryStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1BatteryStatusReport(
    api.GoogleChromeManagementV1BatteryStatusReport o) {
  buildCounterGoogleChromeManagementV1BatteryStatusReport++;
  if (buildCounterGoogleChromeManagementV1BatteryStatusReport < 3) {
    unittest.expect(
      o.batteryHealth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cycleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.fullChargeCapacity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.sample!);
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1BatteryStatusReport--;
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

core.List<api.GoogleChromeManagementV1ChromeAppPermission> buildUnnamed2() => [
      buildGoogleChromeManagementV1ChromeAppPermission(),
      buildGoogleChromeManagementV1ChromeAppPermission(),
    ];

void checkUnnamed2(
    core.List<api.GoogleChromeManagementV1ChromeAppPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1ChromeAppPermission(o[0]);
  checkGoogleChromeManagementV1ChromeAppPermission(o[1]);
}

core.List<api.GoogleChromeManagementV1ChromeAppSiteAccess> buildUnnamed3() => [
      buildGoogleChromeManagementV1ChromeAppSiteAccess(),
      buildGoogleChromeManagementV1ChromeAppSiteAccess(),
    ];

void checkUnnamed3(
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
    o.isKioskOnly = true;
    o.isTheme = true;
    o.kioskEnabled = true;
    o.minUserCount = 42;
    o.permissions = buildUnnamed2();
    o.siteAccess = buildUnnamed3();
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
    unittest.expect(o.isKioskOnly!, unittest.isTrue);
    unittest.expect(o.isTheme!, unittest.isTrue);
    unittest.expect(o.kioskEnabled!, unittest.isTrue);
    unittest.expect(
      o.minUserCount!,
      unittest.equals(42),
    );
    checkUnnamed2(o.permissions!);
    checkUnnamed3(o.siteAccess!);
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

core.int buildCounterGoogleChromeManagementV1ChromeAppRequest = 0;
api.GoogleChromeManagementV1ChromeAppRequest
    buildGoogleChromeManagementV1ChromeAppRequest() {
  final o = api.GoogleChromeManagementV1ChromeAppRequest();
  buildCounterGoogleChromeManagementV1ChromeAppRequest++;
  if (buildCounterGoogleChromeManagementV1ChromeAppRequest < 3) {
    o.appDetails = 'foo';
    o.appId = 'foo';
    o.detailUri = 'foo';
    o.displayName = 'foo';
    o.iconUri = 'foo';
    o.latestRequestTime = 'foo';
    o.requestCount = 'foo';
  }
  buildCounterGoogleChromeManagementV1ChromeAppRequest--;
  return o;
}

void checkGoogleChromeManagementV1ChromeAppRequest(
    api.GoogleChromeManagementV1ChromeAppRequest o) {
  buildCounterGoogleChromeManagementV1ChromeAppRequest++;
  if (buildCounterGoogleChromeManagementV1ChromeAppRequest < 3) {
    unittest.expect(
      o.appDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appId!,
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
      o.iconUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestRequestTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1ChromeAppRequest--;
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

core.List<api.GoogleChromeManagementV1ChromeAppRequest> buildUnnamed4() => [
      buildGoogleChromeManagementV1ChromeAppRequest(),
      buildGoogleChromeManagementV1ChromeAppRequest(),
    ];

void checkUnnamed4(core.List<api.GoogleChromeManagementV1ChromeAppRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1ChromeAppRequest(o[0]);
  checkGoogleChromeManagementV1ChromeAppRequest(o[1]);
}

core.int buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse = 0;
api.GoogleChromeManagementV1CountChromeAppRequestsResponse
    buildGoogleChromeManagementV1CountChromeAppRequestsResponse() {
  final o = api.GoogleChromeManagementV1CountChromeAppRequestsResponse();
  buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse < 3) {
    o.nextPageToken = 'foo';
    o.requestedApps = buildUnnamed4();
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeAppRequestsResponse(
    api.GoogleChromeManagementV1CountChromeAppRequestsResponse o) {
  buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.requestedApps!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse--;
}

core.List<api.GoogleChromeManagementV1DeviceAueCountReport> buildUnnamed5() => [
      buildGoogleChromeManagementV1DeviceAueCountReport(),
      buildGoogleChromeManagementV1DeviceAueCountReport(),
    ];

void checkUnnamed5(
    core.List<api.GoogleChromeManagementV1DeviceAueCountReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceAueCountReport(o[0]);
  checkGoogleChromeManagementV1DeviceAueCountReport(o[1]);
}

core.int
    buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse =
    0;
api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
    buildGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse() {
  final o = api
      .GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse();
  buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse <
      3) {
    o.deviceAueCountReports = buildUnnamed5();
  }
  buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse(
    api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
        o) {
  buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse <
      3) {
    checkUnnamed5(o.deviceAueCountReports!);
  }
  buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse--;
}

core.int
    buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse =
    0;
api.GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
    buildGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse() {
  final o =
      api.GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse();
  buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse <
      3) {
    o.noRecentPolicySyncCount = 'foo';
    o.noRecentUserActivityCount = 'foo';
    o.osVersionNotCompliantCount = 'foo';
    o.pendingUpdate = 'foo';
    o.unsupportedPolicyCount = 'foo';
  }
  buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse(
    api.GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse o) {
  buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse <
      3) {
    unittest.expect(
      o.noRecentPolicySyncCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noRecentUserActivityCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersionNotCompliantCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pendingUpdate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unsupportedPolicyCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse--;
}

core.List<api.GoogleChromeManagementV1BrowserVersion> buildUnnamed6() => [
      buildGoogleChromeManagementV1BrowserVersion(),
      buildGoogleChromeManagementV1BrowserVersion(),
    ];

void checkUnnamed6(core.List<api.GoogleChromeManagementV1BrowserVersion> o) {
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
    o.browserVersions = buildUnnamed6();
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
    checkUnnamed6(o.browserVersions!);
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

core.List<api.GoogleChromeManagementV1InstalledApp> buildUnnamed7() => [
      buildGoogleChromeManagementV1InstalledApp(),
      buildGoogleChromeManagementV1InstalledApp(),
    ];

void checkUnnamed7(core.List<api.GoogleChromeManagementV1InstalledApp> o) {
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
    o.installedApps = buildUnnamed7();
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
    checkUnnamed7(o.installedApps!);
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

core.int buildCounterGoogleChromeManagementV1CpuInfo = 0;
api.GoogleChromeManagementV1CpuInfo buildGoogleChromeManagementV1CpuInfo() {
  final o = api.GoogleChromeManagementV1CpuInfo();
  buildCounterGoogleChromeManagementV1CpuInfo++;
  if (buildCounterGoogleChromeManagementV1CpuInfo < 3) {
    o.architecture = 'foo';
    o.keylockerConfigured = true;
    o.keylockerSupported = true;
    o.maxClockSpeed = 42;
    o.model = 'foo';
  }
  buildCounterGoogleChromeManagementV1CpuInfo--;
  return o;
}

void checkGoogleChromeManagementV1CpuInfo(
    api.GoogleChromeManagementV1CpuInfo o) {
  buildCounterGoogleChromeManagementV1CpuInfo++;
  if (buildCounterGoogleChromeManagementV1CpuInfo < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(o.keylockerConfigured!, unittest.isTrue);
    unittest.expect(o.keylockerSupported!, unittest.isTrue);
    unittest.expect(
      o.maxClockSpeed!,
      unittest.equals(42),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1CpuInfo--;
}

core.List<api.GoogleChromeManagementV1CpuTemperatureInfo> buildUnnamed8() => [
      buildGoogleChromeManagementV1CpuTemperatureInfo(),
      buildGoogleChromeManagementV1CpuTemperatureInfo(),
    ];

void checkUnnamed8(
    core.List<api.GoogleChromeManagementV1CpuTemperatureInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1CpuTemperatureInfo(o[0]);
  checkGoogleChromeManagementV1CpuTemperatureInfo(o[1]);
}

core.int buildCounterGoogleChromeManagementV1CpuStatusReport = 0;
api.GoogleChromeManagementV1CpuStatusReport
    buildGoogleChromeManagementV1CpuStatusReport() {
  final o = api.GoogleChromeManagementV1CpuStatusReport();
  buildCounterGoogleChromeManagementV1CpuStatusReport++;
  if (buildCounterGoogleChromeManagementV1CpuStatusReport < 3) {
    o.cpuTemperatureInfo = buildUnnamed8();
    o.cpuUtilizationPct = 42;
    o.reportTime = 'foo';
    o.sampleFrequency = 'foo';
  }
  buildCounterGoogleChromeManagementV1CpuStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1CpuStatusReport(
    api.GoogleChromeManagementV1CpuStatusReport o) {
  buildCounterGoogleChromeManagementV1CpuStatusReport++;
  if (buildCounterGoogleChromeManagementV1CpuStatusReport < 3) {
    checkUnnamed8(o.cpuTemperatureInfo!);
    unittest.expect(
      o.cpuUtilizationPct!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleFrequency!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1CpuStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1CpuTemperatureInfo = 0;
api.GoogleChromeManagementV1CpuTemperatureInfo
    buildGoogleChromeManagementV1CpuTemperatureInfo() {
  final o = api.GoogleChromeManagementV1CpuTemperatureInfo();
  buildCounterGoogleChromeManagementV1CpuTemperatureInfo++;
  if (buildCounterGoogleChromeManagementV1CpuTemperatureInfo < 3) {
    o.label = 'foo';
    o.temperatureCelsius = 42;
  }
  buildCounterGoogleChromeManagementV1CpuTemperatureInfo--;
  return o;
}

void checkGoogleChromeManagementV1CpuTemperatureInfo(
    api.GoogleChromeManagementV1CpuTemperatureInfo o) {
  buildCounterGoogleChromeManagementV1CpuTemperatureInfo++;
  if (buildCounterGoogleChromeManagementV1CpuTemperatureInfo < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.temperatureCelsius!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleChromeManagementV1CpuTemperatureInfo--;
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

core.int buildCounterGoogleChromeManagementV1DeviceAueCountReport = 0;
api.GoogleChromeManagementV1DeviceAueCountReport
    buildGoogleChromeManagementV1DeviceAueCountReport() {
  final o = api.GoogleChromeManagementV1DeviceAueCountReport();
  buildCounterGoogleChromeManagementV1DeviceAueCountReport++;
  if (buildCounterGoogleChromeManagementV1DeviceAueCountReport < 3) {
    o.aueMonth = 'foo';
    o.aueYear = 'foo';
    o.count = 'foo';
    o.expired = true;
    o.model = 'foo';
  }
  buildCounterGoogleChromeManagementV1DeviceAueCountReport--;
  return o;
}

void checkGoogleChromeManagementV1DeviceAueCountReport(
    api.GoogleChromeManagementV1DeviceAueCountReport o) {
  buildCounterGoogleChromeManagementV1DeviceAueCountReport++;
  if (buildCounterGoogleChromeManagementV1DeviceAueCountReport < 3) {
    unittest.expect(
      o.aueMonth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.aueYear!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(o.expired!, unittest.isTrue);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1DeviceAueCountReport--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterGoogleChromeManagementV1DiskInfo = 0;
api.GoogleChromeManagementV1DiskInfo buildGoogleChromeManagementV1DiskInfo() {
  final o = api.GoogleChromeManagementV1DiskInfo();
  buildCounterGoogleChromeManagementV1DiskInfo++;
  if (buildCounterGoogleChromeManagementV1DiskInfo < 3) {
    o.bytesReadThisSession = 'foo';
    o.bytesWrittenThisSession = 'foo';
    o.discardTimeThisSession = 'foo';
    o.health = 'foo';
    o.ioTimeThisSession = 'foo';
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.readTimeThisSession = 'foo';
    o.serialNumber = 'foo';
    o.sizeBytes = 'foo';
    o.type = 'foo';
    o.volumeIds = buildUnnamed9();
    o.writeTimeThisSession = 'foo';
  }
  buildCounterGoogleChromeManagementV1DiskInfo--;
  return o;
}

void checkGoogleChromeManagementV1DiskInfo(
    api.GoogleChromeManagementV1DiskInfo o) {
  buildCounterGoogleChromeManagementV1DiskInfo++;
  if (buildCounterGoogleChromeManagementV1DiskInfo < 3) {
    unittest.expect(
      o.bytesReadThisSession!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bytesWrittenThisSession!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.discardTimeThisSession!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.health!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ioTimeThisSession!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTimeThisSession!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.volumeIds!);
    unittest.expect(
      o.writeTimeThisSession!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1DiskInfo--;
}

core.int buildCounterGoogleChromeManagementV1DisplayInfo = 0;
api.GoogleChromeManagementV1DisplayInfo
    buildGoogleChromeManagementV1DisplayInfo() {
  final o = api.GoogleChromeManagementV1DisplayInfo();
  buildCounterGoogleChromeManagementV1DisplayInfo++;
  if (buildCounterGoogleChromeManagementV1DisplayInfo < 3) {
    o.deviceId = 'foo';
    o.isInternal = true;
    o.refreshRate = 42;
    o.resolutionHeight = 42;
    o.resolutionWidth = 42;
  }
  buildCounterGoogleChromeManagementV1DisplayInfo--;
  return o;
}

void checkGoogleChromeManagementV1DisplayInfo(
    api.GoogleChromeManagementV1DisplayInfo o) {
  buildCounterGoogleChromeManagementV1DisplayInfo++;
  if (buildCounterGoogleChromeManagementV1DisplayInfo < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isInternal!, unittest.isTrue);
    unittest.expect(
      o.refreshRate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.resolutionHeight!,
      unittest.equals(42),
    );
    unittest.expect(
      o.resolutionWidth!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleChromeManagementV1DisplayInfo--;
}

core.List<api.GoogleChromeManagementV1Device> buildUnnamed10() => [
      buildGoogleChromeManagementV1Device(),
      buildGoogleChromeManagementV1Device(),
    ];

void checkUnnamed10(core.List<api.GoogleChromeManagementV1Device> o) {
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
    o.devices = buildUnnamed10();
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
    checkUnnamed10(o.devices!);
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

core.int buildCounterGoogleChromeManagementV1GraphicsAdapterInfo = 0;
api.GoogleChromeManagementV1GraphicsAdapterInfo
    buildGoogleChromeManagementV1GraphicsAdapterInfo() {
  final o = api.GoogleChromeManagementV1GraphicsAdapterInfo();
  buildCounterGoogleChromeManagementV1GraphicsAdapterInfo++;
  if (buildCounterGoogleChromeManagementV1GraphicsAdapterInfo < 3) {
    o.adapter = 'foo';
    o.deviceId = 'foo';
    o.driverVersion = 'foo';
  }
  buildCounterGoogleChromeManagementV1GraphicsAdapterInfo--;
  return o;
}

void checkGoogleChromeManagementV1GraphicsAdapterInfo(
    api.GoogleChromeManagementV1GraphicsAdapterInfo o) {
  buildCounterGoogleChromeManagementV1GraphicsAdapterInfo++;
  if (buildCounterGoogleChromeManagementV1GraphicsAdapterInfo < 3) {
    unittest.expect(
      o.adapter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.driverVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1GraphicsAdapterInfo--;
}

core.int buildCounterGoogleChromeManagementV1GraphicsInfo = 0;
api.GoogleChromeManagementV1GraphicsInfo
    buildGoogleChromeManagementV1GraphicsInfo() {
  final o = api.GoogleChromeManagementV1GraphicsInfo();
  buildCounterGoogleChromeManagementV1GraphicsInfo++;
  if (buildCounterGoogleChromeManagementV1GraphicsInfo < 3) {
    o.adapterInfo = buildGoogleChromeManagementV1GraphicsAdapterInfo();
  }
  buildCounterGoogleChromeManagementV1GraphicsInfo--;
  return o;
}

void checkGoogleChromeManagementV1GraphicsInfo(
    api.GoogleChromeManagementV1GraphicsInfo o) {
  buildCounterGoogleChromeManagementV1GraphicsInfo++;
  if (buildCounterGoogleChromeManagementV1GraphicsInfo < 3) {
    checkGoogleChromeManagementV1GraphicsAdapterInfo(o.adapterInfo!);
  }
  buildCounterGoogleChromeManagementV1GraphicsInfo--;
}

core.List<api.GoogleChromeManagementV1DisplayInfo> buildUnnamed11() => [
      buildGoogleChromeManagementV1DisplayInfo(),
      buildGoogleChromeManagementV1DisplayInfo(),
    ];

void checkUnnamed11(core.List<api.GoogleChromeManagementV1DisplayInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DisplayInfo(o[0]);
  checkGoogleChromeManagementV1DisplayInfo(o[1]);
}

core.int buildCounterGoogleChromeManagementV1GraphicsStatusReport = 0;
api.GoogleChromeManagementV1GraphicsStatusReport
    buildGoogleChromeManagementV1GraphicsStatusReport() {
  final o = api.GoogleChromeManagementV1GraphicsStatusReport();
  buildCounterGoogleChromeManagementV1GraphicsStatusReport++;
  if (buildCounterGoogleChromeManagementV1GraphicsStatusReport < 3) {
    o.displays = buildUnnamed11();
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1GraphicsStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1GraphicsStatusReport(
    api.GoogleChromeManagementV1GraphicsStatusReport o) {
  buildCounterGoogleChromeManagementV1GraphicsStatusReport++;
  if (buildCounterGoogleChromeManagementV1GraphicsStatusReport < 3) {
    checkUnnamed11(o.displays!);
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1GraphicsStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData = 0;
api.GoogleChromeManagementV1HttpsLatencyRoutineData
    buildGoogleChromeManagementV1HttpsLatencyRoutineData() {
  final o = api.GoogleChromeManagementV1HttpsLatencyRoutineData();
  buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData++;
  if (buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData < 3) {
    o.latency = 'foo';
    o.problem = 'foo';
  }
  buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData--;
  return o;
}

void checkGoogleChromeManagementV1HttpsLatencyRoutineData(
    api.GoogleChromeManagementV1HttpsLatencyRoutineData o) {
  buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData++;
  if (buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData < 3) {
    unittest.expect(
      o.latency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.problem!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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
    o.permissions = buildUnnamed12();
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
    checkUnnamed12(o.permissions!);
  }
  buildCounterGoogleChromeManagementV1InstalledApp--;
}

core.List<api.GoogleChromeManagementV1TelemetryDevice> buildUnnamed13() => [
      buildGoogleChromeManagementV1TelemetryDevice(),
      buildGoogleChromeManagementV1TelemetryDevice(),
    ];

void checkUnnamed13(core.List<api.GoogleChromeManagementV1TelemetryDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1TelemetryDevice(o[0]);
  checkGoogleChromeManagementV1TelemetryDevice(o[1]);
}

core.int buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse = 0;
api.GoogleChromeManagementV1ListTelemetryDevicesResponse
    buildGoogleChromeManagementV1ListTelemetryDevicesResponse() {
  final o = api.GoogleChromeManagementV1ListTelemetryDevicesResponse();
  buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse < 3) {
    o.devices = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse--;
  return o;
}

void checkGoogleChromeManagementV1ListTelemetryDevicesResponse(
    api.GoogleChromeManagementV1ListTelemetryDevicesResponse o) {
  buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse < 3) {
    checkUnnamed13(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse--;
}

core.int buildCounterGoogleChromeManagementV1MemoryInfo = 0;
api.GoogleChromeManagementV1MemoryInfo
    buildGoogleChromeManagementV1MemoryInfo() {
  final o = api.GoogleChromeManagementV1MemoryInfo();
  buildCounterGoogleChromeManagementV1MemoryInfo++;
  if (buildCounterGoogleChromeManagementV1MemoryInfo < 3) {
    o.availableRamBytes = 'foo';
    o.totalMemoryEncryption =
        buildGoogleChromeManagementV1TotalMemoryEncryptionInfo();
    o.totalRamBytes = 'foo';
  }
  buildCounterGoogleChromeManagementV1MemoryInfo--;
  return o;
}

void checkGoogleChromeManagementV1MemoryInfo(
    api.GoogleChromeManagementV1MemoryInfo o) {
  buildCounterGoogleChromeManagementV1MemoryInfo++;
  if (buildCounterGoogleChromeManagementV1MemoryInfo < 3) {
    unittest.expect(
      o.availableRamBytes!,
      unittest.equals('foo'),
    );
    checkGoogleChromeManagementV1TotalMemoryEncryptionInfo(
        o.totalMemoryEncryption!);
    unittest.expect(
      o.totalRamBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1MemoryInfo--;
}

core.int buildCounterGoogleChromeManagementV1MemoryStatusReport = 0;
api.GoogleChromeManagementV1MemoryStatusReport
    buildGoogleChromeManagementV1MemoryStatusReport() {
  final o = api.GoogleChromeManagementV1MemoryStatusReport();
  buildCounterGoogleChromeManagementV1MemoryStatusReport++;
  if (buildCounterGoogleChromeManagementV1MemoryStatusReport < 3) {
    o.pageFaults = 42;
    o.reportTime = 'foo';
    o.sampleFrequency = 'foo';
    o.systemRamFreeBytes = 'foo';
  }
  buildCounterGoogleChromeManagementV1MemoryStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1MemoryStatusReport(
    api.GoogleChromeManagementV1MemoryStatusReport o) {
  buildCounterGoogleChromeManagementV1MemoryStatusReport++;
  if (buildCounterGoogleChromeManagementV1MemoryStatusReport < 3) {
    unittest.expect(
      o.pageFaults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleFrequency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemRamFreeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1MemoryStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1NetworkDevice = 0;
api.GoogleChromeManagementV1NetworkDevice
    buildGoogleChromeManagementV1NetworkDevice() {
  final o = api.GoogleChromeManagementV1NetworkDevice();
  buildCounterGoogleChromeManagementV1NetworkDevice++;
  if (buildCounterGoogleChromeManagementV1NetworkDevice < 3) {
    o.iccid = 'foo';
    o.imei = 'foo';
    o.macAddress = 'foo';
    o.mdn = 'foo';
    o.meid = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleChromeManagementV1NetworkDevice--;
  return o;
}

void checkGoogleChromeManagementV1NetworkDevice(
    api.GoogleChromeManagementV1NetworkDevice o) {
  buildCounterGoogleChromeManagementV1NetworkDevice++;
  if (buildCounterGoogleChromeManagementV1NetworkDevice < 3) {
    unittest.expect(
      o.iccid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imei!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.macAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mdn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1NetworkDevice--;
}

core.int buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport = 0;
api.GoogleChromeManagementV1NetworkDiagnosticsReport
    buildGoogleChromeManagementV1NetworkDiagnosticsReport() {
  final o = api.GoogleChromeManagementV1NetworkDiagnosticsReport();
  buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport++;
  if (buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport < 3) {
    o.httpsLatencyData = buildGoogleChromeManagementV1HttpsLatencyRoutineData();
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport--;
  return o;
}

void checkGoogleChromeManagementV1NetworkDiagnosticsReport(
    api.GoogleChromeManagementV1NetworkDiagnosticsReport o) {
  buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport++;
  if (buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport < 3) {
    checkGoogleChromeManagementV1HttpsLatencyRoutineData(o.httpsLatencyData!);
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport--;
}

core.List<api.GoogleChromeManagementV1NetworkDevice> buildUnnamed14() => [
      buildGoogleChromeManagementV1NetworkDevice(),
      buildGoogleChromeManagementV1NetworkDevice(),
    ];

void checkUnnamed14(core.List<api.GoogleChromeManagementV1NetworkDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1NetworkDevice(o[0]);
  checkGoogleChromeManagementV1NetworkDevice(o[1]);
}

core.int buildCounterGoogleChromeManagementV1NetworkInfo = 0;
api.GoogleChromeManagementV1NetworkInfo
    buildGoogleChromeManagementV1NetworkInfo() {
  final o = api.GoogleChromeManagementV1NetworkInfo();
  buildCounterGoogleChromeManagementV1NetworkInfo++;
  if (buildCounterGoogleChromeManagementV1NetworkInfo < 3) {
    o.networkDevices = buildUnnamed14();
  }
  buildCounterGoogleChromeManagementV1NetworkInfo--;
  return o;
}

void checkGoogleChromeManagementV1NetworkInfo(
    api.GoogleChromeManagementV1NetworkInfo o) {
  buildCounterGoogleChromeManagementV1NetworkInfo++;
  if (buildCounterGoogleChromeManagementV1NetworkInfo < 3) {
    checkUnnamed14(o.networkDevices!);
  }
  buildCounterGoogleChromeManagementV1NetworkInfo--;
}

core.int buildCounterGoogleChromeManagementV1NetworkStatusReport = 0;
api.GoogleChromeManagementV1NetworkStatusReport
    buildGoogleChromeManagementV1NetworkStatusReport() {
  final o = api.GoogleChromeManagementV1NetworkStatusReport();
  buildCounterGoogleChromeManagementV1NetworkStatusReport++;
  if (buildCounterGoogleChromeManagementV1NetworkStatusReport < 3) {
    o.connectionState = 'foo';
    o.connectionType = 'foo';
    o.encryptionOn = true;
    o.gatewayIpAddress = 'foo';
    o.guid = 'foo';
    o.lanIpAddress = 'foo';
    o.receivingBitRateMbps = 'foo';
    o.reportTime = 'foo';
    o.sampleFrequency = 'foo';
    o.signalStrengthDbm = 42;
    o.transmissionBitRateMbps = 'foo';
    o.transmissionPowerDbm = 42;
    o.wifiLinkQuality = 'foo';
    o.wifiPowerManagementEnabled = true;
  }
  buildCounterGoogleChromeManagementV1NetworkStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1NetworkStatusReport(
    api.GoogleChromeManagementV1NetworkStatusReport o) {
  buildCounterGoogleChromeManagementV1NetworkStatusReport++;
  if (buildCounterGoogleChromeManagementV1NetworkStatusReport < 3) {
    unittest.expect(
      o.connectionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.encryptionOn!, unittest.isTrue);
    unittest.expect(
      o.gatewayIpAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.guid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lanIpAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.receivingBitRateMbps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleFrequency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signalStrengthDbm!,
      unittest.equals(42),
    );
    unittest.expect(
      o.transmissionBitRateMbps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transmissionPowerDbm!,
      unittest.equals(42),
    );
    unittest.expect(
      o.wifiLinkQuality!,
      unittest.equals('foo'),
    );
    unittest.expect(o.wifiPowerManagementEnabled!, unittest.isTrue);
  }
  buildCounterGoogleChromeManagementV1NetworkStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1OsUpdateStatus = 0;
api.GoogleChromeManagementV1OsUpdateStatus
    buildGoogleChromeManagementV1OsUpdateStatus() {
  final o = api.GoogleChromeManagementV1OsUpdateStatus();
  buildCounterGoogleChromeManagementV1OsUpdateStatus++;
  if (buildCounterGoogleChromeManagementV1OsUpdateStatus < 3) {
    o.lastRebootTime = 'foo';
    o.lastUpdateCheckTime = 'foo';
    o.lastUpdateTime = 'foo';
    o.newPlatformVersion = 'foo';
    o.newRequestedPlatformVersion = 'foo';
    o.updateState = 'foo';
  }
  buildCounterGoogleChromeManagementV1OsUpdateStatus--;
  return o;
}

void checkGoogleChromeManagementV1OsUpdateStatus(
    api.GoogleChromeManagementV1OsUpdateStatus o) {
  buildCounterGoogleChromeManagementV1OsUpdateStatus++;
  if (buildCounterGoogleChromeManagementV1OsUpdateStatus < 3) {
    unittest.expect(
      o.lastRebootTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateCheckTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newPlatformVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newRequestedPlatformVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1OsUpdateStatus--;
}

core.List<api.GoogleChromeManagementV1StorageInfoDiskVolume> buildUnnamed15() =>
    [
      buildGoogleChromeManagementV1StorageInfoDiskVolume(),
      buildGoogleChromeManagementV1StorageInfoDiskVolume(),
    ];

void checkUnnamed15(
    core.List<api.GoogleChromeManagementV1StorageInfoDiskVolume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1StorageInfoDiskVolume(o[0]);
  checkGoogleChromeManagementV1StorageInfoDiskVolume(o[1]);
}

core.int buildCounterGoogleChromeManagementV1StorageInfo = 0;
api.GoogleChromeManagementV1StorageInfo
    buildGoogleChromeManagementV1StorageInfo() {
  final o = api.GoogleChromeManagementV1StorageInfo();
  buildCounterGoogleChromeManagementV1StorageInfo++;
  if (buildCounterGoogleChromeManagementV1StorageInfo < 3) {
    o.availableDiskBytes = 'foo';
    o.totalDiskBytes = 'foo';
    o.volume = buildUnnamed15();
  }
  buildCounterGoogleChromeManagementV1StorageInfo--;
  return o;
}

void checkGoogleChromeManagementV1StorageInfo(
    api.GoogleChromeManagementV1StorageInfo o) {
  buildCounterGoogleChromeManagementV1StorageInfo++;
  if (buildCounterGoogleChromeManagementV1StorageInfo < 3) {
    unittest.expect(
      o.availableDiskBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalDiskBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.volume!);
  }
  buildCounterGoogleChromeManagementV1StorageInfo--;
}

core.int buildCounterGoogleChromeManagementV1StorageInfoDiskVolume = 0;
api.GoogleChromeManagementV1StorageInfoDiskVolume
    buildGoogleChromeManagementV1StorageInfoDiskVolume() {
  final o = api.GoogleChromeManagementV1StorageInfoDiskVolume();
  buildCounterGoogleChromeManagementV1StorageInfoDiskVolume++;
  if (buildCounterGoogleChromeManagementV1StorageInfoDiskVolume < 3) {
    o.storageFreeBytes = 'foo';
    o.storageTotalBytes = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterGoogleChromeManagementV1StorageInfoDiskVolume--;
  return o;
}

void checkGoogleChromeManagementV1StorageInfoDiskVolume(
    api.GoogleChromeManagementV1StorageInfoDiskVolume o) {
  buildCounterGoogleChromeManagementV1StorageInfoDiskVolume++;
  if (buildCounterGoogleChromeManagementV1StorageInfoDiskVolume < 3) {
    unittest.expect(
      o.storageFreeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageTotalBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1StorageInfoDiskVolume--;
}

core.List<api.GoogleChromeManagementV1DiskInfo> buildUnnamed16() => [
      buildGoogleChromeManagementV1DiskInfo(),
      buildGoogleChromeManagementV1DiskInfo(),
    ];

void checkUnnamed16(core.List<api.GoogleChromeManagementV1DiskInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DiskInfo(o[0]);
  checkGoogleChromeManagementV1DiskInfo(o[1]);
}

core.int buildCounterGoogleChromeManagementV1StorageStatusReport = 0;
api.GoogleChromeManagementV1StorageStatusReport
    buildGoogleChromeManagementV1StorageStatusReport() {
  final o = api.GoogleChromeManagementV1StorageStatusReport();
  buildCounterGoogleChromeManagementV1StorageStatusReport++;
  if (buildCounterGoogleChromeManagementV1StorageStatusReport < 3) {
    o.disk = buildUnnamed16();
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1StorageStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1StorageStatusReport(
    api.GoogleChromeManagementV1StorageStatusReport o) {
  buildCounterGoogleChromeManagementV1StorageStatusReport++;
  if (buildCounterGoogleChromeManagementV1StorageStatusReport < 3) {
    checkUnnamed16(o.disk!);
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1StorageStatusReport--;
}

core.List<api.GoogleChromeManagementV1AudioStatusReport> buildUnnamed17() => [
      buildGoogleChromeManagementV1AudioStatusReport(),
      buildGoogleChromeManagementV1AudioStatusReport(),
    ];

void checkUnnamed17(
    core.List<api.GoogleChromeManagementV1AudioStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1AudioStatusReport(o[0]);
  checkGoogleChromeManagementV1AudioStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1BatteryInfo> buildUnnamed18() => [
      buildGoogleChromeManagementV1BatteryInfo(),
      buildGoogleChromeManagementV1BatteryInfo(),
    ];

void checkUnnamed18(core.List<api.GoogleChromeManagementV1BatteryInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1BatteryInfo(o[0]);
  checkGoogleChromeManagementV1BatteryInfo(o[1]);
}

core.List<api.GoogleChromeManagementV1BatteryStatusReport> buildUnnamed19() => [
      buildGoogleChromeManagementV1BatteryStatusReport(),
      buildGoogleChromeManagementV1BatteryStatusReport(),
    ];

void checkUnnamed19(
    core.List<api.GoogleChromeManagementV1BatteryStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1BatteryStatusReport(o[0]);
  checkGoogleChromeManagementV1BatteryStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1CpuInfo> buildUnnamed20() => [
      buildGoogleChromeManagementV1CpuInfo(),
      buildGoogleChromeManagementV1CpuInfo(),
    ];

void checkUnnamed20(core.List<api.GoogleChromeManagementV1CpuInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1CpuInfo(o[0]);
  checkGoogleChromeManagementV1CpuInfo(o[1]);
}

core.List<api.GoogleChromeManagementV1CpuStatusReport> buildUnnamed21() => [
      buildGoogleChromeManagementV1CpuStatusReport(),
      buildGoogleChromeManagementV1CpuStatusReport(),
    ];

void checkUnnamed21(core.List<api.GoogleChromeManagementV1CpuStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1CpuStatusReport(o[0]);
  checkGoogleChromeManagementV1CpuStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1GraphicsStatusReport> buildUnnamed22() =>
    [
      buildGoogleChromeManagementV1GraphicsStatusReport(),
      buildGoogleChromeManagementV1GraphicsStatusReport(),
    ];

void checkUnnamed22(
    core.List<api.GoogleChromeManagementV1GraphicsStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1GraphicsStatusReport(o[0]);
  checkGoogleChromeManagementV1GraphicsStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1MemoryStatusReport> buildUnnamed23() => [
      buildGoogleChromeManagementV1MemoryStatusReport(),
      buildGoogleChromeManagementV1MemoryStatusReport(),
    ];

void checkUnnamed23(
    core.List<api.GoogleChromeManagementV1MemoryStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1MemoryStatusReport(o[0]);
  checkGoogleChromeManagementV1MemoryStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1NetworkDiagnosticsReport>
    buildUnnamed24() => [
          buildGoogleChromeManagementV1NetworkDiagnosticsReport(),
          buildGoogleChromeManagementV1NetworkDiagnosticsReport(),
        ];

void checkUnnamed24(
    core.List<api.GoogleChromeManagementV1NetworkDiagnosticsReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1NetworkDiagnosticsReport(o[0]);
  checkGoogleChromeManagementV1NetworkDiagnosticsReport(o[1]);
}

core.List<api.GoogleChromeManagementV1NetworkStatusReport> buildUnnamed25() => [
      buildGoogleChromeManagementV1NetworkStatusReport(),
      buildGoogleChromeManagementV1NetworkStatusReport(),
    ];

void checkUnnamed25(
    core.List<api.GoogleChromeManagementV1NetworkStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1NetworkStatusReport(o[0]);
  checkGoogleChromeManagementV1NetworkStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1OsUpdateStatus> buildUnnamed26() => [
      buildGoogleChromeManagementV1OsUpdateStatus(),
      buildGoogleChromeManagementV1OsUpdateStatus(),
    ];

void checkUnnamed26(core.List<api.GoogleChromeManagementV1OsUpdateStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1OsUpdateStatus(o[0]);
  checkGoogleChromeManagementV1OsUpdateStatus(o[1]);
}

core.List<api.GoogleChromeManagementV1StorageStatusReport> buildUnnamed27() => [
      buildGoogleChromeManagementV1StorageStatusReport(),
      buildGoogleChromeManagementV1StorageStatusReport(),
    ];

void checkUnnamed27(
    core.List<api.GoogleChromeManagementV1StorageStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1StorageStatusReport(o[0]);
  checkGoogleChromeManagementV1StorageStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1ThunderboltInfo> buildUnnamed28() => [
      buildGoogleChromeManagementV1ThunderboltInfo(),
      buildGoogleChromeManagementV1ThunderboltInfo(),
    ];

void checkUnnamed28(core.List<api.GoogleChromeManagementV1ThunderboltInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1ThunderboltInfo(o[0]);
  checkGoogleChromeManagementV1ThunderboltInfo(o[1]);
}

core.int buildCounterGoogleChromeManagementV1TelemetryDevice = 0;
api.GoogleChromeManagementV1TelemetryDevice
    buildGoogleChromeManagementV1TelemetryDevice() {
  final o = api.GoogleChromeManagementV1TelemetryDevice();
  buildCounterGoogleChromeManagementV1TelemetryDevice++;
  if (buildCounterGoogleChromeManagementV1TelemetryDevice < 3) {
    o.audioStatusReport = buildUnnamed17();
    o.batteryInfo = buildUnnamed18();
    o.batteryStatusReport = buildUnnamed19();
    o.cpuInfo = buildUnnamed20();
    o.cpuStatusReport = buildUnnamed21();
    o.customer = 'foo';
    o.deviceId = 'foo';
    o.graphicsInfo = buildGoogleChromeManagementV1GraphicsInfo();
    o.graphicsStatusReport = buildUnnamed22();
    o.memoryInfo = buildGoogleChromeManagementV1MemoryInfo();
    o.memoryStatusReport = buildUnnamed23();
    o.name = 'foo';
    o.networkDiagnosticsReport = buildUnnamed24();
    o.networkInfo = buildGoogleChromeManagementV1NetworkInfo();
    o.networkStatusReport = buildUnnamed25();
    o.orgUnitId = 'foo';
    o.osUpdateStatus = buildUnnamed26();
    o.serialNumber = 'foo';
    o.storageInfo = buildGoogleChromeManagementV1StorageInfo();
    o.storageStatusReport = buildUnnamed27();
    o.thunderboltInfo = buildUnnamed28();
  }
  buildCounterGoogleChromeManagementV1TelemetryDevice--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryDevice(
    api.GoogleChromeManagementV1TelemetryDevice o) {
  buildCounterGoogleChromeManagementV1TelemetryDevice++;
  if (buildCounterGoogleChromeManagementV1TelemetryDevice < 3) {
    checkUnnamed17(o.audioStatusReport!);
    checkUnnamed18(o.batteryInfo!);
    checkUnnamed19(o.batteryStatusReport!);
    checkUnnamed20(o.cpuInfo!);
    checkUnnamed21(o.cpuStatusReport!);
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkGoogleChromeManagementV1GraphicsInfo(o.graphicsInfo!);
    checkUnnamed22(o.graphicsStatusReport!);
    checkGoogleChromeManagementV1MemoryInfo(o.memoryInfo!);
    checkUnnamed23(o.memoryStatusReport!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.networkDiagnosticsReport!);
    checkGoogleChromeManagementV1NetworkInfo(o.networkInfo!);
    checkUnnamed25(o.networkStatusReport!);
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.osUpdateStatus!);
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    checkGoogleChromeManagementV1StorageInfo(o.storageInfo!);
    checkUnnamed27(o.storageStatusReport!);
    checkUnnamed28(o.thunderboltInfo!);
  }
  buildCounterGoogleChromeManagementV1TelemetryDevice--;
}

core.int buildCounterGoogleChromeManagementV1ThunderboltInfo = 0;
api.GoogleChromeManagementV1ThunderboltInfo
    buildGoogleChromeManagementV1ThunderboltInfo() {
  final o = api.GoogleChromeManagementV1ThunderboltInfo();
  buildCounterGoogleChromeManagementV1ThunderboltInfo++;
  if (buildCounterGoogleChromeManagementV1ThunderboltInfo < 3) {
    o.securityLevel = 'foo';
  }
  buildCounterGoogleChromeManagementV1ThunderboltInfo--;
  return o;
}

void checkGoogleChromeManagementV1ThunderboltInfo(
    api.GoogleChromeManagementV1ThunderboltInfo o) {
  buildCounterGoogleChromeManagementV1ThunderboltInfo++;
  if (buildCounterGoogleChromeManagementV1ThunderboltInfo < 3) {
    unittest.expect(
      o.securityLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1ThunderboltInfo--;
}

core.int buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo = 0;
api.GoogleChromeManagementV1TotalMemoryEncryptionInfo
    buildGoogleChromeManagementV1TotalMemoryEncryptionInfo() {
  final o = api.GoogleChromeManagementV1TotalMemoryEncryptionInfo();
  buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo++;
  if (buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo < 3) {
    o.encryptionAlgorithm = 'foo';
    o.encryptionState = 'foo';
    o.keyLength = 'foo';
    o.maxKeys = 'foo';
  }
  buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo--;
  return o;
}

void checkGoogleChromeManagementV1TotalMemoryEncryptionInfo(
    api.GoogleChromeManagementV1TotalMemoryEncryptionInfo o) {
  buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo++;
  if (buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo < 3) {
    unittest.expect(
      o.encryptionAlgorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyLength!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxKeys!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed30() => [
      buildUnnamed29(),
      buildUnnamed29(),
    ];

void checkUnnamed30(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed29(o[0]);
  checkUnnamed29(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed30();
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
    checkUnnamed30(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
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

  unittest.group('obj-schema-GoogleChromeManagementV1AudioStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AudioStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AudioStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1AudioStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1BatteryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BatteryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BatteryInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1BatteryInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1BatterySampleReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BatterySampleReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BatterySampleReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1BatterySampleReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1BatteryStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BatteryStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BatteryStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1BatteryStatusReport(od);
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

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1ChromeAppRequest(od);
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
      'obj-schema-GoogleChromeManagementV1CountChromeAppRequestsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CountChromeAppRequestsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromeManagementV1CountChromeAppRequestsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CountChromeAppRequestsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse(
          od);
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

  unittest.group('obj-schema-GoogleChromeManagementV1CpuInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CpuInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1CpuInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CpuInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1CpuStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CpuStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1CpuStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CpuStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1CpuTemperatureInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CpuTemperatureInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1CpuTemperatureInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1CpuTemperatureInfo(od);
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

  unittest.group('obj-schema-GoogleChromeManagementV1DeviceAueCountReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DeviceAueCountReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DeviceAueCountReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1DeviceAueCountReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1DiskInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DiskInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DiskInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1DiskInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1DisplayInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DisplayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DisplayInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1DisplayInfo(od);
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

  unittest.group('obj-schema-GoogleChromeManagementV1GraphicsAdapterInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1GraphicsAdapterInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1GraphicsAdapterInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1GraphicsInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1GraphicsInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1GraphicsInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1GraphicsInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1GraphicsStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1GraphicsStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1GraphicsStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1GraphicsStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1HttpsLatencyRoutineData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1HttpsLatencyRoutineData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1HttpsLatencyRoutineData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1HttpsLatencyRoutineData(od);
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

  unittest.group(
      'obj-schema-GoogleChromeManagementV1ListTelemetryDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ListTelemetryDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1ListTelemetryDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1MemoryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1MemoryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1MemoryInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1MemoryInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1MemoryStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1MemoryStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1MemoryStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1MemoryStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1NetworkDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1NetworkDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1NetworkDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1NetworkDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1NetworkDiagnosticsReport',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1NetworkDiagnosticsReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1NetworkDiagnosticsReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1NetworkDiagnosticsReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1NetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1NetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1NetworkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1NetworkInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1NetworkStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1NetworkStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1NetworkStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1NetworkStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1OsUpdateStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1OsUpdateStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1OsUpdateStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1OsUpdateStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1StorageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1StorageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1StorageInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1StorageInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1StorageInfoDiskVolume',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1StorageInfoDiskVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1StorageInfoDiskVolume.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1StorageInfoDiskVolume(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1StorageStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1StorageStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1StorageStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1StorageStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1TelemetryDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TelemetryDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TelemetryDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1TelemetryDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ThunderboltInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ThunderboltInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ThunderboltInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1ThunderboltInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1TotalMemoryEncryptionInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TotalMemoryEncryptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TotalMemoryEncryptionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleChromeManagementV1TotalMemoryEncryptionInfo(od);
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

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('resource-CustomersAppsResource', () {
    unittest.test('method--countChromeAppRequests', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps;
      final arg_customer = 'foo';
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
            buildGoogleChromeManagementV1CountChromeAppRequestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.countChromeAppRequests(arg_customer,
          orderBy: arg_orderBy,
          orgUnitId: arg_orgUnitId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleChromeManagementV1CountChromeAppRequestsResponse(response
          as api.GoogleChromeManagementV1CountChromeAppRequestsResponse);
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
    unittest.test('method--countChromeDevicesReachingAutoExpirationDate',
        () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_maxAueDate = 'foo';
      final arg_minAueDate = 'foo';
      final arg_orgUnitId = 'foo';
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
          queryMap['maxAueDate']!.first,
          unittest.equals(arg_maxAueDate),
        );
        unittest.expect(
          queryMap['minAueDate']!.first,
          unittest.equals(arg_minAueDate),
        );
        unittest.expect(
          queryMap['orgUnitId']!.first,
          unittest.equals(arg_orgUnitId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.countChromeDevicesReachingAutoExpirationDate(
          arg_customer,
          maxAueDate: arg_maxAueDate,
          minAueDate: arg_minAueDate,
          orgUnitId: arg_orgUnitId,
          $fields: arg_$fields);
      checkGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse(
          response as api
              .GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse);
    });

    unittest.test('method--countChromeDevicesThatNeedAttention', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['orgUnitId']!.first,
          unittest.equals(arg_orgUnitId),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.countChromeDevicesThatNeedAttention(
          arg_customer,
          orgUnitId: arg_orgUnitId,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse(
          response as api
              .GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse);
    });

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

  unittest.group('resource-CustomersTelemetryDevicesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.telemetry.devices;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleChromeManagementV1TelemetryDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, readMask: arg_readMask, $fields: arg_$fields);
      checkGoogleChromeManagementV1TelemetryDevice(
          response as api.GoogleChromeManagementV1TelemetryDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.telemetry.devices;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleChromeManagementV1ListTelemetryDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleChromeManagementV1ListTelemetryDevicesResponse(
          response as api.GoogleChromeManagementV1ListTelemetryDevicesResponse);
    });
  });
}
