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

import 'package:googleapis/websecurityscanner/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAuthentication = 0;
api.Authentication buildAuthentication() {
  final o = api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.customAccount = buildCustomAccount();
    o.googleAccount = buildGoogleAccount();
    o.iapCredential = buildIapCredential();
  }
  buildCounterAuthentication--;
  return o;
}

void checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkCustomAccount(o.customAccount!);
    checkGoogleAccount(o.googleAccount!);
    checkIapCredential(o.iapCredential!);
  }
  buildCounterAuthentication--;
}

core.int buildCounterCrawledUrl = 0;
api.CrawledUrl buildCrawledUrl() {
  final o = api.CrawledUrl();
  buildCounterCrawledUrl++;
  if (buildCounterCrawledUrl < 3) {
    o.body = 'foo';
    o.httpMethod = 'foo';
    o.url = 'foo';
  }
  buildCounterCrawledUrl--;
  return o;
}

void checkCrawledUrl(api.CrawledUrl o) {
  buildCounterCrawledUrl++;
  if (buildCounterCrawledUrl < 3) {
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.httpMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterCrawledUrl--;
}

core.int buildCounterCustomAccount = 0;
api.CustomAccount buildCustomAccount() {
  final o = api.CustomAccount();
  buildCounterCustomAccount++;
  if (buildCounterCustomAccount < 3) {
    o.loginUrl = 'foo';
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterCustomAccount--;
  return o;
}

void checkCustomAccount(api.CustomAccount o) {
  buildCounterCustomAccount++;
  if (buildCounterCustomAccount < 3) {
    unittest.expect(
      o.loginUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomAccount--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterFinding = 0;
api.Finding buildFinding() {
  final o = api.Finding();
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    o.body = 'foo';
    o.description = 'foo';
    o.finalUrl = 'foo';
    o.findingType = 'foo';
    o.form = buildForm();
    o.frameUrl = 'foo';
    o.fuzzedUrl = 'foo';
    o.httpMethod = 'foo';
    o.name = 'foo';
    o.outdatedLibrary = buildOutdatedLibrary();
    o.reproductionUrl = 'foo';
    o.severity = 'foo';
    o.trackingId = 'foo';
    o.violatingResource = buildViolatingResource();
    o.vulnerableHeaders = buildVulnerableHeaders();
    o.vulnerableParameters = buildVulnerableParameters();
    o.xss = buildXss();
    o.xxe = buildXxe();
  }
  buildCounterFinding--;
  return o;
}

void checkFinding(api.Finding o) {
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.finalUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.findingType!,
      unittest.equals('foo'),
    );
    checkForm(o.form!);
    unittest.expect(
      o.frameUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fuzzedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.httpMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOutdatedLibrary(o.outdatedLibrary!);
    unittest.expect(
      o.reproductionUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingId!,
      unittest.equals('foo'),
    );
    checkViolatingResource(o.violatingResource!);
    checkVulnerableHeaders(o.vulnerableHeaders!);
    checkVulnerableParameters(o.vulnerableParameters!);
    checkXss(o.xss!);
    checkXxe(o.xxe!);
  }
  buildCounterFinding--;
}

core.int buildCounterFindingTypeStats = 0;
api.FindingTypeStats buildFindingTypeStats() {
  final o = api.FindingTypeStats();
  buildCounterFindingTypeStats++;
  if (buildCounterFindingTypeStats < 3) {
    o.findingCount = 42;
    o.findingType = 'foo';
  }
  buildCounterFindingTypeStats--;
  return o;
}

void checkFindingTypeStats(api.FindingTypeStats o) {
  buildCounterFindingTypeStats++;
  if (buildCounterFindingTypeStats < 3) {
    unittest.expect(
      o.findingCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.findingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFindingTypeStats--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterForm = 0;
api.Form buildForm() {
  final o = api.Form();
  buildCounterForm++;
  if (buildCounterForm < 3) {
    o.actionUri = 'foo';
    o.fields = buildUnnamed0();
  }
  buildCounterForm--;
  return o;
}

void checkForm(api.Form o) {
  buildCounterForm++;
  if (buildCounterForm < 3) {
    unittest.expect(
      o.actionUri!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.fields!);
  }
  buildCounterForm--;
}

core.int buildCounterGoogleAccount = 0;
api.GoogleAccount buildGoogleAccount() {
  final o = api.GoogleAccount();
  buildCounterGoogleAccount++;
  if (buildCounterGoogleAccount < 3) {
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleAccount--;
  return o;
}

void checkGoogleAccount(api.GoogleAccount o) {
  buildCounterGoogleAccount++;
  if (buildCounterGoogleAccount < 3) {
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAccount--;
}

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  final o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeader--;
}

core.int buildCounterIapCredential = 0;
api.IapCredential buildIapCredential() {
  final o = api.IapCredential();
  buildCounterIapCredential++;
  if (buildCounterIapCredential < 3) {
    o.iapTestServiceAccountInfo = buildIapTestServiceAccountInfo();
  }
  buildCounterIapCredential--;
  return o;
}

void checkIapCredential(api.IapCredential o) {
  buildCounterIapCredential++;
  if (buildCounterIapCredential < 3) {
    checkIapTestServiceAccountInfo(o.iapTestServiceAccountInfo!);
  }
  buildCounterIapCredential--;
}

core.int buildCounterIapTestServiceAccountInfo = 0;
api.IapTestServiceAccountInfo buildIapTestServiceAccountInfo() {
  final o = api.IapTestServiceAccountInfo();
  buildCounterIapTestServiceAccountInfo++;
  if (buildCounterIapTestServiceAccountInfo < 3) {
    o.targetAudienceClientId = 'foo';
  }
  buildCounterIapTestServiceAccountInfo--;
  return o;
}

void checkIapTestServiceAccountInfo(api.IapTestServiceAccountInfo o) {
  buildCounterIapTestServiceAccountInfo++;
  if (buildCounterIapTestServiceAccountInfo < 3) {
    unittest.expect(
      o.targetAudienceClientId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIapTestServiceAccountInfo--;
}

core.List<api.CrawledUrl> buildUnnamed1() => [
      buildCrawledUrl(),
      buildCrawledUrl(),
    ];

void checkUnnamed1(core.List<api.CrawledUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCrawledUrl(o[0]);
  checkCrawledUrl(o[1]);
}

core.int buildCounterListCrawledUrlsResponse = 0;
api.ListCrawledUrlsResponse buildListCrawledUrlsResponse() {
  final o = api.ListCrawledUrlsResponse();
  buildCounterListCrawledUrlsResponse++;
  if (buildCounterListCrawledUrlsResponse < 3) {
    o.crawledUrls = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterListCrawledUrlsResponse--;
  return o;
}

void checkListCrawledUrlsResponse(api.ListCrawledUrlsResponse o) {
  buildCounterListCrawledUrlsResponse++;
  if (buildCounterListCrawledUrlsResponse < 3) {
    checkUnnamed1(o.crawledUrls!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCrawledUrlsResponse--;
}

core.List<api.FindingTypeStats> buildUnnamed2() => [
      buildFindingTypeStats(),
      buildFindingTypeStats(),
    ];

void checkUnnamed2(core.List<api.FindingTypeStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFindingTypeStats(o[0]);
  checkFindingTypeStats(o[1]);
}

core.int buildCounterListFindingTypeStatsResponse = 0;
api.ListFindingTypeStatsResponse buildListFindingTypeStatsResponse() {
  final o = api.ListFindingTypeStatsResponse();
  buildCounterListFindingTypeStatsResponse++;
  if (buildCounterListFindingTypeStatsResponse < 3) {
    o.findingTypeStats = buildUnnamed2();
  }
  buildCounterListFindingTypeStatsResponse--;
  return o;
}

void checkListFindingTypeStatsResponse(api.ListFindingTypeStatsResponse o) {
  buildCounterListFindingTypeStatsResponse++;
  if (buildCounterListFindingTypeStatsResponse < 3) {
    checkUnnamed2(o.findingTypeStats!);
  }
  buildCounterListFindingTypeStatsResponse--;
}

core.List<api.Finding> buildUnnamed3() => [
      buildFinding(),
      buildFinding(),
    ];

void checkUnnamed3(core.List<api.Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFinding(o[0]);
  checkFinding(o[1]);
}

core.int buildCounterListFindingsResponse = 0;
api.ListFindingsResponse buildListFindingsResponse() {
  final o = api.ListFindingsResponse();
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    o.findings = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListFindingsResponse--;
  return o;
}

void checkListFindingsResponse(api.ListFindingsResponse o) {
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    checkUnnamed3(o.findings!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFindingsResponse--;
}

core.List<api.ScanConfig> buildUnnamed4() => [
      buildScanConfig(),
      buildScanConfig(),
    ];

void checkUnnamed4(core.List<api.ScanConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanConfig(o[0]);
  checkScanConfig(o[1]);
}

core.int buildCounterListScanConfigsResponse = 0;
api.ListScanConfigsResponse buildListScanConfigsResponse() {
  final o = api.ListScanConfigsResponse();
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.scanConfigs = buildUnnamed4();
  }
  buildCounterListScanConfigsResponse--;
  return o;
}

void checkListScanConfigsResponse(api.ListScanConfigsResponse o) {
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.scanConfigs!);
  }
  buildCounterListScanConfigsResponse--;
}

core.List<api.ScanRun> buildUnnamed5() => [
      buildScanRun(),
      buildScanRun(),
    ];

void checkUnnamed5(core.List<api.ScanRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanRun(o[0]);
  checkScanRun(o[1]);
}

core.int buildCounterListScanRunsResponse = 0;
api.ListScanRunsResponse buildListScanRunsResponse() {
  final o = api.ListScanRunsResponse();
  buildCounterListScanRunsResponse++;
  if (buildCounterListScanRunsResponse < 3) {
    o.nextPageToken = 'foo';
    o.scanRuns = buildUnnamed5();
  }
  buildCounterListScanRunsResponse--;
  return o;
}

void checkListScanRunsResponse(api.ListScanRunsResponse o) {
  buildCounterListScanRunsResponse++;
  if (buildCounterListScanRunsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.scanRuns!);
  }
  buildCounterListScanRunsResponse--;
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

core.int buildCounterOutdatedLibrary = 0;
api.OutdatedLibrary buildOutdatedLibrary() {
  final o = api.OutdatedLibrary();
  buildCounterOutdatedLibrary++;
  if (buildCounterOutdatedLibrary < 3) {
    o.learnMoreUrls = buildUnnamed6();
    o.libraryName = 'foo';
    o.version = 'foo';
  }
  buildCounterOutdatedLibrary--;
  return o;
}

void checkOutdatedLibrary(api.OutdatedLibrary o) {
  buildCounterOutdatedLibrary++;
  if (buildCounterOutdatedLibrary < 3) {
    checkUnnamed6(o.learnMoreUrls!);
    unittest.expect(
      o.libraryName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterOutdatedLibrary--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterScanConfig = 0;
api.ScanConfig buildScanConfig() {
  final o = api.ScanConfig();
  buildCounterScanConfig++;
  if (buildCounterScanConfig < 3) {
    o.authentication = buildAuthentication();
    o.blacklistPatterns = buildUnnamed7();
    o.displayName = 'foo';
    o.exportToSecurityCommandCenter = 'foo';
    o.ignoreHttpStatusErrors = true;
    o.managedScan = true;
    o.maxQps = 42;
    o.name = 'foo';
    o.riskLevel = 'foo';
    o.schedule = buildSchedule();
    o.startingUrls = buildUnnamed8();
    o.staticIpScan = true;
    o.userAgent = 'foo';
  }
  buildCounterScanConfig--;
  return o;
}

void checkScanConfig(api.ScanConfig o) {
  buildCounterScanConfig++;
  if (buildCounterScanConfig < 3) {
    checkAuthentication(o.authentication!);
    checkUnnamed7(o.blacklistPatterns!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exportToSecurityCommandCenter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreHttpStatusErrors!, unittest.isTrue);
    unittest.expect(o.managedScan!, unittest.isTrue);
    unittest.expect(
      o.maxQps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.riskLevel!,
      unittest.equals('foo'),
    );
    checkSchedule(o.schedule!);
    checkUnnamed8(o.startingUrls!);
    unittest.expect(o.staticIpScan!, unittest.isTrue);
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
  }
  buildCounterScanConfig--;
}

core.int buildCounterScanConfigError = 0;
api.ScanConfigError buildScanConfigError() {
  final o = api.ScanConfigError();
  buildCounterScanConfigError++;
  if (buildCounterScanConfigError < 3) {
    o.code = 'foo';
    o.fieldName = 'foo';
  }
  buildCounterScanConfigError--;
  return o;
}

void checkScanConfigError(api.ScanConfigError o) {
  buildCounterScanConfigError++;
  if (buildCounterScanConfigError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
  }
  buildCounterScanConfigError--;
}

core.List<api.ScanRunWarningTrace> buildUnnamed9() => [
      buildScanRunWarningTrace(),
      buildScanRunWarningTrace(),
    ];

void checkUnnamed9(core.List<api.ScanRunWarningTrace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanRunWarningTrace(o[0]);
  checkScanRunWarningTrace(o[1]);
}

core.int buildCounterScanRun = 0;
api.ScanRun buildScanRun() {
  final o = api.ScanRun();
  buildCounterScanRun++;
  if (buildCounterScanRun < 3) {
    o.endTime = 'foo';
    o.errorTrace = buildScanRunErrorTrace();
    o.executionState = 'foo';
    o.hasVulnerabilities = true;
    o.name = 'foo';
    o.progressPercent = 42;
    o.resultState = 'foo';
    o.startTime = 'foo';
    o.urlsCrawledCount = 'foo';
    o.urlsTestedCount = 'foo';
    o.warningTraces = buildUnnamed9();
  }
  buildCounterScanRun--;
  return o;
}

void checkScanRun(api.ScanRun o) {
  buildCounterScanRun++;
  if (buildCounterScanRun < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkScanRunErrorTrace(o.errorTrace!);
    unittest.expect(
      o.executionState!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasVulnerabilities!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.resultState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlsCrawledCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlsTestedCount!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.warningTraces!);
  }
  buildCounterScanRun--;
}

core.int buildCounterScanRunErrorTrace = 0;
api.ScanRunErrorTrace buildScanRunErrorTrace() {
  final o = api.ScanRunErrorTrace();
  buildCounterScanRunErrorTrace++;
  if (buildCounterScanRunErrorTrace < 3) {
    o.code = 'foo';
    o.mostCommonHttpErrorCode = 42;
    o.scanConfigError = buildScanConfigError();
  }
  buildCounterScanRunErrorTrace--;
  return o;
}

void checkScanRunErrorTrace(api.ScanRunErrorTrace o) {
  buildCounterScanRunErrorTrace++;
  if (buildCounterScanRunErrorTrace < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mostCommonHttpErrorCode!,
      unittest.equals(42),
    );
    checkScanConfigError(o.scanConfigError!);
  }
  buildCounterScanRunErrorTrace--;
}

core.int buildCounterScanRunWarningTrace = 0;
api.ScanRunWarningTrace buildScanRunWarningTrace() {
  final o = api.ScanRunWarningTrace();
  buildCounterScanRunWarningTrace++;
  if (buildCounterScanRunWarningTrace < 3) {
    o.code = 'foo';
  }
  buildCounterScanRunWarningTrace--;
  return o;
}

void checkScanRunWarningTrace(api.ScanRunWarningTrace o) {
  buildCounterScanRunWarningTrace++;
  if (buildCounterScanRunWarningTrace < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterScanRunWarningTrace--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.intervalDurationDays = 42;
    o.scheduleTime = 'foo';
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(
      o.intervalDurationDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchedule--;
}

core.int buildCounterStartScanRunRequest = 0;
api.StartScanRunRequest buildStartScanRunRequest() {
  final o = api.StartScanRunRequest();
  buildCounterStartScanRunRequest++;
  if (buildCounterStartScanRunRequest < 3) {}
  buildCounterStartScanRunRequest--;
  return o;
}

void checkStartScanRunRequest(api.StartScanRunRequest o) {
  buildCounterStartScanRunRequest++;
  if (buildCounterStartScanRunRequest < 3) {}
  buildCounterStartScanRunRequest--;
}

core.int buildCounterStopScanRunRequest = 0;
api.StopScanRunRequest buildStopScanRunRequest() {
  final o = api.StopScanRunRequest();
  buildCounterStopScanRunRequest++;
  if (buildCounterStopScanRunRequest < 3) {}
  buildCounterStopScanRunRequest--;
  return o;
}

void checkStopScanRunRequest(api.StopScanRunRequest o) {
  buildCounterStopScanRunRequest++;
  if (buildCounterStopScanRunRequest < 3) {}
  buildCounterStopScanRunRequest--;
}

core.int buildCounterViolatingResource = 0;
api.ViolatingResource buildViolatingResource() {
  final o = api.ViolatingResource();
  buildCounterViolatingResource++;
  if (buildCounterViolatingResource < 3) {
    o.contentType = 'foo';
    o.resourceUrl = 'foo';
  }
  buildCounterViolatingResource--;
  return o;
}

void checkViolatingResource(api.ViolatingResource o) {
  buildCounterViolatingResource++;
  if (buildCounterViolatingResource < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterViolatingResource--;
}

core.List<api.Header> buildUnnamed10() => [
      buildHeader(),
      buildHeader(),
    ];

void checkUnnamed10(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

core.List<api.Header> buildUnnamed11() => [
      buildHeader(),
      buildHeader(),
    ];

void checkUnnamed11(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

core.int buildCounterVulnerableHeaders = 0;
api.VulnerableHeaders buildVulnerableHeaders() {
  final o = api.VulnerableHeaders();
  buildCounterVulnerableHeaders++;
  if (buildCounterVulnerableHeaders < 3) {
    o.headers = buildUnnamed10();
    o.missingHeaders = buildUnnamed11();
  }
  buildCounterVulnerableHeaders--;
  return o;
}

void checkVulnerableHeaders(api.VulnerableHeaders o) {
  buildCounterVulnerableHeaders++;
  if (buildCounterVulnerableHeaders < 3) {
    checkUnnamed10(o.headers!);
    checkUnnamed11(o.missingHeaders!);
  }
  buildCounterVulnerableHeaders--;
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

core.int buildCounterVulnerableParameters = 0;
api.VulnerableParameters buildVulnerableParameters() {
  final o = api.VulnerableParameters();
  buildCounterVulnerableParameters++;
  if (buildCounterVulnerableParameters < 3) {
    o.parameterNames = buildUnnamed12();
  }
  buildCounterVulnerableParameters--;
  return o;
}

void checkVulnerableParameters(api.VulnerableParameters o) {
  buildCounterVulnerableParameters++;
  if (buildCounterVulnerableParameters < 3) {
    checkUnnamed12(o.parameterNames!);
  }
  buildCounterVulnerableParameters--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterXss = 0;
api.Xss buildXss() {
  final o = api.Xss();
  buildCounterXss++;
  if (buildCounterXss < 3) {
    o.attackVector = 'foo';
    o.errorMessage = 'foo';
    o.stackTraces = buildUnnamed13();
    o.storedXssSeedingUrl = 'foo';
  }
  buildCounterXss--;
  return o;
}

void checkXss(api.Xss o) {
  buildCounterXss++;
  if (buildCounterXss < 3) {
    unittest.expect(
      o.attackVector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.stackTraces!);
    unittest.expect(
      o.storedXssSeedingUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterXss--;
}

core.int buildCounterXxe = 0;
api.Xxe buildXxe() {
  final o = api.Xxe();
  buildCounterXxe++;
  if (buildCounterXxe < 3) {
    o.payloadLocation = 'foo';
    o.payloadValue = 'foo';
  }
  buildCounterXxe--;
  return o;
}

void checkXxe(api.Xxe o) {
  buildCounterXxe++;
  if (buildCounterXxe < 3) {
    unittest.expect(
      o.payloadLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payloadValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterXxe--;
}

void main() {
  unittest.group('obj-schema-Authentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authentication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthentication(od);
    });
  });

  unittest.group('obj-schema-CrawledUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrawledUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CrawledUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCrawledUrl(od);
    });
  });

  unittest.group('obj-schema-CustomAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomAccount(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Finding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Finding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFinding(od);
    });
  });

  unittest.group('obj-schema-FindingTypeStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindingTypeStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindingTypeStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindingTypeStats(od);
    });
  });

  unittest.group('obj-schema-Form', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Form.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkForm(od);
    });
  });

  unittest.group('obj-schema-GoogleAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAccount(od);
    });
  });

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Header.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-IapCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIapCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IapCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIapCredential(od);
    });
  });

  unittest.group('obj-schema-IapTestServiceAccountInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIapTestServiceAccountInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IapTestServiceAccountInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIapTestServiceAccountInfo(od);
    });
  });

  unittest.group('obj-schema-ListCrawledUrlsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCrawledUrlsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCrawledUrlsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCrawledUrlsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFindingTypeStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFindingTypeStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFindingTypeStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFindingTypeStatsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFindingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFindingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFindingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListScanConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScanConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScanConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScanConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListScanRunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScanRunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScanRunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScanRunsResponse(od);
    });
  });

  unittest.group('obj-schema-OutdatedLibrary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutdatedLibrary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutdatedLibrary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutdatedLibrary(od);
    });
  });

  unittest.group('obj-schema-ScanConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ScanConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScanConfig(od);
    });
  });

  unittest.group('obj-schema-ScanConfigError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanConfigError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScanConfigError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScanConfigError(od);
    });
  });

  unittest.group('obj-schema-ScanRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ScanRun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkScanRun(od);
    });
  });

  unittest.group('obj-schema-ScanRunErrorTrace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanRunErrorTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScanRunErrorTrace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScanRunErrorTrace(od);
    });
  });

  unittest.group('obj-schema-ScanRunWarningTrace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScanRunWarningTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScanRunWarningTrace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScanRunWarningTrace(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchedule(od);
    });
  });

  unittest.group('obj-schema-StartScanRunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartScanRunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartScanRunRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartScanRunRequest(od);
    });
  });

  unittest.group('obj-schema-StopScanRunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopScanRunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopScanRunRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopScanRunRequest(od);
    });
  });

  unittest.group('obj-schema-ViolatingResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViolatingResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViolatingResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkViolatingResource(od);
    });
  });

  unittest.group('obj-schema-VulnerableHeaders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerableHeaders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerableHeaders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerableHeaders(od);
    });
  });

  unittest.group('obj-schema-VulnerableParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerableParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerableParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerableParameters(od);
    });
  });

  unittest.group('obj-schema-Xss', () {
    unittest.test('to-json--from-json', () async {
      final o = buildXss();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Xss.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkXss(od);
    });
  });

  unittest.group('obj-schema-Xxe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildXxe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Xxe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkXxe(od);
    });
  });

  unittest.group('resource-ProjectsScanConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs;
      final arg_request = buildScanConfig();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ScanConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScanConfig(obj);

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
        final resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkScanConfig(response as api.ScanConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs;
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
        final resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkScanConfig(response as api.ScanConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListScanConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListScanConfigsResponse(response as api.ListScanConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs;
      final arg_request = buildScanConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ScanConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScanConfig(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkScanConfig(response as api.ScanConfig);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs;
      final arg_request = buildStartScanRunRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartScanRunRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartScanRunRequest(obj);

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
        final resp = convert.json.encode(buildScanRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkScanRun(response as api.ScanRun);
    });
  });

  unittest.group('resource-ProjectsScanConfigsScanRunsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs.scanRuns;
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
        final resp = convert.json.encode(buildScanRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkScanRun(response as api.ScanRun);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs.scanRuns;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListScanRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListScanRunsResponse(response as api.ListScanRunsResponse);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock).projects.scanConfigs.scanRuns;
      final arg_request = buildStopScanRunRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopScanRunRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopScanRunRequest(obj);

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
        final resp = convert.json.encode(buildScanRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkScanRun(response as api.ScanRun);
    });
  });

  unittest.group('resource-ProjectsScanConfigsScanRunsCrawledUrlsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock)
          .projects
          .scanConfigs
          .scanRuns
          .crawledUrls;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListCrawledUrlsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCrawledUrlsResponse(response as api.ListCrawledUrlsResponse);
    });
  });

  unittest.group('resource-ProjectsScanConfigsScanRunsFindingTypeStatsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock)
          .projects
          .scanConfigs
          .scanRuns
          .findingTypeStats;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListFindingTypeStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListFindingTypeStatsResponse(
          response as api.ListFindingTypeStatsResponse);
    });
  });

  unittest.group('resource-ProjectsScanConfigsScanRunsFindingsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock)
          .projects
          .scanConfigs
          .scanRuns
          .findings;
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
        final resp = convert.json.encode(buildFinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFinding(response as api.Finding);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebSecurityScannerApi(mock)
          .projects
          .scanConfigs
          .scanRuns
          .findings;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
        final resp = convert.json.encode(buildListFindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFindingsResponse(response as api.ListFindingsResponse);
    });
  });
}
