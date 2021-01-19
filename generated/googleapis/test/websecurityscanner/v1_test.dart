// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.websecurityscanner.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/websecurityscanner/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAuthentication = 0;
api.Authentication buildAuthentication() {
  var o = api.Authentication();
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
    checkCustomAccount(o.customAccount);
    checkGoogleAccount(o.googleAccount);
    checkIapCredential(o.iapCredential);
  }
  buildCounterAuthentication--;
}

core.int buildCounterCrawledUrl = 0;
api.CrawledUrl buildCrawledUrl() {
  var o = api.CrawledUrl();
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
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.httpMethod, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCrawledUrl--;
}

core.int buildCounterCustomAccount = 0;
api.CustomAccount buildCustomAccount() {
  var o = api.CustomAccount();
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
    unittest.expect(o.loginUrl, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterCustomAccount--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.Finding();
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
  }
  buildCounterFinding--;
  return o;
}

void checkFinding(api.Finding o) {
  buildCounterFinding++;
  if (buildCounterFinding < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.finalUrl, unittest.equals('foo'));
    unittest.expect(o.findingType, unittest.equals('foo'));
    checkForm(o.form);
    unittest.expect(o.frameUrl, unittest.equals('foo'));
    unittest.expect(o.fuzzedUrl, unittest.equals('foo'));
    unittest.expect(o.httpMethod, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOutdatedLibrary(o.outdatedLibrary);
    unittest.expect(o.reproductionUrl, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
    checkViolatingResource(o.violatingResource);
    checkVulnerableHeaders(o.vulnerableHeaders);
    checkVulnerableParameters(o.vulnerableParameters);
    checkXss(o.xss);
  }
  buildCounterFinding--;
}

core.int buildCounterFindingTypeStats = 0;
api.FindingTypeStats buildFindingTypeStats() {
  var o = api.FindingTypeStats();
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
    unittest.expect(o.findingCount, unittest.equals(42));
    unittest.expect(o.findingType, unittest.equals('foo'));
  }
  buildCounterFindingTypeStats--;
}

core.List<core.String> buildUnnamed134() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed134(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterForm = 0;
api.Form buildForm() {
  var o = api.Form();
  buildCounterForm++;
  if (buildCounterForm < 3) {
    o.actionUri = 'foo';
    o.fields = buildUnnamed134();
  }
  buildCounterForm--;
  return o;
}

void checkForm(api.Form o) {
  buildCounterForm++;
  if (buildCounterForm < 3) {
    unittest.expect(o.actionUri, unittest.equals('foo'));
    checkUnnamed134(o.fields);
  }
  buildCounterForm--;
}

core.int buildCounterGoogleAccount = 0;
api.GoogleAccount buildGoogleAccount() {
  var o = api.GoogleAccount();
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
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterGoogleAccount--;
}

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  var o = api.Header();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterHeader--;
}

core.int buildCounterIapCredential = 0;
api.IapCredential buildIapCredential() {
  var o = api.IapCredential();
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
    checkIapTestServiceAccountInfo(o.iapTestServiceAccountInfo);
  }
  buildCounterIapCredential--;
}

core.int buildCounterIapTestServiceAccountInfo = 0;
api.IapTestServiceAccountInfo buildIapTestServiceAccountInfo() {
  var o = api.IapTestServiceAccountInfo();
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
    unittest.expect(o.targetAudienceClientId, unittest.equals('foo'));
  }
  buildCounterIapTestServiceAccountInfo--;
}

core.List<api.CrawledUrl> buildUnnamed135() {
  var o = <api.CrawledUrl>[];
  o.add(buildCrawledUrl());
  o.add(buildCrawledUrl());
  return o;
}

void checkUnnamed135(core.List<api.CrawledUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCrawledUrl(o[0]);
  checkCrawledUrl(o[1]);
}

