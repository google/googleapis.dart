// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
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
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.jobs.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/jobs/v3.dart' as api;

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

core.List<core.String> buildUnnamed2786() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2786(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2787() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2787(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplicationInfo = 0;
api.ApplicationInfo buildApplicationInfo() {
  var o = api.ApplicationInfo();
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    o.emails = buildUnnamed2786();
    o.instruction = 'foo';
    o.uris = buildUnnamed2787();
  }
  buildCounterApplicationInfo--;
  return o;
}

void checkApplicationInfo(api.ApplicationInfo o) {
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    checkUnnamed2786(o.emails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed2787(o.uris);
  }
  buildCounterApplicationInfo--;
}

core.int buildCounterBatchDeleteJobsRequest = 0;
api.BatchDeleteJobsRequest buildBatchDeleteJobsRequest() {
  var o = api.BatchDeleteJobsRequest();
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    o.filter = 'foo';
  }
  buildCounterBatchDeleteJobsRequest--;
  return o;
}

void checkBatchDeleteJobsRequest(api.BatchDeleteJobsRequest o) {
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    unittest.expect(o.filter, unittest.equals('foo'));
  }
  buildCounterBatchDeleteJobsRequest--;
}

core.int buildCounterBucketRange = 0;
api.BucketRange buildBucketRange() {
  var o = api.BucketRange();
  buildCounterBucketRange++;
  if (buildCounterBucketRange < 3) {
    o.from = 42.0;
    o.to = 42.0;
  }
  buildCounterBucketRange--;
  return o;
}

void checkBucketRange(api.BucketRange o) {
  buildCounterBucketRange++;
  if (buildCounterBucketRange < 3) {
    unittest.expect(o.from, unittest.equals(42.0));
    unittest.expect(o.to, unittest.equals(42.0));
  }
  buildCounterBucketRange--;
}

core.int buildCounterBucketizedCount = 0;
api.BucketizedCount buildBucketizedCount() {
  var o = api.BucketizedCount();
  buildCounterBucketizedCount++;
  if (buildCounterBucketizedCount < 3) {
    o.count = 42;
    o.range = buildBucketRange();
  }
  buildCounterBucketizedCount--;
  return o;
}

void checkBucketizedCount(api.BucketizedCount o) {
  buildCounterBucketizedCount++;
  if (buildCounterBucketizedCount < 3) {
    unittest.expect(o.count, unittest.equals(42));
    checkBucketRange(o.range);
  }
  buildCounterBucketizedCount--;
}

core.Map<core.String, core.String> buildUnnamed2788() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2788(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterClientEvent = 0;
api.ClientEvent buildClientEvent() {
  var o = api.ClientEvent();
  buildCounterClientEvent++;
  if (buildCounterClientEvent < 3) {
    o.createTime = 'foo';
    o.eventId = 'foo';
    o.extraInfo = buildUnnamed2788();
    o.jobEvent = buildJobEvent();
    o.parentEventId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterClientEvent--;
  return o;
}

void checkClientEvent(api.ClientEvent o) {
  buildCounterClientEvent++;
  if (buildCounterClientEvent < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventId, unittest.equals('foo'));
    checkUnnamed2788(o.extraInfo);
    checkJobEvent(o.jobEvent);
    unittest.expect(o.parentEventId, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
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
    unittest.expect(o.allowImpreciseAddresses, unittest.isTrue);
    unittest.expect(o.commuteMethod, unittest.equals('foo'));
    checkTimeOfDay(o.departureTime);
    unittest.expect(o.roadTraffic, unittest.equals('foo'));
    checkLatLng(o.startCoordinates);
    unittest.expect(o.travelDuration, unittest.equals('foo'));
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
    checkLocation(o.jobLocation);
    unittest.expect(o.travelDuration, unittest.equals('foo'));
  }
  buildCounterCommuteInfo--;
}

core.List<core.String> buildUnnamed2789() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2789(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.keywordSearchableJobCustomAttributes = buildUnnamed2789();
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
    unittest.expect(o.careerSiteUri, unittest.equals('foo'));
    checkCompanyDerivedInfo(o.derivedInfo);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.eeoText, unittest.equals('foo'));
    unittest.expect(o.externalId, unittest.equals('foo'));
    unittest.expect(o.headquartersAddress, unittest.equals('foo'));
    unittest.expect(o.hiringAgency, unittest.isTrue);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    checkUnnamed2789(o.keywordSearchableJobCustomAttributes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.suspended, unittest.isTrue);
    unittest.expect(o.websiteUri, unittest.equals('foo'));
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
    checkLocation(o.headquartersLocation);
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
    checkMoney(o.amount);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expectedUnitsPerYear, unittest.equals(42.0));
    checkCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterCompensationEntry--;
}

core.List<core.String> buildUnnamed2790() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2790(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCompensationFilter = 0;
api.CompensationFilter buildCompensationFilter() {
  var o = api.CompensationFilter();
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    o.includeJobsWithUnspecifiedCompensationRange = true;
    o.range = buildCompensationRange();
    o.type = 'foo';
    o.units = buildUnnamed2790();
  }
  buildCounterCompensationFilter--;
  return o;
}

void checkCompensationFilter(api.CompensationFilter o) {
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    unittest.expect(
        o.includeJobsWithUnspecifiedCompensationRange, unittest.isTrue);
    checkCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed2790(o.units);
  }
  buildCounterCompensationFilter--;
}

core.int buildCounterCompensationHistogramRequest = 0;
api.CompensationHistogramRequest buildCompensationHistogramRequest() {
  var o = api.CompensationHistogramRequest();
  buildCounterCompensationHistogramRequest++;
  if (buildCounterCompensationHistogramRequest < 3) {
    o.bucketingOption = buildNumericBucketingOption();
    o.type = 'foo';
  }
  buildCounterCompensationHistogramRequest--;
  return o;
}

void checkCompensationHistogramRequest(api.CompensationHistogramRequest o) {
  buildCounterCompensationHistogramRequest++;
  if (buildCounterCompensationHistogramRequest < 3) {
    checkNumericBucketingOption(o.bucketingOption);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationHistogramRequest--;
}

core.int buildCounterCompensationHistogramResult = 0;
api.CompensationHistogramResult buildCompensationHistogramResult() {
  var o = api.CompensationHistogramResult();
  buildCounterCompensationHistogramResult++;
  if (buildCounterCompensationHistogramResult < 3) {
    o.result = buildNumericBucketingResult();
    o.type = 'foo';
  }
  buildCounterCompensationHistogramResult--;
  return o;
}

void checkCompensationHistogramResult(api.CompensationHistogramResult o) {
  buildCounterCompensationHistogramResult++;
  if (buildCounterCompensationHistogramResult < 3) {
    checkNumericBucketingResult(o.result);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationHistogramResult--;
}

core.List<api.CompensationEntry> buildUnnamed2791() {
  var o = <api.CompensationEntry>[];
  o.add(buildCompensationEntry());
  o.add(buildCompensationEntry());
  return o;
}

void checkUnnamed2791(core.List<api.CompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationEntry(o[0]);
  checkCompensationEntry(o[1]);
}

core.int buildCounterCompensationInfo = 0;
api.CompensationInfo buildCompensationInfo() {
  var o = api.CompensationInfo();
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    o.annualizedBaseCompensationRange = buildCompensationRange();
    o.annualizedTotalCompensationRange = buildCompensationRange();
    o.entries = buildUnnamed2791();
  }
  buildCounterCompensationInfo--;
  return o;
}

void checkCompensationInfo(api.CompensationInfo o) {
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    checkCompensationRange(o.annualizedBaseCompensationRange);
    checkCompensationRange(o.annualizedTotalCompensationRange);
    checkUnnamed2791(o.entries);
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
    checkMoney(o.maxCompensation);
    checkMoney(o.minCompensation);
  }
  buildCounterCompensationRange--;
}

