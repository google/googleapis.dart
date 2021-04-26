// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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

core.List<core.String> buildUnnamed6485() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6485(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6486() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6486(core.List<core.String> o) {
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
  var o = api.ApplicationInfo();
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    o.emails = buildUnnamed6485();
    o.instruction = 'foo';
    o.uris = buildUnnamed6486();
  }
  buildCounterApplicationInfo--;
  return o;
}

void checkApplicationInfo(api.ApplicationInfo o) {
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    checkUnnamed6485(o.emails!);
    unittest.expect(
      o.instruction!,
      unittest.equals('foo'),
    );
    checkUnnamed6486(o.uris!);
  }
  buildCounterApplicationInfo--;
}

core.List<api.Job> buildUnnamed6487() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed6487(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0] as api.Job);
  checkJob(o[1] as api.Job);
}

core.int buildCounterBatchCreateJobsRequest = 0;
api.BatchCreateJobsRequest buildBatchCreateJobsRequest() {
  var o = api.BatchCreateJobsRequest();
  buildCounterBatchCreateJobsRequest++;
  if (buildCounterBatchCreateJobsRequest < 3) {
    o.jobs = buildUnnamed6487();
  }
  buildCounterBatchCreateJobsRequest--;
  return o;
}

void checkBatchCreateJobsRequest(api.BatchCreateJobsRequest o) {
  buildCounterBatchCreateJobsRequest++;
  if (buildCounterBatchCreateJobsRequest < 3) {
    checkUnnamed6487(o.jobs!);
  }
  buildCounterBatchCreateJobsRequest--;
}

core.List<api.JobResult> buildUnnamed6488() {
  var o = <api.JobResult>[];
  o.add(buildJobResult());
  o.add(buildJobResult());
  return o;
}

void checkUnnamed6488(core.List<api.JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobResult(o[0] as api.JobResult);
  checkJobResult(o[1] as api.JobResult);
}

core.int buildCounterBatchCreateJobsResponse = 0;
api.BatchCreateJobsResponse buildBatchCreateJobsResponse() {
  var o = api.BatchCreateJobsResponse();
  buildCounterBatchCreateJobsResponse++;
  if (buildCounterBatchCreateJobsResponse < 3) {
    o.jobResults = buildUnnamed6488();
  }
  buildCounterBatchCreateJobsResponse--;
  return o;
}

void checkBatchCreateJobsResponse(api.BatchCreateJobsResponse o) {
  buildCounterBatchCreateJobsResponse++;
  if (buildCounterBatchCreateJobsResponse < 3) {
    checkUnnamed6488(o.jobResults!);
  }
  buildCounterBatchCreateJobsResponse--;
}

core.List<core.String> buildUnnamed6489() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6489(core.List<core.String> o) {
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
  var o = api.BatchDeleteJobsRequest();
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    o.names = buildUnnamed6489();
  }
  buildCounterBatchDeleteJobsRequest--;
  return o;
}

void checkBatchDeleteJobsRequest(api.BatchDeleteJobsRequest o) {
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    checkUnnamed6489(o.names!);
  }
  buildCounterBatchDeleteJobsRequest--;
}

core.List<api.JobResult> buildUnnamed6490() {
  var o = <api.JobResult>[];
  o.add(buildJobResult());
  o.add(buildJobResult());
  return o;
}

void checkUnnamed6490(core.List<api.JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobResult(o[0] as api.JobResult);
  checkJobResult(o[1] as api.JobResult);
}

core.int buildCounterBatchDeleteJobsResponse = 0;
api.BatchDeleteJobsResponse buildBatchDeleteJobsResponse() {
  var o = api.BatchDeleteJobsResponse();
  buildCounterBatchDeleteJobsResponse++;
  if (buildCounterBatchDeleteJobsResponse < 3) {
    o.jobResults = buildUnnamed6490();
  }
  buildCounterBatchDeleteJobsResponse--;
  return o;
}

void checkBatchDeleteJobsResponse(api.BatchDeleteJobsResponse o) {
  buildCounterBatchDeleteJobsResponse++;
  if (buildCounterBatchDeleteJobsResponse < 3) {
    checkUnnamed6490(o.jobResults!);
  }
  buildCounterBatchDeleteJobsResponse--;
}

core.int buildCounterBatchOperationMetadata = 0;
api.BatchOperationMetadata buildBatchOperationMetadata() {
  var o = api.BatchOperationMetadata();
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

core.List<api.Job> buildUnnamed6491() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed6491(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0] as api.Job);
  checkJob(o[1] as api.Job);
}

