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

import 'package:googleapis/jobs/v4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterApplicationInfo = 0;
api.ApplicationInfo buildApplicationInfo() {
  final o = api.ApplicationInfo();
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    o.emails = buildUnnamed0();
    o.instruction = 'foo';
    o.uris = buildUnnamed1();
  }
  buildCounterApplicationInfo--;
  return o;
}

void checkApplicationInfo(api.ApplicationInfo o) {
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    checkUnnamed0(o.emails!);
    unittest.expect(
      o.instruction!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.uris!);
  }
  buildCounterApplicationInfo--;
}

core.List<api.Job> buildUnnamed2() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed2(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterBatchCreateJobsRequest = 0;
api.BatchCreateJobsRequest buildBatchCreateJobsRequest() {
  final o = api.BatchCreateJobsRequest();
  buildCounterBatchCreateJobsRequest++;
  if (buildCounterBatchCreateJobsRequest < 3) {
    o.jobs = buildUnnamed2();
  }
  buildCounterBatchCreateJobsRequest--;
  return o;
}

void checkBatchCreateJobsRequest(api.BatchCreateJobsRequest o) {
  buildCounterBatchCreateJobsRequest++;
  if (buildCounterBatchCreateJobsRequest < 3) {
    checkUnnamed2(o.jobs!);
  }
  buildCounterBatchCreateJobsRequest--;
}

core.List<api.JobResult> buildUnnamed3() => [
      buildJobResult(),
      buildJobResult(),
    ];

void checkUnnamed3(core.List<api.JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobResult(o[0]);
  checkJobResult(o[1]);
}

core.int buildCounterBatchCreateJobsResponse = 0;
api.BatchCreateJobsResponse buildBatchCreateJobsResponse() {
  final o = api.BatchCreateJobsResponse();
  buildCounterBatchCreateJobsResponse++;
  if (buildCounterBatchCreateJobsResponse < 3) {
    o.jobResults = buildUnnamed3();
  }
  buildCounterBatchCreateJobsResponse--;
  return o;
}

void checkBatchCreateJobsResponse(api.BatchCreateJobsResponse o) {
  buildCounterBatchCreateJobsResponse++;
  if (buildCounterBatchCreateJobsResponse < 3) {
    checkUnnamed3(o.jobResults!);
  }
  buildCounterBatchCreateJobsResponse--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterBatchDeleteJobsRequest = 0;
api.BatchDeleteJobsRequest buildBatchDeleteJobsRequest() {
  final o = api.BatchDeleteJobsRequest();
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    o.names = buildUnnamed4();
  }
  buildCounterBatchDeleteJobsRequest--;
  return o;
}

void checkBatchDeleteJobsRequest(api.BatchDeleteJobsRequest o) {
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    checkUnnamed4(o.names!);
  }
  buildCounterBatchDeleteJobsRequest--;
}

core.List<api.JobResult> buildUnnamed5() => [
      buildJobResult(),
      buildJobResult(),
    ];

void checkUnnamed5(core.List<api.JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobResult(o[0]);
  checkJobResult(o[1]);
}

core.int buildCounterBatchDeleteJobsResponse = 0;
api.BatchDeleteJobsResponse buildBatchDeleteJobsResponse() {
  final o = api.BatchDeleteJobsResponse();
  buildCounterBatchDeleteJobsResponse++;
  if (buildCounterBatchDeleteJobsResponse < 3) {
    o.jobResults = buildUnnamed5();
  }
  buildCounterBatchDeleteJobsResponse--;
  return o;
}

void checkBatchDeleteJobsResponse(api.BatchDeleteJobsResponse o) {
  buildCounterBatchDeleteJobsResponse++;
  if (buildCounterBatchDeleteJobsResponse < 3) {
    checkUnnamed5(o.jobResults!);
  }
  buildCounterBatchDeleteJobsResponse--;
}

core.int buildCounterBatchOperationMetadata = 0;
api.BatchOperationMetadata buildBatchOperationMetadata() {
  final o = api.BatchOperationMetadata();
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.failureCount = 42;
    o.state = 'foo';
    o.stateDescription = 'foo';
    o.successCount = 42;
    o.totalCount = 42;
    o.updateTime = 'foo';
  }
  buildCounterBatchOperationMetadata--;
  return o;
}

void checkBatchOperationMetadata(api.BatchOperationMetadata o) {
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.successCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchOperationMetadata--;
}