core.int buildCounterListCrawledUrlsResponse = 0;
api.ListCrawledUrlsResponse buildListCrawledUrlsResponse() {
  var o = api.ListCrawledUrlsResponse();
  buildCounterListCrawledUrlsResponse++;
  if (buildCounterListCrawledUrlsResponse < 3) {
    o.crawledUrls = buildUnnamed135();
    o.nextPageToken = 'foo';
  }
  buildCounterListCrawledUrlsResponse--;
  return o;
}

void checkListCrawledUrlsResponse(api.ListCrawledUrlsResponse o) {
  buildCounterListCrawledUrlsResponse++;
  if (buildCounterListCrawledUrlsResponse < 3) {
    checkUnnamed135(o.crawledUrls);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCrawledUrlsResponse--;
}

core.List<api.FindingTypeStats> buildUnnamed136() {
  var o = <api.FindingTypeStats>[];
  o.add(buildFindingTypeStats());
  o.add(buildFindingTypeStats());
  return o;
}

void checkUnnamed136(core.List<api.FindingTypeStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFindingTypeStats(o[0]);
  checkFindingTypeStats(o[1]);
}

core.int buildCounterListFindingTypeStatsResponse = 0;
api.ListFindingTypeStatsResponse buildListFindingTypeStatsResponse() {
  var o = api.ListFindingTypeStatsResponse();
  buildCounterListFindingTypeStatsResponse++;
  if (buildCounterListFindingTypeStatsResponse < 3) {
    o.findingTypeStats = buildUnnamed136();
  }
  buildCounterListFindingTypeStatsResponse--;
  return o;
}

void checkListFindingTypeStatsResponse(api.ListFindingTypeStatsResponse o) {
  buildCounterListFindingTypeStatsResponse++;
  if (buildCounterListFindingTypeStatsResponse < 3) {
    checkUnnamed136(o.findingTypeStats);
  }
  buildCounterListFindingTypeStatsResponse--;
}

core.List<api.Finding> buildUnnamed137() {
  var o = <api.Finding>[];
  o.add(buildFinding());
  o.add(buildFinding());
  return o;
}

void checkUnnamed137(core.List<api.Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFinding(o[0]);
  checkFinding(o[1]);
}

core.int buildCounterListFindingsResponse = 0;
api.ListFindingsResponse buildListFindingsResponse() {
  var o = api.ListFindingsResponse();
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    o.findings = buildUnnamed137();
    o.nextPageToken = 'foo';
  }
  buildCounterListFindingsResponse--;
  return o;
}

void checkListFindingsResponse(api.ListFindingsResponse o) {
  buildCounterListFindingsResponse++;
  if (buildCounterListFindingsResponse < 3) {
    checkUnnamed137(o.findings);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFindingsResponse--;
}

core.List<api.ScanConfig> buildUnnamed138() {
  var o = <api.ScanConfig>[];
  o.add(buildScanConfig());
  o.add(buildScanConfig());
  return o;
}

void checkUnnamed138(core.List<api.ScanConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanConfig(o[0]);
  checkScanConfig(o[1]);
}

core.int buildCounterListScanConfigsResponse = 0;
api.ListScanConfigsResponse buildListScanConfigsResponse() {
  var o = api.ListScanConfigsResponse();
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.scanConfigs = buildUnnamed138();
  }
  buildCounterListScanConfigsResponse--;
  return o;
}

void checkListScanConfigsResponse(api.ListScanConfigsResponse o) {
  buildCounterListScanConfigsResponse++;
  if (buildCounterListScanConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed138(o.scanConfigs);
  }
  buildCounterListScanConfigsResponse--;
}

core.List<api.ScanRun> buildUnnamed139() {
  var o = <api.ScanRun>[];
  o.add(buildScanRun());
  o.add(buildScanRun());
  return o;
}

void checkUnnamed139(core.List<api.ScanRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanRun(o[0]);
  checkScanRun(o[1]);
}