core.List<api.CompletionResult> buildUnnamed2792() {
  var o = <api.CompletionResult>[];
  o.add(buildCompletionResult());
  o.add(buildCompletionResult());
  return o;
}

void checkUnnamed2792(core.List<api.CompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompletionResult(o[0]);
  checkCompletionResult(o[1]);
}

core.int buildCounterCompleteQueryResponse = 0;
api.CompleteQueryResponse buildCompleteQueryResponse() {
  var o = api.CompleteQueryResponse();
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    o.completionResults = buildUnnamed2792();
    o.metadata = buildResponseMetadata();
  }
  buildCounterCompleteQueryResponse--;
  return o;
}

void checkCompleteQueryResponse(api.CompleteQueryResponse o) {
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    checkUnnamed2792(o.completionResults);
    checkResponseMetadata(o.metadata);
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
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.suggestion, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompletionResult--;
}

core.int buildCounterCreateClientEventRequest = 0;
api.CreateClientEventRequest buildCreateClientEventRequest() {
  var o = api.CreateClientEventRequest();
  buildCounterCreateClientEventRequest++;
  if (buildCounterCreateClientEventRequest < 3) {
    o.clientEvent = buildClientEvent();
  }
  buildCounterCreateClientEventRequest--;
  return o;
}

void checkCreateClientEventRequest(api.CreateClientEventRequest o) {
  buildCounterCreateClientEventRequest++;
  if (buildCounterCreateClientEventRequest < 3) {
    checkClientEvent(o.clientEvent);
  }
  buildCounterCreateClientEventRequest--;
}

core.int buildCounterCreateCompanyRequest = 0;
api.CreateCompanyRequest buildCreateCompanyRequest() {
  var o = api.CreateCompanyRequest();
  buildCounterCreateCompanyRequest++;
  if (buildCounterCreateCompanyRequest < 3) {
    o.company = buildCompany();
  }
  buildCounterCreateCompanyRequest--;
  return o;
}

void checkCreateCompanyRequest(api.CreateCompanyRequest o) {
  buildCounterCreateCompanyRequest++;
  if (buildCounterCreateCompanyRequest < 3) {
    checkCompany(o.company);
  }
  buildCounterCreateCompanyRequest--;
}

core.int buildCounterCreateJobRequest = 0;
api.CreateJobRequest buildCreateJobRequest() {
  var o = api.CreateJobRequest();
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    o.job = buildJob();
  }
  buildCounterCreateJobRequest--;
  return o;
}

void checkCreateJobRequest(api.CreateJobRequest o) {
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    checkJob(o.job);
  }
  buildCounterCreateJobRequest--;
}

core.List<core.String> buildUnnamed2793() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2793(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2794() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2794(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  var o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.filterable = true;
    o.longValues = buildUnnamed2793();
    o.stringValues = buildUnnamed2794();
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    unittest.expect(o.filterable, unittest.isTrue);
    checkUnnamed2793(o.longValues);
    checkUnnamed2794(o.stringValues);
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCustomAttributeHistogramRequest = 0;
api.CustomAttributeHistogramRequest buildCustomAttributeHistogramRequest() {
  var o = api.CustomAttributeHistogramRequest();
  buildCounterCustomAttributeHistogramRequest++;
  if (buildCounterCustomAttributeHistogramRequest < 3) {
    o.key = 'foo';
    o.longValueHistogramBucketingOption = buildNumericBucketingOption();
    o.stringValueHistogram = true;
  }
  buildCounterCustomAttributeHistogramRequest--;
  return o;
}

void checkCustomAttributeHistogramRequest(
    api.CustomAttributeHistogramRequest o) {
  buildCounterCustomAttributeHistogramRequest++;
  if (buildCounterCustomAttributeHistogramRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingOption(o.longValueHistogramBucketingOption);
    unittest.expect(o.stringValueHistogram, unittest.isTrue);
  }
  buildCounterCustomAttributeHistogramRequest--;
}

core.Map<core.String, core.int> buildUnnamed2795() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed2795(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals(42));
  unittest.expect(o['y'], unittest.equals(42));
}

core.int buildCounterCustomAttributeHistogramResult = 0;
api.CustomAttributeHistogramResult buildCustomAttributeHistogramResult() {
  var o = api.CustomAttributeHistogramResult();
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    o.key = 'foo';
    o.longValueHistogramResult = buildNumericBucketingResult();
    o.stringValueHistogramResult = buildUnnamed2795();
  }
  buildCounterCustomAttributeHistogramResult--;
  return o;
}

void checkCustomAttributeHistogramResult(api.CustomAttributeHistogramResult o) {
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingResult(o.longValueHistogramResult);
    checkUnnamed2795(o.stringValueHistogramResult);
  }
  buildCounterCustomAttributeHistogramResult--;
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
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
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