core.List<api.Job> buildUnnamed6() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed6(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterBatchUpdateJobsRequest = 0;
api.BatchUpdateJobsRequest buildBatchUpdateJobsRequest() {
  final o = api.BatchUpdateJobsRequest();
  buildCounterBatchUpdateJobsRequest++;
  if (buildCounterBatchUpdateJobsRequest < 3) {
    o.jobs = buildUnnamed6();
    o.updateMask = 'foo';
  }
  buildCounterBatchUpdateJobsRequest--;
  return o;
}

void checkBatchUpdateJobsRequest(api.BatchUpdateJobsRequest o) {
  buildCounterBatchUpdateJobsRequest++;
  if (buildCounterBatchUpdateJobsRequest < 3) {
    checkUnnamed6(o.jobs!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchUpdateJobsRequest--;
}

core.List<api.JobResult> buildUnnamed7() => [
      buildJobResult(),
      buildJobResult(),
    ];

void checkUnnamed7(core.List<api.JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobResult(o[0]);
  checkJobResult(o[1]);
}

core.int buildCounterBatchUpdateJobsResponse = 0;
api.BatchUpdateJobsResponse buildBatchUpdateJobsResponse() {
  final o = api.BatchUpdateJobsResponse();
  buildCounterBatchUpdateJobsResponse++;
  if (buildCounterBatchUpdateJobsResponse < 3) {
    o.jobResults = buildUnnamed7();
  }
  buildCounterBatchUpdateJobsResponse--;
  return o;
}

void checkBatchUpdateJobsResponse(api.BatchUpdateJobsResponse o) {
  buildCounterBatchUpdateJobsResponse++;
  if (buildCounterBatchUpdateJobsResponse < 3) {
    checkUnnamed7(o.jobResults!);
  }
  buildCounterBatchUpdateJobsResponse--;
}

core.int buildCounterClientEvent = 0;
api.ClientEvent buildClientEvent() {
  final o = api.ClientEvent();
  buildCounterClientEvent++;
  if (buildCounterClientEvent < 3) {
    o.createTime = 'foo';
    o.eventId = 'foo';
    o.eventNotes = 'foo';
    o.jobEvent = buildJobEvent();
    o.requestId = 'foo';
  }
  buildCounterClientEvent--;
  return o;
}

void checkClientEvent(api.ClientEvent o) {
  buildCounterClientEvent++;
  if (buildCounterClientEvent < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventNotes!,
      unittest.equals('foo'),
    );
    checkJobEvent(o.jobEvent!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientEvent--;
}

core.int buildCounterCommuteFilter = 0;
api.CommuteFilter buildCommuteFilter() {
  final o = api.CommuteFilter();
  buildCounterCommuteFilter++;
  if (buildCounterCommuteFilter < 3) {
    o.allowImpreciseAddresses = true;
    o.commuteMethod = 'foo';
    o.departureTime = buildTimeOfDay();
    o.roadTraffic = 'foo';
    o.startCoordinates = buildLatLng();
    o.travelDuration = 'foo';
  }
  buildCounterCommuteFilter--;
  return o;
}

void checkCommuteFilter(api.CommuteFilter o) {
  buildCounterCommuteFilter++;
  if (buildCounterCommuteFilter < 3) {
    unittest.expect(o.allowImpreciseAddresses!, unittest.isTrue);
    unittest.expect(
      o.commuteMethod!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.departureTime!);
    unittest.expect(
      o.roadTraffic!,
      unittest.equals('foo'),
    );
    checkLatLng(o.startCoordinates!);
    unittest.expect(
      o.travelDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommuteFilter--;
}

core.int buildCounterCommuteInfo = 0;
api.CommuteInfo buildCommuteInfo() {
  final o = api.CommuteInfo();
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    o.jobLocation = buildLocation();
    o.travelDuration = 'foo';
  }
  buildCounterCommuteInfo--;
  return o;
}

void checkCommuteInfo(api.CommuteInfo o) {
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    checkLocation(o.jobLocation!);
    unittest.expect(
      o.travelDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommuteInfo--;
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

core.int buildCounterCompany = 0;
api.Company buildCompany() {
  final o = api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.careerSiteUri = 'foo';
    o.derivedInfo = buildCompanyDerivedInfo();
    o.displayName = 'foo';
    o.eeoText = 'foo';
    o.externalId = 'foo';
    o.headquartersAddress = 'foo';
    o.hiringAgency = true;
    o.imageUri = 'foo';
    o.keywordSearchableJobCustomAttributes = buildUnnamed8();
    o.name = 'foo';
    o.size = 'foo';
    o.suspended = true;
    o.websiteUri = 'foo';
  }
  buildCounterCompany--;
  return o;
}

void checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    unittest.expect(
      o.careerSiteUri!,
      unittest.equals('foo'),
    );
    checkCompanyDerivedInfo(o.derivedInfo!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eeoText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.headquartersAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hiringAgency!, unittest.isTrue);
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.keywordSearchableJobCustomAttributes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(
      o.websiteUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompany--;
}

core.int buildCounterCompanyDerivedInfo = 0;
api.CompanyDerivedInfo buildCompanyDerivedInfo() {
  final o = api.CompanyDerivedInfo();
  buildCounterCompanyDerivedInfo++;
  if (buildCounterCompanyDerivedInfo < 3) {
    o.headquartersLocation = buildLocation();
  }
  buildCounterCompanyDerivedInfo--;
  return o;
}

void checkCompanyDerivedInfo(api.CompanyDerivedInfo o) {
  buildCounterCompanyDerivedInfo++;
  if (buildCounterCompanyDerivedInfo < 3) {
    checkLocation(o.headquartersLocation!);
  }
  buildCounterCompanyDerivedInfo--;
}

core.int buildCounterCompensationEntry = 0;
api.CompensationEntry buildCompensationEntry() {
  final o = api.CompensationEntry();
  buildCounterCompensationEntry++;
  if (buildCounterCompensationEntry < 3) {
    o.amount = buildMoney();
    o.description = 'foo';
    o.expectedUnitsPerYear = 42.0;
    o.range = buildCompensationRange();
    o.type = 'foo';
    o.unit = 'foo';
  }
  buildCounterCompensationEntry--;
  return o;
}

void checkCompensationEntry(api.CompensationEntry o) {
  buildCounterCompensationEntry++;
  if (buildCounterCompensationEntry < 3) {
    checkMoney(o.amount!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expectedUnitsPerYear!,
      unittest.equals(42.0),
    );
    checkCompensationRange(o.range!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompensationEntry--;
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

core.int buildCounterCompensationFilter = 0;
api.CompensationFilter buildCompensationFilter() {
  final o = api.CompensationFilter();
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    o.includeJobsWithUnspecifiedCompensationRange = true;
    o.range = buildCompensationRange();
    o.type = 'foo';
    o.units = buildUnnamed9();
  }
  buildCounterCompensationFilter--;
  return o;
}

void checkCompensationFilter(api.CompensationFilter o) {
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    unittest.expect(
        o.includeJobsWithUnspecifiedCompensationRange!, unittest.isTrue);
    checkCompensationRange(o.range!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.units!);
  }
  buildCounterCompensationFilter--;
}

core.List<api.CompensationEntry> buildUnnamed10() => [
      buildCompensationEntry(),
      buildCompensationEntry(),
    ];

void checkUnnamed10(core.List<api.CompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationEntry(o[0]);
  checkCompensationEntry(o[1]);
}

core.int buildCounterCompensationInfo = 0;
api.CompensationInfo buildCompensationInfo() {
  final o = api.CompensationInfo();
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    o.annualizedBaseCompensationRange = buildCompensationRange();
    o.annualizedTotalCompensationRange = buildCompensationRange();
    o.entries = buildUnnamed10();
  }
  buildCounterCompensationInfo--;
  return o;
}

void checkCompensationInfo(api.CompensationInfo o) {
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    checkCompensationRange(o.annualizedBaseCompensationRange!);
    checkCompensationRange(o.annualizedTotalCompensationRange!);
    checkUnnamed10(o.entries!);
  }
  buildCounterCompensationInfo--;
}

core.int buildCounterCompensationRange = 0;
api.CompensationRange buildCompensationRange() {
  final o = api.CompensationRange();
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    o.maxCompensation = buildMoney();
    o.minCompensation = buildMoney();
  }
  buildCounterCompensationRange--;
  return o;
}

void checkCompensationRange(api.CompensationRange o) {
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    checkMoney(o.maxCompensation!);
    checkMoney(o.minCompensation!);
  }
  buildCounterCompensationRange--;
}

core.List<api.CompletionResult> buildUnnamed11() => [
      buildCompletionResult(),
      buildCompletionResult(),
    ];

void checkUnnamed11(core.List<api.CompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompletionResult(o[0]);
  checkCompletionResult(o[1]);
}

core.int buildCounterCompleteQueryResponse = 0;
api.CompleteQueryResponse buildCompleteQueryResponse() {
  final o = api.CompleteQueryResponse();
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    o.completionResults = buildUnnamed11();
    o.metadata = buildResponseMetadata();
  }
  buildCounterCompleteQueryResponse--;
  return o;
}

void checkCompleteQueryResponse(api.CompleteQueryResponse o) {
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    checkUnnamed11(o.completionResults!);
    checkResponseMetadata(o.metadata!);
  }
  buildCounterCompleteQueryResponse--;
}

core.int buildCounterCompletionResult = 0;
api.CompletionResult buildCompletionResult() {
  final o = api.CompletionResult();
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    o.imageUri = 'foo';
    o.suggestion = 'foo';
    o.type = 'foo';
  }
  buildCounterCompletionResult--;
  return o;
}