core.int buildCounterListScanRunsResponse = 0;
api.ListScanRunsResponse buildListScanRunsResponse() {
  var o = api.ListScanRunsResponse();
  buildCounterListScanRunsResponse++;
  if (buildCounterListScanRunsResponse < 3) {
    o.nextPageToken = 'foo';
    o.scanRuns = buildUnnamed139();
  }
  buildCounterListScanRunsResponse--;
  return o;
}

void checkListScanRunsResponse(api.ListScanRunsResponse o) {
  buildCounterListScanRunsResponse++;
  if (buildCounterListScanRunsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed139(o.scanRuns);
  }
  buildCounterListScanRunsResponse--;
}

core.List<core.String> buildUnnamed140() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed140(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOutdatedLibrary = 0;
api.OutdatedLibrary buildOutdatedLibrary() {
  var o = api.OutdatedLibrary();
  buildCounterOutdatedLibrary++;
  if (buildCounterOutdatedLibrary < 3) {
    o.learnMoreUrls = buildUnnamed140();
    o.libraryName = 'foo';
    o.version = 'foo';
  }
  buildCounterOutdatedLibrary--;
  return o;
}

void checkOutdatedLibrary(api.OutdatedLibrary o) {
  buildCounterOutdatedLibrary++;
  if (buildCounterOutdatedLibrary < 3) {
    checkUnnamed140(o.learnMoreUrls);
    unittest.expect(o.libraryName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterOutdatedLibrary--;
}

core.List<core.String> buildUnnamed141() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed141(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed142() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterScanConfig = 0;
api.ScanConfig buildScanConfig() {
  var o = api.ScanConfig();
  buildCounterScanConfig++;
  if (buildCounterScanConfig < 3) {
    o.authentication = buildAuthentication();
    o.blacklistPatterns = buildUnnamed141();
    o.displayName = 'foo';
    o.exportToSecurityCommandCenter = 'foo';
    o.managedScan = true;
    o.maxQps = 42;
    o.name = 'foo';
    o.riskLevel = 'foo';
    o.schedule = buildSchedule();
    o.startingUrls = buildUnnamed142();
    o.staticIpScan = true;
    o.userAgent = 'foo';
  }
  buildCounterScanConfig--;
  return o;
}

void checkScanConfig(api.ScanConfig o) {
  buildCounterScanConfig++;
  if (buildCounterScanConfig < 3) {
    checkAuthentication(o.authentication);
    checkUnnamed141(o.blacklistPatterns);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.exportToSecurityCommandCenter, unittest.equals('foo'));
    unittest.expect(o.managedScan, unittest.isTrue);
    unittest.expect(o.maxQps, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.riskLevel, unittest.equals('foo'));
    checkSchedule(o.schedule);
    checkUnnamed142(o.startingUrls);
    unittest.expect(o.staticIpScan, unittest.isTrue);
    unittest.expect(o.userAgent, unittest.equals('foo'));
  }
  buildCounterScanConfig--;
}

core.int buildCounterScanConfigError = 0;
api.ScanConfigError buildScanConfigError() {
  var o = api.ScanConfigError();
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
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.fieldName, unittest.equals('foo'));
  }
  buildCounterScanConfigError--;
}

core.List<api.ScanRunWarningTrace> buildUnnamed143() {
  var o = <api.ScanRunWarningTrace>[];
  o.add(buildScanRunWarningTrace());
  o.add(buildScanRunWarningTrace());
  return o;
}

void checkUnnamed143(core.List<api.ScanRunWarningTrace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScanRunWarningTrace(o[0]);
  checkScanRunWarningTrace(o[1]);
}

core.int buildCounterScanRun = 0;
api.ScanRun buildScanRun() {
  var o = api.ScanRun();
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
    o.warningTraces = buildUnnamed143();
  }
  buildCounterScanRun--;
  return o;
}