core.int buildCounterBatchUpdateJobsRequest = 0;
api.BatchUpdateJobsRequest buildBatchUpdateJobsRequest() {
  var o = api.BatchUpdateJobsRequest();
  buildCounterBatchUpdateJobsRequest++;
  if (buildCounterBatchUpdateJobsRequest < 3) {
    o.jobs = buildUnnamed6491();
    o.updateMask = 'foo';
  }
  buildCounterBatchUpdateJobsRequest--;
  return o;
}

void checkBatchUpdateJobsRequest(api.BatchUpdateJobsRequest o) {
  buildCounterBatchUpdateJobsRequest++;
  if (buildCounterBatchUpdateJobsRequest < 3) {
    checkUnnamed6491(o.jobs!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchUpdateJobsRequest--;
}

core.List<api.JobResult> buildUnnamed6492() {
  var o = <api.JobResult>[];
  o.add(buildJobResult());
  o.add(buildJobResult());
  return o;
}

void checkUnnamed6492(core.List<api.JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobResult(o[0] as api.JobResult);
  checkJobResult(o[1] as api.JobResult);
}

core.int buildCounterBatchUpdateJobsResponse = 0;
api.BatchUpdateJobsResponse buildBatchUpdateJobsResponse() {
  var o = api.BatchUpdateJobsResponse();
  buildCounterBatchUpdateJobsResponse++;
  if (buildCounterBatchUpdateJobsResponse < 3) {
    o.jobResults = buildUnnamed6492();
  }
  buildCounterBatchUpdateJobsResponse--;
  return o;
}

void checkBatchUpdateJobsResponse(api.BatchUpdateJobsResponse o) {
  buildCounterBatchUpdateJobsResponse++;
  if (buildCounterBatchUpdateJobsResponse < 3) {
    checkUnnamed6492(o.jobResults!);
  }
  buildCounterBatchUpdateJobsResponse--;
}

core.int buildCounterClientEvent = 0;
api.ClientEvent buildClientEvent() {
  var o = api.ClientEvent();
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
    checkJobEvent(o.jobEvent! as api.JobEvent);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientEvent--;
}

core.int buildCounterCommuteFilter = 0;
api.CommuteFilter buildCommuteFilter() {
  var o = api.CommuteFilter();
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
    checkTimeOfDay(o.departureTime! as api.TimeOfDay);
    unittest.expect(
      o.roadTraffic!,
      unittest.equals('foo'),
    );
    checkLatLng(o.startCoordinates! as api.LatLng);
    unittest.expect(
      o.travelDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommuteFilter--;
}

core.int buildCounterCommuteInfo = 0;
api.CommuteInfo buildCommuteInfo() {
  var o = api.CommuteInfo();
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
    checkLocation(o.jobLocation! as api.Location);
    unittest.expect(
      o.travelDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommuteInfo--;
}

core.List<core.String> buildUnnamed6493() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6493(core.List<core.String> o) {
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
  var o = api.Company();
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
    o.keywordSearchableJobCustomAttributes = buildUnnamed6493();
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
    checkCompanyDerivedInfo(o.derivedInfo! as api.CompanyDerivedInfo);
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
    checkUnnamed6493(o.keywordSearchableJobCustomAttributes!);
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
  var o = api.CompanyDerivedInfo();
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
    checkLocation(o.headquartersLocation! as api.Location);
  }
  buildCounterCompanyDerivedInfo--;
}

core.int buildCounterCompensationEntry = 0;
api.CompensationEntry buildCompensationEntry() {
  var o = api.CompensationEntry();
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
    checkMoney(o.amount! as api.Money);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expectedUnitsPerYear!,
      unittest.equals(42.0),
    );
    checkCompensationRange(o.range! as api.CompensationRange);
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

core.List<core.String> buildUnnamed6494() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6494(core.List<core.String> o) {
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
  var o = api.CompensationFilter();
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    o.includeJobsWithUnspecifiedCompensationRange = true;
    o.range = buildCompensationRange();
    o.type = 'foo';
    o.units = buildUnnamed6494();
  }
  buildCounterCompensationFilter--;
  return o;
}

void checkCompensationFilter(api.CompensationFilter o) {
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    unittest.expect(
        o.includeJobsWithUnspecifiedCompensationRange!, unittest.isTrue);
    checkCompensationRange(o.range! as api.CompensationRange);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUnnamed6494(o.units!);
  }
  buildCounterCompensationFilter--;
}

core.List<api.CompensationEntry> buildUnnamed6495() {
  var o = <api.CompensationEntry>[];
  o.add(buildCompensationEntry());
  o.add(buildCompensationEntry());
  return o;
}

void checkUnnamed6495(core.List<api.CompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationEntry(o[0] as api.CompensationEntry);
  checkCompensationEntry(o[1] as api.CompensationEntry);
}

core.int buildCounterCompensationInfo = 0;
api.CompensationInfo buildCompensationInfo() {
  var o = api.CompensationInfo();
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    o.annualizedBaseCompensationRange = buildCompensationRange();
    o.annualizedTotalCompensationRange = buildCompensationRange();
    o.entries = buildUnnamed6495();
  }
  buildCounterCompensationInfo--;
  return o;
}