void checkCompletionResult(api.CompletionResult o) {
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.suggestion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompletionResult--;
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

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  final o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.filterable = true;
    o.keywordSearchable = true;
    o.longValues = buildUnnamed12();
    o.stringValues = buildUnnamed13();
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    unittest.expect(o.filterable!, unittest.isTrue);
    unittest.expect(o.keywordSearchable!, unittest.isTrue);
    checkUnnamed12(o.longValues!);
    checkUnnamed13(o.stringValues!);
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCustomRankingInfo = 0;
api.CustomRankingInfo buildCustomRankingInfo() {
  final o = api.CustomRankingInfo();
  buildCounterCustomRankingInfo++;
  if (buildCounterCustomRankingInfo < 3) {
    o.importanceLevel = 'foo';
    o.rankingExpression = 'foo';
  }
  buildCounterCustomRankingInfo--;
  return o;
}

void checkCustomRankingInfo(api.CustomRankingInfo o) {
  buildCounterCustomRankingInfo++;
  if (buildCounterCustomRankingInfo < 3) {
    unittest.expect(
      o.importanceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rankingExpression!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomRankingInfo--;
}

core.int buildCounterDeviceInfo = 0;
api.DeviceInfo buildDeviceInfo() {
  final o = api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.deviceType = 'foo';
    o.id = 'foo';
  }
  buildCounterDeviceInfo--;
  return o;
}

void checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(
      o.deviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceInfo--;
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

core.int buildCounterHistogramQuery = 0;
api.HistogramQuery buildHistogramQuery() {
  final o = api.HistogramQuery();
  buildCounterHistogramQuery++;
  if (buildCounterHistogramQuery < 3) {
    o.histogramQuery = 'foo';
  }
  buildCounterHistogramQuery--;
  return o;
}

void checkHistogramQuery(api.HistogramQuery o) {
  buildCounterHistogramQuery++;
  if (buildCounterHistogramQuery < 3) {
    unittest.expect(
      o.histogramQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterHistogramQuery--;
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterHistogramQueryResult = 0;
api.HistogramQueryResult buildHistogramQueryResult() {
  final o = api.HistogramQueryResult();
  buildCounterHistogramQueryResult++;
  if (buildCounterHistogramQueryResult < 3) {
    o.histogram = buildUnnamed14();
    o.histogramQuery = 'foo';
  }
  buildCounterHistogramQueryResult--;
  return o;
}

void checkHistogramQueryResult(api.HistogramQueryResult o) {
  buildCounterHistogramQueryResult++;
  if (buildCounterHistogramQueryResult < 3) {
    checkUnnamed14(o.histogram!);
    unittest.expect(
      o.histogramQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterHistogramQueryResult--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.Map<core.String, api.CustomAttribute> buildUnnamed16() => {
      'x': buildCustomAttribute(),
      'y': buildCustomAttribute(),
    };

void checkUnnamed16(core.Map<core.String, api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o['x']!);
  checkCustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.addresses = buildUnnamed15();
    o.applicationInfo = buildApplicationInfo();
    o.company = 'foo';
    o.companyDisplayName = 'foo';
    o.compensationInfo = buildCompensationInfo();
    o.customAttributes = buildUnnamed16();
    o.degreeTypes = buildUnnamed17();
    o.department = 'foo';
    o.derivedInfo = buildJobDerivedInfo();
    o.description = 'foo';
    o.employmentTypes = buildUnnamed18();
    o.incentives = 'foo';
    o.jobBenefits = buildUnnamed19();
    o.jobEndTime = 'foo';
    o.jobLevel = 'foo';
    o.jobStartTime = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
    o.postingCreateTime = 'foo';
    o.postingExpireTime = 'foo';
    o.postingPublishTime = 'foo';
    o.postingRegion = 'foo';
    o.postingUpdateTime = 'foo';
    o.processingOptions = buildProcessingOptions();
    o.promotionValue = 42;
    o.qualifications = 'foo';
    o.requisitionId = 'foo';
    o.responsibilities = 'foo';
    o.title = 'foo';
    o.visibility = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkUnnamed15(o.addresses!);
    checkApplicationInfo(o.applicationInfo!);
    unittest.expect(
      o.company!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.companyDisplayName!,
      unittest.equals('foo'),
    );
    checkCompensationInfo(o.compensationInfo!);
    checkUnnamed16(o.customAttributes!);
    checkUnnamed17(o.degreeTypes!);
    unittest.expect(
      o.department!,
      unittest.equals('foo'),
    );
    checkJobDerivedInfo(o.derivedInfo!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.employmentTypes!);
    unittest.expect(
      o.incentives!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.jobBenefits!);
    unittest.expect(
      o.jobEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postingCreateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postingExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postingPublishTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postingRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postingUpdateTime!,
      unittest.equals('foo'),
    );
    checkProcessingOptions(o.processingOptions!);
    unittest.expect(
      o.promotionValue!,
      unittest.equals(42),
    );
    unittest.expect(
      o.qualifications!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requisitionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responsibilities!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterJob--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.List<api.Location> buildUnnamed21() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed21(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterJobDerivedInfo = 0;
api.JobDerivedInfo buildJobDerivedInfo() {
  final o = api.JobDerivedInfo();
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed20();
    o.locations = buildUnnamed21();
  }
  buildCounterJobDerivedInfo--;
  return o;
}

void checkJobDerivedInfo(api.JobDerivedInfo o) {
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    checkUnnamed20(o.jobCategories!);
    checkUnnamed21(o.locations!);
  }
  buildCounterJobDerivedInfo--;
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterJobEvent = 0;
api.JobEvent buildJobEvent() {
  final o = api.JobEvent();
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    o.jobs = buildUnnamed22();
    o.type = 'foo';
  }
  buildCounterJobEvent--;
  return o;
}

void checkJobEvent(api.JobEvent o) {
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    checkUnnamed22(o.jobs!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobEvent--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<api.LocationFilter> buildUnnamed29() => [
      buildLocationFilter(),
      buildLocationFilter(),
    ];

void checkUnnamed29(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobQuery = 0;
api.JobQuery buildJobQuery() {
  final o = api.JobQuery();
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    o.commuteFilter = buildCommuteFilter();
    o.companies = buildUnnamed23();
    o.companyDisplayNames = buildUnnamed24();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = 'foo';
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed25();
    o.excludedJobs = buildUnnamed26();
    o.jobCategories = buildUnnamed27();
    o.languageCodes = buildUnnamed28();
    o.locationFilters = buildUnnamed29();
    o.publishTimeRange = buildTimestampRange();
    o.query = 'foo';
    o.queryLanguageCode = 'foo';
  }
  buildCounterJobQuery--;
  return o;
}

void checkJobQuery(api.JobQuery o) {
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    checkCommuteFilter(o.commuteFilter!);
    checkUnnamed23(o.companies!);
    checkUnnamed24(o.companyDisplayNames!);
    checkCompensationFilter(o.compensationFilter!);
    unittest.expect(
      o.customAttributeFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableSpellCheck!, unittest.isTrue);
    checkUnnamed25(o.employmentTypes!);
    checkUnnamed26(o.excludedJobs!);
    checkUnnamed27(o.jobCategories!);
    checkUnnamed28(o.languageCodes!);
    checkUnnamed29(o.locationFilters!);
    checkTimestampRange(o.publishTimeRange!);
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.queryLanguageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobQuery--;
}

core.int buildCounterJobResult = 0;
api.JobResult buildJobResult() {
  final o = api.JobResult();
  buildCounterJobResult++;
  if (buildCounterJobResult < 3) {
    o.job = buildJob();
    o.status = buildStatus();
  }
  buildCounterJobResult--;
  return o;
}

void checkJobResult(api.JobResult o) {
  buildCounterJobResult++;
  if (buildCounterJobResult < 3) {
    checkJob(o.job!);
    checkStatus(o.status!);
  }
  buildCounterJobResult--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterLatLng--;
}

core.List<api.Company> buildUnnamed30() => [
      buildCompany(),
      buildCompany(),
    ];

void checkUnnamed30(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCompaniesResponse = 0;
api.ListCompaniesResponse buildListCompaniesResponse() {
  final o = api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed30();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListCompaniesResponse--;
  return o;
}

void checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed30(o.companies!);
    checkResponseMetadata(o.metadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCompaniesResponse--;
}

core.List<api.Job> buildUnnamed31() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed31(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed31();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed31(o.jobs!);
    checkResponseMetadata(o.metadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<api.Tenant> buildUnnamed32() => [
      buildTenant(),
      buildTenant(),
    ];

void checkUnnamed32(core.List<api.Tenant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenant(o[0]);
  checkTenant(o[1]);
}

core.int buildCounterListTenantsResponse = 0;
api.ListTenantsResponse buildListTenantsResponse() {
  final o = api.ListTenantsResponse();
  buildCounterListTenantsResponse++;
  if (buildCounterListTenantsResponse < 3) {
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
    o.tenants = buildUnnamed32();
  }
  buildCounterListTenantsResponse--;
  return o;
}

void checkListTenantsResponse(api.ListTenantsResponse o) {
  buildCounterListTenantsResponse++;
  if (buildCounterListTenantsResponse < 3) {
    checkResponseMetadata(o.metadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.tenants!);
  }
  buildCounterListTenantsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.latLng = buildLatLng();
    o.locationType = 'foo';
    o.postalAddress = buildPostalAddress();
    o.radiusMiles = 42.0;
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkLatLng(o.latLng!);
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
    checkPostalAddress(o.postalAddress!);
    unittest.expect(
      o.radiusMiles!,
      unittest.equals(42.0),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLocationFilter = 0;
api.LocationFilter buildLocationFilter() {
  final o = api.LocationFilter();
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    o.address = 'foo';
    o.distanceInMiles = 42.0;
    o.latLng = buildLatLng();
    o.regionCode = 'foo';
    o.telecommutePreference = 'foo';
  }
  buildCounterLocationFilter--;
  return o;
}

void checkLocationFilter(api.LocationFilter o) {
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distanceInMiles!,
      unittest.equals(42.0),
    );
    checkLatLng(o.latLng!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.telecommutePreference!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocationFilter--;
}

core.int buildCounterMatchingJob = 0;
api.MatchingJob buildMatchingJob() {
  final o = api.MatchingJob();
  buildCounterMatchingJob++;
  if (buildCounterMatchingJob < 3) {
    o.commuteInfo = buildCommuteInfo();
    o.job = buildJob();
    o.jobSummary = 'foo';
    o.jobTitleSnippet = 'foo';
    o.searchTextSnippet = 'foo';
  }
  buildCounterMatchingJob--;
  return o;
}

void checkMatchingJob(api.MatchingJob o) {
  buildCounterMatchingJob++;
  if (buildCounterMatchingJob < 3) {
    checkCommuteInfo(o.commuteInfo!);
    checkJob(o.job!);
    unittest.expect(
      o.jobSummary!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobTitleSnippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchTextSnippet!,
      unittest.equals('foo'),
    );
  }
  buildCounterMatchingJob--;
}

core.Map<core.String, api.NamespacedDebugInput> buildUnnamed33() => {
      'x': buildNamespacedDebugInput(),
      'y': buildNamespacedDebugInput(),
    };

void checkUnnamed33(core.Map<core.String, api.NamespacedDebugInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespacedDebugInput(o['x']!);
  checkNamespacedDebugInput(o['y']!);
}

core.int buildCounterMendelDebugInput = 0;
api.MendelDebugInput buildMendelDebugInput() {
  final o = api.MendelDebugInput();
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    o.namespacedDebugInput = buildUnnamed33();
  }
  buildCounterMendelDebugInput--;
  return o;
}

void checkMendelDebugInput(api.MendelDebugInput o) {
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    checkUnnamed33(o.namespacedDebugInput!);
  }
  buildCounterMendelDebugInput--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoney--;
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed36() => [
      42,
      42,
    ];

void checkUnnamed36(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed39() => [
      42,
      42,
    ];

void checkUnnamed39(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed42() => [
      42,
      42,
    ];

void checkUnnamed42(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.Map<core.String, core.String> buildUnnamed43() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed43(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.bool> buildUnnamed44() => {
      'x': true,
      'y': true,
    };

void checkUnnamed44(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.isTrue);
  unittest.expect(o['y']!, unittest.isTrue);
}

core.int buildCounterNamespacedDebugInput = 0;
api.NamespacedDebugInput buildNamespacedDebugInput() {
  final o = api.NamespacedDebugInput();
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    o.absolutelyForcedExpNames = buildUnnamed34();
    o.absolutelyForcedExpTags = buildUnnamed35();
    o.absolutelyForcedExps = buildUnnamed36();
    o.conditionallyForcedExpNames = buildUnnamed37();
    o.conditionallyForcedExpTags = buildUnnamed38();
    o.conditionallyForcedExps = buildUnnamed39();
    o.disableAutomaticEnrollmentSelection = true;
    o.disableExpNames = buildUnnamed40();
    o.disableExpTags = buildUnnamed41();
    o.disableExps = buildUnnamed42();
    o.disableManualEnrollmentSelection = true;
    o.disableOrganicSelection = true;
    o.forcedFlags = buildUnnamed43();
    o.forcedRollouts = buildUnnamed44();
  }
  buildCounterNamespacedDebugInput--;
  return o;
}

void checkNamespacedDebugInput(api.NamespacedDebugInput o) {
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    checkUnnamed34(o.absolutelyForcedExpNames!);
    checkUnnamed35(o.absolutelyForcedExpTags!);
    checkUnnamed36(o.absolutelyForcedExps!);
    checkUnnamed37(o.conditionallyForcedExpNames!);
    checkUnnamed38(o.conditionallyForcedExpTags!);
    checkUnnamed39(o.conditionallyForcedExps!);
    unittest.expect(o.disableAutomaticEnrollmentSelection!, unittest.isTrue);
    checkUnnamed40(o.disableExpNames!);
    checkUnnamed41(o.disableExpTags!);
    checkUnnamed42(o.disableExps!);
    unittest.expect(o.disableManualEnrollmentSelection!, unittest.isTrue);
    unittest.expect(o.disableOrganicSelection!, unittest.isTrue);
    checkUnnamed43(o.forcedFlags!);
    checkUnnamed44(o.forcedRollouts!);
  }
  buildCounterNamespacedDebugInput--;
}

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed46() => {
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

void checkUnnamed46(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed45();
    o.name = 'foo';
    o.response = buildUnnamed46();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed45(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  final o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed47();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed48();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterPostalAddress--;
  return o;
}

void checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed47(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostalAddress--;
}

core.int buildCounterProcessingOptions = 0;
api.ProcessingOptions buildProcessingOptions() {
  final o = api.ProcessingOptions();
  buildCounterProcessingOptions++;
  if (buildCounterProcessingOptions < 3) {
    o.disableStreetAddressResolution = true;
    o.htmlSanitization = 'foo';
  }
  buildCounterProcessingOptions--;
  return o;
}

void checkProcessingOptions(api.ProcessingOptions o) {
  buildCounterProcessingOptions++;
  if (buildCounterProcessingOptions < 3) {
    unittest.expect(o.disableStreetAddressResolution!, unittest.isTrue);
    unittest.expect(
      o.htmlSanitization!,
      unittest.equals('foo'),
    );
  }
  buildCounterProcessingOptions--;
}

core.int buildCounterRequestMetadata = 0;
api.RequestMetadata buildRequestMetadata() {
  final o = api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    o.allowMissingIds = true;
    o.deviceInfo = buildDeviceInfo();
    o.domain = 'foo';
    o.sessionId = 'foo';
    o.userId = 'foo';
  }
  buildCounterRequestMetadata--;
  return o;
}

void checkRequestMetadata(api.RequestMetadata o) {
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    unittest.expect(o.allowMissingIds!, unittest.isTrue);
    checkDeviceInfo(o.deviceInfo!);
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestMetadata--;
}

core.int buildCounterResponseMetadata = 0;
api.ResponseMetadata buildResponseMetadata() {
  final o = api.ResponseMetadata();
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    o.requestId = 'foo';
  }
  buildCounterResponseMetadata--;
  return o;
}

void checkResponseMetadata(api.ResponseMetadata o) {
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterResponseMetadata--;
}

core.List<api.HistogramQuery> buildUnnamed49() => [
      buildHistogramQuery(),
      buildHistogramQuery(),
    ];

void checkUnnamed49(core.List<api.HistogramQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramQuery(o[0]);
  checkHistogramQuery(o[1]);
}

core.int buildCounterSearchJobsRequest = 0;
api.SearchJobsRequest buildSearchJobsRequest() {
  final o = api.SearchJobsRequest();
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    o.customRankingInfo = buildCustomRankingInfo();
    o.disableKeywordMatch = true;
    o.diversificationLevel = 'foo';
    o.enableBroadening = true;
    o.histogramQueries = buildUnnamed49();
    o.jobQuery = buildJobQuery();
    o.jobView = 'foo';
    o.keywordMatchMode = 'foo';
    o.maxPageSize = 42;
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageToken = 'foo';
    o.requestMetadata = buildRequestMetadata();
    o.searchMode = 'foo';
  }
  buildCounterSearchJobsRequest--;
  return o;
}

void checkSearchJobsRequest(api.SearchJobsRequest o) {
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    checkCustomRankingInfo(o.customRankingInfo!);
    unittest.expect(o.disableKeywordMatch!, unittest.isTrue);
    unittest.expect(
      o.diversificationLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableBroadening!, unittest.isTrue);
    checkUnnamed49(o.histogramQueries!);
    checkJobQuery(o.jobQuery!);
    unittest.expect(
      o.jobView!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keywordMatchMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxPageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.orderBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkRequestMetadata(o.requestMetadata!);
    unittest.expect(
      o.searchMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchJobsRequest--;
}

core.List<api.HistogramQueryResult> buildUnnamed50() => [
      buildHistogramQueryResult(),
      buildHistogramQueryResult(),
    ];

void checkUnnamed50(core.List<api.HistogramQueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramQueryResult(o[0]);
  checkHistogramQueryResult(o[1]);
}

core.List<api.Location> buildUnnamed51() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed51(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.List<api.MatchingJob> buildUnnamed52() => [
      buildMatchingJob(),
      buildMatchingJob(),
    ];

void checkUnnamed52(core.List<api.MatchingJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchingJob(o[0]);
  checkMatchingJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
api.SearchJobsResponse buildSearchJobsResponse() {
  final o = api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.broadenedQueryJobsCount = 42;
    o.histogramQueryResults = buildUnnamed50();
    o.locationFilters = buildUnnamed51();
    o.matchingJobs = buildUnnamed52();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
    o.spellCorrection = buildSpellingCorrection();
    o.totalSize = 42;
  }
  buildCounterSearchJobsResponse--;
  return o;
}

void checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    unittest.expect(
      o.broadenedQueryJobsCount!,
      unittest.equals(42),
    );
    checkUnnamed50(o.histogramQueryResults!);
    checkUnnamed51(o.locationFilters!);
    checkUnnamed52(o.matchingJobs!);
    checkResponseMetadata(o.metadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkSpellingCorrection(o.spellCorrection!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterSearchJobsResponse--;
}

core.int buildCounterSpellingCorrection = 0;
api.SpellingCorrection buildSpellingCorrection() {
  final o = api.SpellingCorrection();
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    o.corrected = true;
    o.correctedHtml = 'foo';
    o.correctedText = 'foo';
  }
  buildCounterSpellingCorrection--;
  return o;
}

void checkSpellingCorrection(api.SpellingCorrection o) {
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    unittest.expect(o.corrected!, unittest.isTrue);
    unittest.expect(
      o.correctedHtml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.correctedText!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpellingCorrection--;
}

core.Map<core.String, core.Object?> buildUnnamed53() => {
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

void checkUnnamed53(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed54() => [
      buildUnnamed53(),
      buildUnnamed53(),
    ];

void checkUnnamed54(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed53(o[0]);
  checkUnnamed53(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed54();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed54(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTenant = 0;
api.Tenant buildTenant() {
  final o = api.Tenant();
  buildCounterTenant++;
  if (buildCounterTenant < 3) {
    o.externalId = 'foo';
    o.name = 'foo';
  }
  buildCounterTenant--;
  return o;
}

void checkTenant(api.Tenant o) {
  buildCounterTenant++;
  if (buildCounterTenant < 3) {
    unittest.expect(
      o.externalId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterTenant--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimestampRange = 0;
api.TimestampRange buildTimestampRange() {
  final o = api.TimestampRange();
  buildCounterTimestampRange++;
  if (buildCounterTimestampRange < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimestampRange--;
  return o;
}

void checkTimestampRange(api.TimestampRange o) {
  buildCounterTimestampRange++;
  if (buildCounterTimestampRange < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimestampRange--;
}

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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
  unittest.group('obj-schema-ApplicationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationInfo(od);
    });
  });

  unittest.group('obj-schema-BatchCreateJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateJobsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateJobsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateJobsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteJobsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteJobsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteJobsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateJobsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateJobsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ClientEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientEvent(od);
    });
  });

  unittest.group('obj-schema-CommuteFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommuteFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommuteFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommuteFilter(od);
    });
  });

  unittest.group('obj-schema-CommuteInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommuteInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommuteInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommuteInfo(od);
    });
  });

  unittest.group('obj-schema-Company', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompany();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Company.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCompany(od);
    });
  });

  unittest.group('obj-schema-CompanyDerivedInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompanyDerivedInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompanyDerivedInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompanyDerivedInfo(od);
    });
  });

  unittest.group('obj-schema-CompensationEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompensationEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompensationEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationEntry(od);
    });
  });

  unittest.group('obj-schema-CompensationFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompensationFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompensationFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationFilter(od);
    });
  });

  unittest.group('obj-schema-CompensationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompensationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompensationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationInfo(od);
    });
  });

  unittest.group('obj-schema-CompensationRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompensationRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompensationRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationRange(od);
    });
  });

  unittest.group('obj-schema-CompleteQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteQueryResponse(od);
    });
  });

  unittest.group('obj-schema-CompletionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompletionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompletionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompletionResult(od);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-CustomRankingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomRankingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomRankingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomRankingInfo(od);
    });
  });

  unittest.group('obj-schema-DeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeviceInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceInfo(od);
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

  unittest.group('obj-schema-HistogramQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistogramQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistogramQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistogramQuery(od);
    });
  });

  unittest.group('obj-schema-HistogramQueryResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistogramQueryResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HistogramQueryResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistogramQueryResult(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobDerivedInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobDerivedInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobDerivedInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobDerivedInfo(od);
    });
  });

  unittest.group('obj-schema-JobEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobEvent.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobEvent(od);
    });
  });

  unittest.group('obj-schema-JobQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobQuery.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobQuery(od);
    });
  });

  unittest.group('obj-schema-JobResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobResult.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobResult(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-ListCompaniesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCompaniesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCompaniesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCompaniesResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTenantsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTenantsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTenantsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTenantsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-LocationFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationFilter(od);
    });
  });

  unittest.group('obj-schema-MatchingJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatchingJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MatchingJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMatchingJob(od);
    });
  });

  unittest.group('obj-schema-MendelDebugInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMendelDebugInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MendelDebugInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMendelDebugInput(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-NamespacedDebugInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamespacedDebugInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamespacedDebugInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamespacedDebugInput(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalAddress(od);
    });
  });

  unittest.group('obj-schema-ProcessingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessingOptions(od);
    });
  });

  unittest.group('obj-schema-RequestMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestMetadata(od);
    });
  });

  unittest.group('obj-schema-ResponseMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponseMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResponseMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponseMetadata(od);
    });
  });

  unittest.group('obj-schema-SearchJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchJobsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchJobsRequest(od);
    });
  });

  unittest.group('obj-schema-SearchJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchJobsResponse(od);
    });
  });

  unittest.group('obj-schema-SpellingCorrection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpellingCorrection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpellingCorrection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpellingCorrection(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Tenant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTenant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Tenant.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTenant(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimestampRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimestampRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimestampRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimestampRange(od);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.operations;
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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsTenantsResource', () {
    unittest.test('method--completeQuery', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants;
      final arg_tenant = 'foo';
      final arg_company = 'foo';
      final arg_languageCodes = buildUnnamed55();
      final arg_pageSize = 42;
      final arg_query = 'foo';
      final arg_scope = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v4/'),
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
          queryMap['company']!.first,
          unittest.equals(arg_company),
        );
        unittest.expect(
          queryMap['languageCodes']!,
          unittest.equals(arg_languageCodes),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['scope']!.first,
          unittest.equals(arg_scope),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCompleteQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.completeQuery(arg_tenant,
          company: arg_company,
          languageCodes: arg_languageCodes,
          pageSize: arg_pageSize,
          query: arg_query,
          scope: arg_scope,
          type: arg_type,
          $fields: arg_$fields);
      checkCompleteQueryResponse(response as api.CompleteQueryResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants;
      final arg_request = buildTenant();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Tenant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTenant(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildTenant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTenant(response as api.Tenant);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants;
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
          unittest.equals('v4/'),
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
      final res = api.CloudTalentSolutionApi(mock).projects.tenants;
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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildTenant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTenant(response as api.Tenant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants;
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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildListTenantsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTenantsResponse(response as api.ListTenantsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants;
      final arg_request = buildTenant();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Tenant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTenant(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildTenant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkTenant(response as api.Tenant);
    });
  });

  unittest.group('resource-ProjectsTenantsClientEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudTalentSolutionApi(mock).projects.tenants.clientEvents;
      final arg_request = buildClientEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClientEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClientEvent(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildClientEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkClientEvent(response as api.ClientEvent);
    });
  });

  unittest.group('resource-ProjectsTenantsCompaniesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      final arg_request = buildCompany();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Company.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCompany(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkCompany(response as api.Company);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
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
          unittest.equals('v4/'),
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
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCompany(response as api.Company);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_requireOpenJobs = true;
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
          unittest.equals('v4/'),
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
          queryMap['requireOpenJobs']!.first,
          unittest.equals('$arg_requireOpenJobs'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCompaniesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          requireOpenJobs: arg_requireOpenJobs,
          $fields: arg_$fields);
      checkListCompaniesResponse(response as api.ListCompaniesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      final arg_request = buildCompany();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Company.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCompany(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCompany(response as api.Company);
    });
  });

  unittest.group('resource-ProjectsTenantsJobsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_request = buildBatchCreateJobsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateJobsRequest(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_request = buildBatchDeleteJobsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeleteJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteJobsRequest(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_request = buildBatchUpdateJobsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateJobsRequest(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_request = buildJob();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
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
          unittest.equals('v4/'),
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
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_jobView = 'foo';
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
          unittest.equals('v4/'),
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
          queryMap['jobView']!.first,
          unittest.equals(arg_jobView),
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          jobView: arg_jobView,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_request = buildJob();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_request = buildSearchJobsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchJobsRequest(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildSearchJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_parent, $fields: arg_$fields);
      checkSearchJobsResponse(response as api.SearchJobsResponse);
    });

    unittest.test('method--searchForAlert', () async {
      final mock = HttpServerMock();
      final res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      final arg_request = buildSearchJobsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchJobsRequest(obj);

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
          unittest.equals('v4/'),
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
        final resp = convert.json.encode(buildSearchJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForAlert(arg_request, arg_parent,
          $fields: arg_$fields);
      checkSearchJobsResponse(response as api.SearchJobsResponse);
    });
  });
}