void checkScanRun(api.ScanRun o) {
  buildCounterScanRun++;
  if (buildCounterScanRun < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkScanRunErrorTrace(o.errorTrace);
    unittest.expect(o.executionState, unittest.equals('foo'));
    unittest.expect(o.hasVulnerabilities, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    unittest.expect(o.resultState, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.urlsCrawledCount, unittest.equals('foo'));
    unittest.expect(o.urlsTestedCount, unittest.equals('foo'));
    checkUnnamed143(o.warningTraces);
  }
  buildCounterScanRun--;
}

core.int buildCounterScanRunErrorTrace = 0;
api.ScanRunErrorTrace buildScanRunErrorTrace() {
  var o = api.ScanRunErrorTrace();
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
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.mostCommonHttpErrorCode, unittest.equals(42));
    checkScanConfigError(o.scanConfigError);
  }
  buildCounterScanRunErrorTrace--;
}

core.int buildCounterScanRunWarningTrace = 0;
api.ScanRunWarningTrace buildScanRunWarningTrace() {
  var o = api.ScanRunWarningTrace();
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
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterScanRunWarningTrace--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  var o = api.Schedule();
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
    unittest.expect(o.intervalDurationDays, unittest.equals(42));
    unittest.expect(o.scheduleTime, unittest.equals('foo'));
  }
  buildCounterSchedule--;
}

core.int buildCounterStartScanRunRequest = 0;
api.StartScanRunRequest buildStartScanRunRequest() {
  var o = api.StartScanRunRequest();
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
  var o = api.StopScanRunRequest();
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
  var o = api.ViolatingResource();
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
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
  }
  buildCounterViolatingResource--;
}

core.List<api.Header> buildUnnamed144() {
  var o = <api.Header>[];
  o.add(buildHeader());
  o.add(buildHeader());
  return o;
}