void checkCompensationInfo(api.CompensationInfo o) {
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    checkCompensationRange(
        o.annualizedBaseCompensationRange! as api.CompensationRange);
    checkCompensationRange(
        o.annualizedTotalCompensationRange! as api.CompensationRange);
    checkUnnamed6495(o.entries!);
  }
  buildCounterCompensationInfo--;
}

core.int buildCounterCompensationRange = 0;
api.CompensationRange buildCompensationRange() {
  var o = api.CompensationRange();
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
    checkMoney(o.maxCompensation! as api.Money);
    checkMoney(o.minCompensation! as api.Money);
  }
  buildCounterCompensationRange--;
}

core.List<api.CompletionResult> buildUnnamed6496() {
  var o = <api.CompletionResult>[];
  o.add(buildCompletionResult());
  o.add(buildCompletionResult());
  return o;
}

void checkUnnamed6496(core.List<api.CompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompletionResult(o[0] as api.CompletionResult);
  checkCompletionResult(o[1] as api.CompletionResult);
}

core.int buildCounterCompleteQueryResponse = 0;
api.CompleteQueryResponse buildCompleteQueryResponse() {
  var o = api.CompleteQueryResponse();
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    o.completionResults = buildUnnamed6496();
    o.metadata = buildResponseMetadata();
  }
  buildCounterCompleteQueryResponse--;
  return o;
}

void checkCompleteQueryResponse(api.CompleteQueryResponse o) {
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    checkUnnamed6496(o.completionResults!);
    checkResponseMetadata(o.metadata! as api.ResponseMetadata);
  }
  buildCounterCompleteQueryResponse--;
}