core.List<api.GoogleCloudTalentV4JobResult> buildUnnamed2796() {
  var o = <api.GoogleCloudTalentV4JobResult>[];
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

void checkUnnamed2796(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchCreateJobsResponse = 0;
api.GoogleCloudTalentV4BatchCreateJobsResponse
    buildGoogleCloudTalentV4BatchCreateJobsResponse() {
  var o = api.GoogleCloudTalentV4BatchCreateJobsResponse();
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchCreateJobsResponse < 3) {
    o.jobResults = buildUnnamed2796();
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
  return o;
}

void checkGoogleCloudTalentV4BatchCreateJobsResponse(
    api.GoogleCloudTalentV4BatchCreateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchCreateJobsResponse < 3) {
    checkUnnamed2796(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
}

core.List<api.GoogleCloudTalentV4JobResult> buildUnnamed2797() {
  var o = <api.GoogleCloudTalentV4JobResult>[];
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

void checkUnnamed2797(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse = 0;
api.GoogleCloudTalentV4BatchDeleteJobsResponse
    buildGoogleCloudTalentV4BatchDeleteJobsResponse() {
  var o = api.GoogleCloudTalentV4BatchDeleteJobsResponse();
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse < 3) {
    o.jobResults = buildUnnamed2797();
  }
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse--;
  return o;
}

void checkGoogleCloudTalentV4BatchDeleteJobsResponse(
    api.GoogleCloudTalentV4BatchDeleteJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse < 3) {
    checkUnnamed2797(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse--;
}

core.int buildCounterGoogleCloudTalentV4BatchOperationMetadata = 0;
api.GoogleCloudTalentV4BatchOperationMetadata
    buildGoogleCloudTalentV4BatchOperationMetadata() {
  var o = api.GoogleCloudTalentV4BatchOperationMetadata();
  buildCounterGoogleCloudTalentV4BatchOperationMetadata++;
  if (buildCounterGoogleCloudTalentV4BatchOperationMetadata < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.failureCount = 42;
    o.state = 'foo';
    o.stateDescription = 'foo';
    o.successCount = 42;
    o.totalCount = 42;
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudTalentV4BatchOperationMetadata--;
  return o;
}

void checkGoogleCloudTalentV4BatchOperationMetadata(
    api.GoogleCloudTalentV4BatchOperationMetadata o) {
  buildCounterGoogleCloudTalentV4BatchOperationMetadata++;
  if (buildCounterGoogleCloudTalentV4BatchOperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.failureCount, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateDescription, unittest.equals('foo'));
    unittest.expect(o.successCount, unittest.equals(42));
    unittest.expect(o.totalCount, unittest.equals(42));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4BatchOperationMetadata--;
}

core.List<api.GoogleCloudTalentV4JobResult> buildUnnamed2798() {
  var o = <api.GoogleCloudTalentV4JobResult>[];
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

void checkUnnamed2798(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse = 0;
api.GoogleCloudTalentV4BatchUpdateJobsResponse
    buildGoogleCloudTalentV4BatchUpdateJobsResponse() {
  var o = api.GoogleCloudTalentV4BatchUpdateJobsResponse();
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse < 3) {
    o.jobResults = buildUnnamed2798();
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
  return o;
}

void checkGoogleCloudTalentV4BatchUpdateJobsResponse(
    api.GoogleCloudTalentV4BatchUpdateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse < 3) {
    checkUnnamed2798(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
}

core.List<api.GoogleCloudTalentV4CompensationInfoCompensationEntry>
    buildUnnamed2799() {
  var o = <api.GoogleCloudTalentV4CompensationInfoCompensationEntry>[];
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  return o;
}

void checkUnnamed2799(
    core.List<api.GoogleCloudTalentV4CompensationInfoCompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4CompensationInfoCompensationEntry(o[0]);
  checkGoogleCloudTalentV4CompensationInfoCompensationEntry(o[1]);
}

core.int buildCounterGoogleCloudTalentV4CompensationInfo = 0;
api.GoogleCloudTalentV4CompensationInfo
    buildGoogleCloudTalentV4CompensationInfo() {
  var o = api.GoogleCloudTalentV4CompensationInfo();
  buildCounterGoogleCloudTalentV4CompensationInfo++;
  if (buildCounterGoogleCloudTalentV4CompensationInfo < 3) {
    o.annualizedBaseCompensationRange =
        buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.annualizedTotalCompensationRange =
        buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.entries = buildUnnamed2799();
  }
  buildCounterGoogleCloudTalentV4CompensationInfo--;
  return o;
}

void checkGoogleCloudTalentV4CompensationInfo(
    api.GoogleCloudTalentV4CompensationInfo o) {
  buildCounterGoogleCloudTalentV4CompensationInfo++;
  if (buildCounterGoogleCloudTalentV4CompensationInfo < 3) {
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(
        o.annualizedBaseCompensationRange);
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(
        o.annualizedTotalCompensationRange);
    checkUnnamed2799(o.entries);
  }
  buildCounterGoogleCloudTalentV4CompensationInfo--;
}

core.int buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry = 0;
api.GoogleCloudTalentV4CompensationInfoCompensationEntry
    buildGoogleCloudTalentV4CompensationInfoCompensationEntry() {
  var o = api.GoogleCloudTalentV4CompensationInfoCompensationEntry();
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry < 3) {
    o.amount = buildMoney();
    o.description = 'foo';
    o.expectedUnitsPerYear = 42.0;
    o.range = buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.type = 'foo';
    o.unit = 'foo';
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry--;
  return o;
}

void checkGoogleCloudTalentV4CompensationInfoCompensationEntry(
    api.GoogleCloudTalentV4CompensationInfoCompensationEntry o) {
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry < 3) {
    checkMoney(o.amount);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expectedUnitsPerYear, unittest.equals(42.0));
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry--;
}

core.int buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange = 0;
api.GoogleCloudTalentV4CompensationInfoCompensationRange
    buildGoogleCloudTalentV4CompensationInfoCompensationRange() {
  var o = api.GoogleCloudTalentV4CompensationInfoCompensationRange();
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange < 3) {
    o.maxCompensation = buildMoney();
    o.minCompensation = buildMoney();
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange--;
  return o;
}

void checkGoogleCloudTalentV4CompensationInfoCompensationRange(
    api.GoogleCloudTalentV4CompensationInfoCompensationRange o) {
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange < 3) {
    checkMoney(o.maxCompensation);
    checkMoney(o.minCompensation);
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange--;
}

core.List<core.String> buildUnnamed2800() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2800(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2801() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2801(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4CustomAttribute = 0;
api.GoogleCloudTalentV4CustomAttribute
    buildGoogleCloudTalentV4CustomAttribute() {
  var o = api.GoogleCloudTalentV4CustomAttribute();
  buildCounterGoogleCloudTalentV4CustomAttribute++;
  if (buildCounterGoogleCloudTalentV4CustomAttribute < 3) {
    o.filterable = true;
    o.keywordSearchable = true;
    o.longValues = buildUnnamed2800();
    o.stringValues = buildUnnamed2801();
  }
  buildCounterGoogleCloudTalentV4CustomAttribute--;
  return o;
}

void checkGoogleCloudTalentV4CustomAttribute(
    api.GoogleCloudTalentV4CustomAttribute o) {
  buildCounterGoogleCloudTalentV4CustomAttribute++;
  if (buildCounterGoogleCloudTalentV4CustomAttribute < 3) {
    unittest.expect(o.filterable, unittest.isTrue);
    unittest.expect(o.keywordSearchable, unittest.isTrue);
    checkUnnamed2800(o.longValues);
    checkUnnamed2801(o.stringValues);
  }
  buildCounterGoogleCloudTalentV4CustomAttribute--;
}

core.List<core.String> buildUnnamed2802() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2802(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute>
    buildUnnamed2803() {
  var o = <core.String, api.GoogleCloudTalentV4CustomAttribute>{};
  o['x'] = buildGoogleCloudTalentV4CustomAttribute();
  o['y'] = buildGoogleCloudTalentV4CustomAttribute();
  return o;
}

void checkUnnamed2803(
    core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4CustomAttribute(o['x']);
  checkGoogleCloudTalentV4CustomAttribute(o['y']);
}

core.List<core.String> buildUnnamed2804() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2804(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2805() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2805(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2806() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2806(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4Job = 0;
api.GoogleCloudTalentV4Job buildGoogleCloudTalentV4Job() {
  var o = api.GoogleCloudTalentV4Job();
  buildCounterGoogleCloudTalentV4Job++;
  if (buildCounterGoogleCloudTalentV4Job < 3) {
    o.addresses = buildUnnamed2802();
    o.applicationInfo = buildGoogleCloudTalentV4JobApplicationInfo();
    o.company = 'foo';
    o.companyDisplayName = 'foo';
    o.compensationInfo = buildGoogleCloudTalentV4CompensationInfo();
    o.customAttributes = buildUnnamed2803();
    o.degreeTypes = buildUnnamed2804();
    o.department = 'foo';
    o.derivedInfo = buildGoogleCloudTalentV4JobDerivedInfo();
    o.description = 'foo';
    o.employmentTypes = buildUnnamed2805();
    o.incentives = 'foo';
    o.jobBenefits = buildUnnamed2806();
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
    o.processingOptions = buildGoogleCloudTalentV4JobProcessingOptions();
    o.promotionValue = 42;
    o.qualifications = 'foo';
    o.requisitionId = 'foo';
    o.responsibilities = 'foo';
    o.title = 'foo';
    o.visibility = 'foo';
  }
  buildCounterGoogleCloudTalentV4Job--;
  return o;
}

void checkGoogleCloudTalentV4Job(api.GoogleCloudTalentV4Job o) {
  buildCounterGoogleCloudTalentV4Job++;
  if (buildCounterGoogleCloudTalentV4Job < 3) {
    checkUnnamed2802(o.addresses);
    checkGoogleCloudTalentV4JobApplicationInfo(o.applicationInfo);
    unittest.expect(o.company, unittest.equals('foo'));
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    checkGoogleCloudTalentV4CompensationInfo(o.compensationInfo);
    checkUnnamed2803(o.customAttributes);
    checkUnnamed2804(o.degreeTypes);
    unittest.expect(o.department, unittest.equals('foo'));
    checkGoogleCloudTalentV4JobDerivedInfo(o.derivedInfo);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2805(o.employmentTypes);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed2806(o.jobBenefits);
    unittest.expect(o.jobEndTime, unittest.equals('foo'));
    unittest.expect(o.jobLevel, unittest.equals('foo'));
    unittest.expect(o.jobStartTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.postingCreateTime, unittest.equals('foo'));
    unittest.expect(o.postingExpireTime, unittest.equals('foo'));
    unittest.expect(o.postingPublishTime, unittest.equals('foo'));
    unittest.expect(o.postingRegion, unittest.equals('foo'));
    unittest.expect(o.postingUpdateTime, unittest.equals('foo'));
    checkGoogleCloudTalentV4JobProcessingOptions(o.processingOptions);
    unittest.expect(o.promotionValue, unittest.equals(42));
    unittest.expect(o.qualifications, unittest.equals('foo'));
    unittest.expect(o.requisitionId, unittest.equals('foo'));
    unittest.expect(o.responsibilities, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4Job--;
}

core.List<core.String> buildUnnamed2807() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2807(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2808() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2808(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4JobApplicationInfo = 0;
api.GoogleCloudTalentV4JobApplicationInfo
    buildGoogleCloudTalentV4JobApplicationInfo() {
  var o = api.GoogleCloudTalentV4JobApplicationInfo();
  buildCounterGoogleCloudTalentV4JobApplicationInfo++;
  if (buildCounterGoogleCloudTalentV4JobApplicationInfo < 3) {
    o.emails = buildUnnamed2807();
    o.instruction = 'foo';
    o.uris = buildUnnamed2808();
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
  return o;
}

void checkGoogleCloudTalentV4JobApplicationInfo(
    api.GoogleCloudTalentV4JobApplicationInfo o) {
  buildCounterGoogleCloudTalentV4JobApplicationInfo++;
  if (buildCounterGoogleCloudTalentV4JobApplicationInfo < 3) {
    checkUnnamed2807(o.emails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed2808(o.uris);
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
}

core.List<core.String> buildUnnamed2809() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2809(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudTalentV4Location> buildUnnamed2810() {
  var o = <api.GoogleCloudTalentV4Location>[];
  o.add(buildGoogleCloudTalentV4Location());
  o.add(buildGoogleCloudTalentV4Location());
  return o;
}

void checkUnnamed2810(core.List<api.GoogleCloudTalentV4Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4Location(o[0]);
  checkGoogleCloudTalentV4Location(o[1]);
}

core.int buildCounterGoogleCloudTalentV4JobDerivedInfo = 0;
api.GoogleCloudTalentV4JobDerivedInfo buildGoogleCloudTalentV4JobDerivedInfo() {
  var o = api.GoogleCloudTalentV4JobDerivedInfo();
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed2809();
    o.locations = buildUnnamed2810();
  }
  buildCounterGoogleCloudTalentV4JobDerivedInfo--;
  return o;
}

void checkGoogleCloudTalentV4JobDerivedInfo(
    api.GoogleCloudTalentV4JobDerivedInfo o) {
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    checkUnnamed2809(o.jobCategories);
    checkUnnamed2810(o.locations);
  }
  buildCounterGoogleCloudTalentV4JobDerivedInfo--;
}

core.int buildCounterGoogleCloudTalentV4JobProcessingOptions = 0;
api.GoogleCloudTalentV4JobProcessingOptions
    buildGoogleCloudTalentV4JobProcessingOptions() {
  var o = api.GoogleCloudTalentV4JobProcessingOptions();
  buildCounterGoogleCloudTalentV4JobProcessingOptions++;
  if (buildCounterGoogleCloudTalentV4JobProcessingOptions < 3) {
    o.disableStreetAddressResolution = true;
    o.htmlSanitization = 'foo';
  }
  buildCounterGoogleCloudTalentV4JobProcessingOptions--;
  return o;
}

void checkGoogleCloudTalentV4JobProcessingOptions(
    api.GoogleCloudTalentV4JobProcessingOptions o) {
  buildCounterGoogleCloudTalentV4JobProcessingOptions++;
  if (buildCounterGoogleCloudTalentV4JobProcessingOptions < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    unittest.expect(o.htmlSanitization, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4JobProcessingOptions--;
}

core.int buildCounterGoogleCloudTalentV4JobResult = 0;
api.GoogleCloudTalentV4JobResult buildGoogleCloudTalentV4JobResult() {
  var o = api.GoogleCloudTalentV4JobResult();
  buildCounterGoogleCloudTalentV4JobResult++;
  if (buildCounterGoogleCloudTalentV4JobResult < 3) {
    o.job = buildGoogleCloudTalentV4Job();
    o.status = buildStatus();
  }
  buildCounterGoogleCloudTalentV4JobResult--;
  return o;
}

void checkGoogleCloudTalentV4JobResult(api.GoogleCloudTalentV4JobResult o) {
  buildCounterGoogleCloudTalentV4JobResult++;
  if (buildCounterGoogleCloudTalentV4JobResult < 3) {
    checkGoogleCloudTalentV4Job(o.job);
    checkStatus(o.status);
  }
  buildCounterGoogleCloudTalentV4JobResult--;
}

core.int buildCounterGoogleCloudTalentV4Location = 0;
api.GoogleCloudTalentV4Location buildGoogleCloudTalentV4Location() {
  var o = api.GoogleCloudTalentV4Location();
  buildCounterGoogleCloudTalentV4Location++;
  if (buildCounterGoogleCloudTalentV4Location < 3) {
    o.latLng = buildLatLng();
    o.locationType = 'foo';
    o.postalAddress = buildPostalAddress();
    o.radiusMiles = 42.0;
  }
  buildCounterGoogleCloudTalentV4Location--;
  return o;
}

void checkGoogleCloudTalentV4Location(api.GoogleCloudTalentV4Location o) {
  buildCounterGoogleCloudTalentV4Location++;
  if (buildCounterGoogleCloudTalentV4Location < 3) {
    checkLatLng(o.latLng);
    unittest.expect(o.locationType, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    unittest.expect(o.radiusMiles, unittest.equals(42.0));
  }
  buildCounterGoogleCloudTalentV4Location--;
}

core.List<api.CompensationHistogramRequest> buildUnnamed2811() {
  var o = <api.CompensationHistogramRequest>[];
  o.add(buildCompensationHistogramRequest());
  o.add(buildCompensationHistogramRequest());
  return o;
}

void checkUnnamed2811(core.List<api.CompensationHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramRequest(o[0]);
  checkCompensationHistogramRequest(o[1]);
}

core.List<api.CustomAttributeHistogramRequest> buildUnnamed2812() {
  var o = <api.CustomAttributeHistogramRequest>[];
  o.add(buildCustomAttributeHistogramRequest());
  o.add(buildCustomAttributeHistogramRequest());
  return o;
}

void checkUnnamed2812(core.List<api.CustomAttributeHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramRequest(o[0]);
  checkCustomAttributeHistogramRequest(o[1]);
}

core.List<core.String> buildUnnamed2813() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2813(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogramFacets = 0;
api.HistogramFacets buildHistogramFacets() {
  var o = api.HistogramFacets();
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    o.compensationHistogramFacets = buildUnnamed2811();
    o.customAttributeHistogramFacets = buildUnnamed2812();
    o.simpleHistogramFacets = buildUnnamed2813();
  }
  buildCounterHistogramFacets--;
  return o;
}

void checkHistogramFacets(api.HistogramFacets o) {
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    checkUnnamed2811(o.compensationHistogramFacets);
    checkUnnamed2812(o.customAttributeHistogramFacets);
    checkUnnamed2813(o.simpleHistogramFacets);
  }
  buildCounterHistogramFacets--;
}

core.Map<core.String, core.int> buildUnnamed2814() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed2814(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals(42));
  unittest.expect(o['y'], unittest.equals(42));
}

core.int buildCounterHistogramResult = 0;
api.HistogramResult buildHistogramResult() {
  var o = api.HistogramResult();
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    o.searchType = 'foo';
    o.values = buildUnnamed2814();
  }
  buildCounterHistogramResult--;
  return o;
}

void checkHistogramResult(api.HistogramResult o) {
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    unittest.expect(o.searchType, unittest.equals('foo'));
    checkUnnamed2814(o.values);
  }
  buildCounterHistogramResult--;
}

core.List<api.CompensationHistogramResult> buildUnnamed2815() {
  var o = <api.CompensationHistogramResult>[];
  o.add(buildCompensationHistogramResult());
  o.add(buildCompensationHistogramResult());
  return o;
}

void checkUnnamed2815(core.List<api.CompensationHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramResult(o[0]);
  checkCompensationHistogramResult(o[1]);
}

core.List<api.CustomAttributeHistogramResult> buildUnnamed2816() {
  var o = <api.CustomAttributeHistogramResult>[];
  o.add(buildCustomAttributeHistogramResult());
  o.add(buildCustomAttributeHistogramResult());
  return o;
}

void checkUnnamed2816(core.List<api.CustomAttributeHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramResult(o[0]);
  checkCustomAttributeHistogramResult(o[1]);
}

core.List<api.HistogramResult> buildUnnamed2817() {
  var o = <api.HistogramResult>[];
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

void checkUnnamed2817(core.List<api.HistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramResult(o[0]);
  checkHistogramResult(o[1]);
}

core.int buildCounterHistogramResults = 0;
api.HistogramResults buildHistogramResults() {
  var o = api.HistogramResults();
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    o.compensationHistogramResults = buildUnnamed2815();
    o.customAttributeHistogramResults = buildUnnamed2816();
    o.simpleHistogramResults = buildUnnamed2817();
  }
  buildCounterHistogramResults--;
  return o;
}

void checkHistogramResults(api.HistogramResults o) {
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    checkUnnamed2815(o.compensationHistogramResults);
    checkUnnamed2816(o.customAttributeHistogramResults);
    checkUnnamed2817(o.simpleHistogramResults);
  }
  buildCounterHistogramResults--;
}

core.List<core.String> buildUnnamed2818() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2818(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.CustomAttribute> buildUnnamed2819() {
  var o = <core.String, api.CustomAttribute>{};
  o['x'] = buildCustomAttribute();
  o['y'] = buildCustomAttribute();
  return o;
}

void checkUnnamed2819(core.Map<core.String, api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o['x']);
  checkCustomAttribute(o['y']);
}

core.List<core.String> buildUnnamed2820() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2820(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2821() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2821(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2822() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2822(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  var o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.addresses = buildUnnamed2818();
    o.applicationInfo = buildApplicationInfo();
    o.companyDisplayName = 'foo';
    o.companyName = 'foo';
    o.compensationInfo = buildCompensationInfo();
    o.customAttributes = buildUnnamed2819();
    o.degreeTypes = buildUnnamed2820();
    o.department = 'foo';
    o.derivedInfo = buildJobDerivedInfo();
    o.description = 'foo';
    o.employmentTypes = buildUnnamed2821();
    o.incentives = 'foo';
    o.jobBenefits = buildUnnamed2822();
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
    checkUnnamed2818(o.addresses);
    checkApplicationInfo(o.applicationInfo);
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    checkCompensationInfo(o.compensationInfo);
    checkUnnamed2819(o.customAttributes);
    checkUnnamed2820(o.degreeTypes);
    unittest.expect(o.department, unittest.equals('foo'));
    checkJobDerivedInfo(o.derivedInfo);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2821(o.employmentTypes);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed2822(o.jobBenefits);
    unittest.expect(o.jobEndTime, unittest.equals('foo'));
    unittest.expect(o.jobLevel, unittest.equals('foo'));
    unittest.expect(o.jobStartTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.postingCreateTime, unittest.equals('foo'));
    unittest.expect(o.postingExpireTime, unittest.equals('foo'));
    unittest.expect(o.postingPublishTime, unittest.equals('foo'));
    unittest.expect(o.postingRegion, unittest.equals('foo'));
    unittest.expect(o.postingUpdateTime, unittest.equals('foo'));
    checkProcessingOptions(o.processingOptions);
    unittest.expect(o.promotionValue, unittest.equals(42));
    unittest.expect(o.qualifications, unittest.equals('foo'));
    unittest.expect(o.requisitionId, unittest.equals('foo'));
    unittest.expect(o.responsibilities, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.List<core.String> buildUnnamed2823() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2823(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Location> buildUnnamed2824() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed2824(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterJobDerivedInfo = 0;
api.JobDerivedInfo buildJobDerivedInfo() {
  var o = api.JobDerivedInfo();
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed2823();
    o.locations = buildUnnamed2824();
  }
  buildCounterJobDerivedInfo--;
  return o;
}

void checkJobDerivedInfo(api.JobDerivedInfo o) {
  buildCounterJobDerivedInfo++;
  if (buildCounterJobDerivedInfo < 3) {
    checkUnnamed2823(o.jobCategories);
    checkUnnamed2824(o.locations);
  }
  buildCounterJobDerivedInfo--;
}

core.List<core.String> buildUnnamed2825() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2825(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobEvent = 0;
api.JobEvent buildJobEvent() {
  var o = api.JobEvent();
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    o.jobs = buildUnnamed2825();
    o.type = 'foo';
  }
  buildCounterJobEvent--;
  return o;
}

void checkJobEvent(api.JobEvent o) {
  buildCounterJobEvent++;
  if (buildCounterJobEvent < 3) {
    checkUnnamed2825(o.jobs);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJobEvent--;
}

core.List<core.String> buildUnnamed2826() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2826(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2827() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2827(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2828() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2828(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2829() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2829(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2830() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2830(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LocationFilter> buildUnnamed2831() {
  var o = <api.LocationFilter>[];
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

void checkUnnamed2831(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobQuery = 0;
api.JobQuery buildJobQuery() {
  var o = api.JobQuery();
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    o.commuteFilter = buildCommuteFilter();
    o.companyDisplayNames = buildUnnamed2826();
    o.companyNames = buildUnnamed2827();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = 'foo';
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed2828();
    o.jobCategories = buildUnnamed2829();
    o.languageCodes = buildUnnamed2830();
    o.locationFilters = buildUnnamed2831();
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
    checkCommuteFilter(o.commuteFilter);
    checkUnnamed2826(o.companyDisplayNames);
    checkUnnamed2827(o.companyNames);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed2828(o.employmentTypes);
    checkUnnamed2829(o.jobCategories);
    checkUnnamed2830(o.languageCodes);
    checkUnnamed2831(o.locationFilters);
    checkTimestampRange(o.publishTimeRange);
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.queryLanguageCode, unittest.equals('foo'));
  }
  buildCounterJobQuery--;
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
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

core.List<api.Company> buildUnnamed2832() {
  var o = <api.Company>[];
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

void checkUnnamed2832(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCompaniesResponse = 0;
api.ListCompaniesResponse buildListCompaniesResponse() {
  var o = api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed2832();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListCompaniesResponse--;
  return o;
}

void checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed2832(o.companies);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCompaniesResponse--;
}

core.List<api.Job> buildUnnamed2833() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed2833(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed2833();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed2833(o.jobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.latLng = buildLatLng();
    o.locationType = 'foo';
    o.postalAddress = buildPostalAddress();
    o.radiusInMiles = 42.0;
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkLatLng(o.latLng);
    unittest.expect(o.locationType, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    unittest.expect(o.radiusInMiles, unittest.equals(42.0));
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
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.distanceInMiles, unittest.equals(42.0));
    checkLatLng(o.latLng);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.telecommutePreference, unittest.equals('foo'));
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
    checkCommuteInfo(o.commuteInfo);
    checkJob(o.job);
    unittest.expect(o.jobSummary, unittest.equals('foo'));
    unittest.expect(o.jobTitleSnippet, unittest.equals('foo'));
    unittest.expect(o.searchTextSnippet, unittest.equals('foo'));
  }
  buildCounterMatchingJob--;
}

core.Map<core.String, api.NamespacedDebugInput> buildUnnamed2834() {
  var o = <core.String, api.NamespacedDebugInput>{};
  o['x'] = buildNamespacedDebugInput();
  o['y'] = buildNamespacedDebugInput();
  return o;
}

void checkUnnamed2834(core.Map<core.String, api.NamespacedDebugInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespacedDebugInput(o['x']);
  checkNamespacedDebugInput(o['y']);
}

core.int buildCounterMendelDebugInput = 0;
api.MendelDebugInput buildMendelDebugInput() {
  var o = api.MendelDebugInput();
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    o.namespacedDebugInput = buildUnnamed2834();
  }
  buildCounterMendelDebugInput--;
  return o;
}

void checkMendelDebugInput(api.MendelDebugInput o) {
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    checkUnnamed2834(o.namespacedDebugInput);
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
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.List<core.String> buildUnnamed2835() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2835(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2836() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2836(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed2837() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2837(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed2838() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2838(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2839() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2839(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed2840() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2840(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed2841() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2841(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2842() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2842(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed2843() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2843(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.Map<core.String, core.String> buildUnnamed2844() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2844(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.bool> buildUnnamed2845() {
  var o = <core.String, core.bool>{};
  o['x'] = true;
  o['y'] = true;
  return o;
}

void checkUnnamed2845(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.isTrue);
  unittest.expect(o['y'], unittest.isTrue);
}

core.int buildCounterNamespacedDebugInput = 0;
api.NamespacedDebugInput buildNamespacedDebugInput() {
  var o = api.NamespacedDebugInput();
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    o.absolutelyForcedExpNames = buildUnnamed2835();
    o.absolutelyForcedExpTags = buildUnnamed2836();
    o.absolutelyForcedExps = buildUnnamed2837();
    o.conditionallyForcedExpNames = buildUnnamed2838();
    o.conditionallyForcedExpTags = buildUnnamed2839();
    o.conditionallyForcedExps = buildUnnamed2840();
    o.disableAutomaticEnrollmentSelection = true;
    o.disableExpNames = buildUnnamed2841();
    o.disableExpTags = buildUnnamed2842();
    o.disableExps = buildUnnamed2843();
    o.disableManualEnrollmentSelection = true;
    o.disableOrganicSelection = true;
    o.forcedFlags = buildUnnamed2844();
    o.forcedRollouts = buildUnnamed2845();
  }
  buildCounterNamespacedDebugInput--;
  return o;
}

void checkNamespacedDebugInput(api.NamespacedDebugInput o) {
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    checkUnnamed2835(o.absolutelyForcedExpNames);
    checkUnnamed2836(o.absolutelyForcedExpTags);
    checkUnnamed2837(o.absolutelyForcedExps);
    checkUnnamed2838(o.conditionallyForcedExpNames);
    checkUnnamed2839(o.conditionallyForcedExpTags);
    checkUnnamed2840(o.conditionallyForcedExps);
    unittest.expect(o.disableAutomaticEnrollmentSelection, unittest.isTrue);
    checkUnnamed2841(o.disableExpNames);
    checkUnnamed2842(o.disableExpTags);
    checkUnnamed2843(o.disableExps);
    unittest.expect(o.disableManualEnrollmentSelection, unittest.isTrue);
    unittest.expect(o.disableOrganicSelection, unittest.isTrue);
    checkUnnamed2844(o.forcedFlags);
    checkUnnamed2845(o.forcedRollouts);
  }
  buildCounterNamespacedDebugInput--;
}

core.List<core.double> buildUnnamed2846() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed2846(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterNumericBucketingOption = 0;
api.NumericBucketingOption buildNumericBucketingOption() {
  var o = api.NumericBucketingOption();
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    o.bucketBounds = buildUnnamed2846();
    o.requiresMinMax = true;
  }
  buildCounterNumericBucketingOption--;
  return o;
}

void checkNumericBucketingOption(api.NumericBucketingOption o) {
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    checkUnnamed2846(o.bucketBounds);
    unittest.expect(o.requiresMinMax, unittest.isTrue);
  }
  buildCounterNumericBucketingOption--;
}

core.List<api.BucketizedCount> buildUnnamed2847() {
  var o = <api.BucketizedCount>[];
  o.add(buildBucketizedCount());
  o.add(buildBucketizedCount());
  return o;
}

void checkUnnamed2847(core.List<api.BucketizedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketizedCount(o[0]);
  checkBucketizedCount(o[1]);
}

core.int buildCounterNumericBucketingResult = 0;
api.NumericBucketingResult buildNumericBucketingResult() {
  var o = api.NumericBucketingResult();
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    o.counts = buildUnnamed2847();
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterNumericBucketingResult--;
  return o;
}

void checkNumericBucketingResult(api.NumericBucketingResult o) {
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    checkUnnamed2847(o.counts);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterNumericBucketingResult--;
}

core.List<core.String> buildUnnamed2848() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2848(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2849() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2849(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  var o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed2848();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed2849();
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
    checkUnnamed2848(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed2849(o.recipients);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
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
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    unittest.expect(o.htmlSanitization, unittest.equals('foo'));
  }
  buildCounterProcessingOptions--;
}

core.int buildCounterRequestMetadata = 0;
api.RequestMetadata buildRequestMetadata() {
  var o = api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
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
    checkDeviceInfo(o.deviceInfo);
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
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
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterResponseMetadata--;
}

core.int buildCounterSearchJobsRequest = 0;
api.SearchJobsRequest buildSearchJobsRequest() {
  var o = api.SearchJobsRequest();
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    o.disableKeywordMatch = true;
    o.diversificationLevel = 'foo';
    o.enableBroadening = true;
    o.histogramFacets = buildHistogramFacets();
    o.jobQuery = buildJobQuery();
    o.jobView = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.requestMetadata = buildRequestMetadata();
    o.requirePreciseResultSize = true;
    o.searchMode = 'foo';
  }
  buildCounterSearchJobsRequest--;
  return o;
}

void checkSearchJobsRequest(api.SearchJobsRequest o) {
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    unittest.expect(o.disableKeywordMatch, unittest.isTrue);
    unittest.expect(o.diversificationLevel, unittest.equals('foo'));
    unittest.expect(o.enableBroadening, unittest.isTrue);
    checkHistogramFacets(o.histogramFacets);
    checkJobQuery(o.jobQuery);
    unittest.expect(o.jobView, unittest.equals('foo'));
    unittest.expect(o.offset, unittest.equals(42));
    unittest.expect(o.orderBy, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkRequestMetadata(o.requestMetadata);
    unittest.expect(o.requirePreciseResultSize, unittest.isTrue);
    unittest.expect(o.searchMode, unittest.equals('foo'));
  }
  buildCounterSearchJobsRequest--;
}

core.List<api.Location> buildUnnamed2850() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed2850(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.List<api.MatchingJob> buildUnnamed2851() {
  var o = <api.MatchingJob>[];
  o.add(buildMatchingJob());
  o.add(buildMatchingJob());
  return o;
}

void checkUnnamed2851(core.List<api.MatchingJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchingJob(o[0]);
  checkMatchingJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
api.SearchJobsResponse buildSearchJobsResponse() {
  var o = api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.broadenedQueryJobsCount = 42;
    o.estimatedTotalSize = 42;
    o.histogramResults = buildHistogramResults();
    o.locationFilters = buildUnnamed2850();
    o.matchingJobs = buildUnnamed2851();
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
    unittest.expect(o.broadenedQueryJobsCount, unittest.equals(42));
    unittest.expect(o.estimatedTotalSize, unittest.equals(42));
    checkHistogramResults(o.histogramResults);
    checkUnnamed2850(o.locationFilters);
    checkUnnamed2851(o.matchingJobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkSpellingCorrection(o.spellCorrection);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterSearchJobsResponse--;
}

core.int buildCounterSpellingCorrection = 0;
api.SpellingCorrection buildSpellingCorrection() {
  var o = api.SpellingCorrection();
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    o.corrected = true;
    o.correctedText = 'foo';
  }
  buildCounterSpellingCorrection--;
  return o;
}

void checkSpellingCorrection(api.SpellingCorrection o) {
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    unittest.expect(o.corrected, unittest.isTrue);
    unittest.expect(o.correctedText, unittest.equals('foo'));
  }
  buildCounterSpellingCorrection--;
}

core.Map<core.String, core.Object> buildUnnamed2852() {
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

void checkUnnamed2852(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2853() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2852());
  o.add(buildUnnamed2852());
  return o;
}

void checkUnnamed2853(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2852(o[0]);
  checkUnnamed2852(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2853();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2853(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
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
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
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
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimestampRange--;
}

core.int buildCounterUpdateCompanyRequest = 0;
api.UpdateCompanyRequest buildUpdateCompanyRequest() {
  var o = api.UpdateCompanyRequest();
  buildCounterUpdateCompanyRequest++;
  if (buildCounterUpdateCompanyRequest < 3) {
    o.company = buildCompany();
    o.updateMask = 'foo';
  }
  buildCounterUpdateCompanyRequest--;
  return o;
}

void checkUpdateCompanyRequest(api.UpdateCompanyRequest o) {
  buildCounterUpdateCompanyRequest++;
  if (buildCounterUpdateCompanyRequest < 3) {
    checkCompany(o.company);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateCompanyRequest--;
}

core.int buildCounterUpdateJobRequest = 0;
api.UpdateJobRequest buildUpdateJobRequest() {
  var o = api.UpdateJobRequest();
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    o.job = buildJob();
    o.updateMask = 'foo';
  }
  buildCounterUpdateJobRequest--;
  return o;
}

void checkUpdateJobRequest(api.UpdateJobRequest o) {
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    checkJob(o.job);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateJobRequest--;
}

core.List<core.String> buildUnnamed2854() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2854(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-ApplicationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildApplicationInfo();
      var od = api.ApplicationInfo.fromJson(o.toJson());
      checkApplicationInfo(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteJobsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchDeleteJobsRequest();
      var od = api.BatchDeleteJobsRequest.fromJson(o.toJson());
      checkBatchDeleteJobsRequest(od);
    });
  });

  unittest.group('obj-schema-BucketRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketRange();
      var od = api.BucketRange.fromJson(o.toJson());
      checkBucketRange(od);
    });
  });

  unittest.group('obj-schema-BucketizedCount', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketizedCount();
      var od = api.BucketizedCount.fromJson(o.toJson());
      checkBucketizedCount(od);
    });
  });

  unittest.group('obj-schema-ClientEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildClientEvent();
      var od = api.ClientEvent.fromJson(o.toJson());
      checkClientEvent(od);
    });
  });

  unittest.group('obj-schema-CommuteFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommuteFilter();
      var od = api.CommuteFilter.fromJson(o.toJson());
      checkCommuteFilter(od);
    });
  });

  unittest.group('obj-schema-CommuteInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommuteInfo();
      var od = api.CommuteInfo.fromJson(o.toJson());
      checkCommuteInfo(od);
    });
  });

  unittest.group('obj-schema-Company', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompany();
      var od = api.Company.fromJson(o.toJson());
      checkCompany(od);
    });
  });

  unittest.group('obj-schema-CompanyDerivedInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompanyDerivedInfo();
      var od = api.CompanyDerivedInfo.fromJson(o.toJson());
      checkCompanyDerivedInfo(od);
    });
  });

  unittest.group('obj-schema-CompensationEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompensationEntry();
      var od = api.CompensationEntry.fromJson(o.toJson());
      checkCompensationEntry(od);
    });
  });

  unittest.group('obj-schema-CompensationFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompensationFilter();
      var od = api.CompensationFilter.fromJson(o.toJson());
      checkCompensationFilter(od);
    });
  });

  unittest.group('obj-schema-CompensationHistogramRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompensationHistogramRequest();
      var od = api.CompensationHistogramRequest.fromJson(o.toJson());
      checkCompensationHistogramRequest(od);
    });
  });

  unittest.group('obj-schema-CompensationHistogramResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompensationHistogramResult();
      var od = api.CompensationHistogramResult.fromJson(o.toJson());
      checkCompensationHistogramResult(od);
    });
  });

  unittest.group('obj-schema-CompensationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompensationInfo();
      var od = api.CompensationInfo.fromJson(o.toJson());
      checkCompensationInfo(od);
    });
  });

  unittest.group('obj-schema-CompensationRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompensationRange();
      var od = api.CompensationRange.fromJson(o.toJson());
      checkCompensationRange(od);
    });
  });

  unittest.group('obj-schema-CompleteQueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompleteQueryResponse();
      var od = api.CompleteQueryResponse.fromJson(o.toJson());
      checkCompleteQueryResponse(od);
    });
  });

  unittest.group('obj-schema-CompletionResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompletionResult();
      var od = api.CompletionResult.fromJson(o.toJson());
      checkCompletionResult(od);
    });
  });

  unittest.group('obj-schema-CreateClientEventRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateClientEventRequest();
      var od = api.CreateClientEventRequest.fromJson(o.toJson());
      checkCreateClientEventRequest(od);
    });
  });

  unittest.group('obj-schema-CreateCompanyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateCompanyRequest();
      var od = api.CreateCompanyRequest.fromJson(o.toJson());
      checkCreateCompanyRequest(od);
    });
  });

  unittest.group('obj-schema-CreateJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateJobRequest();
      var od = api.CreateJobRequest.fromJson(o.toJson());
      checkCreateJobRequest(od);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomAttribute();
      var od = api.CustomAttribute.fromJson(o.toJson());
      checkCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-CustomAttributeHistogramRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomAttributeHistogramRequest();
      var od = api.CustomAttributeHistogramRequest.fromJson(o.toJson());
      checkCustomAttributeHistogramRequest(od);
    });
  });

  unittest.group('obj-schema-CustomAttributeHistogramResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomAttributeHistogramResult();
      var od = api.CustomAttributeHistogramResult.fromJson(o.toJson());
      checkCustomAttributeHistogramResult(od);
    });
  });

  unittest.group('obj-schema-DeviceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceInfo();
      var od = api.DeviceInfo.fromJson(o.toJson());
      checkDeviceInfo(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4BatchCreateJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4BatchCreateJobsResponse();
      var od =
          api.GoogleCloudTalentV4BatchCreateJobsResponse.fromJson(o.toJson());
      checkGoogleCloudTalentV4BatchCreateJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4BatchDeleteJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4BatchDeleteJobsResponse();
      var od =
          api.GoogleCloudTalentV4BatchDeleteJobsResponse.fromJson(o.toJson());
      checkGoogleCloudTalentV4BatchDeleteJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4BatchOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4BatchOperationMetadata();
      var od =
          api.GoogleCloudTalentV4BatchOperationMetadata.fromJson(o.toJson());
      checkGoogleCloudTalentV4BatchOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4BatchUpdateJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4BatchUpdateJobsResponse();
      var od =
          api.GoogleCloudTalentV4BatchUpdateJobsResponse.fromJson(o.toJson());
      checkGoogleCloudTalentV4BatchUpdateJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4CompensationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4CompensationInfo();
      var od = api.GoogleCloudTalentV4CompensationInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4CompensationInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudTalentV4CompensationInfoCompensationEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4CompensationInfoCompensationEntry();
      var od =
          api.GoogleCloudTalentV4CompensationInfoCompensationEntry.fromJson(
              o.toJson());
      checkGoogleCloudTalentV4CompensationInfoCompensationEntry(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudTalentV4CompensationInfoCompensationRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4CompensationInfoCompensationRange();
      var od =
          api.GoogleCloudTalentV4CompensationInfoCompensationRange.fromJson(
              o.toJson());
      checkGoogleCloudTalentV4CompensationInfoCompensationRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4CustomAttribute', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4CustomAttribute();
      var od = api.GoogleCloudTalentV4CustomAttribute.fromJson(o.toJson());
      checkGoogleCloudTalentV4CustomAttribute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4Job', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4Job();
      var od = api.GoogleCloudTalentV4Job.fromJson(o.toJson());
      checkGoogleCloudTalentV4Job(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4JobApplicationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4JobApplicationInfo();
      var od = api.GoogleCloudTalentV4JobApplicationInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobApplicationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4JobDerivedInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4JobDerivedInfo();
      var od = api.GoogleCloudTalentV4JobDerivedInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobDerivedInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4JobProcessingOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4JobProcessingOptions();
      var od = api.GoogleCloudTalentV4JobProcessingOptions.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobProcessingOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4JobResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4JobResult();
      var od = api.GoogleCloudTalentV4JobResult.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudTalentV4Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudTalentV4Location();
      var od = api.GoogleCloudTalentV4Location.fromJson(o.toJson());
      checkGoogleCloudTalentV4Location(od);
    });
  });

  unittest.group('obj-schema-HistogramFacets', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogramFacets();
      var od = api.HistogramFacets.fromJson(o.toJson());
      checkHistogramFacets(od);
    });
  });

  unittest.group('obj-schema-HistogramResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogramResult();
      var od = api.HistogramResult.fromJson(o.toJson());
      checkHistogramResult(od);
    });
  });

  unittest.group('obj-schema-HistogramResults', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogramResults();
      var od = api.HistogramResults.fromJson(o.toJson());
      checkHistogramResults(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () {
      var o = buildJob();
      var od = api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobDerivedInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobDerivedInfo();
      var od = api.JobDerivedInfo.fromJson(o.toJson());
      checkJobDerivedInfo(od);
    });
  });

  unittest.group('obj-schema-JobEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobEvent();
      var od = api.JobEvent.fromJson(o.toJson());
      checkJobEvent(od);
    });
  });

  unittest.group('obj-schema-JobQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobQuery();
      var od = api.JobQuery.fromJson(o.toJson());
      checkJobQuery(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () {
      var o = buildLatLng();
      var od = api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-ListCompaniesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCompaniesResponse();
      var od = api.ListCompaniesResponse.fromJson(o.toJson());
      checkListCompaniesResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobsResponse();
      var od = api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-LocationFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocationFilter();
      var od = api.LocationFilter.fromJson(o.toJson());
      checkLocationFilter(od);
    });
  });

  unittest.group('obj-schema-MatchingJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildMatchingJob();
      var od = api.MatchingJob.fromJson(o.toJson());
      checkMatchingJob(od);
    });
  });

  unittest.group('obj-schema-MendelDebugInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildMendelDebugInput();
      var od = api.MendelDebugInput.fromJson(o.toJson());
      checkMendelDebugInput(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () {
      var o = buildMoney();
      var od = api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-NamespacedDebugInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamespacedDebugInput();
      var od = api.NamespacedDebugInput.fromJson(o.toJson());
      checkNamespacedDebugInput(od);
    });
  });

  unittest.group('obj-schema-NumericBucketingOption', () {
    unittest.test('to-json--from-json', () {
      var o = buildNumericBucketingOption();
      var od = api.NumericBucketingOption.fromJson(o.toJson());
      checkNumericBucketingOption(od);
    });
  });

  unittest.group('obj-schema-NumericBucketingResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildNumericBucketingResult();
      var od = api.NumericBucketingResult.fromJson(o.toJson());
      checkNumericBucketingResult(od);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalAddress();
      var od = api.PostalAddress.fromJson(o.toJson());
      checkPostalAddress(od);
    });
  });

  unittest.group('obj-schema-ProcessingOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildProcessingOptions();
      var od = api.ProcessingOptions.fromJson(o.toJson());
      checkProcessingOptions(od);
    });
  });

  unittest.group('obj-schema-RequestMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestMetadata();
      var od = api.RequestMetadata.fromJson(o.toJson());
      checkRequestMetadata(od);
    });
  });

  unittest.group('obj-schema-ResponseMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildResponseMetadata();
      var od = api.ResponseMetadata.fromJson(o.toJson());
      checkResponseMetadata(od);
    });
  });

  unittest.group('obj-schema-SearchJobsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchJobsRequest();
      var od = api.SearchJobsRequest.fromJson(o.toJson());
      checkSearchJobsRequest(od);
    });
  });

  unittest.group('obj-schema-SearchJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchJobsResponse();
      var od = api.SearchJobsResponse.fromJson(o.toJson());
      checkSearchJobsResponse(od);
    });
  });

  unittest.group('obj-schema-SpellingCorrection', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpellingCorrection();
      var od = api.SpellingCorrection.fromJson(o.toJson());
      checkSpellingCorrection(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeOfDay();
      var od = api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimestampRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimestampRange();
      var od = api.TimestampRange.fromJson(o.toJson());
      checkTimestampRange(od);
    });
  });

  unittest.group('obj-schema-UpdateCompanyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateCompanyRequest();
      var od = api.UpdateCompanyRequest.fromJson(o.toJson());
      checkUpdateCompanyRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateJobRequest();
      var od = api.UpdateJobRequest.fromJson(o.toJson());
      checkUpdateJobRequest(od);
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--complete', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.JobsApi(mock).projects;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_languageCodes = buildUnnamed2854();
      var arg_companyName = 'foo';
      var arg_query = 'foo';
      var arg_pageSize = 42;
      var arg_scope = 'foo';
      var arg_type = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["languageCodes"], unittest.equals(arg_languageCodes));
        unittest.expect(
            queryMap["companyName"].first, unittest.equals(arg_companyName));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCompleteQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .complete(arg_name,
              languageCode: arg_languageCode,
              languageCodes: arg_languageCodes,
              companyName: arg_companyName,
              query: arg_query,
              pageSize: arg_pageSize,
              scope: arg_scope,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompleteQueryResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsClientEventsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsClientEventsResourceApi res =
          api.JobsApi(mock).projects.clientEvents;
      var arg_request = buildCreateClientEventRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateClientEventRequest.fromJson(json);
        checkCreateClientEventRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildClientEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClientEvent(response);
      })));
    });
  });

  unittest.group('resource-ProjectsCompaniesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          api.JobsApi(mock).projects.companies;
      var arg_request = buildCreateCompanyRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateCompanyRequest.fromJson(json);
        checkCreateCompanyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          api.JobsApi(mock).projects.companies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
      api.ProjectsCompaniesResourceApi res =
          api.JobsApi(mock).projects.companies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          api.JobsApi(mock).projects.companies;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_requireOpenJobs = true;
      var arg_pageSize = 42;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["requireOpenJobs"].first,
            unittest.equals("$arg_requireOpenJobs"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCompaniesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              requireOpenJobs: arg_requireOpenJobs,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCompaniesResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsCompaniesResourceApi res =
          api.JobsApi(mock).projects.companies;
      var arg_request = buildUpdateCompanyRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateCompanyRequest.fromJson(json);
        checkUpdateCompanyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsResourceApi', () {
    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
      var arg_request = buildBatchDeleteJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchDeleteJobsRequest.fromJson(json);
        checkBatchDeleteJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
      var arg_request = buildCreateJobRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateJobRequest.fromJson(json);
        checkCreateJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_jobView = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["jobView"].first, unittest.equals(arg_jobView));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              jobView: arg_jobView,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
      var arg_request = buildUpdateJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateJobRequest.fromJson(json);
        checkUpdateJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--search', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchJobsRequest.fromJson(json);
        checkSearchJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildSearchJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });

    unittest.test('method--searchForAlert', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.JobsApi(mock).projects.jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchJobsRequest.fromJson(json);
        checkSearchJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
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
        var resp = convert.json.encode(buildSearchJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForAlert(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });
  });
}