void checkUnnamed144(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

core.List<api.Header> buildUnnamed145() {
  var o = <api.Header>[];
  o.add(buildHeader());
  o.add(buildHeader());
  return o;
}

void checkUnnamed145(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

core.int buildCounterVulnerableHeaders = 0;
api.VulnerableHeaders buildVulnerableHeaders() {
  var o = api.VulnerableHeaders();
  buildCounterVulnerableHeaders++;
  if (buildCounterVulnerableHeaders < 3) {
    o.headers = buildUnnamed144();
    o.missingHeaders = buildUnnamed145();
  }
  buildCounterVulnerableHeaders--;
  return o;
}

void checkVulnerableHeaders(api.VulnerableHeaders o) {
  buildCounterVulnerableHeaders++;
  if (buildCounterVulnerableHeaders < 3) {
    checkUnnamed144(o.headers);
    checkUnnamed145(o.missingHeaders);
  }
  buildCounterVulnerableHeaders--;
}

core.List<core.String> buildUnnamed146() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed146(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVulnerableParameters = 0;
api.VulnerableParameters buildVulnerableParameters() {
  var o = api.VulnerableParameters();
  buildCounterVulnerableParameters++;
  if (buildCounterVulnerableParameters < 3) {
    o.parameterNames = buildUnnamed146();
  }
  buildCounterVulnerableParameters--;
  return o;
}

void checkVulnerableParameters(api.VulnerableParameters o) {
  buildCounterVulnerableParameters++;
  if (buildCounterVulnerableParameters < 3) {
    checkUnnamed146(o.parameterNames);
  }
  buildCounterVulnerableParameters--;
}

core.List<core.String> buildUnnamed147() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterXss = 0;
api.Xss buildXss() {
  var o = api.Xss();
  buildCounterXss++;
  if (buildCounterXss < 3) {
    o.attackVector = 'foo';
    o.errorMessage = 'foo';
    o.stackTraces = buildUnnamed147();
    o.storedXssSeedingUrl = 'foo';
  }
  buildCounterXss--;
  return o;
}

void checkXss(api.Xss o) {
  buildCounterXss++;
  if (buildCounterXss < 3) {
    unittest.expect(o.attackVector, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    checkUnnamed147(o.stackTraces);
    unittest.expect(o.storedXssSeedingUrl, unittest.equals('foo'));
  }
  buildCounterXss--;
}

void main() {
  unittest.group('obj-schema-Authentication', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthentication();
      var od = api.Authentication.fromJson(o.toJson());
      checkAuthentication(od);
    });
  });

  unittest.group('obj-schema-CrawledUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildCrawledUrl();
      var od = api.CrawledUrl.fromJson(o.toJson());
      checkCrawledUrl(od);
    });
  });

  unittest.group('obj-schema-CustomAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomAccount();
      var od = api.CustomAccount.fromJson(o.toJson());
      checkCustomAccount(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Finding', () {
    unittest.test('to-json--from-json', () {
      var o = buildFinding();
      var od = api.Finding.fromJson(o.toJson());
      checkFinding(od);
    });
  });

  unittest.group('obj-schema-FindingTypeStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindingTypeStats();
      var od = api.FindingTypeStats.fromJson(o.toJson());
      checkFindingTypeStats(od);
    });
  });

  unittest.group('obj-schema-Form', () {
    unittest.test('to-json--from-json', () {
      var o = buildForm();
      var od = api.Form.fromJson(o.toJson());
      checkForm(od);
    });
  });

  unittest.group('obj-schema-GoogleAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAccount();
      var od = api.GoogleAccount.fromJson(o.toJson());
      checkGoogleAccount(od);
    });
  });

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeader();
      var od = api.Header.fromJson(o.toJson());
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-IapCredential', () {
    unittest.test('to-json--from-json', () {
      var o = buildIapCredential();
      var od = api.IapCredential.fromJson(o.toJson());
      checkIapCredential(od);
    });
  });

  unittest.group('obj-schema-IapTestServiceAccountInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildIapTestServiceAccountInfo();
      var od = api.IapTestServiceAccountInfo.fromJson(o.toJson());
      checkIapTestServiceAccountInfo(od);
    });
  });

  unittest.group('obj-schema-ListCrawledUrlsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCrawledUrlsResponse();
      var od = api.ListCrawledUrlsResponse.fromJson(o.toJson());
      checkListCrawledUrlsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFindingTypeStatsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListFindingTypeStatsResponse();
      var od = api.ListFindingTypeStatsResponse.fromJson(o.toJson());
      checkListFindingTypeStatsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFindingsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListFindingsResponse();
      var od = api.ListFindingsResponse.fromJson(o.toJson());
      checkListFindingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListScanConfigsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListScanConfigsResponse();
      var od = api.ListScanConfigsResponse.fromJson(o.toJson());
      checkListScanConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListScanRunsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListScanRunsResponse();
      var od = api.ListScanRunsResponse.fromJson(o.toJson());
      checkListScanRunsResponse(od);
    });
  });

  unittest.group('obj-schema-OutdatedLibrary', () {
    unittest.test('to-json--from-json', () {
      var o = buildOutdatedLibrary();
      var od = api.OutdatedLibrary.fromJson(o.toJson());
      checkOutdatedLibrary(od);
    });
  });

  unittest.group('obj-schema-ScanConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildScanConfig();
      var od = api.ScanConfig.fromJson(o.toJson());
      checkScanConfig(od);
    });
  });

  unittest.group('obj-schema-ScanConfigError', () {
    unittest.test('to-json--from-json', () {
      var o = buildScanConfigError();
      var od = api.ScanConfigError.fromJson(o.toJson());
      checkScanConfigError(od);
    });
  });

  unittest.group('obj-schema-ScanRun', () {
    unittest.test('to-json--from-json', () {
      var o = buildScanRun();
      var od = api.ScanRun.fromJson(o.toJson());
      checkScanRun(od);
    });
  });

  unittest.group('obj-schema-ScanRunErrorTrace', () {
    unittest.test('to-json--from-json', () {
      var o = buildScanRunErrorTrace();
      var od = api.ScanRunErrorTrace.fromJson(o.toJson());
      checkScanRunErrorTrace(od);
    });
  });

  unittest.group('obj-schema-ScanRunWarningTrace', () {
    unittest.test('to-json--from-json', () {
      var o = buildScanRunWarningTrace();
      var od = api.ScanRunWarningTrace.fromJson(o.toJson());
      checkScanRunWarningTrace(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchedule();
      var od = api.Schedule.fromJson(o.toJson());
      checkSchedule(od);
    });
  });

  unittest.group('obj-schema-StartScanRunRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartScanRunRequest();
      var od = api.StartScanRunRequest.fromJson(o.toJson());
      checkStartScanRunRequest(od);
    });
  });

  unittest.group('obj-schema-StopScanRunRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildStopScanRunRequest();
      var od = api.StopScanRunRequest.fromJson(o.toJson());
      checkStopScanRunRequest(od);
    });
  });

  unittest.group('obj-schema-ViolatingResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildViolatingResource();
      var od = api.ViolatingResource.fromJson(o.toJson());
      checkViolatingResource(od);
    });
  });

  unittest.group('obj-schema-VulnerableHeaders', () {
    unittest.test('to-json--from-json', () {
      var o = buildVulnerableHeaders();
      var od = api.VulnerableHeaders.fromJson(o.toJson());
      checkVulnerableHeaders(od);
    });
  });

  unittest.group('obj-schema-VulnerableParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildVulnerableParameters();
      var od = api.VulnerableParameters.fromJson(o.toJson());
      checkVulnerableParameters(od);
    });
  });

  unittest.group('obj-schema-Xss', () {
    unittest.test('to-json--from-json', () {
      var o = buildXss();
      var od = api.Xss.fromJson(o.toJson());
      checkXss(od);
    });
  });

  unittest.group('resource-ProjectsScanConfigsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs;
      var arg_request = buildScanConfig();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ScanConfig.fromJson(json);
        checkScanConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanConfig(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanConfig(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListScanConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListScanConfigsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs;
      var arg_request = buildScanConfig();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ScanConfig.fromJson(json);
        checkScanConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanConfig(response);
      })));
    });

    unittest.test('method--start', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs;
      var arg_request = buildStartScanRunRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StartScanRunRequest.fromJson(json);
        checkStartScanRunRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .start(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanRun(response);
      })));
    });
  });

  unittest.group('resource-ProjectsScanConfigsScanRunsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsScanRunsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs.scanRuns;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanRun(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsScanRunsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs.scanRuns;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListScanRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListScanRunsResponse(response);
      })));
    });

    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsScanRunsResourceApi res =
          api.WebsecurityscannerApi(mock).projects.scanConfigs.scanRuns;
      var arg_request = buildStopScanRunRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StopScanRunRequest.fromJson(json);
        checkStopScanRunRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScanRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScanRun(response);
      })));
    });
  });

  unittest.group('resource-ProjectsScanConfigsScanRunsCrawledUrlsResourceApi',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsScanRunsCrawledUrlsResourceApi res =
          api.WebsecurityscannerApi(mock)
              .projects
              .scanConfigs
              .scanRuns
              .crawledUrls;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCrawledUrlsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCrawledUrlsResponse(response);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsScanConfigsScanRunsFindingTypeStatsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsScanRunsFindingTypeStatsResourceApi res =
          api.WebsecurityscannerApi(mock)
              .projects
              .scanConfigs
              .scanRuns
              .findingTypeStats;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListFindingTypeStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFindingTypeStatsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsScanConfigsScanRunsFindingsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsScanRunsFindingsResourceApi res =
          api.WebsecurityscannerApi(mock)
              .projects
              .scanConfigs
              .scanRuns
              .findings;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFinding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFinding(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsScanConfigsScanRunsFindingsResourceApi res =
          api.WebsecurityscannerApi(mock)
              .projects
              .scanConfigs
              .scanRuns
              .findings;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListFindingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFindingsResponse(response);
      })));
    });
  });
}
