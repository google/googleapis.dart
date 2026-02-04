// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
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
  core.List<api.GoogleChromeManagementV1AndroidAppPermission> o,
) {
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
  api.GoogleChromeManagementV1AndroidAppInfo o,
) {
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
  api.GoogleChromeManagementV1AndroidAppPermission o,
) {
  buildCounterGoogleChromeManagementV1AndroidAppPermission++;
  if (buildCounterGoogleChromeManagementV1AndroidAppPermission < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1AppDetails o,
) {
  buildCounterGoogleChromeManagementV1AppDetails++;
  if (buildCounterGoogleChromeManagementV1AppDetails < 3) {
    checkGoogleChromeManagementV1AndroidAppInfo(o.androidAppInfo!);
    unittest.expect(o.appId!, unittest.equals('foo'));
    checkGoogleChromeManagementV1ChromeAppInfo(o.chromeAppInfo!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.detailUri!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.firstPublishTime!, unittest.equals('foo'));
    unittest.expect(o.homepageUri!, unittest.equals('foo'));
    unittest.expect(o.iconUri!, unittest.equals('foo'));
    unittest.expect(o.isPaidApp!, unittest.isTrue);
    unittest.expect(o.latestPublishTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.privacyPolicyUri!, unittest.equals('foo'));
    unittest.expect(o.publisher!, unittest.equals('foo'));
    unittest.expect(o.reviewNumber!, unittest.equals('foo'));
    unittest.expect(o.reviewRating!, unittest.equals(42.0));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    checkGoogleRpcStatus(o.serviceError!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1AppDetails--;
}

core.List<api.GoogleChromeManagementV1AppUsageData> buildUnnamed1() => [
  buildGoogleChromeManagementV1AppUsageData(),
  buildGoogleChromeManagementV1AppUsageData(),
];

void checkUnnamed1(core.List<api.GoogleChromeManagementV1AppUsageData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1AppUsageData(o[0]);
  checkGoogleChromeManagementV1AppUsageData(o[1]);
}

core.int buildCounterGoogleChromeManagementV1AppReport = 0;
api.GoogleChromeManagementV1AppReport buildGoogleChromeManagementV1AppReport() {
  final o = api.GoogleChromeManagementV1AppReport();
  buildCounterGoogleChromeManagementV1AppReport++;
  if (buildCounterGoogleChromeManagementV1AppReport < 3) {
    o.reportTime = 'foo';
    o.usageData = buildUnnamed1();
  }
  buildCounterGoogleChromeManagementV1AppReport--;
  return o;
}

void checkGoogleChromeManagementV1AppReport(
  api.GoogleChromeManagementV1AppReport o,
) {
  buildCounterGoogleChromeManagementV1AppReport++;
  if (buildCounterGoogleChromeManagementV1AppReport < 3) {
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    checkUnnamed1(o.usageData!);
  }
  buildCounterGoogleChromeManagementV1AppReport--;
}

core.int buildCounterGoogleChromeManagementV1AppUsageData = 0;
api.GoogleChromeManagementV1AppUsageData
buildGoogleChromeManagementV1AppUsageData() {
  final o = api.GoogleChromeManagementV1AppUsageData();
  buildCounterGoogleChromeManagementV1AppUsageData++;
  if (buildCounterGoogleChromeManagementV1AppUsageData < 3) {
    o.appId = 'foo';
    o.appInstanceId = 'foo';
    o.appType = 'foo';
    o.runningDuration = 'foo';
  }
  buildCounterGoogleChromeManagementV1AppUsageData--;
  return o;
}

void checkGoogleChromeManagementV1AppUsageData(
  api.GoogleChromeManagementV1AppUsageData o,
) {
  buildCounterGoogleChromeManagementV1AppUsageData++;
  if (buildCounterGoogleChromeManagementV1AppUsageData < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appInstanceId!, unittest.equals('foo'));
    unittest.expect(o.appType!, unittest.equals('foo'));
    unittest.expect(o.runningDuration!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1AppUsageData--;
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
  api.GoogleChromeManagementV1AudioStatusReport o,
) {
  buildCounterGoogleChromeManagementV1AudioStatusReport++;
  if (buildCounterGoogleChromeManagementV1AudioStatusReport < 3) {
    unittest.expect(o.inputDevice!, unittest.equals('foo'));
    unittest.expect(o.inputGain!, unittest.equals(42));
    unittest.expect(o.inputMute!, unittest.isTrue);
    unittest.expect(o.outputDevice!, unittest.equals('foo'));
    unittest.expect(o.outputMute!, unittest.isTrue);
    unittest.expect(o.outputVolume!, unittest.equals(42));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1BatteryInfo o,
) {
  buildCounterGoogleChromeManagementV1BatteryInfo++;
  if (buildCounterGoogleChromeManagementV1BatteryInfo < 3) {
    unittest.expect(o.designCapacity!, unittest.equals('foo'));
    unittest.expect(o.designMinVoltage!, unittest.equals(42));
    checkGoogleTypeDate(o.manufactureDate!);
    unittest.expect(o.manufacturer!, unittest.equals('foo'));
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
    unittest.expect(o.technology!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1BatterySampleReport o,
) {
  buildCounterGoogleChromeManagementV1BatterySampleReport++;
  if (buildCounterGoogleChromeManagementV1BatterySampleReport < 3) {
    unittest.expect(o.chargeRate!, unittest.equals(42));
    unittest.expect(o.current!, unittest.equals('foo'));
    unittest.expect(o.dischargeRate!, unittest.equals(42));
    unittest.expect(o.remainingCapacity!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.temperature!, unittest.equals(42));
    unittest.expect(o.voltage!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1BatterySampleReport--;
}

core.List<api.GoogleChromeManagementV1BatterySampleReport> buildUnnamed2() => [
  buildGoogleChromeManagementV1BatterySampleReport(),
  buildGoogleChromeManagementV1BatterySampleReport(),
];

void checkUnnamed2(
  core.List<api.GoogleChromeManagementV1BatterySampleReport> o,
) {
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
    o.sample = buildUnnamed2();
    o.serialNumber = 'foo';
  }
  buildCounterGoogleChromeManagementV1BatteryStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1BatteryStatusReport(
  api.GoogleChromeManagementV1BatteryStatusReport o,
) {
  buildCounterGoogleChromeManagementV1BatteryStatusReport++;
  if (buildCounterGoogleChromeManagementV1BatteryStatusReport < 3) {
    unittest.expect(o.batteryHealth!, unittest.equals('foo'));
    unittest.expect(o.cycleCount!, unittest.equals(42));
    unittest.expect(o.fullChargeCapacity!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    checkUnnamed2(o.sample!);
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1BatteryStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1BootPerformanceReport = 0;
api.GoogleChromeManagementV1BootPerformanceReport
buildGoogleChromeManagementV1BootPerformanceReport() {
  final o = api.GoogleChromeManagementV1BootPerformanceReport();
  buildCounterGoogleChromeManagementV1BootPerformanceReport++;
  if (buildCounterGoogleChromeManagementV1BootPerformanceReport < 3) {
    o.bootUpDuration = 'foo';
    o.bootUpTime = 'foo';
    o.reportTime = 'foo';
    o.shutdownDuration = 'foo';
    o.shutdownReason = 'foo';
    o.shutdownTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1BootPerformanceReport--;
  return o;
}

void checkGoogleChromeManagementV1BootPerformanceReport(
  api.GoogleChromeManagementV1BootPerformanceReport o,
) {
  buildCounterGoogleChromeManagementV1BootPerformanceReport++;
  if (buildCounterGoogleChromeManagementV1BootPerformanceReport < 3) {
    unittest.expect(o.bootUpDuration!, unittest.equals('foo'));
    unittest.expect(o.bootUpTime!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.shutdownDuration!, unittest.equals('foo'));
    unittest.expect(o.shutdownReason!, unittest.equals('foo'));
    unittest.expect(o.shutdownTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1BootPerformanceReport--;
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
  api.GoogleChromeManagementV1BrowserVersion o,
) {
  buildCounterGoogleChromeManagementV1BrowserVersion++;
  if (buildCounterGoogleChromeManagementV1BrowserVersion < 3) {
    unittest.expect(o.channel!, unittest.equals('foo'));
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.deviceOsVersion!, unittest.equals('foo'));
    unittest.expect(o.system!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1BrowserVersion--;
}

core.List<api.GoogleChromeManagementV1ChromeAppPermission> buildUnnamed3() => [
  buildGoogleChromeManagementV1ChromeAppPermission(),
  buildGoogleChromeManagementV1ChromeAppPermission(),
];

void checkUnnamed3(
  core.List<api.GoogleChromeManagementV1ChromeAppPermission> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1ChromeAppPermission(o[0]);
  checkGoogleChromeManagementV1ChromeAppPermission(o[1]);
}

core.List<api.GoogleChromeManagementV1ChromeAppSiteAccess> buildUnnamed4() => [
  buildGoogleChromeManagementV1ChromeAppSiteAccess(),
  buildGoogleChromeManagementV1ChromeAppSiteAccess(),
];

void checkUnnamed4(
  core.List<api.GoogleChromeManagementV1ChromeAppSiteAccess> o,
) {
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
    o.isExtensionPolicySupported = true;
    o.isKioskOnly = true;
    o.isTheme = true;
    o.kioskEnabled = true;
    o.manifestVersion = 'foo';
    o.minUserCount = 42;
    o.permissions = buildUnnamed3();
    o.siteAccess = buildUnnamed4();
    o.supportEnabled = true;
    o.type = 'foo';
  }
  buildCounterGoogleChromeManagementV1ChromeAppInfo--;
  return o;
}

void checkGoogleChromeManagementV1ChromeAppInfo(
  api.GoogleChromeManagementV1ChromeAppInfo o,
) {
  buildCounterGoogleChromeManagementV1ChromeAppInfo++;
  if (buildCounterGoogleChromeManagementV1ChromeAppInfo < 3) {
    unittest.expect(o.googleOwned!, unittest.isTrue);
    unittest.expect(o.isCwsHosted!, unittest.isTrue);
    unittest.expect(o.isExtensionPolicySupported!, unittest.isTrue);
    unittest.expect(o.isKioskOnly!, unittest.isTrue);
    unittest.expect(o.isTheme!, unittest.isTrue);
    unittest.expect(o.kioskEnabled!, unittest.isTrue);
    unittest.expect(o.manifestVersion!, unittest.equals('foo'));
    unittest.expect(o.minUserCount!, unittest.equals(42));
    checkUnnamed3(o.permissions!);
    checkUnnamed4(o.siteAccess!);
    unittest.expect(o.supportEnabled!, unittest.isTrue);
    unittest.expect(o.type!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1ChromeAppPermission o,
) {
  buildCounterGoogleChromeManagementV1ChromeAppPermission++;
  if (buildCounterGoogleChromeManagementV1ChromeAppPermission < 3) {
    unittest.expect(o.accessUserData!, unittest.isTrue);
    unittest.expect(o.documentationUri!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1ChromeAppRequest o,
) {
  buildCounterGoogleChromeManagementV1ChromeAppRequest++;
  if (buildCounterGoogleChromeManagementV1ChromeAppRequest < 3) {
    unittest.expect(o.appDetails!, unittest.equals('foo'));
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.detailUri!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.iconUri!, unittest.equals('foo'));
    unittest.expect(o.latestRequestTime!, unittest.equals('foo'));
    unittest.expect(o.requestCount!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1ChromeAppSiteAccess o,
) {
  buildCounterGoogleChromeManagementV1ChromeAppSiteAccess++;
  if (buildCounterGoogleChromeManagementV1ChromeAppSiteAccess < 3) {
    unittest.expect(o.hostMatch!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1ChromeAppSiteAccess--;
}

core.int buildCounterGoogleChromeManagementV1CountActiveDevicesResponse = 0;
api.GoogleChromeManagementV1CountActiveDevicesResponse
buildGoogleChromeManagementV1CountActiveDevicesResponse() {
  final o = api.GoogleChromeManagementV1CountActiveDevicesResponse();
  buildCounterGoogleChromeManagementV1CountActiveDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1CountActiveDevicesResponse < 3) {
    o.sevenDaysCount = 'foo';
    o.thirtyDaysCount = 'foo';
  }
  buildCounterGoogleChromeManagementV1CountActiveDevicesResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountActiveDevicesResponse(
  api.GoogleChromeManagementV1CountActiveDevicesResponse o,
) {
  buildCounterGoogleChromeManagementV1CountActiveDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1CountActiveDevicesResponse < 3) {
    unittest.expect(o.sevenDaysCount!, unittest.equals('foo'));
    unittest.expect(o.thirtyDaysCount!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1CountActiveDevicesResponse--;
}

core.List<api.GoogleChromeManagementV1ChromeAppRequest> buildUnnamed5() => [
  buildGoogleChromeManagementV1ChromeAppRequest(),
  buildGoogleChromeManagementV1ChromeAppRequest(),
];

void checkUnnamed5(core.List<api.GoogleChromeManagementV1ChromeAppRequest> o) {
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
    o.requestedApps = buildUnnamed5();
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeAppRequestsResponse(
  api.GoogleChromeManagementV1CountChromeAppRequestsResponse o,
) {
  buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.requestedApps!);
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1CountChromeAppRequestsResponse--;
}

core.int
buildCounterGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse =
    0;
api.GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse
buildGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse() {
  final o =
      api.GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse();
  buildCounterGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse <
      3) {
    o.noRecentActivityCount = 'foo';
    o.pendingBrowserUpdateCount = 'foo';
    o.recentlyEnrolledCount = 'foo';
  }
  buildCounterGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse(
  api.GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse o,
) {
  buildCounterGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse <
      3) {
    unittest.expect(o.noRecentActivityCount!, unittest.equals('foo'));
    unittest.expect(o.pendingBrowserUpdateCount!, unittest.equals('foo'));
    unittest.expect(o.recentlyEnrolledCount!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse--;
}

core.List<
  api.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount
>
buildUnnamed6() => [
  buildGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount(),
  buildGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount(),
];

void checkUnnamed6(
  core.List<
    api.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount(
    o[0],
  );
  checkGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount(
    o[1],
  );
}

core.int buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponse = 0;
api.GoogleChromeManagementV1CountChromeCrashEventsResponse
buildGoogleChromeManagementV1CountChromeCrashEventsResponse() {
  final o = api.GoogleChromeManagementV1CountChromeCrashEventsResponse();
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponse < 3) {
    o.crashEventCounts = buildUnnamed6();
  }
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeCrashEventsResponse(
  api.GoogleChromeManagementV1CountChromeCrashEventsResponse o,
) {
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponse < 3) {
    checkUnnamed6(o.crashEventCounts!);
  }
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponse--;
}

core.int
buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount =
    0;
api.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount
buildGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount() {
  final o =
      api.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount();
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount++;
  if (buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount <
      3) {
    o.browserVersion = 'foo';
    o.count = 'foo';
    o.date = buildGoogleTypeDate();
  }
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount(
  api.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount o,
) {
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount++;
  if (buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount <
      3) {
    unittest.expect(o.browserVersion!, unittest.equals('foo'));
    unittest.expect(o.count!, unittest.equals('foo'));
    checkGoogleTypeDate(o.date!);
  }
  buildCounterGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount--;
}

core.List<api.GoogleChromeManagementV1DeviceAueCountReport> buildUnnamed7() => [
  buildGoogleChromeManagementV1DeviceAueCountReport(),
  buildGoogleChromeManagementV1DeviceAueCountReport(),
];

void checkUnnamed7(
  core.List<api.GoogleChromeManagementV1DeviceAueCountReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceAueCountReport(o[0]);
  checkGoogleChromeManagementV1DeviceAueCountReport(o[1]);
}

core.int
buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse =
    0;
api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
buildGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse() {
  final o =
      api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse();
  buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse <
      3) {
    o.deviceAueCountReports = buildUnnamed7();
  }
  buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse--;
  return o;
}

void
checkGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse(
  api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
  o,
) {
  buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse <
      3) {
    checkUnnamed7(o.deviceAueCountReports!);
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
  api.GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse o,
) {
  buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse <
      3) {
    unittest.expect(o.noRecentPolicySyncCount!, unittest.equals('foo'));
    unittest.expect(o.noRecentUserActivityCount!, unittest.equals('foo'));
    unittest.expect(o.osVersionNotCompliantCount!, unittest.equals('foo'));
    unittest.expect(o.pendingUpdate!, unittest.equals('foo'));
    unittest.expect(o.unsupportedPolicyCount!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse--;
}

core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport>
buildUnnamed8() => [
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
];

void checkUnnamed8(
  core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[0]);
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[1]);
}

core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport>
buildUnnamed9() => [
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
];

void checkUnnamed9(
  core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[0]);
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[1]);
}

core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport>
buildUnnamed10() => [
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
];

void checkUnnamed10(
  core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[0]);
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[1]);
}

core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport>
buildUnnamed11() => [
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
  buildGoogleChromeManagementV1DeviceHardwareCountReport(),
];

void checkUnnamed11(
  core.List<api.GoogleChromeManagementV1DeviceHardwareCountReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[0]);
  checkGoogleChromeManagementV1DeviceHardwareCountReport(o[1]);
}

core.int
buildCounterGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse = 0;
api.GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse
buildGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse() {
  final o =
      api.GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse();
  buildCounterGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse <
      3) {
    o.cpuReports = buildUnnamed8();
    o.memoryReports = buildUnnamed9();
    o.modelReports = buildUnnamed10();
    o.storageReports = buildUnnamed11();
  }
  buildCounterGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse(
  api.GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse o,
) {
  buildCounterGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse <
      3) {
    checkUnnamed8(o.cpuReports!);
    checkUnnamed9(o.memoryReports!);
    checkUnnamed10(o.modelReports!);
    checkUnnamed11(o.storageReports!);
  }
  buildCounterGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse--;
}

core.List<api.GoogleChromeManagementV1BrowserVersion> buildUnnamed12() => [
  buildGoogleChromeManagementV1BrowserVersion(),
  buildGoogleChromeManagementV1BrowserVersion(),
];

void checkUnnamed12(core.List<api.GoogleChromeManagementV1BrowserVersion> o) {
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
    o.browserVersions = buildUnnamed12();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1CountChromeVersionsResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountChromeVersionsResponse(
  api.GoogleChromeManagementV1CountChromeVersionsResponse o,
) {
  buildCounterGoogleChromeManagementV1CountChromeVersionsResponse++;
  if (buildCounterGoogleChromeManagementV1CountChromeVersionsResponse < 3) {
    checkUnnamed12(o.browserVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1CountChromeVersionsResponse--;
}

core.int buildCounterGoogleChromeManagementV1CountDevicesPerBootTypeResponse =
    0;
api.GoogleChromeManagementV1CountDevicesPerBootTypeResponse
buildGoogleChromeManagementV1CountDevicesPerBootTypeResponse() {
  final o = api.GoogleChromeManagementV1CountDevicesPerBootTypeResponse();
  buildCounterGoogleChromeManagementV1CountDevicesPerBootTypeResponse++;
  if (buildCounterGoogleChromeManagementV1CountDevicesPerBootTypeResponse < 3) {
    o.devBootTypeCount = 'foo';
    o.unreportedBootTypeCount = 'foo';
    o.verifiedBootTypeCount = 'foo';
  }
  buildCounterGoogleChromeManagementV1CountDevicesPerBootTypeResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountDevicesPerBootTypeResponse(
  api.GoogleChromeManagementV1CountDevicesPerBootTypeResponse o,
) {
  buildCounterGoogleChromeManagementV1CountDevicesPerBootTypeResponse++;
  if (buildCounterGoogleChromeManagementV1CountDevicesPerBootTypeResponse < 3) {
    unittest.expect(o.devBootTypeCount!, unittest.equals('foo'));
    unittest.expect(o.unreportedBootTypeCount!, unittest.equals('foo'));
    unittest.expect(o.verifiedBootTypeCount!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1CountDevicesPerBootTypeResponse--;
}

core.int
buildCounterGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse = 0;
api.GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse
buildGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse() {
  final o = api.GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse();
  buildCounterGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse++;
  if (buildCounterGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse <
      3) {
    o.betaChannelCount = 'foo';
    o.canaryChannelCount = 'foo';
    o.devChannelCount = 'foo';
    o.ltcChannelCount = 'foo';
    o.ltsChannelCount = 'foo';
    o.stableChannelCount = 'foo';
    o.unreportedChannelCount = 'foo';
    o.unsupportedChannelCount = 'foo';
  }
  buildCounterGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse(
  api.GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse o,
) {
  buildCounterGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse++;
  if (buildCounterGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse <
      3) {
    unittest.expect(o.betaChannelCount!, unittest.equals('foo'));
    unittest.expect(o.canaryChannelCount!, unittest.equals('foo'));
    unittest.expect(o.devChannelCount!, unittest.equals('foo'));
    unittest.expect(o.ltcChannelCount!, unittest.equals('foo'));
    unittest.expect(o.ltsChannelCount!, unittest.equals('foo'));
    unittest.expect(o.stableChannelCount!, unittest.equals('foo'));
    unittest.expect(o.unreportedChannelCount!, unittest.equals('foo'));
    unittest.expect(o.unsupportedChannelCount!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse--;
}

core.List<api.GoogleChromeManagementV1InstalledApp> buildUnnamed13() => [
  buildGoogleChromeManagementV1InstalledApp(),
  buildGoogleChromeManagementV1InstalledApp(),
];

void checkUnnamed13(core.List<api.GoogleChromeManagementV1InstalledApp> o) {
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
    o.installedApps = buildUnnamed13();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1CountInstalledAppsResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountInstalledAppsResponse(
  api.GoogleChromeManagementV1CountInstalledAppsResponse o,
) {
  buildCounterGoogleChromeManagementV1CountInstalledAppsResponse++;
  if (buildCounterGoogleChromeManagementV1CountInstalledAppsResponse < 3) {
    checkUnnamed13(o.installedApps!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1CountInstalledAppsResponse--;
}

core.List<api.GoogleChromeManagementV1PrinterReport> buildUnnamed14() => [
  buildGoogleChromeManagementV1PrinterReport(),
  buildGoogleChromeManagementV1PrinterReport(),
];

void checkUnnamed14(core.List<api.GoogleChromeManagementV1PrinterReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1PrinterReport(o[0]);
  checkGoogleChromeManagementV1PrinterReport(o[1]);
}

core.int buildCounterGoogleChromeManagementV1CountPrintJobsByPrinterResponse =
    0;
api.GoogleChromeManagementV1CountPrintJobsByPrinterResponse
buildGoogleChromeManagementV1CountPrintJobsByPrinterResponse() {
  final o = api.GoogleChromeManagementV1CountPrintJobsByPrinterResponse();
  buildCounterGoogleChromeManagementV1CountPrintJobsByPrinterResponse++;
  if (buildCounterGoogleChromeManagementV1CountPrintJobsByPrinterResponse < 3) {
    o.nextPageToken = 'foo';
    o.printerReports = buildUnnamed14();
    o.totalSize = 'foo';
  }
  buildCounterGoogleChromeManagementV1CountPrintJobsByPrinterResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountPrintJobsByPrinterResponse(
  api.GoogleChromeManagementV1CountPrintJobsByPrinterResponse o,
) {
  buildCounterGoogleChromeManagementV1CountPrintJobsByPrinterResponse++;
  if (buildCounterGoogleChromeManagementV1CountPrintJobsByPrinterResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed14(o.printerReports!);
    unittest.expect(o.totalSize!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1CountPrintJobsByPrinterResponse--;
}

core.List<api.GoogleChromeManagementV1UserPrintReport> buildUnnamed15() => [
  buildGoogleChromeManagementV1UserPrintReport(),
  buildGoogleChromeManagementV1UserPrintReport(),
];

void checkUnnamed15(core.List<api.GoogleChromeManagementV1UserPrintReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1UserPrintReport(o[0]);
  checkGoogleChromeManagementV1UserPrintReport(o[1]);
}

core.int buildCounterGoogleChromeManagementV1CountPrintJobsByUserResponse = 0;
api.GoogleChromeManagementV1CountPrintJobsByUserResponse
buildGoogleChromeManagementV1CountPrintJobsByUserResponse() {
  final o = api.GoogleChromeManagementV1CountPrintJobsByUserResponse();
  buildCounterGoogleChromeManagementV1CountPrintJobsByUserResponse++;
  if (buildCounterGoogleChromeManagementV1CountPrintJobsByUserResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 'foo';
    o.userPrintReports = buildUnnamed15();
  }
  buildCounterGoogleChromeManagementV1CountPrintJobsByUserResponse--;
  return o;
}

void checkGoogleChromeManagementV1CountPrintJobsByUserResponse(
  api.GoogleChromeManagementV1CountPrintJobsByUserResponse o,
) {
  buildCounterGoogleChromeManagementV1CountPrintJobsByUserResponse++;
  if (buildCounterGoogleChromeManagementV1CountPrintJobsByUserResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals('foo'));
    checkUnnamed15(o.userPrintReports!);
  }
  buildCounterGoogleChromeManagementV1CountPrintJobsByUserResponse--;
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
  api.GoogleChromeManagementV1CpuInfo o,
) {
  buildCounterGoogleChromeManagementV1CpuInfo++;
  if (buildCounterGoogleChromeManagementV1CpuInfo < 3) {
    unittest.expect(o.architecture!, unittest.equals('foo'));
    unittest.expect(o.keylockerConfigured!, unittest.isTrue);
    unittest.expect(o.keylockerSupported!, unittest.isTrue);
    unittest.expect(o.maxClockSpeed!, unittest.equals(42));
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1CpuInfo--;
}

core.List<api.GoogleChromeManagementV1CpuTemperatureInfo> buildUnnamed16() => [
  buildGoogleChromeManagementV1CpuTemperatureInfo(),
  buildGoogleChromeManagementV1CpuTemperatureInfo(),
];

void checkUnnamed16(
  core.List<api.GoogleChromeManagementV1CpuTemperatureInfo> o,
) {
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
    o.cpuTemperatureInfo = buildUnnamed16();
    o.cpuUtilizationPct = 42;
    o.reportTime = 'foo';
    o.sampleFrequency = 'foo';
  }
  buildCounterGoogleChromeManagementV1CpuStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1CpuStatusReport(
  api.GoogleChromeManagementV1CpuStatusReport o,
) {
  buildCounterGoogleChromeManagementV1CpuStatusReport++;
  if (buildCounterGoogleChromeManagementV1CpuStatusReport < 3) {
    checkUnnamed16(o.cpuTemperatureInfo!);
    unittest.expect(o.cpuUtilizationPct!, unittest.equals(42));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.sampleFrequency!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1CpuTemperatureInfo o,
) {
  buildCounterGoogleChromeManagementV1CpuTemperatureInfo++;
  if (buildCounterGoogleChromeManagementV1CpuTemperatureInfo < 3) {
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.temperatureCelsius!, unittest.equals(42));
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
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    unittest.expect(o.machine!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1Device--;
}

core.int buildCounterGoogleChromeManagementV1DeviceActivityReport = 0;
api.GoogleChromeManagementV1DeviceActivityReport
buildGoogleChromeManagementV1DeviceActivityReport() {
  final o = api.GoogleChromeManagementV1DeviceActivityReport();
  buildCounterGoogleChromeManagementV1DeviceActivityReport++;
  if (buildCounterGoogleChromeManagementV1DeviceActivityReport < 3) {
    o.deviceActivityState = 'foo';
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1DeviceActivityReport--;
  return o;
}

void checkGoogleChromeManagementV1DeviceActivityReport(
  api.GoogleChromeManagementV1DeviceActivityReport o,
) {
  buildCounterGoogleChromeManagementV1DeviceActivityReport++;
  if (buildCounterGoogleChromeManagementV1DeviceActivityReport < 3) {
    unittest.expect(o.deviceActivityState!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1DeviceActivityReport--;
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
  api.GoogleChromeManagementV1DeviceAueCountReport o,
) {
  buildCounterGoogleChromeManagementV1DeviceAueCountReport++;
  if (buildCounterGoogleChromeManagementV1DeviceAueCountReport < 3) {
    unittest.expect(o.aueMonth!, unittest.equals('foo'));
    unittest.expect(o.aueYear!, unittest.equals('foo'));
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.expired!, unittest.isTrue);
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1DeviceAueCountReport--;
}

core.int buildCounterGoogleChromeManagementV1DeviceHardwareCountReport = 0;
api.GoogleChromeManagementV1DeviceHardwareCountReport
buildGoogleChromeManagementV1DeviceHardwareCountReport() {
  final o = api.GoogleChromeManagementV1DeviceHardwareCountReport();
  buildCounterGoogleChromeManagementV1DeviceHardwareCountReport++;
  if (buildCounterGoogleChromeManagementV1DeviceHardwareCountReport < 3) {
    o.bucket = 'foo';
    o.count = 'foo';
  }
  buildCounterGoogleChromeManagementV1DeviceHardwareCountReport--;
  return o;
}

void checkGoogleChromeManagementV1DeviceHardwareCountReport(
  api.GoogleChromeManagementV1DeviceHardwareCountReport o,
) {
  buildCounterGoogleChromeManagementV1DeviceHardwareCountReport++;
  if (buildCounterGoogleChromeManagementV1DeviceHardwareCountReport < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.count!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1DeviceHardwareCountReport--;
}

core.int buildCounterGoogleChromeManagementV1DeviceRequestingExtensionDetails =
    0;
api.GoogleChromeManagementV1DeviceRequestingExtensionDetails
buildGoogleChromeManagementV1DeviceRequestingExtensionDetails() {
  final o = api.GoogleChromeManagementV1DeviceRequestingExtensionDetails();
  buildCounterGoogleChromeManagementV1DeviceRequestingExtensionDetails++;
  if (buildCounterGoogleChromeManagementV1DeviceRequestingExtensionDetails <
      3) {
    o.deviceName = 'foo';
    o.justification = 'foo';
  }
  buildCounterGoogleChromeManagementV1DeviceRequestingExtensionDetails--;
  return o;
}

void checkGoogleChromeManagementV1DeviceRequestingExtensionDetails(
  api.GoogleChromeManagementV1DeviceRequestingExtensionDetails o,
) {
  buildCounterGoogleChromeManagementV1DeviceRequestingExtensionDetails++;
  if (buildCounterGoogleChromeManagementV1DeviceRequestingExtensionDetails <
      3) {
    unittest.expect(o.deviceName!, unittest.equals('foo'));
    unittest.expect(o.justification!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1DeviceRequestingExtensionDetails--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.volumeIds = buildUnnamed17();
    o.writeTimeThisSession = 'foo';
  }
  buildCounterGoogleChromeManagementV1DiskInfo--;
  return o;
}

void checkGoogleChromeManagementV1DiskInfo(
  api.GoogleChromeManagementV1DiskInfo o,
) {
  buildCounterGoogleChromeManagementV1DiskInfo++;
  if (buildCounterGoogleChromeManagementV1DiskInfo < 3) {
    unittest.expect(o.bytesReadThisSession!, unittest.equals('foo'));
    unittest.expect(o.bytesWrittenThisSession!, unittest.equals('foo'));
    unittest.expect(o.discardTimeThisSession!, unittest.equals('foo'));
    unittest.expect(o.health!, unittest.equals('foo'));
    unittest.expect(o.ioTimeThisSession!, unittest.equals('foo'));
    unittest.expect(o.manufacturer!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.readTimeThisSession!, unittest.equals('foo'));
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
    unittest.expect(o.sizeBytes!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkUnnamed17(o.volumeIds!);
    unittest.expect(o.writeTimeThisSession!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1DiskInfo--;
}

core.int buildCounterGoogleChromeManagementV1DisplayDevice = 0;
api.GoogleChromeManagementV1DisplayDevice
buildGoogleChromeManagementV1DisplayDevice() {
  final o = api.GoogleChromeManagementV1DisplayDevice();
  buildCounterGoogleChromeManagementV1DisplayDevice++;
  if (buildCounterGoogleChromeManagementV1DisplayDevice < 3) {
    o.displayHeightMm = 42;
    o.displayName = 'foo';
    o.displayWidthMm = 42;
    o.edidVersion = 'foo';
    o.internal = true;
    o.manufactureYear = 42;
    o.manufacturerId = 'foo';
    o.modelId = 42;
    o.serialNumber = 42;
  }
  buildCounterGoogleChromeManagementV1DisplayDevice--;
  return o;
}

void checkGoogleChromeManagementV1DisplayDevice(
  api.GoogleChromeManagementV1DisplayDevice o,
) {
  buildCounterGoogleChromeManagementV1DisplayDevice++;
  if (buildCounterGoogleChromeManagementV1DisplayDevice < 3) {
    unittest.expect(o.displayHeightMm!, unittest.equals(42));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.displayWidthMm!, unittest.equals(42));
    unittest.expect(o.edidVersion!, unittest.equals('foo'));
    unittest.expect(o.internal!, unittest.isTrue);
    unittest.expect(o.manufactureYear!, unittest.equals(42));
    unittest.expect(o.manufacturerId!, unittest.equals('foo'));
    unittest.expect(o.modelId!, unittest.equals(42));
    unittest.expect(o.serialNumber!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1DisplayDevice--;
}

core.int buildCounterGoogleChromeManagementV1DisplayInfo = 0;
api.GoogleChromeManagementV1DisplayInfo
buildGoogleChromeManagementV1DisplayInfo() {
  final o = api.GoogleChromeManagementV1DisplayInfo();
  buildCounterGoogleChromeManagementV1DisplayInfo++;
  if (buildCounterGoogleChromeManagementV1DisplayInfo < 3) {
    o.deviceId = 'foo';
    o.displayName = 'foo';
    o.edidVersion = 'foo';
    o.isInternal = true;
    o.refreshRate = 42;
    o.resolutionHeight = 42;
    o.resolutionWidth = 42;
    o.serialNumber = 42;
  }
  buildCounterGoogleChromeManagementV1DisplayInfo--;
  return o;
}

void checkGoogleChromeManagementV1DisplayInfo(
  api.GoogleChromeManagementV1DisplayInfo o,
) {
  buildCounterGoogleChromeManagementV1DisplayInfo++;
  if (buildCounterGoogleChromeManagementV1DisplayInfo < 3) {
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.edidVersion!, unittest.equals('foo'));
    unittest.expect(o.isInternal!, unittest.isTrue);
    unittest.expect(o.refreshRate!, unittest.equals(42));
    unittest.expect(o.resolutionHeight!, unittest.equals(42));
    unittest.expect(o.resolutionWidth!, unittest.equals(42));
    unittest.expect(o.serialNumber!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1DisplayInfo--;
}

core.List<api.GoogleChromeManagementV1PrintJob> buildUnnamed18() => [
  buildGoogleChromeManagementV1PrintJob(),
  buildGoogleChromeManagementV1PrintJob(),
];

void checkUnnamed18(core.List<api.GoogleChromeManagementV1PrintJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1PrintJob(o[0]);
  checkGoogleChromeManagementV1PrintJob(o[1]);
}

core.int buildCounterGoogleChromeManagementV1EnumeratePrintJobsResponse = 0;
api.GoogleChromeManagementV1EnumeratePrintJobsResponse
buildGoogleChromeManagementV1EnumeratePrintJobsResponse() {
  final o = api.GoogleChromeManagementV1EnumeratePrintJobsResponse();
  buildCounterGoogleChromeManagementV1EnumeratePrintJobsResponse++;
  if (buildCounterGoogleChromeManagementV1EnumeratePrintJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.printJobs = buildUnnamed18();
    o.totalSize = 'foo';
  }
  buildCounterGoogleChromeManagementV1EnumeratePrintJobsResponse--;
  return o;
}

void checkGoogleChromeManagementV1EnumeratePrintJobsResponse(
  api.GoogleChromeManagementV1EnumeratePrintJobsResponse o,
) {
  buildCounterGoogleChromeManagementV1EnumeratePrintJobsResponse++;
  if (buildCounterGoogleChromeManagementV1EnumeratePrintJobsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.printJobs!);
    unittest.expect(o.totalSize!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1EnumeratePrintJobsResponse--;
}

core.List<api.GoogleChromeManagementV1DeviceRequestingExtensionDetails>
buildUnnamed19() => [
  buildGoogleChromeManagementV1DeviceRequestingExtensionDetails(),
  buildGoogleChromeManagementV1DeviceRequestingExtensionDetails(),
];

void checkUnnamed19(
  core.List<api.GoogleChromeManagementV1DeviceRequestingExtensionDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceRequestingExtensionDetails(o[0]);
  checkGoogleChromeManagementV1DeviceRequestingExtensionDetails(o[1]);
}

core.int
buildCounterGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse = 0;
api.GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse
buildGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse() {
  final o =
      api.GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse();
  buildCounterGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse++;
  if (buildCounterGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse <
      3) {
    o.deviceDetails = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse--;
  return o;
}

void checkGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse(
  api.GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse o,
) {
  buildCounterGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse++;
  if (buildCounterGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse <
      3) {
    checkUnnamed19(o.deviceDetails!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse--;
}

core.List<api.GoogleChromeManagementV1UserRequestingExtensionDetails>
buildUnnamed20() => [
  buildGoogleChromeManagementV1UserRequestingExtensionDetails(),
  buildGoogleChromeManagementV1UserRequestingExtensionDetails(),
];

void checkUnnamed20(
  core.List<api.GoogleChromeManagementV1UserRequestingExtensionDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1UserRequestingExtensionDetails(o[0]);
  checkGoogleChromeManagementV1UserRequestingExtensionDetails(o[1]);
}

core.int
buildCounterGoogleChromeManagementV1FetchUsersRequestingExtensionResponse = 0;
api.GoogleChromeManagementV1FetchUsersRequestingExtensionResponse
buildGoogleChromeManagementV1FetchUsersRequestingExtensionResponse() {
  final o = api.GoogleChromeManagementV1FetchUsersRequestingExtensionResponse();
  buildCounterGoogleChromeManagementV1FetchUsersRequestingExtensionResponse++;
  if (buildCounterGoogleChromeManagementV1FetchUsersRequestingExtensionResponse <
      3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.userDetails = buildUnnamed20();
  }
  buildCounterGoogleChromeManagementV1FetchUsersRequestingExtensionResponse--;
  return o;
}

void checkGoogleChromeManagementV1FetchUsersRequestingExtensionResponse(
  api.GoogleChromeManagementV1FetchUsersRequestingExtensionResponse o,
) {
  buildCounterGoogleChromeManagementV1FetchUsersRequestingExtensionResponse++;
  if (buildCounterGoogleChromeManagementV1FetchUsersRequestingExtensionResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
    checkUnnamed20(o.userDetails!);
  }
  buildCounterGoogleChromeManagementV1FetchUsersRequestingExtensionResponse--;
}

core.List<api.GoogleChromeManagementV1Device> buildUnnamed21() => [
  buildGoogleChromeManagementV1Device(),
  buildGoogleChromeManagementV1Device(),
];

void checkUnnamed21(core.List<api.GoogleChromeManagementV1Device> o) {
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
    o.devices = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse--;
  return o;
}

void checkGoogleChromeManagementV1FindInstalledAppDevicesResponse(
  api.GoogleChromeManagementV1FindInstalledAppDevicesResponse o,
) {
  buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1FindInstalledAppDevicesResponse < 3) {
    checkUnnamed21(o.devices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
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
  api.GoogleChromeManagementV1GraphicsAdapterInfo o,
) {
  buildCounterGoogleChromeManagementV1GraphicsAdapterInfo++;
  if (buildCounterGoogleChromeManagementV1GraphicsAdapterInfo < 3) {
    unittest.expect(o.adapter!, unittest.equals('foo'));
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    unittest.expect(o.driverVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1GraphicsAdapterInfo--;
}

core.List<api.GoogleChromeManagementV1DisplayDevice> buildUnnamed22() => [
  buildGoogleChromeManagementV1DisplayDevice(),
  buildGoogleChromeManagementV1DisplayDevice(),
];

void checkUnnamed22(core.List<api.GoogleChromeManagementV1DisplayDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DisplayDevice(o[0]);
  checkGoogleChromeManagementV1DisplayDevice(o[1]);
}

core.int buildCounterGoogleChromeManagementV1GraphicsInfo = 0;
api.GoogleChromeManagementV1GraphicsInfo
buildGoogleChromeManagementV1GraphicsInfo() {
  final o = api.GoogleChromeManagementV1GraphicsInfo();
  buildCounterGoogleChromeManagementV1GraphicsInfo++;
  if (buildCounterGoogleChromeManagementV1GraphicsInfo < 3) {
    o.adapterInfo = buildGoogleChromeManagementV1GraphicsAdapterInfo();
    o.displayDevices = buildUnnamed22();
    o.eprivacySupported = true;
    o.touchScreenInfo = buildGoogleChromeManagementV1TouchScreenInfo();
  }
  buildCounterGoogleChromeManagementV1GraphicsInfo--;
  return o;
}

void checkGoogleChromeManagementV1GraphicsInfo(
  api.GoogleChromeManagementV1GraphicsInfo o,
) {
  buildCounterGoogleChromeManagementV1GraphicsInfo++;
  if (buildCounterGoogleChromeManagementV1GraphicsInfo < 3) {
    checkGoogleChromeManagementV1GraphicsAdapterInfo(o.adapterInfo!);
    checkUnnamed22(o.displayDevices!);
    unittest.expect(o.eprivacySupported!, unittest.isTrue);
    checkGoogleChromeManagementV1TouchScreenInfo(o.touchScreenInfo!);
  }
  buildCounterGoogleChromeManagementV1GraphicsInfo--;
}

core.List<api.GoogleChromeManagementV1DisplayInfo> buildUnnamed23() => [
  buildGoogleChromeManagementV1DisplayInfo(),
  buildGoogleChromeManagementV1DisplayInfo(),
];

void checkUnnamed23(core.List<api.GoogleChromeManagementV1DisplayInfo> o) {
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
    o.displays = buildUnnamed23();
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1GraphicsStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1GraphicsStatusReport(
  api.GoogleChromeManagementV1GraphicsStatusReport o,
) {
  buildCounterGoogleChromeManagementV1GraphicsStatusReport++;
  if (buildCounterGoogleChromeManagementV1GraphicsStatusReport < 3) {
    checkUnnamed23(o.displays!);
    unittest.expect(o.reportTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1GraphicsStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1HeartbeatStatusReport = 0;
api.GoogleChromeManagementV1HeartbeatStatusReport
buildGoogleChromeManagementV1HeartbeatStatusReport() {
  final o = api.GoogleChromeManagementV1HeartbeatStatusReport();
  buildCounterGoogleChromeManagementV1HeartbeatStatusReport++;
  if (buildCounterGoogleChromeManagementV1HeartbeatStatusReport < 3) {
    o.reportTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleChromeManagementV1HeartbeatStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1HeartbeatStatusReport(
  api.GoogleChromeManagementV1HeartbeatStatusReport o,
) {
  buildCounterGoogleChromeManagementV1HeartbeatStatusReport++;
  if (buildCounterGoogleChromeManagementV1HeartbeatStatusReport < 3) {
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1HeartbeatStatusReport--;
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
  api.GoogleChromeManagementV1HttpsLatencyRoutineData o,
) {
  buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData++;
  if (buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData < 3) {
    unittest.expect(o.latency!, unittest.equals('foo'));
    unittest.expect(o.problem!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1HttpsLatencyRoutineData--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.permissions = buildUnnamed24();
    o.riskAssessment = buildGoogleChromeManagementV1RiskAssessmentData();
  }
  buildCounterGoogleChromeManagementV1InstalledApp--;
  return o;
}

void checkGoogleChromeManagementV1InstalledApp(
  api.GoogleChromeManagementV1InstalledApp o,
) {
  buildCounterGoogleChromeManagementV1InstalledApp++;
  if (buildCounterGoogleChromeManagementV1InstalledApp < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appInstallType!, unittest.equals('foo'));
    unittest.expect(o.appSource!, unittest.equals('foo'));
    unittest.expect(o.appType!, unittest.equals('foo'));
    unittest.expect(o.browserDeviceCount!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.homepageUri!, unittest.equals('foo'));
    unittest.expect(o.osUserCount!, unittest.equals('foo'));
    checkUnnamed24(o.permissions!);
    checkGoogleChromeManagementV1RiskAssessmentData(o.riskAssessment!);
  }
  buildCounterGoogleChromeManagementV1InstalledApp--;
}

core.int buildCounterGoogleChromeManagementV1KioskAppStatusReport = 0;
api.GoogleChromeManagementV1KioskAppStatusReport
buildGoogleChromeManagementV1KioskAppStatusReport() {
  final o = api.GoogleChromeManagementV1KioskAppStatusReport();
  buildCounterGoogleChromeManagementV1KioskAppStatusReport++;
  if (buildCounterGoogleChromeManagementV1KioskAppStatusReport < 3) {
    o.appId = 'foo';
    o.appVersion = 'foo';
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1KioskAppStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1KioskAppStatusReport(
  api.GoogleChromeManagementV1KioskAppStatusReport o,
) {
  buildCounterGoogleChromeManagementV1KioskAppStatusReport++;
  if (buildCounterGoogleChromeManagementV1KioskAppStatusReport < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appVersion!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1KioskAppStatusReport--;
}

core.List<api.GoogleChromeManagementV1TelemetryDevice> buildUnnamed25() => [
  buildGoogleChromeManagementV1TelemetryDevice(),
  buildGoogleChromeManagementV1TelemetryDevice(),
];

void checkUnnamed25(core.List<api.GoogleChromeManagementV1TelemetryDevice> o) {
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
    o.devices = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse--;
  return o;
}

void checkGoogleChromeManagementV1ListTelemetryDevicesResponse(
  api.GoogleChromeManagementV1ListTelemetryDevicesResponse o,
) {
  buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse < 3) {
    checkUnnamed25(o.devices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1ListTelemetryDevicesResponse--;
}

core.List<api.GoogleChromeManagementV1TelemetryEvent> buildUnnamed26() => [
  buildGoogleChromeManagementV1TelemetryEvent(),
  buildGoogleChromeManagementV1TelemetryEvent(),
];

void checkUnnamed26(core.List<api.GoogleChromeManagementV1TelemetryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1TelemetryEvent(o[0]);
  checkGoogleChromeManagementV1TelemetryEvent(o[1]);
}

core.int buildCounterGoogleChromeManagementV1ListTelemetryEventsResponse = 0;
api.GoogleChromeManagementV1ListTelemetryEventsResponse
buildGoogleChromeManagementV1ListTelemetryEventsResponse() {
  final o = api.GoogleChromeManagementV1ListTelemetryEventsResponse();
  buildCounterGoogleChromeManagementV1ListTelemetryEventsResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryEventsResponse < 3) {
    o.nextPageToken = 'foo';
    o.telemetryEvents = buildUnnamed26();
  }
  buildCounterGoogleChromeManagementV1ListTelemetryEventsResponse--;
  return o;
}

void checkGoogleChromeManagementV1ListTelemetryEventsResponse(
  api.GoogleChromeManagementV1ListTelemetryEventsResponse o,
) {
  buildCounterGoogleChromeManagementV1ListTelemetryEventsResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryEventsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.telemetryEvents!);
  }
  buildCounterGoogleChromeManagementV1ListTelemetryEventsResponse--;
}

core.List<api.GoogleChromeManagementV1TelemetryNotificationConfig>
buildUnnamed27() => [
  buildGoogleChromeManagementV1TelemetryNotificationConfig(),
  buildGoogleChromeManagementV1TelemetryNotificationConfig(),
];

void checkUnnamed27(
  core.List<api.GoogleChromeManagementV1TelemetryNotificationConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1TelemetryNotificationConfig(o[0]);
  checkGoogleChromeManagementV1TelemetryNotificationConfig(o[1]);
}

core.int
buildCounterGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse =
    0;
api.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse
buildGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse() {
  final o =
      api.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse();
  buildCounterGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.telemetryNotificationConfigs = buildUnnamed27();
  }
  buildCounterGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse--;
  return o;
}

void checkGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse(
  api.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse o,
) {
  buildCounterGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.telemetryNotificationConfigs!);
  }
  buildCounterGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse--;
}

core.List<api.GoogleChromeManagementV1TelemetryUser> buildUnnamed28() => [
  buildGoogleChromeManagementV1TelemetryUser(),
  buildGoogleChromeManagementV1TelemetryUser(),
];

void checkUnnamed28(core.List<api.GoogleChromeManagementV1TelemetryUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1TelemetryUser(o[0]);
  checkGoogleChromeManagementV1TelemetryUser(o[1]);
}

core.int buildCounterGoogleChromeManagementV1ListTelemetryUsersResponse = 0;
api.GoogleChromeManagementV1ListTelemetryUsersResponse
buildGoogleChromeManagementV1ListTelemetryUsersResponse() {
  final o = api.GoogleChromeManagementV1ListTelemetryUsersResponse();
  buildCounterGoogleChromeManagementV1ListTelemetryUsersResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.telemetryUsers = buildUnnamed28();
  }
  buildCounterGoogleChromeManagementV1ListTelemetryUsersResponse--;
  return o;
}

void checkGoogleChromeManagementV1ListTelemetryUsersResponse(
  api.GoogleChromeManagementV1ListTelemetryUsersResponse o,
) {
  buildCounterGoogleChromeManagementV1ListTelemetryUsersResponse++;
  if (buildCounterGoogleChromeManagementV1ListTelemetryUsersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.telemetryUsers!);
  }
  buildCounterGoogleChromeManagementV1ListTelemetryUsersResponse--;
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
  api.GoogleChromeManagementV1MemoryInfo o,
) {
  buildCounterGoogleChromeManagementV1MemoryInfo++;
  if (buildCounterGoogleChromeManagementV1MemoryInfo < 3) {
    unittest.expect(o.availableRamBytes!, unittest.equals('foo'));
    checkGoogleChromeManagementV1TotalMemoryEncryptionInfo(
      o.totalMemoryEncryption!,
    );
    unittest.expect(o.totalRamBytes!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1MemoryStatusReport o,
) {
  buildCounterGoogleChromeManagementV1MemoryStatusReport++;
  if (buildCounterGoogleChromeManagementV1MemoryStatusReport < 3) {
    unittest.expect(o.pageFaults!, unittest.equals(42));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.sampleFrequency!, unittest.equals('foo'));
    unittest.expect(o.systemRamFreeBytes!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1MemoryStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1NetworkBandwidthReport = 0;
api.GoogleChromeManagementV1NetworkBandwidthReport
buildGoogleChromeManagementV1NetworkBandwidthReport() {
  final o = api.GoogleChromeManagementV1NetworkBandwidthReport();
  buildCounterGoogleChromeManagementV1NetworkBandwidthReport++;
  if (buildCounterGoogleChromeManagementV1NetworkBandwidthReport < 3) {
    o.downloadSpeedKbps = 'foo';
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1NetworkBandwidthReport--;
  return o;
}

void checkGoogleChromeManagementV1NetworkBandwidthReport(
  api.GoogleChromeManagementV1NetworkBandwidthReport o,
) {
  buildCounterGoogleChromeManagementV1NetworkBandwidthReport++;
  if (buildCounterGoogleChromeManagementV1NetworkBandwidthReport < 3) {
    unittest.expect(o.downloadSpeedKbps!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1NetworkBandwidthReport--;
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
  api.GoogleChromeManagementV1NetworkDevice o,
) {
  buildCounterGoogleChromeManagementV1NetworkDevice++;
  if (buildCounterGoogleChromeManagementV1NetworkDevice < 3) {
    unittest.expect(o.iccid!, unittest.equals('foo'));
    unittest.expect(o.imei!, unittest.equals('foo'));
    unittest.expect(o.macAddress!, unittest.equals('foo'));
    unittest.expect(o.mdn!, unittest.equals('foo'));
    unittest.expect(o.meid!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1NetworkDiagnosticsReport o,
) {
  buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport++;
  if (buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport < 3) {
    checkGoogleChromeManagementV1HttpsLatencyRoutineData(o.httpsLatencyData!);
    unittest.expect(o.reportTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1NetworkDiagnosticsReport--;
}

core.List<api.GoogleChromeManagementV1NetworkDevice> buildUnnamed29() => [
  buildGoogleChromeManagementV1NetworkDevice(),
  buildGoogleChromeManagementV1NetworkDevice(),
];

void checkUnnamed29(core.List<api.GoogleChromeManagementV1NetworkDevice> o) {
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
    o.networkDevices = buildUnnamed29();
  }
  buildCounterGoogleChromeManagementV1NetworkInfo--;
  return o;
}

void checkGoogleChromeManagementV1NetworkInfo(
  api.GoogleChromeManagementV1NetworkInfo o,
) {
  buildCounterGoogleChromeManagementV1NetworkInfo++;
  if (buildCounterGoogleChromeManagementV1NetworkInfo < 3) {
    checkUnnamed29(o.networkDevices!);
  }
  buildCounterGoogleChromeManagementV1NetworkInfo--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.gatewayIpv6Address = 'foo';
    o.guid = 'foo';
    o.ipv6Address = buildUnnamed30();
    o.lanIpAddress = 'foo';
    o.linkDownSpeedKbps = 'foo';
    o.metered = true;
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
  api.GoogleChromeManagementV1NetworkStatusReport o,
) {
  buildCounterGoogleChromeManagementV1NetworkStatusReport++;
  if (buildCounterGoogleChromeManagementV1NetworkStatusReport < 3) {
    unittest.expect(o.connectionState!, unittest.equals('foo'));
    unittest.expect(o.connectionType!, unittest.equals('foo'));
    unittest.expect(o.encryptionOn!, unittest.isTrue);
    unittest.expect(o.gatewayIpAddress!, unittest.equals('foo'));
    unittest.expect(o.gatewayIpv6Address!, unittest.equals('foo'));
    unittest.expect(o.guid!, unittest.equals('foo'));
    checkUnnamed30(o.ipv6Address!);
    unittest.expect(o.lanIpAddress!, unittest.equals('foo'));
    unittest.expect(o.linkDownSpeedKbps!, unittest.equals('foo'));
    unittest.expect(o.metered!, unittest.isTrue);
    unittest.expect(o.receivingBitRateMbps!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.sampleFrequency!, unittest.equals('foo'));
    unittest.expect(o.signalStrengthDbm!, unittest.equals(42));
    unittest.expect(o.transmissionBitRateMbps!, unittest.equals('foo'));
    unittest.expect(o.transmissionPowerDbm!, unittest.equals(42));
    unittest.expect(o.wifiLinkQuality!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1OsUpdateStatus o,
) {
  buildCounterGoogleChromeManagementV1OsUpdateStatus++;
  if (buildCounterGoogleChromeManagementV1OsUpdateStatus < 3) {
    unittest.expect(o.lastRebootTime!, unittest.equals('foo'));
    unittest.expect(o.lastUpdateCheckTime!, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.newPlatformVersion!, unittest.equals('foo'));
    unittest.expect(o.newRequestedPlatformVersion!, unittest.equals('foo'));
    unittest.expect(o.updateState!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1OsUpdateStatus--;
}

core.List<api.GoogleChromeManagementV1UsbPeripheralReport> buildUnnamed31() => [
  buildGoogleChromeManagementV1UsbPeripheralReport(),
  buildGoogleChromeManagementV1UsbPeripheralReport(),
];

void checkUnnamed31(
  core.List<api.GoogleChromeManagementV1UsbPeripheralReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1UsbPeripheralReport(o[0]);
  checkGoogleChromeManagementV1UsbPeripheralReport(o[1]);
}

core.int buildCounterGoogleChromeManagementV1PeripheralsReport = 0;
api.GoogleChromeManagementV1PeripheralsReport
buildGoogleChromeManagementV1PeripheralsReport() {
  final o = api.GoogleChromeManagementV1PeripheralsReport();
  buildCounterGoogleChromeManagementV1PeripheralsReport++;
  if (buildCounterGoogleChromeManagementV1PeripheralsReport < 3) {
    o.reportTime = 'foo';
    o.usbPeripheralReport = buildUnnamed31();
  }
  buildCounterGoogleChromeManagementV1PeripheralsReport--;
  return o;
}

void checkGoogleChromeManagementV1PeripheralsReport(
  api.GoogleChromeManagementV1PeripheralsReport o,
) {
  buildCounterGoogleChromeManagementV1PeripheralsReport++;
  if (buildCounterGoogleChromeManagementV1PeripheralsReport < 3) {
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    checkUnnamed31(o.usbPeripheralReport!);
  }
  buildCounterGoogleChromeManagementV1PeripheralsReport--;
}

core.int buildCounterGoogleChromeManagementV1PrintJob = 0;
api.GoogleChromeManagementV1PrintJob buildGoogleChromeManagementV1PrintJob() {
  final o = api.GoogleChromeManagementV1PrintJob();
  buildCounterGoogleChromeManagementV1PrintJob++;
  if (buildCounterGoogleChromeManagementV1PrintJob < 3) {
    o.colorMode = 'foo';
    o.completeTime = 'foo';
    o.copyCount = 42;
    o.createTime = 'foo';
    o.documentPageCount = 42;
    o.duplexMode = 'foo';
    o.id = 'foo';
    o.printer = 'foo';
    o.printerId = 'foo';
    o.state = 'foo';
    o.title = 'foo';
    o.userEmail = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleChromeManagementV1PrintJob--;
  return o;
}

void checkGoogleChromeManagementV1PrintJob(
  api.GoogleChromeManagementV1PrintJob o,
) {
  buildCounterGoogleChromeManagementV1PrintJob++;
  if (buildCounterGoogleChromeManagementV1PrintJob < 3) {
    unittest.expect(o.colorMode!, unittest.equals('foo'));
    unittest.expect(o.completeTime!, unittest.equals('foo'));
    unittest.expect(o.copyCount!, unittest.equals(42));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.documentPageCount!, unittest.equals(42));
    unittest.expect(o.duplexMode!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.printer!, unittest.equals('foo'));
    unittest.expect(o.printerId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1PrintJob--;
}

core.int buildCounterGoogleChromeManagementV1PrinterReport = 0;
api.GoogleChromeManagementV1PrinterReport
buildGoogleChromeManagementV1PrinterReport() {
  final o = api.GoogleChromeManagementV1PrinterReport();
  buildCounterGoogleChromeManagementV1PrinterReport++;
  if (buildCounterGoogleChromeManagementV1PrinterReport < 3) {
    o.deviceCount = 'foo';
    o.jobCount = 'foo';
    o.printer = 'foo';
    o.printerId = 'foo';
    o.printerModel = 'foo';
    o.userCount = 'foo';
  }
  buildCounterGoogleChromeManagementV1PrinterReport--;
  return o;
}

void checkGoogleChromeManagementV1PrinterReport(
  api.GoogleChromeManagementV1PrinterReport o,
) {
  buildCounterGoogleChromeManagementV1PrinterReport++;
  if (buildCounterGoogleChromeManagementV1PrinterReport < 3) {
    unittest.expect(o.deviceCount!, unittest.equals('foo'));
    unittest.expect(o.jobCount!, unittest.equals('foo'));
    unittest.expect(o.printer!, unittest.equals('foo'));
    unittest.expect(o.printerId!, unittest.equals('foo'));
    unittest.expect(o.printerModel!, unittest.equals('foo'));
    unittest.expect(o.userCount!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1PrinterReport--;
}

core.int buildCounterGoogleChromeManagementV1RiskAssessment = 0;
api.GoogleChromeManagementV1RiskAssessment
buildGoogleChromeManagementV1RiskAssessment() {
  final o = api.GoogleChromeManagementV1RiskAssessment();
  buildCounterGoogleChromeManagementV1RiskAssessment++;
  if (buildCounterGoogleChromeManagementV1RiskAssessment < 3) {
    o.assessment = 'foo';
    o.detailsUrl = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleChromeManagementV1RiskAssessment--;
  return o;
}

void checkGoogleChromeManagementV1RiskAssessment(
  api.GoogleChromeManagementV1RiskAssessment o,
) {
  buildCounterGoogleChromeManagementV1RiskAssessment++;
  if (buildCounterGoogleChromeManagementV1RiskAssessment < 3) {
    unittest.expect(o.assessment!, unittest.equals('foo'));
    unittest.expect(o.detailsUrl!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1RiskAssessment--;
}

core.List<api.GoogleChromeManagementV1RiskAssessmentEntry> buildUnnamed32() => [
  buildGoogleChromeManagementV1RiskAssessmentEntry(),
  buildGoogleChromeManagementV1RiskAssessmentEntry(),
];

void checkUnnamed32(
  core.List<api.GoogleChromeManagementV1RiskAssessmentEntry> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1RiskAssessmentEntry(o[0]);
  checkGoogleChromeManagementV1RiskAssessmentEntry(o[1]);
}

core.int buildCounterGoogleChromeManagementV1RiskAssessmentData = 0;
api.GoogleChromeManagementV1RiskAssessmentData
buildGoogleChromeManagementV1RiskAssessmentData() {
  final o = api.GoogleChromeManagementV1RiskAssessmentData();
  buildCounterGoogleChromeManagementV1RiskAssessmentData++;
  if (buildCounterGoogleChromeManagementV1RiskAssessmentData < 3) {
    o.entries = buildUnnamed32();
    o.overallRiskLevel = 'foo';
  }
  buildCounterGoogleChromeManagementV1RiskAssessmentData--;
  return o;
}

void checkGoogleChromeManagementV1RiskAssessmentData(
  api.GoogleChromeManagementV1RiskAssessmentData o,
) {
  buildCounterGoogleChromeManagementV1RiskAssessmentData++;
  if (buildCounterGoogleChromeManagementV1RiskAssessmentData < 3) {
    checkUnnamed32(o.entries!);
    unittest.expect(o.overallRiskLevel!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1RiskAssessmentData--;
}

core.int buildCounterGoogleChromeManagementV1RiskAssessmentEntry = 0;
api.GoogleChromeManagementV1RiskAssessmentEntry
buildGoogleChromeManagementV1RiskAssessmentEntry() {
  final o = api.GoogleChromeManagementV1RiskAssessmentEntry();
  buildCounterGoogleChromeManagementV1RiskAssessmentEntry++;
  if (buildCounterGoogleChromeManagementV1RiskAssessmentEntry < 3) {
    o.provider = 'foo';
    o.riskAssessment = buildGoogleChromeManagementV1RiskAssessment();
    o.riskLevel = 'foo';
  }
  buildCounterGoogleChromeManagementV1RiskAssessmentEntry--;
  return o;
}

void checkGoogleChromeManagementV1RiskAssessmentEntry(
  api.GoogleChromeManagementV1RiskAssessmentEntry o,
) {
  buildCounterGoogleChromeManagementV1RiskAssessmentEntry++;
  if (buildCounterGoogleChromeManagementV1RiskAssessmentEntry < 3) {
    unittest.expect(o.provider!, unittest.equals('foo'));
    checkGoogleChromeManagementV1RiskAssessment(o.riskAssessment!);
    unittest.expect(o.riskLevel!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1RiskAssessmentEntry--;
}

core.int buildCounterGoogleChromeManagementV1RuntimeCountersReport = 0;
api.GoogleChromeManagementV1RuntimeCountersReport
buildGoogleChromeManagementV1RuntimeCountersReport() {
  final o = api.GoogleChromeManagementV1RuntimeCountersReport();
  buildCounterGoogleChromeManagementV1RuntimeCountersReport++;
  if (buildCounterGoogleChromeManagementV1RuntimeCountersReport < 3) {
    o.enterHibernationCount = 'foo';
    o.enterPoweroffCount = 'foo';
    o.enterSleepCount = 'foo';
    o.reportTime = 'foo';
    o.uptimeRuntimeDuration = 'foo';
  }
  buildCounterGoogleChromeManagementV1RuntimeCountersReport--;
  return o;
}

void checkGoogleChromeManagementV1RuntimeCountersReport(
  api.GoogleChromeManagementV1RuntimeCountersReport o,
) {
  buildCounterGoogleChromeManagementV1RuntimeCountersReport++;
  if (buildCounterGoogleChromeManagementV1RuntimeCountersReport < 3) {
    unittest.expect(o.enterHibernationCount!, unittest.equals('foo'));
    unittest.expect(o.enterPoweroffCount!, unittest.equals('foo'));
    unittest.expect(o.enterSleepCount!, unittest.equals('foo'));
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.uptimeRuntimeDuration!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1RuntimeCountersReport--;
}

core.List<api.GoogleChromeManagementV1StorageInfoDiskVolume> buildUnnamed33() =>
    [
      buildGoogleChromeManagementV1StorageInfoDiskVolume(),
      buildGoogleChromeManagementV1StorageInfoDiskVolume(),
    ];

void checkUnnamed33(
  core.List<api.GoogleChromeManagementV1StorageInfoDiskVolume> o,
) {
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
    o.volume = buildUnnamed33();
  }
  buildCounterGoogleChromeManagementV1StorageInfo--;
  return o;
}

void checkGoogleChromeManagementV1StorageInfo(
  api.GoogleChromeManagementV1StorageInfo o,
) {
  buildCounterGoogleChromeManagementV1StorageInfo++;
  if (buildCounterGoogleChromeManagementV1StorageInfo < 3) {
    unittest.expect(o.availableDiskBytes!, unittest.equals('foo'));
    unittest.expect(o.totalDiskBytes!, unittest.equals('foo'));
    checkUnnamed33(o.volume!);
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
  api.GoogleChromeManagementV1StorageInfoDiskVolume o,
) {
  buildCounterGoogleChromeManagementV1StorageInfoDiskVolume++;
  if (buildCounterGoogleChromeManagementV1StorageInfoDiskVolume < 3) {
    unittest.expect(o.storageFreeBytes!, unittest.equals('foo'));
    unittest.expect(o.storageTotalBytes!, unittest.equals('foo'));
    unittest.expect(o.volumeId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1StorageInfoDiskVolume--;
}

core.List<api.GoogleChromeManagementV1DiskInfo> buildUnnamed34() => [
  buildGoogleChromeManagementV1DiskInfo(),
  buildGoogleChromeManagementV1DiskInfo(),
];

void checkUnnamed34(core.List<api.GoogleChromeManagementV1DiskInfo> o) {
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
    o.disk = buildUnnamed34();
    o.reportTime = 'foo';
  }
  buildCounterGoogleChromeManagementV1StorageStatusReport--;
  return o;
}

void checkGoogleChromeManagementV1StorageStatusReport(
  api.GoogleChromeManagementV1StorageStatusReport o,
) {
  buildCounterGoogleChromeManagementV1StorageStatusReport++;
  if (buildCounterGoogleChromeManagementV1StorageStatusReport < 3) {
    checkUnnamed34(o.disk!);
    unittest.expect(o.reportTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1StorageStatusReport--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryAppInstallEvent = 0;
api.GoogleChromeManagementV1TelemetryAppInstallEvent
buildGoogleChromeManagementV1TelemetryAppInstallEvent() {
  final o = api.GoogleChromeManagementV1TelemetryAppInstallEvent();
  buildCounterGoogleChromeManagementV1TelemetryAppInstallEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAppInstallEvent < 3) {
    o.appId = 'foo';
    o.appInstallReason = 'foo';
    o.appInstallSource = 'foo';
    o.appInstallTime = 'foo';
    o.appType = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryAppInstallEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryAppInstallEvent(
  api.GoogleChromeManagementV1TelemetryAppInstallEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryAppInstallEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAppInstallEvent < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appInstallReason!, unittest.equals('foo'));
    unittest.expect(o.appInstallSource!, unittest.equals('foo'));
    unittest.expect(o.appInstallTime!, unittest.equals('foo'));
    unittest.expect(o.appType!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryAppInstallEvent--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryAppLaunchEvent = 0;
api.GoogleChromeManagementV1TelemetryAppLaunchEvent
buildGoogleChromeManagementV1TelemetryAppLaunchEvent() {
  final o = api.GoogleChromeManagementV1TelemetryAppLaunchEvent();
  buildCounterGoogleChromeManagementV1TelemetryAppLaunchEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAppLaunchEvent < 3) {
    o.appId = 'foo';
    o.appLaunchSource = 'foo';
    o.appType = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryAppLaunchEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryAppLaunchEvent(
  api.GoogleChromeManagementV1TelemetryAppLaunchEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryAppLaunchEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAppLaunchEvent < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appLaunchSource!, unittest.equals('foo'));
    unittest.expect(o.appType!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryAppLaunchEvent--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryAppUninstallEvent = 0;
api.GoogleChromeManagementV1TelemetryAppUninstallEvent
buildGoogleChromeManagementV1TelemetryAppUninstallEvent() {
  final o = api.GoogleChromeManagementV1TelemetryAppUninstallEvent();
  buildCounterGoogleChromeManagementV1TelemetryAppUninstallEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAppUninstallEvent < 3) {
    o.appId = 'foo';
    o.appType = 'foo';
    o.appUninstallSource = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryAppUninstallEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryAppUninstallEvent(
  api.GoogleChromeManagementV1TelemetryAppUninstallEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryAppUninstallEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAppUninstallEvent < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appType!, unittest.equals('foo'));
    unittest.expect(o.appUninstallSource!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryAppUninstallEvent--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent =
    0;
api.GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
buildGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent() {
  final o = api.GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent();
  buildCounterGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent <
      3) {}
  buildCounterGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent(
  api.GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent <
      3) {}
  buildCounterGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent--;
}

core.List<api.GoogleChromeManagementV1AppReport> buildUnnamed35() => [
  buildGoogleChromeManagementV1AppReport(),
  buildGoogleChromeManagementV1AppReport(),
];

void checkUnnamed35(core.List<api.GoogleChromeManagementV1AppReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1AppReport(o[0]);
  checkGoogleChromeManagementV1AppReport(o[1]);
}

core.List<api.GoogleChromeManagementV1AudioStatusReport> buildUnnamed36() => [
  buildGoogleChromeManagementV1AudioStatusReport(),
  buildGoogleChromeManagementV1AudioStatusReport(),
];

void checkUnnamed36(
  core.List<api.GoogleChromeManagementV1AudioStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1AudioStatusReport(o[0]);
  checkGoogleChromeManagementV1AudioStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1BatteryInfo> buildUnnamed37() => [
  buildGoogleChromeManagementV1BatteryInfo(),
  buildGoogleChromeManagementV1BatteryInfo(),
];

void checkUnnamed37(core.List<api.GoogleChromeManagementV1BatteryInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1BatteryInfo(o[0]);
  checkGoogleChromeManagementV1BatteryInfo(o[1]);
}

core.List<api.GoogleChromeManagementV1BatteryStatusReport> buildUnnamed38() => [
  buildGoogleChromeManagementV1BatteryStatusReport(),
  buildGoogleChromeManagementV1BatteryStatusReport(),
];

void checkUnnamed38(
  core.List<api.GoogleChromeManagementV1BatteryStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1BatteryStatusReport(o[0]);
  checkGoogleChromeManagementV1BatteryStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1BootPerformanceReport> buildUnnamed39() =>
    [
      buildGoogleChromeManagementV1BootPerformanceReport(),
      buildGoogleChromeManagementV1BootPerformanceReport(),
    ];

void checkUnnamed39(
  core.List<api.GoogleChromeManagementV1BootPerformanceReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1BootPerformanceReport(o[0]);
  checkGoogleChromeManagementV1BootPerformanceReport(o[1]);
}

core.List<api.GoogleChromeManagementV1CpuInfo> buildUnnamed40() => [
  buildGoogleChromeManagementV1CpuInfo(),
  buildGoogleChromeManagementV1CpuInfo(),
];

void checkUnnamed40(core.List<api.GoogleChromeManagementV1CpuInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1CpuInfo(o[0]);
  checkGoogleChromeManagementV1CpuInfo(o[1]);
}

core.List<api.GoogleChromeManagementV1CpuStatusReport> buildUnnamed41() => [
  buildGoogleChromeManagementV1CpuStatusReport(),
  buildGoogleChromeManagementV1CpuStatusReport(),
];

void checkUnnamed41(core.List<api.GoogleChromeManagementV1CpuStatusReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1CpuStatusReport(o[0]);
  checkGoogleChromeManagementV1CpuStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1GraphicsStatusReport> buildUnnamed42() =>
    [
      buildGoogleChromeManagementV1GraphicsStatusReport(),
      buildGoogleChromeManagementV1GraphicsStatusReport(),
    ];

void checkUnnamed42(
  core.List<api.GoogleChromeManagementV1GraphicsStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1GraphicsStatusReport(o[0]);
  checkGoogleChromeManagementV1GraphicsStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1HeartbeatStatusReport> buildUnnamed43() =>
    [
      buildGoogleChromeManagementV1HeartbeatStatusReport(),
      buildGoogleChromeManagementV1HeartbeatStatusReport(),
    ];

void checkUnnamed43(
  core.List<api.GoogleChromeManagementV1HeartbeatStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1HeartbeatStatusReport(o[0]);
  checkGoogleChromeManagementV1HeartbeatStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1KioskAppStatusReport> buildUnnamed44() =>
    [
      buildGoogleChromeManagementV1KioskAppStatusReport(),
      buildGoogleChromeManagementV1KioskAppStatusReport(),
    ];

void checkUnnamed44(
  core.List<api.GoogleChromeManagementV1KioskAppStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1KioskAppStatusReport(o[0]);
  checkGoogleChromeManagementV1KioskAppStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1MemoryStatusReport> buildUnnamed45() => [
  buildGoogleChromeManagementV1MemoryStatusReport(),
  buildGoogleChromeManagementV1MemoryStatusReport(),
];

void checkUnnamed45(
  core.List<api.GoogleChromeManagementV1MemoryStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1MemoryStatusReport(o[0]);
  checkGoogleChromeManagementV1MemoryStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1NetworkBandwidthReport>
buildUnnamed46() => [
  buildGoogleChromeManagementV1NetworkBandwidthReport(),
  buildGoogleChromeManagementV1NetworkBandwidthReport(),
];

void checkUnnamed46(
  core.List<api.GoogleChromeManagementV1NetworkBandwidthReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1NetworkBandwidthReport(o[0]);
  checkGoogleChromeManagementV1NetworkBandwidthReport(o[1]);
}

core.List<api.GoogleChromeManagementV1NetworkDiagnosticsReport>
buildUnnamed47() => [
  buildGoogleChromeManagementV1NetworkDiagnosticsReport(),
  buildGoogleChromeManagementV1NetworkDiagnosticsReport(),
];

void checkUnnamed47(
  core.List<api.GoogleChromeManagementV1NetworkDiagnosticsReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1NetworkDiagnosticsReport(o[0]);
  checkGoogleChromeManagementV1NetworkDiagnosticsReport(o[1]);
}

core.List<api.GoogleChromeManagementV1NetworkStatusReport> buildUnnamed48() => [
  buildGoogleChromeManagementV1NetworkStatusReport(),
  buildGoogleChromeManagementV1NetworkStatusReport(),
];

void checkUnnamed48(
  core.List<api.GoogleChromeManagementV1NetworkStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1NetworkStatusReport(o[0]);
  checkGoogleChromeManagementV1NetworkStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1OsUpdateStatus> buildUnnamed49() => [
  buildGoogleChromeManagementV1OsUpdateStatus(),
  buildGoogleChromeManagementV1OsUpdateStatus(),
];

void checkUnnamed49(core.List<api.GoogleChromeManagementV1OsUpdateStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1OsUpdateStatus(o[0]);
  checkGoogleChromeManagementV1OsUpdateStatus(o[1]);
}

core.List<api.GoogleChromeManagementV1PeripheralsReport> buildUnnamed50() => [
  buildGoogleChromeManagementV1PeripheralsReport(),
  buildGoogleChromeManagementV1PeripheralsReport(),
];

void checkUnnamed50(
  core.List<api.GoogleChromeManagementV1PeripheralsReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1PeripheralsReport(o[0]);
  checkGoogleChromeManagementV1PeripheralsReport(o[1]);
}

core.List<api.GoogleChromeManagementV1RuntimeCountersReport> buildUnnamed51() =>
    [
      buildGoogleChromeManagementV1RuntimeCountersReport(),
      buildGoogleChromeManagementV1RuntimeCountersReport(),
    ];

void checkUnnamed51(
  core.List<api.GoogleChromeManagementV1RuntimeCountersReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1RuntimeCountersReport(o[0]);
  checkGoogleChromeManagementV1RuntimeCountersReport(o[1]);
}

core.List<api.GoogleChromeManagementV1StorageStatusReport> buildUnnamed52() => [
  buildGoogleChromeManagementV1StorageStatusReport(),
  buildGoogleChromeManagementV1StorageStatusReport(),
];

void checkUnnamed52(
  core.List<api.GoogleChromeManagementV1StorageStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1StorageStatusReport(o[0]);
  checkGoogleChromeManagementV1StorageStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1ThunderboltInfo> buildUnnamed53() => [
  buildGoogleChromeManagementV1ThunderboltInfo(),
  buildGoogleChromeManagementV1ThunderboltInfo(),
];

void checkUnnamed53(core.List<api.GoogleChromeManagementV1ThunderboltInfo> o) {
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
    o.appReport = buildUnnamed35();
    o.audioStatusReport = buildUnnamed36();
    o.batteryInfo = buildUnnamed37();
    o.batteryStatusReport = buildUnnamed38();
    o.bootPerformanceReport = buildUnnamed39();
    o.cpuInfo = buildUnnamed40();
    o.cpuStatusReport = buildUnnamed41();
    o.customer = 'foo';
    o.deviceId = 'foo';
    o.graphicsInfo = buildGoogleChromeManagementV1GraphicsInfo();
    o.graphicsStatusReport = buildUnnamed42();
    o.heartbeatStatusReport = buildUnnamed43();
    o.kioskAppStatusReport = buildUnnamed44();
    o.memoryInfo = buildGoogleChromeManagementV1MemoryInfo();
    o.memoryStatusReport = buildUnnamed45();
    o.name = 'foo';
    o.networkBandwidthReport = buildUnnamed46();
    o.networkDiagnosticsReport = buildUnnamed47();
    o.networkInfo = buildGoogleChromeManagementV1NetworkInfo();
    o.networkStatusReport = buildUnnamed48();
    o.orgUnitId = 'foo';
    o.osUpdateStatus = buildUnnamed49();
    o.peripheralsReport = buildUnnamed50();
    o.runtimeCountersReport = buildUnnamed51();
    o.serialNumber = 'foo';
    o.storageInfo = buildGoogleChromeManagementV1StorageInfo();
    o.storageStatusReport = buildUnnamed52();
    o.thunderboltInfo = buildUnnamed53();
  }
  buildCounterGoogleChromeManagementV1TelemetryDevice--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryDevice(
  api.GoogleChromeManagementV1TelemetryDevice o,
) {
  buildCounterGoogleChromeManagementV1TelemetryDevice++;
  if (buildCounterGoogleChromeManagementV1TelemetryDevice < 3) {
    checkUnnamed35(o.appReport!);
    checkUnnamed36(o.audioStatusReport!);
    checkUnnamed37(o.batteryInfo!);
    checkUnnamed38(o.batteryStatusReport!);
    checkUnnamed39(o.bootPerformanceReport!);
    checkUnnamed40(o.cpuInfo!);
    checkUnnamed41(o.cpuStatusReport!);
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    checkGoogleChromeManagementV1GraphicsInfo(o.graphicsInfo!);
    checkUnnamed42(o.graphicsStatusReport!);
    checkUnnamed43(o.heartbeatStatusReport!);
    checkUnnamed44(o.kioskAppStatusReport!);
    checkGoogleChromeManagementV1MemoryInfo(o.memoryInfo!);
    checkUnnamed45(o.memoryStatusReport!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed46(o.networkBandwidthReport!);
    checkUnnamed47(o.networkDiagnosticsReport!);
    checkGoogleChromeManagementV1NetworkInfo(o.networkInfo!);
    checkUnnamed48(o.networkStatusReport!);
    unittest.expect(o.orgUnitId!, unittest.equals('foo'));
    checkUnnamed49(o.osUpdateStatus!);
    checkUnnamed50(o.peripheralsReport!);
    checkUnnamed51(o.runtimeCountersReport!);
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
    checkGoogleChromeManagementV1StorageInfo(o.storageInfo!);
    checkUnnamed52(o.storageStatusReport!);
    checkUnnamed53(o.thunderboltInfo!);
  }
  buildCounterGoogleChromeManagementV1TelemetryDevice--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryDeviceInfo = 0;
api.GoogleChromeManagementV1TelemetryDeviceInfo
buildGoogleChromeManagementV1TelemetryDeviceInfo() {
  final o = api.GoogleChromeManagementV1TelemetryDeviceInfo();
  buildCounterGoogleChromeManagementV1TelemetryDeviceInfo++;
  if (buildCounterGoogleChromeManagementV1TelemetryDeviceInfo < 3) {
    o.deviceId = 'foo';
    o.orgUnitId = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryDeviceInfo--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryDeviceInfo(
  api.GoogleChromeManagementV1TelemetryDeviceInfo o,
) {
  buildCounterGoogleChromeManagementV1TelemetryDeviceInfo++;
  if (buildCounterGoogleChromeManagementV1TelemetryDeviceInfo < 3) {
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    unittest.expect(o.orgUnitId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryDeviceInfo--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryEvent = 0;
api.GoogleChromeManagementV1TelemetryEvent
buildGoogleChromeManagementV1TelemetryEvent() {
  final o = api.GoogleChromeManagementV1TelemetryEvent();
  buildCounterGoogleChromeManagementV1TelemetryEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryEvent < 3) {
    o.appInstallEvent = buildGoogleChromeManagementV1TelemetryAppInstallEvent();
    o.appLaunchEvent = buildGoogleChromeManagementV1TelemetryAppLaunchEvent();
    o.appUninstallEvent =
        buildGoogleChromeManagementV1TelemetryAppUninstallEvent();
    o.audioSevereUnderrunEvent =
        buildGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent();
    o.device = buildGoogleChromeManagementV1TelemetryDeviceInfo();
    o.eventType = 'foo';
    o.externalDisplaysEvent =
        buildGoogleChromeManagementV1TelemetryExternalDisplayEvent();
    o.httpsLatencyChangeEvent =
        buildGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent();
    o.name = 'foo';
    o.networkStateChangeEvent =
        buildGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent();
    o.osCrashEvent = buildGoogleChromeManagementV1TelemetryOsCrashEvent();
    o.reportTime = 'foo';
    o.usbPeripheralsEvent =
        buildGoogleChromeManagementV1TelemetryUsbPeripheralsEvent();
    o.user = buildGoogleChromeManagementV1TelemetryUserInfo();
    o.vpnConnectionStateChangeEvent =
        buildGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent();
    o.wifiSignalStrengthEvent =
        buildGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent();
  }
  buildCounterGoogleChromeManagementV1TelemetryEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryEvent(
  api.GoogleChromeManagementV1TelemetryEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryEvent < 3) {
    checkGoogleChromeManagementV1TelemetryAppInstallEvent(o.appInstallEvent!);
    checkGoogleChromeManagementV1TelemetryAppLaunchEvent(o.appLaunchEvent!);
    checkGoogleChromeManagementV1TelemetryAppUninstallEvent(
      o.appUninstallEvent!,
    );
    checkGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent(
      o.audioSevereUnderrunEvent!,
    );
    checkGoogleChromeManagementV1TelemetryDeviceInfo(o.device!);
    unittest.expect(o.eventType!, unittest.equals('foo'));
    checkGoogleChromeManagementV1TelemetryExternalDisplayEvent(
      o.externalDisplaysEvent!,
    );
    checkGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent(
      o.httpsLatencyChangeEvent!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent(
      o.networkStateChangeEvent!,
    );
    checkGoogleChromeManagementV1TelemetryOsCrashEvent(o.osCrashEvent!);
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    checkGoogleChromeManagementV1TelemetryUsbPeripheralsEvent(
      o.usbPeripheralsEvent!,
    );
    checkGoogleChromeManagementV1TelemetryUserInfo(o.user!);
    checkGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent(
      o.vpnConnectionStateChangeEvent!,
    );
    checkGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent(
      o.wifiSignalStrengthEvent!,
    );
  }
  buildCounterGoogleChromeManagementV1TelemetryEvent--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleChromeManagementV1TelemetryEventNotificationFilter =
    0;
api.GoogleChromeManagementV1TelemetryEventNotificationFilter
buildGoogleChromeManagementV1TelemetryEventNotificationFilter() {
  final o = api.GoogleChromeManagementV1TelemetryEventNotificationFilter();
  buildCounterGoogleChromeManagementV1TelemetryEventNotificationFilter++;
  if (buildCounterGoogleChromeManagementV1TelemetryEventNotificationFilter <
      3) {
    o.eventTypes = buildUnnamed54();
  }
  buildCounterGoogleChromeManagementV1TelemetryEventNotificationFilter--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryEventNotificationFilter(
  api.GoogleChromeManagementV1TelemetryEventNotificationFilter o,
) {
  buildCounterGoogleChromeManagementV1TelemetryEventNotificationFilter++;
  if (buildCounterGoogleChromeManagementV1TelemetryEventNotificationFilter <
      3) {
    checkUnnamed54(o.eventTypes!);
  }
  buildCounterGoogleChromeManagementV1TelemetryEventNotificationFilter--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryExternalDisplayData = 0;
api.GoogleChromeManagementV1TelemetryExternalDisplayData
buildGoogleChromeManagementV1TelemetryExternalDisplayData() {
  final o = api.GoogleChromeManagementV1TelemetryExternalDisplayData();
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayData++;
  if (buildCounterGoogleChromeManagementV1TelemetryExternalDisplayData < 3) {
    o.displayName = 'foo';
    o.edidVersion = 'foo';
    o.refreshRate = 'foo';
    o.resolutionHorizontal = 42;
    o.resolutionVertical = 42;
    o.serialNumber = 42;
  }
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayData--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryExternalDisplayData(
  api.GoogleChromeManagementV1TelemetryExternalDisplayData o,
) {
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayData++;
  if (buildCounterGoogleChromeManagementV1TelemetryExternalDisplayData < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.edidVersion!, unittest.equals('foo'));
    unittest.expect(o.refreshRate!, unittest.equals('foo'));
    unittest.expect(o.resolutionHorizontal!, unittest.equals(42));
    unittest.expect(o.resolutionVertical!, unittest.equals(42));
    unittest.expect(o.serialNumber!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayData--;
}

core.List<api.GoogleChromeManagementV1TelemetryExternalDisplayData>
buildUnnamed55() => [
  buildGoogleChromeManagementV1TelemetryExternalDisplayData(),
  buildGoogleChromeManagementV1TelemetryExternalDisplayData(),
];

void checkUnnamed55(
  core.List<api.GoogleChromeManagementV1TelemetryExternalDisplayData> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1TelemetryExternalDisplayData(o[0]);
  checkGoogleChromeManagementV1TelemetryExternalDisplayData(o[1]);
}

core.int buildCounterGoogleChromeManagementV1TelemetryExternalDisplayEvent = 0;
api.GoogleChromeManagementV1TelemetryExternalDisplayEvent
buildGoogleChromeManagementV1TelemetryExternalDisplayEvent() {
  final o = api.GoogleChromeManagementV1TelemetryExternalDisplayEvent();
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryExternalDisplayEvent < 3) {
    o.externalDisplayData = buildUnnamed55();
  }
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryExternalDisplayEvent(
  api.GoogleChromeManagementV1TelemetryExternalDisplayEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryExternalDisplayEvent < 3) {
    checkUnnamed55(o.externalDisplayData!);
  }
  buildCounterGoogleChromeManagementV1TelemetryExternalDisplayEvent--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent =
    0;
api.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent
buildGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent() {
  final o = api.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent();
  buildCounterGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent <
      3) {
    o.httpsLatencyRoutineData =
        buildGoogleChromeManagementV1HttpsLatencyRoutineData();
    o.httpsLatencyState = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent(
  api.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent <
      3) {
    checkGoogleChromeManagementV1HttpsLatencyRoutineData(
      o.httpsLatencyRoutineData!,
    );
    unittest.expect(o.httpsLatencyState!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent--;
}

core.int
buildCounterGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent =
    0;
api.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent
buildGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent() {
  final o =
      api.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent();
  buildCounterGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent <
      3) {
    o.connectionState = 'foo';
    o.guid = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent(
  api.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent <
      3) {
    unittest.expect(o.connectionState!, unittest.equals('foo'));
    unittest.expect(o.guid!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent--;
}

core.int
buildCounterGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent = 0;
api.GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent
buildGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent() {
  final o = api.GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent();
  buildCounterGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent <
      3) {
    o.guid = 'foo';
    o.signalStrengthDbm = 42;
  }
  buildCounterGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent(
  api.GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent <
      3) {
    unittest.expect(o.guid!, unittest.equals('foo'));
    unittest.expect(o.signalStrengthDbm!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryNotificationConfig = 0;
api.GoogleChromeManagementV1TelemetryNotificationConfig
buildGoogleChromeManagementV1TelemetryNotificationConfig() {
  final o = api.GoogleChromeManagementV1TelemetryNotificationConfig();
  buildCounterGoogleChromeManagementV1TelemetryNotificationConfig++;
  if (buildCounterGoogleChromeManagementV1TelemetryNotificationConfig < 3) {
    o.customer = 'foo';
    o.filter = buildGoogleChromeManagementV1TelemetryNotificationFilter();
    o.googleCloudPubsubTopic = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryNotificationConfig--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryNotificationConfig(
  api.GoogleChromeManagementV1TelemetryNotificationConfig o,
) {
  buildCounterGoogleChromeManagementV1TelemetryNotificationConfig++;
  if (buildCounterGoogleChromeManagementV1TelemetryNotificationConfig < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    checkGoogleChromeManagementV1TelemetryNotificationFilter(o.filter!);
    unittest.expect(o.googleCloudPubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryNotificationConfig--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryNotificationFilter = 0;
api.GoogleChromeManagementV1TelemetryNotificationFilter
buildGoogleChromeManagementV1TelemetryNotificationFilter() {
  final o = api.GoogleChromeManagementV1TelemetryNotificationFilter();
  buildCounterGoogleChromeManagementV1TelemetryNotificationFilter++;
  if (buildCounterGoogleChromeManagementV1TelemetryNotificationFilter < 3) {
    o.deviceId = 'foo';
    o.deviceOrgUnitId = 'foo';
    o.telemetryEventNotificationFilter =
        buildGoogleChromeManagementV1TelemetryEventNotificationFilter();
    o.userEmail = 'foo';
    o.userOrgUnitId = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryNotificationFilter--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryNotificationFilter(
  api.GoogleChromeManagementV1TelemetryNotificationFilter o,
) {
  buildCounterGoogleChromeManagementV1TelemetryNotificationFilter++;
  if (buildCounterGoogleChromeManagementV1TelemetryNotificationFilter < 3) {
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    unittest.expect(o.deviceOrgUnitId!, unittest.equals('foo'));
    checkGoogleChromeManagementV1TelemetryEventNotificationFilter(
      o.telemetryEventNotificationFilter!,
    );
    unittest.expect(o.userEmail!, unittest.equals('foo'));
    unittest.expect(o.userOrgUnitId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryNotificationFilter--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryOsCrashEvent = 0;
api.GoogleChromeManagementV1TelemetryOsCrashEvent
buildGoogleChromeManagementV1TelemetryOsCrashEvent() {
  final o = api.GoogleChromeManagementV1TelemetryOsCrashEvent();
  buildCounterGoogleChromeManagementV1TelemetryOsCrashEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryOsCrashEvent < 3) {
    o.crashId = 'foo';
    o.crashType = 'foo';
    o.sessionType = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryOsCrashEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryOsCrashEvent(
  api.GoogleChromeManagementV1TelemetryOsCrashEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryOsCrashEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryOsCrashEvent < 3) {
    unittest.expect(o.crashId!, unittest.equals('foo'));
    unittest.expect(o.crashType!, unittest.equals('foo'));
    unittest.expect(o.sessionType!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryOsCrashEvent--;
}

core.List<api.GoogleChromeManagementV1UsbPeripheralReport> buildUnnamed56() => [
  buildGoogleChromeManagementV1UsbPeripheralReport(),
  buildGoogleChromeManagementV1UsbPeripheralReport(),
];

void checkUnnamed56(
  core.List<api.GoogleChromeManagementV1UsbPeripheralReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1UsbPeripheralReport(o[0]);
  checkGoogleChromeManagementV1UsbPeripheralReport(o[1]);
}

core.int buildCounterGoogleChromeManagementV1TelemetryUsbPeripheralsEvent = 0;
api.GoogleChromeManagementV1TelemetryUsbPeripheralsEvent
buildGoogleChromeManagementV1TelemetryUsbPeripheralsEvent() {
  final o = api.GoogleChromeManagementV1TelemetryUsbPeripheralsEvent();
  buildCounterGoogleChromeManagementV1TelemetryUsbPeripheralsEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryUsbPeripheralsEvent < 3) {
    o.usbPeripheralReport = buildUnnamed56();
  }
  buildCounterGoogleChromeManagementV1TelemetryUsbPeripheralsEvent--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryUsbPeripheralsEvent(
  api.GoogleChromeManagementV1TelemetryUsbPeripheralsEvent o,
) {
  buildCounterGoogleChromeManagementV1TelemetryUsbPeripheralsEvent++;
  if (buildCounterGoogleChromeManagementV1TelemetryUsbPeripheralsEvent < 3) {
    checkUnnamed56(o.usbPeripheralReport!);
  }
  buildCounterGoogleChromeManagementV1TelemetryUsbPeripheralsEvent--;
}

core.List<api.GoogleChromeManagementV1TelemetryUserDevice> buildUnnamed57() => [
  buildGoogleChromeManagementV1TelemetryUserDevice(),
  buildGoogleChromeManagementV1TelemetryUserDevice(),
];

void checkUnnamed57(
  core.List<api.GoogleChromeManagementV1TelemetryUserDevice> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1TelemetryUserDevice(o[0]);
  checkGoogleChromeManagementV1TelemetryUserDevice(o[1]);
}

core.int buildCounterGoogleChromeManagementV1TelemetryUser = 0;
api.GoogleChromeManagementV1TelemetryUser
buildGoogleChromeManagementV1TelemetryUser() {
  final o = api.GoogleChromeManagementV1TelemetryUser();
  buildCounterGoogleChromeManagementV1TelemetryUser++;
  if (buildCounterGoogleChromeManagementV1TelemetryUser < 3) {
    o.customer = 'foo';
    o.name = 'foo';
    o.orgUnitId = 'foo';
    o.userDevice = buildUnnamed57();
    o.userEmail = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryUser--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryUser(
  api.GoogleChromeManagementV1TelemetryUser o,
) {
  buildCounterGoogleChromeManagementV1TelemetryUser++;
  if (buildCounterGoogleChromeManagementV1TelemetryUser < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.orgUnitId!, unittest.equals('foo'));
    checkUnnamed57(o.userDevice!);
    unittest.expect(o.userEmail!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryUser--;
}

core.List<api.GoogleChromeManagementV1AppReport> buildUnnamed58() => [
  buildGoogleChromeManagementV1AppReport(),
  buildGoogleChromeManagementV1AppReport(),
];

void checkUnnamed58(core.List<api.GoogleChromeManagementV1AppReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1AppReport(o[0]);
  checkGoogleChromeManagementV1AppReport(o[1]);
}

core.List<api.GoogleChromeManagementV1AudioStatusReport> buildUnnamed59() => [
  buildGoogleChromeManagementV1AudioStatusReport(),
  buildGoogleChromeManagementV1AudioStatusReport(),
];

void checkUnnamed59(
  core.List<api.GoogleChromeManagementV1AudioStatusReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1AudioStatusReport(o[0]);
  checkGoogleChromeManagementV1AudioStatusReport(o[1]);
}

core.List<api.GoogleChromeManagementV1DeviceActivityReport> buildUnnamed60() =>
    [
      buildGoogleChromeManagementV1DeviceActivityReport(),
      buildGoogleChromeManagementV1DeviceActivityReport(),
    ];

void checkUnnamed60(
  core.List<api.GoogleChromeManagementV1DeviceActivityReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1DeviceActivityReport(o[0]);
  checkGoogleChromeManagementV1DeviceActivityReport(o[1]);
}

core.List<api.GoogleChromeManagementV1NetworkBandwidthReport>
buildUnnamed61() => [
  buildGoogleChromeManagementV1NetworkBandwidthReport(),
  buildGoogleChromeManagementV1NetworkBandwidthReport(),
];

void checkUnnamed61(
  core.List<api.GoogleChromeManagementV1NetworkBandwidthReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1NetworkBandwidthReport(o[0]);
  checkGoogleChromeManagementV1NetworkBandwidthReport(o[1]);
}

core.List<api.GoogleChromeManagementV1PeripheralsReport> buildUnnamed62() => [
  buildGoogleChromeManagementV1PeripheralsReport(),
  buildGoogleChromeManagementV1PeripheralsReport(),
];

void checkUnnamed62(
  core.List<api.GoogleChromeManagementV1PeripheralsReport> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1PeripheralsReport(o[0]);
  checkGoogleChromeManagementV1PeripheralsReport(o[1]);
}

core.int buildCounterGoogleChromeManagementV1TelemetryUserDevice = 0;
api.GoogleChromeManagementV1TelemetryUserDevice
buildGoogleChromeManagementV1TelemetryUserDevice() {
  final o = api.GoogleChromeManagementV1TelemetryUserDevice();
  buildCounterGoogleChromeManagementV1TelemetryUserDevice++;
  if (buildCounterGoogleChromeManagementV1TelemetryUserDevice < 3) {
    o.appReport = buildUnnamed58();
    o.audioStatusReport = buildUnnamed59();
    o.deviceActivityReport = buildUnnamed60();
    o.deviceId = 'foo';
    o.networkBandwidthReport = buildUnnamed61();
    o.peripheralsReport = buildUnnamed62();
  }
  buildCounterGoogleChromeManagementV1TelemetryUserDevice--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryUserDevice(
  api.GoogleChromeManagementV1TelemetryUserDevice o,
) {
  buildCounterGoogleChromeManagementV1TelemetryUserDevice++;
  if (buildCounterGoogleChromeManagementV1TelemetryUserDevice < 3) {
    checkUnnamed58(o.appReport!);
    checkUnnamed59(o.audioStatusReport!);
    checkUnnamed60(o.deviceActivityReport!);
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    checkUnnamed61(o.networkBandwidthReport!);
    checkUnnamed62(o.peripheralsReport!);
  }
  buildCounterGoogleChromeManagementV1TelemetryUserDevice--;
}

core.int buildCounterGoogleChromeManagementV1TelemetryUserInfo = 0;
api.GoogleChromeManagementV1TelemetryUserInfo
buildGoogleChromeManagementV1TelemetryUserInfo() {
  final o = api.GoogleChromeManagementV1TelemetryUserInfo();
  buildCounterGoogleChromeManagementV1TelemetryUserInfo++;
  if (buildCounterGoogleChromeManagementV1TelemetryUserInfo < 3) {
    o.email = 'foo';
    o.orgUnitId = 'foo';
  }
  buildCounterGoogleChromeManagementV1TelemetryUserInfo--;
  return o;
}

void checkGoogleChromeManagementV1TelemetryUserInfo(
  api.GoogleChromeManagementV1TelemetryUserInfo o,
) {
  buildCounterGoogleChromeManagementV1TelemetryUserInfo++;
  if (buildCounterGoogleChromeManagementV1TelemetryUserInfo < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.orgUnitId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TelemetryUserInfo--;
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
  api.GoogleChromeManagementV1ThunderboltInfo o,
) {
  buildCounterGoogleChromeManagementV1ThunderboltInfo++;
  if (buildCounterGoogleChromeManagementV1ThunderboltInfo < 3) {
    unittest.expect(o.securityLevel!, unittest.equals('foo'));
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
  api.GoogleChromeManagementV1TotalMemoryEncryptionInfo o,
) {
  buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo++;
  if (buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo < 3) {
    unittest.expect(o.encryptionAlgorithm!, unittest.equals('foo'));
    unittest.expect(o.encryptionState!, unittest.equals('foo'));
    unittest.expect(o.keyLength!, unittest.equals('foo'));
    unittest.expect(o.maxKeys!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TotalMemoryEncryptionInfo--;
}

core.int buildCounterGoogleChromeManagementV1TouchScreenDevice = 0;
api.GoogleChromeManagementV1TouchScreenDevice
buildGoogleChromeManagementV1TouchScreenDevice() {
  final o = api.GoogleChromeManagementV1TouchScreenDevice();
  buildCounterGoogleChromeManagementV1TouchScreenDevice++;
  if (buildCounterGoogleChromeManagementV1TouchScreenDevice < 3) {
    o.displayName = 'foo';
    o.stylusCapable = true;
    o.touchPointCount = 42;
  }
  buildCounterGoogleChromeManagementV1TouchScreenDevice--;
  return o;
}

void checkGoogleChromeManagementV1TouchScreenDevice(
  api.GoogleChromeManagementV1TouchScreenDevice o,
) {
  buildCounterGoogleChromeManagementV1TouchScreenDevice++;
  if (buildCounterGoogleChromeManagementV1TouchScreenDevice < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.stylusCapable!, unittest.isTrue);
    unittest.expect(o.touchPointCount!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1TouchScreenDevice--;
}

core.List<api.GoogleChromeManagementV1TouchScreenDevice> buildUnnamed63() => [
  buildGoogleChromeManagementV1TouchScreenDevice(),
  buildGoogleChromeManagementV1TouchScreenDevice(),
];

void checkUnnamed63(
  core.List<api.GoogleChromeManagementV1TouchScreenDevice> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementV1TouchScreenDevice(o[0]);
  checkGoogleChromeManagementV1TouchScreenDevice(o[1]);
}

core.int buildCounterGoogleChromeManagementV1TouchScreenInfo = 0;
api.GoogleChromeManagementV1TouchScreenInfo
buildGoogleChromeManagementV1TouchScreenInfo() {
  final o = api.GoogleChromeManagementV1TouchScreenInfo();
  buildCounterGoogleChromeManagementV1TouchScreenInfo++;
  if (buildCounterGoogleChromeManagementV1TouchScreenInfo < 3) {
    o.devices = buildUnnamed63();
    o.touchpadLibrary = 'foo';
  }
  buildCounterGoogleChromeManagementV1TouchScreenInfo--;
  return o;
}

void checkGoogleChromeManagementV1TouchScreenInfo(
  api.GoogleChromeManagementV1TouchScreenInfo o,
) {
  buildCounterGoogleChromeManagementV1TouchScreenInfo++;
  if (buildCounterGoogleChromeManagementV1TouchScreenInfo < 3) {
    checkUnnamed63(o.devices!);
    unittest.expect(o.touchpadLibrary!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1TouchScreenInfo--;
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleChromeManagementV1UsbPeripheralReport = 0;
api.GoogleChromeManagementV1UsbPeripheralReport
buildGoogleChromeManagementV1UsbPeripheralReport() {
  final o = api.GoogleChromeManagementV1UsbPeripheralReport();
  buildCounterGoogleChromeManagementV1UsbPeripheralReport++;
  if (buildCounterGoogleChromeManagementV1UsbPeripheralReport < 3) {
    o.categories = buildUnnamed64();
    o.classId = 42;
    o.firmwareVersion = 'foo';
    o.name = 'foo';
    o.pid = 42;
    o.subclassId = 42;
    o.vendor = 'foo';
    o.vid = 42;
  }
  buildCounterGoogleChromeManagementV1UsbPeripheralReport--;
  return o;
}

void checkGoogleChromeManagementV1UsbPeripheralReport(
  api.GoogleChromeManagementV1UsbPeripheralReport o,
) {
  buildCounterGoogleChromeManagementV1UsbPeripheralReport++;
  if (buildCounterGoogleChromeManagementV1UsbPeripheralReport < 3) {
    checkUnnamed64(o.categories!);
    unittest.expect(o.classId!, unittest.equals(42));
    unittest.expect(o.firmwareVersion!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pid!, unittest.equals(42));
    unittest.expect(o.subclassId!, unittest.equals(42));
    unittest.expect(o.vendor!, unittest.equals('foo'));
    unittest.expect(o.vid!, unittest.equals(42));
  }
  buildCounterGoogleChromeManagementV1UsbPeripheralReport--;
}

core.int buildCounterGoogleChromeManagementV1UserPrintReport = 0;
api.GoogleChromeManagementV1UserPrintReport
buildGoogleChromeManagementV1UserPrintReport() {
  final o = api.GoogleChromeManagementV1UserPrintReport();
  buildCounterGoogleChromeManagementV1UserPrintReport++;
  if (buildCounterGoogleChromeManagementV1UserPrintReport < 3) {
    o.deviceCount = 'foo';
    o.jobCount = 'foo';
    o.printerCount = 'foo';
    o.userEmail = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleChromeManagementV1UserPrintReport--;
  return o;
}

void checkGoogleChromeManagementV1UserPrintReport(
  api.GoogleChromeManagementV1UserPrintReport o,
) {
  buildCounterGoogleChromeManagementV1UserPrintReport++;
  if (buildCounterGoogleChromeManagementV1UserPrintReport < 3) {
    unittest.expect(o.deviceCount!, unittest.equals('foo'));
    unittest.expect(o.jobCount!, unittest.equals('foo'));
    unittest.expect(o.printerCount!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1UserPrintReport--;
}

core.int buildCounterGoogleChromeManagementV1UserRequestingExtensionDetails = 0;
api.GoogleChromeManagementV1UserRequestingExtensionDetails
buildGoogleChromeManagementV1UserRequestingExtensionDetails() {
  final o = api.GoogleChromeManagementV1UserRequestingExtensionDetails();
  buildCounterGoogleChromeManagementV1UserRequestingExtensionDetails++;
  if (buildCounterGoogleChromeManagementV1UserRequestingExtensionDetails < 3) {
    o.email = 'foo';
    o.justification = 'foo';
  }
  buildCounterGoogleChromeManagementV1UserRequestingExtensionDetails--;
  return o;
}

void checkGoogleChromeManagementV1UserRequestingExtensionDetails(
  api.GoogleChromeManagementV1UserRequestingExtensionDetails o,
) {
  buildCounterGoogleChromeManagementV1UserRequestingExtensionDetails++;
  if (buildCounterGoogleChromeManagementV1UserRequestingExtensionDetails < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.justification!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementV1UserRequestingExtensionDetails--;
}

core.int buildCounterGoogleChromeManagementVersionsV1AttestationCredential = 0;
api.GoogleChromeManagementVersionsV1AttestationCredential
buildGoogleChromeManagementVersionsV1AttestationCredential() {
  final o = api.GoogleChromeManagementVersionsV1AttestationCredential();
  buildCounterGoogleChromeManagementVersionsV1AttestationCredential++;
  if (buildCounterGoogleChromeManagementVersionsV1AttestationCredential < 3) {
    o.keyRotationTime = 'foo';
    o.keyTrustLevel = 'foo';
    o.keyType = 'foo';
    o.publicKey = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1AttestationCredential--;
  return o;
}

void checkGoogleChromeManagementVersionsV1AttestationCredential(
  api.GoogleChromeManagementVersionsV1AttestationCredential o,
) {
  buildCounterGoogleChromeManagementVersionsV1AttestationCredential++;
  if (buildCounterGoogleChromeManagementVersionsV1AttestationCredential < 3) {
    unittest.expect(o.keyRotationTime!, unittest.equals('foo'));
    unittest.expect(o.keyTrustLevel!, unittest.equals('foo'));
    unittest.expect(o.keyType!, unittest.equals('foo'));
    unittest.expect(o.publicKey!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1AttestationCredential--;
}

core.int
buildCounterGoogleChromeManagementVersionsV1CertificateProvisioningProcess = 0;
api.GoogleChromeManagementVersionsV1CertificateProvisioningProcess
buildGoogleChromeManagementVersionsV1CertificateProvisioningProcess() {
  final o =
      api.GoogleChromeManagementVersionsV1CertificateProvisioningProcess();
  buildCounterGoogleChromeManagementVersionsV1CertificateProvisioningProcess++;
  if (buildCounterGoogleChromeManagementVersionsV1CertificateProvisioningProcess <
      3) {
    o.chromeOsDevice = buildGoogleChromeManagementVersionsV1ChromeOsDevice();
    o.chromeOsUserSession =
        buildGoogleChromeManagementVersionsV1ChromeOsUserSession();
    o.failureMessage = 'foo';
    o.genericCaConnection =
        buildGoogleChromeManagementVersionsV1GenericCaConnection();
    o.genericProfile = buildGoogleChromeManagementVersionsV1GenericProfile();
    o.issuedCertificate = 'foo';
    o.name = 'foo';
    o.provisioningProfileId = 'foo';
    o.scepCaConnection =
        buildGoogleChromeManagementVersionsV1ScepCaConnection();
    o.scepProfile = buildGoogleChromeManagementVersionsV1ScepProfile();
    o.signData = 'foo';
    o.signature = 'foo';
    o.signatureAlgorithm = 'foo';
    o.startTime = 'foo';
    o.subjectPublicKeyInfo = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1CertificateProvisioningProcess--;
  return o;
}

void checkGoogleChromeManagementVersionsV1CertificateProvisioningProcess(
  api.GoogleChromeManagementVersionsV1CertificateProvisioningProcess o,
) {
  buildCounterGoogleChromeManagementVersionsV1CertificateProvisioningProcess++;
  if (buildCounterGoogleChromeManagementVersionsV1CertificateProvisioningProcess <
      3) {
    checkGoogleChromeManagementVersionsV1ChromeOsDevice(o.chromeOsDevice!);
    checkGoogleChromeManagementVersionsV1ChromeOsUserSession(
      o.chromeOsUserSession!,
    );
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
    checkGoogleChromeManagementVersionsV1GenericCaConnection(
      o.genericCaConnection!,
    );
    checkGoogleChromeManagementVersionsV1GenericProfile(o.genericProfile!);
    unittest.expect(o.issuedCertificate!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.provisioningProfileId!, unittest.equals('foo'));
    checkGoogleChromeManagementVersionsV1ScepCaConnection(o.scepCaConnection!);
    checkGoogleChromeManagementVersionsV1ScepProfile(o.scepProfile!);
    unittest.expect(o.signData!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
    unittest.expect(o.signatureAlgorithm!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.subjectPublicKeyInfo!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1CertificateProvisioningProcess--;
}

core.int buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfile = 0;
api.GoogleChromeManagementVersionsV1ChromeBrowserProfile
buildGoogleChromeManagementVersionsV1ChromeBrowserProfile() {
  final o = api.GoogleChromeManagementVersionsV1ChromeBrowserProfile();
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfile++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfile < 3) {
    o.affiliationState = 'foo';
    o.annotatedLocation = 'foo';
    o.annotatedUser = 'foo';
    o.attestationCredential =
        buildGoogleChromeManagementVersionsV1AttestationCredential();
    o.browserChannel = 'foo';
    o.browserVersion = 'foo';
    o.deviceInfo = buildGoogleChromeManagementVersionsV1DeviceInfo();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.extensionCount = 'foo';
    o.firstEnrollmentTime = 'foo';
    o.identityProvider = 'foo';
    o.lastActivityTime = 'foo';
    o.lastPolicyFetchTime = 'foo';
    o.lastPolicySyncTime = 'foo';
    o.lastStatusReportTime = 'foo';
    o.name = 'foo';
    o.osPlatformType = 'foo';
    o.osPlatformVersion = 'foo';
    o.osVersion = 'foo';
    o.policyCount = 'foo';
    o.profileId = 'foo';
    o.profilePermanentId = 'foo';
    o.reportingData = buildGoogleChromeManagementVersionsV1ReportingData();
    o.supportsFcmNotifications = true;
    o.userEmail = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfile--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ChromeBrowserProfile(
  api.GoogleChromeManagementVersionsV1ChromeBrowserProfile o,
) {
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfile++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfile < 3) {
    unittest.expect(o.affiliationState!, unittest.equals('foo'));
    unittest.expect(o.annotatedLocation!, unittest.equals('foo'));
    unittest.expect(o.annotatedUser!, unittest.equals('foo'));
    checkGoogleChromeManagementVersionsV1AttestationCredential(
      o.attestationCredential!,
    );
    unittest.expect(o.browserChannel!, unittest.equals('foo'));
    unittest.expect(o.browserVersion!, unittest.equals('foo'));
    checkGoogleChromeManagementVersionsV1DeviceInfo(o.deviceInfo!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.extensionCount!, unittest.equals('foo'));
    unittest.expect(o.firstEnrollmentTime!, unittest.equals('foo'));
    unittest.expect(o.identityProvider!, unittest.equals('foo'));
    unittest.expect(o.lastActivityTime!, unittest.equals('foo'));
    unittest.expect(o.lastPolicyFetchTime!, unittest.equals('foo'));
    unittest.expect(o.lastPolicySyncTime!, unittest.equals('foo'));
    unittest.expect(o.lastStatusReportTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.osPlatformType!, unittest.equals('foo'));
    unittest.expect(o.osPlatformVersion!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
    unittest.expect(o.policyCount!, unittest.equals('foo'));
    unittest.expect(o.profileId!, unittest.equals('foo'));
    unittest.expect(o.profilePermanentId!, unittest.equals('foo'));
    checkGoogleChromeManagementVersionsV1ReportingData(o.reportingData!);
    unittest.expect(o.supportsFcmNotifications!, unittest.isTrue);
    unittest.expect(o.userEmail!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfile--;
}

core.Map<core.String, core.Object?> buildUnnamed65() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed65(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int
buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand = 0;
api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand
buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand() {
  final o = api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand();
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand <
      3) {
    o.commandResult =
        buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult();
    o.commandState = 'foo';
    o.commandType = 'foo';
    o.issueTime = 'foo';
    o.name = 'foo';
    o.payload = buildUnnamed65();
    o.validDuration = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(
  api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand o,
) {
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand <
      3) {
    checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult(
      o.commandResult!,
    );
    unittest.expect(o.commandState!, unittest.equals('foo'));
    unittest.expect(o.commandType!, unittest.equals('foo'));
    unittest.expect(o.issueTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed65(o.payload!);
    unittest.expect(o.validDuration!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand--;
}

core.int
buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult =
    0;
api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult
buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult() {
  final o =
      api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult();
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult <
      3) {
    o.clientExecutionTime = 'foo';
    o.resultCode = 'foo';
    o.resultType = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult--;
  return o;
}

void
checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult(
  api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult
  o,
) {
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult <
      3) {
    unittest.expect(o.clientExecutionTime!, unittest.equals('foo'));
    unittest.expect(o.resultCode!, unittest.equals('foo'));
    unittest.expect(o.resultType!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult--;
}

core.int buildCounterGoogleChromeManagementVersionsV1ChromeOsDevice = 0;
api.GoogleChromeManagementVersionsV1ChromeOsDevice
buildGoogleChromeManagementVersionsV1ChromeOsDevice() {
  final o = api.GoogleChromeManagementVersionsV1ChromeOsDevice();
  buildCounterGoogleChromeManagementVersionsV1ChromeOsDevice++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeOsDevice < 3) {
    o.deviceDirectoryApiId = 'foo';
    o.serialNumber = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeOsDevice--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ChromeOsDevice(
  api.GoogleChromeManagementVersionsV1ChromeOsDevice o,
) {
  buildCounterGoogleChromeManagementVersionsV1ChromeOsDevice++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeOsDevice < 3) {
    unittest.expect(o.deviceDirectoryApiId!, unittest.equals('foo'));
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeOsDevice--;
}

core.int buildCounterGoogleChromeManagementVersionsV1ChromeOsUserSession = 0;
api.GoogleChromeManagementVersionsV1ChromeOsUserSession
buildGoogleChromeManagementVersionsV1ChromeOsUserSession() {
  final o = api.GoogleChromeManagementVersionsV1ChromeOsUserSession();
  buildCounterGoogleChromeManagementVersionsV1ChromeOsUserSession++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeOsUserSession < 3) {
    o.chromeOsDevice = buildGoogleChromeManagementVersionsV1ChromeOsDevice();
    o.userDirectoryApiId = 'foo';
    o.userPrimaryEmail = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeOsUserSession--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ChromeOsUserSession(
  api.GoogleChromeManagementVersionsV1ChromeOsUserSession o,
) {
  buildCounterGoogleChromeManagementVersionsV1ChromeOsUserSession++;
  if (buildCounterGoogleChromeManagementVersionsV1ChromeOsUserSession < 3) {
    checkGoogleChromeManagementVersionsV1ChromeOsDevice(o.chromeOsDevice!);
    unittest.expect(o.userDirectoryApiId!, unittest.equals('foo'));
    unittest.expect(o.userPrimaryEmail!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ChromeOsUserSession--;
}

core.int
buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest =
    0;
api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest
buildGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest() {
  final o =
      api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest();
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest <
      3) {
    o.callerInstanceId = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest--;
  return o;
}

void
checkGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest(
  api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest
  o,
) {
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest <
      3) {
    unittest.expect(o.callerInstanceId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest--;
}

core.int
buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse =
    0;
api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
buildGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse() {
  final o =
      api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse();
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse <
      3) {}
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse--;
  return o;
}

void
checkGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse(
  api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
  o,
) {
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse <
      3) {}
  buildCounterGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse--;
}

core.int buildCounterGoogleChromeManagementVersionsV1DeviceInfo = 0;
api.GoogleChromeManagementVersionsV1DeviceInfo
buildGoogleChromeManagementVersionsV1DeviceInfo() {
  final o = api.GoogleChromeManagementVersionsV1DeviceInfo();
  buildCounterGoogleChromeManagementVersionsV1DeviceInfo++;
  if (buildCounterGoogleChromeManagementVersionsV1DeviceInfo < 3) {
    o.affiliatedDeviceId = 'foo';
    o.deviceType = 'foo';
    o.hostname = 'foo';
    o.machine = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1DeviceInfo--;
  return o;
}

void checkGoogleChromeManagementVersionsV1DeviceInfo(
  api.GoogleChromeManagementVersionsV1DeviceInfo o,
) {
  buildCounterGoogleChromeManagementVersionsV1DeviceInfo++;
  if (buildCounterGoogleChromeManagementVersionsV1DeviceInfo < 3) {
    unittest.expect(o.affiliatedDeviceId!, unittest.equals('foo'));
    unittest.expect(o.deviceType!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.machine!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1DeviceInfo--;
}

core.int buildCounterGoogleChromeManagementVersionsV1GenericCaConnection = 0;
api.GoogleChromeManagementVersionsV1GenericCaConnection
buildGoogleChromeManagementVersionsV1GenericCaConnection() {
  final o = api.GoogleChromeManagementVersionsV1GenericCaConnection();
  buildCounterGoogleChromeManagementVersionsV1GenericCaConnection++;
  if (buildCounterGoogleChromeManagementVersionsV1GenericCaConnection < 3) {
    o.caConnectionAdapterConfigReference = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1GenericCaConnection--;
  return o;
}

void checkGoogleChromeManagementVersionsV1GenericCaConnection(
  api.GoogleChromeManagementVersionsV1GenericCaConnection o,
) {
  buildCounterGoogleChromeManagementVersionsV1GenericCaConnection++;
  if (buildCounterGoogleChromeManagementVersionsV1GenericCaConnection < 3) {
    unittest.expect(
      o.caConnectionAdapterConfigReference!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementVersionsV1GenericCaConnection--;
}

core.int buildCounterGoogleChromeManagementVersionsV1GenericProfile = 0;
api.GoogleChromeManagementVersionsV1GenericProfile
buildGoogleChromeManagementVersionsV1GenericProfile() {
  final o = api.GoogleChromeManagementVersionsV1GenericProfile();
  buildCounterGoogleChromeManagementVersionsV1GenericProfile++;
  if (buildCounterGoogleChromeManagementVersionsV1GenericProfile < 3) {
    o.profileAdapterConfigReference = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1GenericProfile--;
  return o;
}

void checkGoogleChromeManagementVersionsV1GenericProfile(
  api.GoogleChromeManagementVersionsV1GenericProfile o,
) {
  buildCounterGoogleChromeManagementVersionsV1GenericProfile++;
  if (buildCounterGoogleChromeManagementVersionsV1GenericProfile < 3) {
    unittest.expect(o.profileAdapterConfigReference!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1GenericProfile--;
}

core.List<api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand>
buildUnnamed66() => [
  buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(),
  buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(),
];

void checkUnnamed66(
  core.List<api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(o[0]);
  checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(o[1]);
}

core.int
buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse =
    0;
api.GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse
buildGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse() {
  final o =
      api.GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse();
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse <
      3) {
    o.chromeBrowserProfileCommands = buildUnnamed66();
    o.nextPageToken = 'foo';
    o.totalSize = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse--;
  return o;
}

void
checkGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse(
  api.GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse
  o,
) {
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse <
      3) {
    checkUnnamed66(o.chromeBrowserProfileCommands!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse--;
}

core.List<api.GoogleChromeManagementVersionsV1ChromeBrowserProfile>
buildUnnamed67() => [
  buildGoogleChromeManagementVersionsV1ChromeBrowserProfile(),
  buildGoogleChromeManagementVersionsV1ChromeBrowserProfile(),
];

void checkUnnamed67(
  core.List<api.GoogleChromeManagementVersionsV1ChromeBrowserProfile> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1ChromeBrowserProfile(o[0]);
  checkGoogleChromeManagementVersionsV1ChromeBrowserProfile(o[1]);
}

core.int
buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse =
    0;
api.GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse
buildGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse() {
  final o =
      api.GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse();
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse <
      3) {
    o.chromeBrowserProfiles = buildUnnamed67();
    o.nextPageToken = 'foo';
    o.totalSize = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse(
  api.GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse o,
) {
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse <
      3) {
    checkUnnamed67(o.chromeBrowserProfiles!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse--;
}

core.int
buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest =
    0;
api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest
buildGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest() {
  final o =
      api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest();
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest <
      3) {
    o.destinationOrgUnit = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest--;
  return o;
}

void checkGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest(
  api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest o,
) {
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest <
      3) {
    unittest.expect(o.destinationOrgUnit!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest--;
}

core.int
buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse =
    0;
api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse
buildGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse() {
  final o =
      api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse();
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse <
      3) {
    o.thirdPartyProfileUser =
        buildGoogleChromeManagementVersionsV1ThirdPartyProfileUser();
  }
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse--;
  return o;
}

void checkGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse(
  api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse o,
) {
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse <
      3) {
    checkGoogleChromeManagementVersionsV1ThirdPartyProfileUser(
      o.thirdPartyProfileUser!,
    );
  }
  buildCounterGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse--;
}

core.List<api.GoogleChromeManagementVersionsV1ReportingDataExtensionData>
buildUnnamed68() => [
  buildGoogleChromeManagementVersionsV1ReportingDataExtensionData(),
  buildGoogleChromeManagementVersionsV1ReportingDataExtensionData(),
];

void checkUnnamed68(
  core.List<api.GoogleChromeManagementVersionsV1ReportingDataExtensionData> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1ReportingDataExtensionData(o[0]);
  checkGoogleChromeManagementVersionsV1ReportingDataExtensionData(o[1]);
}

core.List<api.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData>
buildUnnamed69() => [
  buildGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData(),
  buildGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData(),
];

void checkUnnamed69(
  core.List<
    api.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData(o[0]);
  checkGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData(o[1]);
}

core.List<api.GoogleChromeManagementVersionsV1ReportingDataPolicyData>
buildUnnamed70() => [
  buildGoogleChromeManagementVersionsV1ReportingDataPolicyData(),
  buildGoogleChromeManagementVersionsV1ReportingDataPolicyData(),
];

void checkUnnamed70(
  core.List<api.GoogleChromeManagementVersionsV1ReportingDataPolicyData> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1ReportingDataPolicyData(o[0]);
  checkGoogleChromeManagementVersionsV1ReportingDataPolicyData(o[1]);
}

core.int buildCounterGoogleChromeManagementVersionsV1ReportingData = 0;
api.GoogleChromeManagementVersionsV1ReportingData
buildGoogleChromeManagementVersionsV1ReportingData() {
  final o = api.GoogleChromeManagementVersionsV1ReportingData();
  buildCounterGoogleChromeManagementVersionsV1ReportingData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingData < 3) {
    o.browserExecutablePath = 'foo';
    o.extensionData = buildUnnamed68();
    o.extensionPolicyData = buildUnnamed69();
    o.installedBrowserVersion = 'foo';
    o.policyData = buildUnnamed70();
    o.profilePath = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingData--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ReportingData(
  api.GoogleChromeManagementVersionsV1ReportingData o,
) {
  buildCounterGoogleChromeManagementVersionsV1ReportingData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingData < 3) {
    unittest.expect(o.browserExecutablePath!, unittest.equals('foo'));
    checkUnnamed68(o.extensionData!);
    checkUnnamed69(o.extensionPolicyData!);
    unittest.expect(o.installedBrowserVersion!, unittest.equals('foo'));
    checkUnnamed70(o.policyData!);
    unittest.expect(o.profilePath!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingData--;
}

core.int
buildCounterGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData =
    0;
api.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData
buildGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData() {
  final o =
      api.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData();
  buildCounterGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData <
      3) {
    o.source = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData(
  api.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData o,
) {
  buildCounterGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData <
      3) {
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData--;
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionData = 0;
api.GoogleChromeManagementVersionsV1ReportingDataExtensionData
buildGoogleChromeManagementVersionsV1ReportingDataExtensionData() {
  final o = api.GoogleChromeManagementVersionsV1ReportingDataExtensionData();
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionData <
      3) {
    o.description = 'foo';
    o.extensionId = 'foo';
    o.extensionType = 'foo';
    o.homepageUri = 'foo';
    o.installationType = 'foo';
    o.isDisabled = true;
    o.isWebstoreExtension = true;
    o.manifestVersion = 42;
    o.name = 'foo';
    o.permissions = buildUnnamed71();
    o.version = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionData--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ReportingDataExtensionData(
  api.GoogleChromeManagementVersionsV1ReportingDataExtensionData o,
) {
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionData <
      3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.extensionId!, unittest.equals('foo'));
    unittest.expect(o.extensionType!, unittest.equals('foo'));
    unittest.expect(o.homepageUri!, unittest.equals('foo'));
    unittest.expect(o.installationType!, unittest.equals('foo'));
    unittest.expect(o.isDisabled!, unittest.isTrue);
    unittest.expect(o.isWebstoreExtension!, unittest.isTrue);
    unittest.expect(o.manifestVersion!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed71(o.permissions!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionData--;
}

core.List<api.GoogleChromeManagementVersionsV1ReportingDataPolicyData>
buildUnnamed72() => [
  buildGoogleChromeManagementVersionsV1ReportingDataPolicyData(),
  buildGoogleChromeManagementVersionsV1ReportingDataPolicyData(),
];

void checkUnnamed72(
  core.List<api.GoogleChromeManagementVersionsV1ReportingDataPolicyData> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1ReportingDataPolicyData(o[0]);
  checkGoogleChromeManagementVersionsV1ReportingDataPolicyData(o[1]);
}

core.int
buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData =
    0;
api.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData
buildGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData() {
  final o =
      api.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData();
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData <
      3) {
    o.extensionId = 'foo';
    o.extensionName = 'foo';
    o.policyData = buildUnnamed72();
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData(
  api.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData o,
) {
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData <
      3) {
    unittest.expect(o.extensionId!, unittest.equals('foo'));
    unittest.expect(o.extensionName!, unittest.equals('foo'));
    checkUnnamed72(o.policyData!);
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData--;
}

core.List<
  api.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData
>
buildUnnamed73() => [
  buildGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData(),
  buildGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData(),
];

void checkUnnamed73(
  core.List<
    api.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData(o[0]);
  checkGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData(o[1]);
}

core.int buildCounterGoogleChromeManagementVersionsV1ReportingDataPolicyData =
    0;
api.GoogleChromeManagementVersionsV1ReportingDataPolicyData
buildGoogleChromeManagementVersionsV1ReportingDataPolicyData() {
  final o = api.GoogleChromeManagementVersionsV1ReportingDataPolicyData();
  buildCounterGoogleChromeManagementVersionsV1ReportingDataPolicyData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataPolicyData < 3) {
    o.conflicts = buildUnnamed73();
    o.error = 'foo';
    o.name = 'foo';
    o.source = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataPolicyData--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ReportingDataPolicyData(
  api.GoogleChromeManagementVersionsV1ReportingDataPolicyData o,
) {
  buildCounterGoogleChromeManagementVersionsV1ReportingDataPolicyData++;
  if (buildCounterGoogleChromeManagementVersionsV1ReportingDataPolicyData < 3) {
    checkUnnamed73(o.conflicts!);
    unittest.expect(o.error!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ReportingDataPolicyData--;
}

core.int buildCounterGoogleChromeManagementVersionsV1ScepCaConnection = 0;
api.GoogleChromeManagementVersionsV1ScepCaConnection
buildGoogleChromeManagementVersionsV1ScepCaConnection() {
  final o = api.GoogleChromeManagementVersionsV1ScepCaConnection();
  buildCounterGoogleChromeManagementVersionsV1ScepCaConnection++;
  if (buildCounterGoogleChromeManagementVersionsV1ScepCaConnection < 3) {
    o.caConnectionAdapterConfigReference = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ScepCaConnection--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ScepCaConnection(
  api.GoogleChromeManagementVersionsV1ScepCaConnection o,
) {
  buildCounterGoogleChromeManagementVersionsV1ScepCaConnection++;
  if (buildCounterGoogleChromeManagementVersionsV1ScepCaConnection < 3) {
    unittest.expect(
      o.caConnectionAdapterConfigReference!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleChromeManagementVersionsV1ScepCaConnection--;
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleChromeManagementVersionsV1SubjectAltName>
buildUnnamed76() => [
  buildGoogleChromeManagementVersionsV1SubjectAltName(),
  buildGoogleChromeManagementVersionsV1SubjectAltName(),
];

void checkUnnamed76(
  core.List<api.GoogleChromeManagementVersionsV1SubjectAltName> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleChromeManagementVersionsV1SubjectAltName(o[0]);
  checkGoogleChromeManagementVersionsV1SubjectAltName(o[1]);
}

core.int buildCounterGoogleChromeManagementVersionsV1ScepProfile = 0;
api.GoogleChromeManagementVersionsV1ScepProfile
buildGoogleChromeManagementVersionsV1ScepProfile() {
  final o = api.GoogleChromeManagementVersionsV1ScepProfile();
  buildCounterGoogleChromeManagementVersionsV1ScepProfile++;
  if (buildCounterGoogleChromeManagementVersionsV1ScepProfile < 3) {
    o.certificateTemplateName = 'foo';
    o.country = 'foo';
    o.keyUsages = buildUnnamed74();
    o.locality = 'foo';
    o.organization = 'foo';
    o.organizationalUnits = buildUnnamed75();
    o.state = 'foo';
    o.subjectAltNames = buildUnnamed76();
    o.subjectCommonName = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ScepProfile--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ScepProfile(
  api.GoogleChromeManagementVersionsV1ScepProfile o,
) {
  buildCounterGoogleChromeManagementVersionsV1ScepProfile++;
  if (buildCounterGoogleChromeManagementVersionsV1ScepProfile < 3) {
    unittest.expect(o.certificateTemplateName!, unittest.equals('foo'));
    unittest.expect(o.country!, unittest.equals('foo'));
    checkUnnamed74(o.keyUsages!);
    unittest.expect(o.locality!, unittest.equals('foo'));
    unittest.expect(o.organization!, unittest.equals('foo'));
    checkUnnamed75(o.organizationalUnits!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed76(o.subjectAltNames!);
    unittest.expect(o.subjectCommonName!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ScepProfile--;
}

core.int buildCounterGoogleChromeManagementVersionsV1SetFailureRequest = 0;
api.GoogleChromeManagementVersionsV1SetFailureRequest
buildGoogleChromeManagementVersionsV1SetFailureRequest() {
  final o = api.GoogleChromeManagementVersionsV1SetFailureRequest();
  buildCounterGoogleChromeManagementVersionsV1SetFailureRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1SetFailureRequest < 3) {
    o.errorMessage = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1SetFailureRequest--;
  return o;
}

void checkGoogleChromeManagementVersionsV1SetFailureRequest(
  api.GoogleChromeManagementVersionsV1SetFailureRequest o,
) {
  buildCounterGoogleChromeManagementVersionsV1SetFailureRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1SetFailureRequest < 3) {
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1SetFailureRequest--;
}

core.int buildCounterGoogleChromeManagementVersionsV1SetFailureResponse = 0;
api.GoogleChromeManagementVersionsV1SetFailureResponse
buildGoogleChromeManagementVersionsV1SetFailureResponse() {
  final o = api.GoogleChromeManagementVersionsV1SetFailureResponse();
  buildCounterGoogleChromeManagementVersionsV1SetFailureResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1SetFailureResponse < 3) {}
  buildCounterGoogleChromeManagementVersionsV1SetFailureResponse--;
  return o;
}

void checkGoogleChromeManagementVersionsV1SetFailureResponse(
  api.GoogleChromeManagementVersionsV1SetFailureResponse o,
) {
  buildCounterGoogleChromeManagementVersionsV1SetFailureResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1SetFailureResponse < 3) {}
  buildCounterGoogleChromeManagementVersionsV1SetFailureResponse--;
}

core.int buildCounterGoogleChromeManagementVersionsV1SignDataRequest = 0;
api.GoogleChromeManagementVersionsV1SignDataRequest
buildGoogleChromeManagementVersionsV1SignDataRequest() {
  final o = api.GoogleChromeManagementVersionsV1SignDataRequest();
  buildCounterGoogleChromeManagementVersionsV1SignDataRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1SignDataRequest < 3) {
    o.signData = 'foo';
    o.signatureAlgorithm = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1SignDataRequest--;
  return o;
}

void checkGoogleChromeManagementVersionsV1SignDataRequest(
  api.GoogleChromeManagementVersionsV1SignDataRequest o,
) {
  buildCounterGoogleChromeManagementVersionsV1SignDataRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1SignDataRequest < 3) {
    unittest.expect(o.signData!, unittest.equals('foo'));
    unittest.expect(o.signatureAlgorithm!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1SignDataRequest--;
}

core.int buildCounterGoogleChromeManagementVersionsV1SubjectAltName = 0;
api.GoogleChromeManagementVersionsV1SubjectAltName
buildGoogleChromeManagementVersionsV1SubjectAltName() {
  final o = api.GoogleChromeManagementVersionsV1SubjectAltName();
  buildCounterGoogleChromeManagementVersionsV1SubjectAltName++;
  if (buildCounterGoogleChromeManagementVersionsV1SubjectAltName < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1SubjectAltName--;
  return o;
}

void checkGoogleChromeManagementVersionsV1SubjectAltName(
  api.GoogleChromeManagementVersionsV1SubjectAltName o,
) {
  buildCounterGoogleChromeManagementVersionsV1SubjectAltName++;
  if (buildCounterGoogleChromeManagementVersionsV1SubjectAltName < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1SubjectAltName--;
}

core.int buildCounterGoogleChromeManagementVersionsV1ThirdPartyProfileUser = 0;
api.GoogleChromeManagementVersionsV1ThirdPartyProfileUser
buildGoogleChromeManagementVersionsV1ThirdPartyProfileUser() {
  final o = api.GoogleChromeManagementVersionsV1ThirdPartyProfileUser();
  buildCounterGoogleChromeManagementVersionsV1ThirdPartyProfileUser++;
  if (buildCounterGoogleChromeManagementVersionsV1ThirdPartyProfileUser < 3) {
    o.name = 'foo';
    o.orgUnitId = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1ThirdPartyProfileUser--;
  return o;
}

void checkGoogleChromeManagementVersionsV1ThirdPartyProfileUser(
  api.GoogleChromeManagementVersionsV1ThirdPartyProfileUser o,
) {
  buildCounterGoogleChromeManagementVersionsV1ThirdPartyProfileUser++;
  if (buildCounterGoogleChromeManagementVersionsV1ThirdPartyProfileUser < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.orgUnitId!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1ThirdPartyProfileUser--;
}

core.int buildCounterGoogleChromeManagementVersionsV1UploadCertificateRequest =
    0;
api.GoogleChromeManagementVersionsV1UploadCertificateRequest
buildGoogleChromeManagementVersionsV1UploadCertificateRequest() {
  final o = api.GoogleChromeManagementVersionsV1UploadCertificateRequest();
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1UploadCertificateRequest <
      3) {
    o.certificatePem = 'foo';
  }
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateRequest--;
  return o;
}

void checkGoogleChromeManagementVersionsV1UploadCertificateRequest(
  api.GoogleChromeManagementVersionsV1UploadCertificateRequest o,
) {
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateRequest++;
  if (buildCounterGoogleChromeManagementVersionsV1UploadCertificateRequest <
      3) {
    unittest.expect(o.certificatePem!, unittest.equals('foo'));
  }
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateRequest--;
}

core.int buildCounterGoogleChromeManagementVersionsV1UploadCertificateResponse =
    0;
api.GoogleChromeManagementVersionsV1UploadCertificateResponse
buildGoogleChromeManagementVersionsV1UploadCertificateResponse() {
  final o = api.GoogleChromeManagementVersionsV1UploadCertificateResponse();
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1UploadCertificateResponse <
      3) {}
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateResponse--;
  return o;
}

void checkGoogleChromeManagementVersionsV1UploadCertificateResponse(
  api.GoogleChromeManagementVersionsV1UploadCertificateResponse o,
) {
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateResponse++;
  if (buildCounterGoogleChromeManagementVersionsV1UploadCertificateResponse <
      3) {}
  buildCounterGoogleChromeManagementVersionsV1UploadCertificateResponse--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
  api.GoogleLongrunningCancelOperationRequest o,
) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed77() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed77(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.List<core.String> buildUnnamed78() => ['foo', 'foo'];

void checkUnnamed78(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed77();
    o.unreachable = buildUnnamed78();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed77(o.operations!);
    checkUnnamed78(o.unreachable!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed79() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed79(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed80() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed80(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed79();
    o.name = 'foo';
    o.response = buildUnnamed80();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed79(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed80(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object?> buildUnnamed81() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed81(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed82() => [
  buildUnnamed81(),
  buildUnnamed81(),
];

void checkUnnamed82(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed81(o[0]);
  checkUnnamed81(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed82();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed82(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

void main() {
  unittest.group('obj-schema-GoogleChromeManagementV1AndroidAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AndroidAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AndroidAppInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1AndroidAppInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1AndroidAppPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AndroidAppPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AndroidAppPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1AndroidAppPermission(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1AppDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AppDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AppDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1AppDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1AppReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AppReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AppReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1AppReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1AppUsageData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AppUsageData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AppUsageData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1AppUsageData(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1AudioStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1AudioStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1AudioStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1AudioStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1BatteryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BatteryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BatteryInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1BatteryInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1BatterySampleReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BatterySampleReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BatterySampleReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1BatterySampleReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1BatteryStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BatteryStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BatteryStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1BatteryStatusReport(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1BootPerformanceReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1BootPerformanceReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1BootPerformanceReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1BootPerformanceReport(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1BrowserVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1BrowserVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1BrowserVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1BrowserVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1ChromeAppInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1ChromeAppPermission(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1ChromeAppRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ChromeAppSiteAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ChromeAppSiteAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1ChromeAppSiteAccess(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountActiveDevicesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1CountActiveDevicesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountActiveDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountActiveDevicesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeAppRequestsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1CountChromeAppRequestsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeAppRequestsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeAppRequestsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeCrashEventsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1CountChromeCrashEventsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeCrashEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeCrashEventsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountChromeVersionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1CountChromeVersionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountChromeVersionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountDevicesPerBootTypeResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountDevicesPerBootTypeResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountDevicesPerBootTypeResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountDevicesPerBootTypeResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountInstalledAppsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1CountInstalledAppsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountInstalledAppsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountPrintJobsByPrinterResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1CountPrintJobsByPrinterResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountPrintJobsByPrinterResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountPrintJobsByPrinterResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1CountPrintJobsByUserResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1CountPrintJobsByUserResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1CountPrintJobsByUserResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1CountPrintJobsByUserResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1CpuInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CpuInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1CpuInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1CpuInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1CpuStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CpuStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1CpuStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1CpuStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1CpuTemperatureInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1CpuTemperatureInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1CpuTemperatureInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1CpuTemperatureInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1Device();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1Device.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1Device(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1DeviceActivityReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DeviceActivityReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DeviceActivityReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1DeviceActivityReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1DeviceAueCountReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DeviceAueCountReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DeviceAueCountReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1DeviceAueCountReport(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1DeviceHardwareCountReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1DeviceHardwareCountReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1DeviceHardwareCountReport.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1DeviceHardwareCountReport(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1DeviceRequestingExtensionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1DeviceRequestingExtensionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1DeviceRequestingExtensionDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1DeviceRequestingExtensionDetails(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1DiskInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DiskInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DiskInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1DiskInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1DisplayDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DisplayDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DisplayDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1DisplayDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1DisplayInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1DisplayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1DisplayInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1DisplayInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1EnumeratePrintJobsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1EnumeratePrintJobsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1EnumeratePrintJobsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1EnumeratePrintJobsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1FetchUsersRequestingExtensionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1FetchUsersRequestingExtensionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1FetchUsersRequestingExtensionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1FetchUsersRequestingExtensionResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1FindInstalledAppDevicesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1FindInstalledAppDevicesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1FindInstalledAppDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1FindInstalledAppDevicesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1GraphicsAdapterInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1GraphicsAdapterInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1GraphicsAdapterInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1GraphicsInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1GraphicsInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1GraphicsInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1GraphicsInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1GraphicsStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1GraphicsStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1GraphicsStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1GraphicsStatusReport(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1HeartbeatStatusReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1HeartbeatStatusReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1HeartbeatStatusReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1HeartbeatStatusReport(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1HttpsLatencyRoutineData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1HttpsLatencyRoutineData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1HttpsLatencyRoutineData.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1HttpsLatencyRoutineData(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1InstalledApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1InstalledApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1InstalledApp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1InstalledApp(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1KioskAppStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1KioskAppStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1KioskAppStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1KioskAppStatusReport(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1ListTelemetryDevicesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1ListTelemetryDevicesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1ListTelemetryDevicesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1ListTelemetryEventsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1ListTelemetryEventsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1ListTelemetryEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1ListTelemetryEventsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1ListTelemetryUsersResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1ListTelemetryUsersResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1ListTelemetryUsersResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1ListTelemetryUsersResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1MemoryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1MemoryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1MemoryInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1MemoryInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1MemoryStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1MemoryStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1MemoryStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1MemoryStatusReport(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1NetworkBandwidthReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1NetworkBandwidthReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1NetworkBandwidthReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1NetworkBandwidthReport(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1NetworkDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1NetworkDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1NetworkDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1NetworkDevice(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1NetworkDiagnosticsReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1NetworkDiagnosticsReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1NetworkDiagnosticsReport.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1NetworkDiagnosticsReport(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1NetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1NetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1NetworkInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1NetworkInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1NetworkStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1NetworkStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1NetworkStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1NetworkStatusReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1OsUpdateStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1OsUpdateStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1OsUpdateStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1OsUpdateStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1PeripheralsReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1PeripheralsReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1PeripheralsReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1PeripheralsReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1PrintJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1PrintJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1PrintJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1PrintJob(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1PrinterReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1PrinterReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1PrinterReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1PrinterReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1RiskAssessment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1RiskAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1RiskAssessment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1RiskAssessment(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1RiskAssessmentData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1RiskAssessmentData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1RiskAssessmentData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1RiskAssessmentData(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1RiskAssessmentEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1RiskAssessmentEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1RiskAssessmentEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1RiskAssessmentEntry(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1RuntimeCountersReport',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1RuntimeCountersReport();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1RuntimeCountersReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1RuntimeCountersReport(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1StorageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1StorageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1StorageInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1StorageInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1StorageInfoDiskVolume',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1StorageInfoDiskVolume();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1StorageInfoDiskVolume.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1StorageInfoDiskVolume(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1StorageStatusReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1StorageStatusReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1StorageStatusReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1StorageStatusReport(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryAppInstallEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryAppInstallEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryAppInstallEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryAppInstallEvent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryAppLaunchEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryAppLaunchEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1TelemetryAppLaunchEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1TelemetryAppLaunchEvent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryAppUninstallEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryAppUninstallEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryAppUninstallEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryAppUninstallEvent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1TelemetryDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TelemetryDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TelemetryDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TelemetryDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1TelemetryDeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TelemetryDeviceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TelemetryDeviceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TelemetryDeviceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1TelemetryEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TelemetryEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TelemetryEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TelemetryEvent(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryEventNotificationFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1TelemetryEventNotificationFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryEventNotificationFilter.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryEventNotificationFilter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryExternalDisplayData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryExternalDisplayData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryExternalDisplayData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryExternalDisplayData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryExternalDisplayEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryExternalDisplayEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryExternalDisplayEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryExternalDisplayEvent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryNotificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryNotificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryNotificationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryNotificationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryNotificationFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryNotificationFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryNotificationFilter.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryNotificationFilter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryOsCrashEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryOsCrashEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementV1TelemetryOsCrashEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementV1TelemetryOsCrashEvent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TelemetryUsbPeripheralsEvent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TelemetryUsbPeripheralsEvent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TelemetryUsbPeripheralsEvent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TelemetryUsbPeripheralsEvent(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1TelemetryUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TelemetryUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TelemetryUser.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TelemetryUser(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1TelemetryUserDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TelemetryUserDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TelemetryUserDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TelemetryUserDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1TelemetryUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TelemetryUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TelemetryUserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TelemetryUserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1ThunderboltInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1ThunderboltInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1ThunderboltInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1ThunderboltInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1TotalMemoryEncryptionInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1TotalMemoryEncryptionInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1TotalMemoryEncryptionInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1TotalMemoryEncryptionInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementV1TouchScreenDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TouchScreenDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TouchScreenDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TouchScreenDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1TouchScreenInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1TouchScreenInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1TouchScreenInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1TouchScreenInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1UsbPeripheralReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1UsbPeripheralReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1UsbPeripheralReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1UsbPeripheralReport(od);
    });
  });

  unittest.group('obj-schema-GoogleChromeManagementV1UserPrintReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementV1UserPrintReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementV1UserPrintReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementV1UserPrintReport(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementV1UserRequestingExtensionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementV1UserRequestingExtensionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementV1UserRequestingExtensionDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementV1UserRequestingExtensionDetails(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1AttestationCredential',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1AttestationCredential();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1AttestationCredential.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1AttestationCredential(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1CertificateProvisioningProcess',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1CertificateProvisioningProcess();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1CertificateProvisioningProcess.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1CertificateProvisioningProcess(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ChromeBrowserProfile',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1ChromeBrowserProfile();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ChromeBrowserProfile.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ChromeBrowserProfile(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ChromeOsDevice',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1ChromeOsDevice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementVersionsV1ChromeOsDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementVersionsV1ChromeOsDevice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ChromeOsUserSession',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1ChromeOsUserSession();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ChromeOsUserSession.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ChromeOsUserSession(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementVersionsV1DeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementVersionsV1DeviceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementVersionsV1DeviceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementVersionsV1DeviceInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1GenericCaConnection',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1GenericCaConnection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1GenericCaConnection.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1GenericCaConnection(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1GenericProfile',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1GenericProfile();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementVersionsV1GenericProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementVersionsV1GenericProfile(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ReportingData',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1ReportingData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementVersionsV1ReportingData.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementVersionsV1ReportingData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ReportingDataExtensionData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ReportingDataExtensionData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ReportingDataExtensionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ReportingDataExtensionData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ReportingDataPolicyData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1ReportingDataPolicyData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ReportingDataPolicyData.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ReportingDataPolicyData(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ScepCaConnection',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1ScepCaConnection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ScepCaConnection.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ScepCaConnection(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleChromeManagementVersionsV1ScepProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChromeManagementVersionsV1ScepProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChromeManagementVersionsV1ScepProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChromeManagementVersionsV1ScepProfile(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1SetFailureRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1SetFailureRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1SetFailureRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1SetFailureRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1SetFailureResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1SetFailureResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1SetFailureResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1SetFailureResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1SignDataRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1SignDataRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementVersionsV1SignDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementVersionsV1SignDataRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1SubjectAltName',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1SubjectAltName();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleChromeManagementVersionsV1SubjectAltName.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleChromeManagementVersionsV1SubjectAltName(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1ThirdPartyProfileUser',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleChromeManagementVersionsV1ThirdPartyProfileUser();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1ThirdPartyProfileUser.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1ThirdPartyProfileUser(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1UploadCertificateRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1UploadCertificateRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1UploadCertificateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1UploadCertificateRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleChromeManagementVersionsV1UploadCertificateResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleChromeManagementVersionsV1UploadCertificateResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleChromeManagementVersionsV1UploadCertificateResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleChromeManagementVersionsV1UploadCertificateResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeAppRequestsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countChromeAppRequests(
        arg_customer,
        orderBy: arg_orderBy,
        orgUnitId: arg_orgUnitId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountChromeAppRequestsResponse(
        response as api.GoogleChromeManagementV1CountChromeAppRequestsResponse,
      );
    });

    unittest.test('method--fetchDevicesRequestingExtension', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps;
      final arg_customer = 'foo';
      final arg_extensionId = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['extensionId']!.first,
            unittest.equals(arg_extensionId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchDevicesRequestingExtension(
        arg_customer,
        extensionId: arg_extensionId,
        orgUnitId: arg_orgUnitId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1FetchDevicesRequestingExtensionResponse(
        response
            as api.GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse,
      );
    });

    unittest.test('method--fetchUsersRequestingExtension', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps;
      final arg_customer = 'foo';
      final arg_extensionId = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['extensionId']!.first,
            unittest.equals(arg_extensionId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1FetchUsersRequestingExtensionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchUsersRequestingExtension(
        arg_customer,
        extensionId: arg_extensionId,
        orgUnitId: arg_orgUnitId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1FetchUsersRequestingExtensionResponse(
        response
            as api.GoogleChromeManagementV1FetchUsersRequestingExtensionResponse,
      );
    });
  });

  unittest.group('resource-CustomersAppsAndroidResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps.android;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1AppDetails(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementV1AppDetails(
        response as api.GoogleChromeManagementV1AppDetails,
      );
    });
  });

  unittest.group('resource-CustomersAppsChromeResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps.chrome;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1AppDetails(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementV1AppDetails(
        response as api.GoogleChromeManagementV1AppDetails,
      );
    });
  });

  unittest.group('resource-CustomersAppsWebResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.apps.web;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1AppDetails(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementV1AppDetails(
        response as api.GoogleChromeManagementV1AppDetails,
      );
    });
  });

  unittest.group('resource-CustomersCertificateProvisioningProcessesResource', () {
    unittest.test('method--claim', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.certificateProvisioningProcesses;
      final arg_request =
          buildGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.claim(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse(
        response
            as api.GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.certificateProvisioningProcesses;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1CertificateProvisioningProcess(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementVersionsV1CertificateProvisioningProcess(
        response
            as api.GoogleChromeManagementVersionsV1CertificateProvisioningProcess,
      );
    });

    unittest.test('method--setFailure', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.certificateProvisioningProcesses;
      final arg_request =
          buildGoogleChromeManagementVersionsV1SetFailureRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleChromeManagementVersionsV1SetFailureRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleChromeManagementVersionsV1SetFailureRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1SetFailureResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setFailure(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementVersionsV1SetFailureResponse(
        response as api.GoogleChromeManagementVersionsV1SetFailureResponse,
      );
    });

    unittest.test('method--signData', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.certificateProvisioningProcesses;
      final arg_request =
          buildGoogleChromeManagementVersionsV1SignDataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleChromeManagementVersionsV1SignDataRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleChromeManagementVersionsV1SignDataRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.signData(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--uploadCertificate', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.certificateProvisioningProcesses;
      final arg_request =
          buildGoogleChromeManagementVersionsV1UploadCertificateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleChromeManagementVersionsV1UploadCertificateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleChromeManagementVersionsV1UploadCertificateRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1UploadCertificateResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.uploadCertificate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementVersionsV1UploadCertificateResponse(
        response
            as api.GoogleChromeManagementVersionsV1UploadCertificateResponse,
      );
    });
  });

  unittest.group(
    'resource-CustomersCertificateProvisioningProcessesOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.ChromeManagementApi(
          mock,
        ).customers.certificateProvisioningProcesses.operations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group('resource-CustomersProfilesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.profiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.profiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1ChromeBrowserProfile(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementVersionsV1ChromeBrowserProfile(
        response as api.GoogleChromeManagementVersionsV1ChromeBrowserProfile,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.profiles;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse(
        response
            as api.GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse,
      );
    });
  });

  unittest.group('resource-CustomersProfilesCommandsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.profiles.commands;
      final arg_request =
          buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(
        response
            as api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.profiles.commands;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleChromeManagementVersionsV1ChromeBrowserProfileCommand(
        response
            as api.GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.profiles.commands;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse(
        response
            as api.GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse,
      );
    });
  });

  unittest.group('resource-CustomersReportsResource', () {
    unittest.test('method--countActiveDevices', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_date_day = 42;
      final arg_date_month = 42;
      final arg_date_year = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['date.day']!.first),
            unittest.equals(arg_date_day),
          );
          unittest.expect(
            core.int.parse(queryMap['date.month']!.first),
            unittest.equals(arg_date_month),
          );
          unittest.expect(
            core.int.parse(queryMap['date.year']!.first),
            unittest.equals(arg_date_year),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountActiveDevicesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countActiveDevices(
        arg_customer,
        date_day: arg_date_day,
        date_month: arg_date_month,
        date_year: arg_date_year,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountActiveDevicesResponse(
        response as api.GoogleChromeManagementV1CountActiveDevicesResponse,
      );
    });

    unittest.test('method--countChromeBrowsersNeedingAttention', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countChromeBrowsersNeedingAttention(
        arg_customer,
        orgUnitId: arg_orgUnitId,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse(
        response
            as api.GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse,
      );
    });

    unittest.test('method--countChromeCrashEvents', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeCrashEventsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countChromeCrashEvents(
        arg_customer,
        filter: arg_filter,
        orderBy: arg_orderBy,
        orgUnitId: arg_orgUnitId,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountChromeCrashEventsResponse(
        response as api.GoogleChromeManagementV1CountChromeCrashEventsResponse,
      );
    });

    unittest.test('method--countChromeDevicesReachingAutoExpirationDate', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_maxAueDate = 'foo';
      final arg_minAueDate = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countChromeDevicesReachingAutoExpirationDate(
        arg_customer,
        maxAueDate: arg_maxAueDate,
        minAueDate: arg_minAueDate,
        orgUnitId: arg_orgUnitId,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse(
        response
            as api.GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse,
      );
    });

    unittest.test('method--countChromeDevicesThatNeedAttention', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countChromeDevicesThatNeedAttention(
        arg_customer,
        orgUnitId: arg_orgUnitId,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse(
        response
            as api.GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse,
      );
    });

    unittest.test('method--countChromeHardwareFleetDevices', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_orgUnitId = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countChromeHardwareFleetDevices(
        arg_customer,
        orgUnitId: arg_orgUnitId,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse(
        response
            as api.GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountChromeVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countChromeVersions(
        arg_customer,
        filter: arg_filter,
        orgUnitId: arg_orgUnitId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountChromeVersionsResponse(
        response as api.GoogleChromeManagementV1CountChromeVersionsResponse,
      );
    });

    unittest.test('method--countDevicesPerBootType', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_date_day = 42;
      final arg_date_month = 42;
      final arg_date_year = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['date.day']!.first),
            unittest.equals(arg_date_day),
          );
          unittest.expect(
            core.int.parse(queryMap['date.month']!.first),
            unittest.equals(arg_date_month),
          );
          unittest.expect(
            core.int.parse(queryMap['date.year']!.first),
            unittest.equals(arg_date_year),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountDevicesPerBootTypeResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countDevicesPerBootType(
        arg_customer,
        date_day: arg_date_day,
        date_month: arg_date_month,
        date_year: arg_date_year,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountDevicesPerBootTypeResponse(
        response as api.GoogleChromeManagementV1CountDevicesPerBootTypeResponse,
      );
    });

    unittest.test('method--countDevicesPerReleaseChannel', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_date_day = 42;
      final arg_date_month = 42;
      final arg_date_year = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['date.day']!.first),
            unittest.equals(arg_date_day),
          );
          unittest.expect(
            core.int.parse(queryMap['date.month']!.first),
            unittest.equals(arg_date_month),
          );
          unittest.expect(
            core.int.parse(queryMap['date.year']!.first),
            unittest.equals(arg_date_year),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countDevicesPerReleaseChannel(
        arg_customer,
        date_day: arg_date_day,
        date_month: arg_date_month,
        date_year: arg_date_year,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountDevicesPerReleaseChannelResponse(
        response
            as api.GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountInstalledAppsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countInstalledApps(
        arg_customer,
        filter: arg_filter,
        orderBy: arg_orderBy,
        orgUnitId: arg_orgUnitId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountInstalledAppsResponse(
        response as api.GoogleChromeManagementV1CountInstalledAppsResponse,
      );
    });

    unittest.test('method--countPrintJobsByPrinter', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_printerOrgUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['printerOrgUnitId']!.first,
            unittest.equals(arg_printerOrgUnitId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountPrintJobsByPrinterResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countPrintJobsByPrinter(
        arg_customer,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        printerOrgUnitId: arg_printerOrgUnitId,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountPrintJobsByPrinterResponse(
        response as api.GoogleChromeManagementV1CountPrintJobsByPrinterResponse,
      );
    });

    unittest.test('method--countPrintJobsByUser', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_printerOrgUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['printerOrgUnitId']!.first,
            unittest.equals(arg_printerOrgUnitId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1CountPrintJobsByUserResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.countPrintJobsByUser(
        arg_customer,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        printerOrgUnitId: arg_printerOrgUnitId,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1CountPrintJobsByUserResponse(
        response as api.GoogleChromeManagementV1CountPrintJobsByUserResponse,
      );
    });

    unittest.test('method--enumeratePrintJobs', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.reports;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_printerOrgUnitId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['printerOrgUnitId']!.first,
            unittest.equals(arg_printerOrgUnitId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1EnumeratePrintJobsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enumeratePrintJobs(
        arg_customer,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        printerOrgUnitId: arg_printerOrgUnitId,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1EnumeratePrintJobsResponse(
        response as api.GoogleChromeManagementV1EnumeratePrintJobsResponse,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
          unittest.expect(queryMap['appId']!.first, unittest.equals(arg_appId));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1FindInstalledAppDevicesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.findInstalledAppDevices(
        arg_customer,
        appId: arg_appId,
        appType: arg_appType,
        filter: arg_filter,
        orderBy: arg_orderBy,
        orgUnitId: arg_orgUnitId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1FindInstalledAppDevicesResponse(
        response as api.GoogleChromeManagementV1FindInstalledAppDevicesResponse,
      );
    });
  });

  unittest.group('resource-CustomersTelemetryDevicesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.telemetry.devices;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1TelemetryDevice(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1TelemetryDevice(
        response as api.GoogleChromeManagementV1TelemetryDevice,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1ListTelemetryDevicesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1ListTelemetryDevicesResponse(
        response as api.GoogleChromeManagementV1ListTelemetryDevicesResponse,
      );
    });
  });

  unittest.group('resource-CustomersTelemetryEventsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.telemetry.events;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1ListTelemetryEventsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1ListTelemetryEventsResponse(
        response as api.GoogleChromeManagementV1ListTelemetryEventsResponse,
      );
    });
  });

  unittest.group('resource-CustomersTelemetryNotificationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.telemetry.notificationConfigs;
      final arg_request =
          buildGoogleChromeManagementV1TelemetryNotificationConfig();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleChromeManagementV1TelemetryNotificationConfig.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleChromeManagementV1TelemetryNotificationConfig(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1TelemetryNotificationConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1TelemetryNotificationConfig(
        response as api.GoogleChromeManagementV1TelemetryNotificationConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.telemetry.notificationConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.telemetry.notificationConfigs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1ListTelemetryNotificationConfigsResponse(
        response
            as api.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse,
      );
    });
  });

  unittest.group('resource-CustomersTelemetryUsersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.telemetry.users;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1TelemetryUser(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1TelemetryUser(
        response as api.GoogleChromeManagementV1TelemetryUser,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).customers.telemetry.users;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementV1ListTelemetryUsersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementV1ListTelemetryUsersResponse(
        response as api.GoogleChromeManagementV1ListTelemetryUsersResponse,
      );
    });
  });

  unittest.group('resource-CustomersThirdPartyProfileUsersResource', () {
    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(
        mock,
      ).customers.thirdPartyProfileUsers;
      final arg_request =
          buildGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest(
            obj,
          );

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.move(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse(
        response
            as api.GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse,
      );
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleLongrunningCancelOperationRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ChromeManagementApi(mock).operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });
}