core.int buildCounterCompletionResult = 0;
api.CompletionResult buildCompletionResult() {
  var o = api.CompletionResult();
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

core.List<core.String> buildUnnamed6497() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6497(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6498() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6498(core.List<core.String> o) {
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
  var o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.filterable = true;
    o.keywordSearchable = true;
    o.longValues = buildUnnamed6497();
    o.stringValues = buildUnnamed6498();
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    unittest.expect(o.filterable!, unittest.isTrue);
    unittest.expect(o.keywordSearchable!, unittest.isTrue);
    checkUnnamed6497(o.longValues!);
    checkUnnamed6498(o.stringValues!);
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCustomRankingInfo = 0;
api.CustomRankingInfo buildCustomRankingInfo() {
  var o = api.CustomRankingInfo();
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
  var o = api.DeviceInfo();
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

core.int buildCounterHistogramQuery = 0;
api.HistogramQuery buildHistogramQuery() {
  var o = api.HistogramQuery();
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

core.Map<core.String, core.String> buildUnnamed6499() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6499(core.Map<core.String, core.String> o) {
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
  var o = api.HistogramQueryResult();
  buildCounterHistogramQueryResult++;
  if (buildCounterHistogramQueryResult < 3) {
    o.histogram = buildUnnamed6499();
    o.histogramQuery = 'foo';
  }
  buildCounterHistogramQueryResult--;
  return o;
}

void checkHistogramQueryResult(api.HistogramQueryResult o) {
  buildCounterHistogramQueryResult++;
  if (buildCounterHistogramQueryResult < 3) {
    checkUnnamed6499(o.histogram!);
    unittest.expect(
      o.histogramQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterHistogramQueryResult--;
}

core.List<core.String> buildUnnamed6500() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6500(core.List<core.String> o) {
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

core.Map<core.String, api.CustomAttribute> buildUnnamed6501() {
  var o = <core.String, api.CustomAttribute>{};
  o['x'] = buildCustomAttribute();
  o['y'] = buildCustomAttribute();
  return o;
}

void checkUnnamed6501(core.Map<core.String, api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o['x']! as api.CustomAttribute);
  checkCustomAttribute(o['y']! as api.CustomAttribute);
}

core.List<core.String> buildUnnamed6502() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6502(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6503() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6503(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6504() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6504(core.List<core.String> o) {
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
  var o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.addresses = buildUnnamed6500();
    o.applicationInfo = buildApplicationInfo();
    o.company = 'foo';
    o.companyDisplayName = 'foo';
    o.compensationInfo = buildCompensationInfo();
    o.customAttributes = buildUnnamed6501();
    o.degreeTypes = buildUnnamed6502();
    o.department = 'foo';
    o.derivedInfo = buildJobDerivedInfo();
    o.description = 'foo';
    o.employmentTypes = buildUnnamed6503();
    o.incentives = 'foo';
    o.jobBenefits = buildUnnamed6504();
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
    checkUnnamed6500(o.addresses!);
    checkApplicationInfo(o.applicationInfo! as api.ApplicationInfo);
    unittest.expect(
      o.company!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.companyDisplayName!,
      unittest.equals('foo'),
    );
    checkCompensationInfo(o.compensationInfo! as api.CompensationInfo);
    checkUnnamed6501(o.customAttributes!);
    checkUnnamed6502(o.degreeTypes!);
    unittest.expect(
      o.department!,
      unittest.equals('foo'),
    );
    checkJobDerivedInfo(o.derivedInfo! as api.JobDerivedInfo);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed6503(o.employmentTypes!);
    unittest.expect(
      o.incentives!,
      unittest.equals('foo'),
    );
    checkUnnamed6504(o.jobBenefits!);
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
    checkProcessingOptions(o.processingOptions! as api.ProcessingOptions);
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

core.List<core.String> buildUnnamed6505() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6505(core.List<core.String> o) {
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

core.List<api.Location> buildUnnamed6506() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed6506(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterJobDerivedInfo = 0;
api.JobDerivedInfo buildJobDerivedInfo() {
  var o = api.JobDerivedInfo();
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed6505();
    o.locations = buildUnnamed6506();
  }
  buildCounterJobDerivedInfo--;
  return o;
}

void checkJobDerivedInfo(api.JobDerivedInfo o) {
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    checkUnnamed6505(o.jobCategories!);
    checkUnnamed6506(o.locations!);
  }
  buildCounterJobDerivedInfo--;
}

core.List<core.String> buildUnnamed6507() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6507(core.List<core.String> o) {
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
  var o = api.JobEvent();
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    o.jobs = buildUnnamed6507();
    o.type = 'foo';
  }
  buildCounterJobEvent--;
  return o;
}

void checkJobEvent(api.JobEvent o) {
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    checkUnnamed6507(o.jobs!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobEvent--;
}

core.List<core.String> buildUnnamed6508() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6508(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6509() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6509(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6510() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6510(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6511() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6511(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6512() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6512(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6513() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6513(core.List<core.String> o) {
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

core.List<api.LocationFilter> buildUnnamed6514() {
  var o = <api.LocationFilter>[];
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

void checkUnnamed6514(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0] as api.LocationFilter);
  checkLocationFilter(o[1] as api.LocationFilter);
}

core.int buildCounterJobQuery = 0;
api.JobQuery buildJobQuery() {
  var o = api.JobQuery();
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    o.commuteFilter = buildCommuteFilter();
    o.companies = buildUnnamed6508();
    o.companyDisplayNames = buildUnnamed6509();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = 'foo';
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed6510();
    o.excludedJobs = buildUnnamed6511();
    o.jobCategories = buildUnnamed6512();
    o.languageCodes = buildUnnamed6513();
    o.locationFilters = buildUnnamed6514();
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
    checkCommuteFilter(o.commuteFilter! as api.CommuteFilter);
    checkUnnamed6508(o.companies!);
    checkUnnamed6509(o.companyDisplayNames!);
    checkCompensationFilter(o.compensationFilter! as api.CompensationFilter);
    unittest.expect(
      o.customAttributeFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableSpellCheck!, unittest.isTrue);
    checkUnnamed6510(o.employmentTypes!);
    checkUnnamed6511(o.excludedJobs!);
    checkUnnamed6512(o.jobCategories!);
    checkUnnamed6513(o.languageCodes!);
    checkUnnamed6514(o.locationFilters!);
    checkTimestampRange(o.publishTimeRange! as api.TimestampRange);
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
  var o = api.JobResult();
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
    checkJob(o.job! as api.Job);
    checkStatus(o.status! as api.Status);
  }
  buildCounterJobResult--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  var o = api.LatLng();
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

core.List<api.Company> buildUnnamed6515() {
  var o = <api.Company>[];
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

void checkUnnamed6515(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0] as api.Company);
  checkCompany(o[1] as api.Company);
}

core.int buildCounterListCompaniesResponse = 0;
api.ListCompaniesResponse buildListCompaniesResponse() {
  var o = api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed6515();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListCompaniesResponse--;
  return o;
}

void checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed6515(o.companies!);
    checkResponseMetadata(o.metadata! as api.ResponseMetadata);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCompaniesResponse--;
}

core.List<api.Job> buildUnnamed6516() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed6516(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0] as api.Job);
  checkJob(o[1] as api.Job);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed6516();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed6516(o.jobs!);
    checkResponseMetadata(o.metadata! as api.ResponseMetadata);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<api.Tenant> buildUnnamed6517() {
  var o = <api.Tenant>[];
  o.add(buildTenant());
  o.add(buildTenant());
  return o;
}

void checkUnnamed6517(core.List<api.Tenant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenant(o[0] as api.Tenant);
  checkTenant(o[1] as api.Tenant);
}

core.int buildCounterListTenantsResponse = 0;
api.ListTenantsResponse buildListTenantsResponse() {
  var o = api.ListTenantsResponse();
  buildCounterListTenantsResponse++;
  if (buildCounterListTenantsResponse < 3) {
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
    o.tenants = buildUnnamed6517();
  }
  buildCounterListTenantsResponse--;
  return o;
}

void checkListTenantsResponse(api.ListTenantsResponse o) {
  buildCounterListTenantsResponse++;
  if (buildCounterListTenantsResponse < 3) {
    checkResponseMetadata(o.metadata! as api.ResponseMetadata);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6517(o.tenants!);
  }
  buildCounterListTenantsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
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
    checkLatLng(o.latLng! as api.LatLng);
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
    checkPostalAddress(o.postalAddress! as api.PostalAddress);
    unittest.expect(
      o.radiusMiles!,
      unittest.equals(42.0),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLocationFilter = 0;
api.LocationFilter buildLocationFilter() {
  var o = api.LocationFilter();
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
    checkLatLng(o.latLng! as api.LatLng);
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
  var o = api.MatchingJob();
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
    checkCommuteInfo(o.commuteInfo! as api.CommuteInfo);
    checkJob(o.job! as api.Job);
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

core.Map<core.String, api.NamespacedDebugInput> buildUnnamed6518() {
  var o = <core.String, api.NamespacedDebugInput>{};
  o['x'] = buildNamespacedDebugInput();
  o['y'] = buildNamespacedDebugInput();
  return o;
}

void checkUnnamed6518(core.Map<core.String, api.NamespacedDebugInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespacedDebugInput(o['x']! as api.NamespacedDebugInput);
  checkNamespacedDebugInput(o['y']! as api.NamespacedDebugInput);
}

core.int buildCounterMendelDebugInput = 0;
api.MendelDebugInput buildMendelDebugInput() {
  var o = api.MendelDebugInput();
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    o.namespacedDebugInput = buildUnnamed6518();
  }
  buildCounterMendelDebugInput--;
  return o;
}

void checkMendelDebugInput(api.MendelDebugInput o) {
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    checkUnnamed6518(o.namespacedDebugInput!);
  }
  buildCounterMendelDebugInput--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  var o = api.Money();
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

core.List<core.String> buildUnnamed6519() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6519(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6520() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6520(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed6521() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed6521(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed6522() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6522(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6523() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6523(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed6524() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed6524(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed6525() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6525(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6526() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6526(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed6527() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed6527(core.List<core.int> o) {
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

core.Map<core.String, core.String> buildUnnamed6528() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6528(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.bool> buildUnnamed6529() {
  var o = <core.String, core.bool>{};
  o['x'] = true;
  o['y'] = true;
  return o;
}

void checkUnnamed6529(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.isTrue);
  unittest.expect(o['y']!, unittest.isTrue);
}

core.int buildCounterNamespacedDebugInput = 0;
api.NamespacedDebugInput buildNamespacedDebugInput() {
  var o = api.NamespacedDebugInput();
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    o.absolutelyForcedExpNames = buildUnnamed6519();
    o.absolutelyForcedExpTags = buildUnnamed6520();
    o.absolutelyForcedExps = buildUnnamed6521();
    o.conditionallyForcedExpNames = buildUnnamed6522();
    o.conditionallyForcedExpTags = buildUnnamed6523();
    o.conditionallyForcedExps = buildUnnamed6524();
    o.disableAutomaticEnrollmentSelection = true;
    o.disableExpNames = buildUnnamed6525();
    o.disableExpTags = buildUnnamed6526();
    o.disableExps = buildUnnamed6527();
    o.disableManualEnrollmentSelection = true;
    o.disableOrganicSelection = true;
    o.forcedFlags = buildUnnamed6528();
    o.forcedRollouts = buildUnnamed6529();
  }
  buildCounterNamespacedDebugInput--;
  return o;
}

void checkNamespacedDebugInput(api.NamespacedDebugInput o) {
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    checkUnnamed6519(o.absolutelyForcedExpNames!);
    checkUnnamed6520(o.absolutelyForcedExpTags!);
    checkUnnamed6521(o.absolutelyForcedExps!);
    checkUnnamed6522(o.conditionallyForcedExpNames!);
    checkUnnamed6523(o.conditionallyForcedExpTags!);
    checkUnnamed6524(o.conditionallyForcedExps!);
    unittest.expect(o.disableAutomaticEnrollmentSelection!, unittest.isTrue);
    checkUnnamed6525(o.disableExpNames!);
    checkUnnamed6526(o.disableExpTags!);
    checkUnnamed6527(o.disableExps!);
    unittest.expect(o.disableManualEnrollmentSelection!, unittest.isTrue);
    unittest.expect(o.disableOrganicSelection!, unittest.isTrue);
    checkUnnamed6528(o.forcedFlags!);
    checkUnnamed6529(o.forcedRollouts!);
  }
  buildCounterNamespacedDebugInput--;
}

core.Map<core.String, core.Object> buildUnnamed6530() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6530(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6531() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6531(core.Map<core.String, core.Object> o) {
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
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6530();
    o.name = 'foo';
    o.response = buildUnnamed6531();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed6530(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6531(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed6532() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6532(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6533() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6533(core.List<core.String> o) {
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
  var o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed6532();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed6533();
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
    checkUnnamed6532(o.addressLines!);
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
    checkUnnamed6533(o.recipients!);
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
  var o = api.ProcessingOptions();
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
  var o = api.RequestMetadata();
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
    checkDeviceInfo(o.deviceInfo! as api.DeviceInfo);
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
  var o = api.ResponseMetadata();
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

core.List<api.HistogramQuery> buildUnnamed6534() {
  var o = <api.HistogramQuery>[];
  o.add(buildHistogramQuery());
  o.add(buildHistogramQuery());
  return o;
}

void checkUnnamed6534(core.List<api.HistogramQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramQuery(o[0] as api.HistogramQuery);
  checkHistogramQuery(o[1] as api.HistogramQuery);
}

core.int buildCounterSearchJobsRequest = 0;
api.SearchJobsRequest buildSearchJobsRequest() {
  var o = api.SearchJobsRequest();
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    o.customRankingInfo = buildCustomRankingInfo();
    o.disableKeywordMatch = true;
    o.diversificationLevel = 'foo';
    o.enableBroadening = true;
    o.histogramQueries = buildUnnamed6534();
    o.jobQuery = buildJobQuery();
    o.jobView = 'foo';
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
    checkCustomRankingInfo(o.customRankingInfo! as api.CustomRankingInfo);
    unittest.expect(o.disableKeywordMatch!, unittest.isTrue);
    unittest.expect(
      o.diversificationLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableBroadening!, unittest.isTrue);
    checkUnnamed6534(o.histogramQueries!);
    checkJobQuery(o.jobQuery! as api.JobQuery);
    unittest.expect(
      o.jobView!,
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
    checkRequestMetadata(o.requestMetadata! as api.RequestMetadata);
    unittest.expect(
      o.searchMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchJobsRequest--;
}

core.List<api.HistogramQueryResult> buildUnnamed6535() {
  var o = <api.HistogramQueryResult>[];
  o.add(buildHistogramQueryResult());
  o.add(buildHistogramQueryResult());
  return o;
}

void checkUnnamed6535(core.List<api.HistogramQueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramQueryResult(o[0] as api.HistogramQueryResult);
  checkHistogramQueryResult(o[1] as api.HistogramQueryResult);
}

core.List<api.Location> buildUnnamed6536() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed6536(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.List<api.MatchingJob> buildUnnamed6537() {
  var o = <api.MatchingJob>[];
  o.add(buildMatchingJob());
  o.add(buildMatchingJob());
  return o;
}

void checkUnnamed6537(core.List<api.MatchingJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchingJob(o[0] as api.MatchingJob);
  checkMatchingJob(o[1] as api.MatchingJob);
}

core.int buildCounterSearchJobsResponse = 0;
api.SearchJobsResponse buildSearchJobsResponse() {
  var o = api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.broadenedQueryJobsCount = 42;
    o.histogramQueryResults = buildUnnamed6535();
    o.locationFilters = buildUnnamed6536();
    o.matchingJobs = buildUnnamed6537();
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
    checkUnnamed6535(o.histogramQueryResults!);
    checkUnnamed6536(o.locationFilters!);
    checkUnnamed6537(o.matchingJobs!);
    checkResponseMetadata(o.metadata! as api.ResponseMetadata);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkSpellingCorrection(o.spellCorrection! as api.SpellingCorrection);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterSearchJobsResponse--;
}

core.int buildCounterSpellingCorrection = 0;
api.SpellingCorrection buildSpellingCorrection() {
  var o = api.SpellingCorrection();
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

core.Map<core.String, core.Object> buildUnnamed6538() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6538(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6539() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6538());
  o.add(buildUnnamed6538());
  return o;
}

void checkUnnamed6539(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6538(o[0]);
  checkUnnamed6538(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6539();
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
    checkUnnamed6539(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTenant = 0;
api.Tenant buildTenant() {
  var o = api.Tenant();
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
  var o = api.TimeOfDay();
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
  var o = api.TimestampRange();
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

core.List<core.String> buildUnnamed6540() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6540(core.List<core.String> o) {
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
      var o = buildApplicationInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApplicationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationInfo(od as api.ApplicationInfo);
    });
  });

  unittest.group('obj-schema-BatchCreateJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateJobsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateJobsRequest(od as api.BatchCreateJobsRequest);
    });
  });

  unittest.group('obj-schema-BatchCreateJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchCreateJobsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchCreateJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateJobsResponse(od as api.BatchCreateJobsResponse);
    });
  });

  unittest.group('obj-schema-BatchDeleteJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchDeleteJobsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchDeleteJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteJobsRequest(od as api.BatchDeleteJobsRequest);
    });
  });

  unittest.group('obj-schema-BatchDeleteJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchDeleteJobsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchDeleteJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteJobsResponse(od as api.BatchDeleteJobsResponse);
    });
  });

  unittest.group('obj-schema-BatchOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchOperationMetadata(od as api.BatchOperationMetadata);
    });
  });

  unittest.group('obj-schema-BatchUpdateJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchUpdateJobsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchUpdateJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateJobsRequest(od as api.BatchUpdateJobsRequest);
    });
  });

  unittest.group('obj-schema-BatchUpdateJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchUpdateJobsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchUpdateJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateJobsResponse(od as api.BatchUpdateJobsResponse);
    });
  });

  unittest.group('obj-schema-ClientEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildClientEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ClientEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientEvent(od as api.ClientEvent);
    });
  });

  unittest.group('obj-schema-CommuteFilter', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCommuteFilter();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CommuteFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommuteFilter(od as api.CommuteFilter);
    });
  });

  unittest.group('obj-schema-CommuteInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCommuteInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CommuteInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommuteInfo(od as api.CommuteInfo);
    });
  });

  unittest.group('obj-schema-Company', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompany();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Company.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCompany(od as api.Company);
    });
  });

  unittest.group('obj-schema-CompanyDerivedInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompanyDerivedInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompanyDerivedInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompanyDerivedInfo(od as api.CompanyDerivedInfo);
    });
  });

  unittest.group('obj-schema-CompensationEntry', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompensationEntry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompensationEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationEntry(od as api.CompensationEntry);
    });
  });

  unittest.group('obj-schema-CompensationFilter', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompensationFilter();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompensationFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationFilter(od as api.CompensationFilter);
    });
  });

  unittest.group('obj-schema-CompensationInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompensationInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompensationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationInfo(od as api.CompensationInfo);
    });
  });

  unittest.group('obj-schema-CompensationRange', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompensationRange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompensationRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompensationRange(od as api.CompensationRange);
    });
  });

  unittest.group('obj-schema-CompleteQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompleteQueryResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompleteQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteQueryResponse(od as api.CompleteQueryResponse);
    });
  });

  unittest.group('obj-schema-CompletionResult', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompletionResult();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompletionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompletionResult(od as api.CompletionResult);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomAttribute();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomAttribute(od as api.CustomAttribute);
    });
  });

  unittest.group('obj-schema-CustomRankingInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomRankingInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomRankingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomRankingInfo(od as api.CustomRankingInfo);
    });
  });

  unittest.group('obj-schema-DeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeviceInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.DeviceInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceInfo(od as api.DeviceInfo);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-HistogramQuery', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHistogramQuery();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.HistogramQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistogramQuery(od as api.HistogramQuery);
    });
  });

  unittest.group('obj-schema-HistogramQueryResult', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHistogramQueryResult();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.HistogramQueryResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHistogramQueryResult(od as api.HistogramQueryResult);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJob();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od as api.Job);
    });
  });

  unittest.group('obj-schema-JobDerivedInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJobDerivedInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.JobDerivedInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobDerivedInfo(od as api.JobDerivedInfo);
    });
  });

  unittest.group('obj-schema-JobEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJobEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.JobEvent.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobEvent(od as api.JobEvent);
    });
  });

  unittest.group('obj-schema-JobQuery', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJobQuery();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.JobQuery.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobQuery(od as api.JobQuery);
    });
  });

  unittest.group('obj-schema-JobResult', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJobResult();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.JobResult.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobResult(od as api.JobResult);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLatLng();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od as api.LatLng);
    });
  });

  unittest.group('obj-schema-ListCompaniesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCompaniesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCompaniesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCompaniesResponse(od as api.ListCompaniesResponse);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListJobsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od as api.ListJobsResponse);
    });
  });

  unittest.group('obj-schema-ListTenantsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListTenantsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListTenantsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTenantsResponse(od as api.ListTenantsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-LocationFilter', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocationFilter();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LocationFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationFilter(od as api.LocationFilter);
    });
  });

  unittest.group('obj-schema-MatchingJob', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMatchingJob();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MatchingJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMatchingJob(od as api.MatchingJob);
    });
  });

  unittest.group('obj-schema-MendelDebugInput', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMendelDebugInput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MendelDebugInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMendelDebugInput(od as api.MendelDebugInput);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMoney();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od as api.Money);
    });
  });

  unittest.group('obj-schema-NamespacedDebugInput', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNamespacedDebugInput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NamespacedDebugInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamespacedDebugInput(od as api.NamespacedDebugInput);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPostalAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalAddress(od as api.PostalAddress);
    });
  });

  unittest.group('obj-schema-ProcessingOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProcessingOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProcessingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessingOptions(od as api.ProcessingOptions);
    });
  });

  unittest.group('obj-schema-RequestMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRequestMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RequestMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestMetadata(od as api.RequestMetadata);
    });
  });

  unittest.group('obj-schema-ResponseMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResponseMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ResponseMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResponseMetadata(od as api.ResponseMetadata);
    });
  });

  unittest.group('obj-schema-SearchJobsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSearchJobsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SearchJobsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchJobsRequest(od as api.SearchJobsRequest);
    });
  });

  unittest.group('obj-schema-SearchJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSearchJobsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SearchJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchJobsResponse(od as api.SearchJobsResponse);
    });
  });

  unittest.group('obj-schema-SpellingCorrection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSpellingCorrection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SpellingCorrection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpellingCorrection(od as api.SpellingCorrection);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Tenant', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTenant();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Tenant.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTenant(od as api.Tenant);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTimeOfDay();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od as api.TimeOfDay);
    });
  });

  unittest.group('obj-schema-TimestampRange', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTimestampRange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TimestampRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimestampRange(od as api.TimestampRange);
    });
  });

  unittest.group('resource-ProjectsTenantsResource', () {
    unittest.test('method--completeQuery', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants;
      var arg_tenant = 'foo';
      var arg_company = 'foo';
      var arg_languageCodes = buildUnnamed6540();
      var arg_pageSize = 42;
      var arg_query = 'foo';
      var arg_scope = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["company"]!.first,
          unittest.equals(arg_company),
        );
        unittest.expect(
          queryMap["languageCodes"]!,
          unittest.equals(arg_languageCodes),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["query"]!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap["scope"]!.first,
          unittest.equals(arg_scope),
        );
        unittest.expect(
          queryMap["type"]!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCompleteQueryResponse());
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
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants;
      var arg_request = buildTenant();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Tenant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTenant(obj as api.Tenant);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTenant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTenant(response as api.Tenant);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTenant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTenant(response as api.Tenant);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTenantsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTenantsResponse(response as api.ListTenantsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants;
      var arg_request = buildTenant();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Tenant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTenant(obj as api.Tenant);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTenant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkTenant(response as api.Tenant);
    });
  });

  unittest.group('resource-ProjectsTenantsClientEventsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.clientEvents;
      var arg_request = buildClientEvent();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ClientEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClientEvent(obj as api.ClientEvent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildClientEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkClientEvent(response as api.ClientEvent);
    });
  });

  unittest.group('resource-ProjectsTenantsCompaniesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      var arg_request = buildCompany();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Company.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCompany(obj as api.Company);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkCompany(response as api.Company);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCompany(response as api.Company);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_requireOpenJobs = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["requireOpenJobs"]!.first,
          unittest.equals("$arg_requireOpenJobs"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCompaniesResponse());
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
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.companies;
      var arg_request = buildCompany();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Company.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCompany(obj as api.Company);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCompany(response as api.Company);
    });
  });

  unittest.group('resource-ProjectsTenantsJobsResource', () {
    unittest.test('method--batchCreate', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_request = buildBatchCreateJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchCreateJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateJobsRequest(obj as api.BatchCreateJobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--batchDelete', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_request = buildBatchDeleteJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchDeleteJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteJobsRequest(obj as api.BatchDeleteJobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--batchUpdate', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_request = buildBatchUpdateJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUpdateJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateJobsRequest(obj as api.BatchUpdateJobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_request = buildJob();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj as api.Job);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_jobView = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["jobView"]!.first,
          unittest.equals(arg_jobView),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
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
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_request = buildJob();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj as api.Job);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--search', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchJobsRequest(obj as api.SearchJobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_parent, $fields: arg_$fields);
      checkSearchJobsResponse(response as api.SearchJobsResponse);
    });

    unittest.test('method--searchForAlert', () async {
      var mock = HttpServerMock();
      var res = api.CloudTalentSolutionApi(mock).projects.tenants.jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchJobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchJobsRequest(obj as api.SearchJobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v4/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchForAlert(arg_request, arg_parent,
          $fields: arg_$fields);
      checkSearchJobsResponse(response as api.SearchJobsResponse);
    });
  });
}
