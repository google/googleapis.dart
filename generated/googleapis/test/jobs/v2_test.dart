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

library googleapis.jobs.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/jobs/v2.dart' as api;

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

core.int buildCounterCommuteInfo = 0;
api.CommuteInfo buildCommuteInfo() {
  var o = api.CommuteInfo();
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    o.jobLocation = buildJobLocation();
    o.travelDuration = 'foo';
  }
  buildCounterCommuteInfo--;
  return o;
}

void checkCommuteInfo(api.CommuteInfo o) {
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    checkJobLocation(o.jobLocation);
    unittest.expect(o.travelDuration, unittest.equals('foo'));
  }
  buildCounterCommuteInfo--;
}

core.int buildCounterCommutePreference = 0;
api.CommutePreference buildCommutePreference() {
  var o = api.CommutePreference();
  buildCounterCommutePreference++;
  if (buildCounterCommutePreference < 3) {
    o.allowNonStreetLevelAddress = true;
    o.departureHourLocal = 42;
    o.method = 'foo';
    o.roadTraffic = 'foo';
    o.startLocation = buildLatLng();
    o.travelTime = 'foo';
  }
  buildCounterCommutePreference--;
  return o;
}

void checkCommutePreference(api.CommutePreference o) {
  buildCounterCommutePreference++;
  if (buildCounterCommutePreference < 3) {
    unittest.expect(o.allowNonStreetLevelAddress, unittest.isTrue);
    unittest.expect(o.departureHourLocal, unittest.equals(42));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.roadTraffic, unittest.equals('foo'));
    checkLatLng(o.startLocation);
    unittest.expect(o.travelTime, unittest.equals('foo'));
  }
  buildCounterCommutePreference--;
}

core.List<api.CompanyInfoSource> buildUnnamed4341() {
  var o = <api.CompanyInfoSource>[];
  o.add(buildCompanyInfoSource());
  o.add(buildCompanyInfoSource());
  return o;
}

void checkUnnamed4341(core.List<api.CompanyInfoSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompanyInfoSource(o[0]);
  checkCompanyInfoSource(o[1]);
}

core.List<core.String> buildUnnamed4342() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4342(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed4343() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4343(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCompany = 0;
api.Company buildCompany() {
  var o = api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.careerPageLink = 'foo';
    o.companyInfoSources = buildUnnamed4341();
    o.companySize = 'foo';
    o.disableLocationOptimization = true;
    o.displayName = 'foo';
    o.distributorBillingCompanyId = 'foo';
    o.distributorCompanyId = 'foo';
    o.eeoText = 'foo';
    o.hiringAgency = true;
    o.hqLocation = 'foo';
    o.imageUrl = 'foo';
    o.keywordSearchableCustomAttributes = buildUnnamed4342();
    o.keywordSearchableCustomFields = buildUnnamed4343();
    o.name = 'foo';
    o.structuredCompanyHqLocation = buildJobLocation();
    o.suspended = true;
    o.title = 'foo';
    o.website = 'foo';
  }
  buildCounterCompany--;
  return o;
}

void checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    unittest.expect(o.careerPageLink, unittest.equals('foo'));
    checkUnnamed4341(o.companyInfoSources);
    unittest.expect(o.companySize, unittest.equals('foo'));
    unittest.expect(o.disableLocationOptimization, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.distributorBillingCompanyId, unittest.equals('foo'));
    unittest.expect(o.distributorCompanyId, unittest.equals('foo'));
    unittest.expect(o.eeoText, unittest.equals('foo'));
    unittest.expect(o.hiringAgency, unittest.isTrue);
    unittest.expect(o.hqLocation, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    checkUnnamed4342(o.keywordSearchableCustomAttributes);
    checkUnnamed4343(o.keywordSearchableCustomFields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkJobLocation(o.structuredCompanyHqLocation);
    unittest.expect(o.suspended, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.website, unittest.equals('foo'));
  }
  buildCounterCompany--;
}

core.int buildCounterCompanyInfoSource = 0;
api.CompanyInfoSource buildCompanyInfoSource() {
  var o = api.CompanyInfoSource();
  buildCounterCompanyInfoSource++;
  if (buildCounterCompanyInfoSource < 3) {
    o.freebaseMid = 'foo';
    o.gplusId = 'foo';
    o.mapsCid = 'foo';
    o.unknownTypeId = 'foo';
  }
  buildCounterCompanyInfoSource--;
  return o;
}

void checkCompanyInfoSource(api.CompanyInfoSource o) {
  buildCounterCompanyInfoSource++;
  if (buildCounterCompanyInfoSource < 3) {
    unittest.expect(o.freebaseMid, unittest.equals('foo'));
    unittest.expect(o.gplusId, unittest.equals('foo'));
    unittest.expect(o.mapsCid, unittest.equals('foo'));
    unittest.expect(o.unknownTypeId, unittest.equals('foo'));
  }
  buildCounterCompanyInfoSource--;
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

core.List<core.String> buildUnnamed4344() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4344(core.List<core.String> o) {
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
    o.units = buildUnnamed4344();
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
    checkUnnamed4344(o.units);
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

core.List<api.CompensationEntry> buildUnnamed4345() {
  var o = <api.CompensationEntry>[];
  o.add(buildCompensationEntry());
  o.add(buildCompensationEntry());
  return o;
}

void checkUnnamed4345(core.List<api.CompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationEntry(o[0]);
  checkCompensationEntry(o[1]);
}

core.int buildCounterCompensationInfo = 0;
api.CompensationInfo buildCompensationInfo() {
  var o = api.CompensationInfo();
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    o.amount = buildMoney();
    o.annualizedBaseCompensationRange = buildCompensationRange();
    o.annualizedTotalCompensationRange = buildCompensationRange();
    o.entries = buildUnnamed4345();
    o.max = buildMoney();
    o.min = buildMoney();
    o.type = 'foo';
  }
  buildCounterCompensationInfo--;
  return o;
}

void checkCompensationInfo(api.CompensationInfo o) {
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    checkMoney(o.amount);
    checkCompensationRange(o.annualizedBaseCompensationRange);
    checkCompensationRange(o.annualizedTotalCompensationRange);
    checkUnnamed4345(o.entries);
    checkMoney(o.max);
    checkMoney(o.min);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationInfo--;
}

core.int buildCounterCompensationRange = 0;
api.CompensationRange buildCompensationRange() {
  var o = api.CompensationRange();
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    o.max = buildMoney();
    o.min = buildMoney();
  }
  buildCounterCompensationRange--;
  return o;
}

void checkCompensationRange(api.CompensationRange o) {
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    checkMoney(o.max);
    checkMoney(o.min);
  }
  buildCounterCompensationRange--;
}

core.List<api.CompletionResult> buildUnnamed4346() {
  var o = <api.CompletionResult>[];
  o.add(buildCompletionResult());
  o.add(buildCompletionResult());
  return o;
}

void checkUnnamed4346(core.List<api.CompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompletionResult(o[0]);
  checkCompletionResult(o[1]);
}

core.int buildCounterCompleteQueryResponse = 0;
api.CompleteQueryResponse buildCompleteQueryResponse() {
  var o = api.CompleteQueryResponse();
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    o.completionResults = buildUnnamed4346();
    o.metadata = buildResponseMetadata();
  }
  buildCounterCompleteQueryResponse--;
  return o;
}

void checkCompleteQueryResponse(api.CompleteQueryResponse o) {
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    checkUnnamed4346(o.completionResults);
    checkResponseMetadata(o.metadata);
  }
  buildCounterCompleteQueryResponse--;
}

core.int buildCounterCompletionResult = 0;
api.CompletionResult buildCompletionResult() {
  var o = api.CompletionResult();
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    o.imageUrl = 'foo';
    o.suggestion = 'foo';
    o.type = 'foo';
  }
  buildCounterCompletionResult--;
  return o;
}

void checkCompletionResult(api.CompletionResult o) {
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.suggestion, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompletionResult--;
}

core.int buildCounterCreateJobRequest = 0;
api.CreateJobRequest buildCreateJobRequest() {
  var o = api.CreateJobRequest();
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    o.disableStreetAddressResolution = true;
    o.job = buildJob();
    o.processingOptions = buildJobProcessingOptions();
  }
  buildCounterCreateJobRequest--;
  return o;
}

void checkCreateJobRequest(api.CreateJobRequest o) {
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    checkJob(o.job);
    checkJobProcessingOptions(o.processingOptions);
  }
  buildCounterCreateJobRequest--;
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  var o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.filterable = true;
    o.longValue = 'foo';
    o.stringValues = buildStringValues();
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    unittest.expect(o.filterable, unittest.isTrue);
    unittest.expect(o.longValue, unittest.equals('foo'));
    checkStringValues(o.stringValues);
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

core.Map<core.String, core.int> buildUnnamed4347() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed4347(core.Map<core.String, core.int> o) {
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
    o.stringValueHistogramResult = buildUnnamed4347();
  }
  buildCounterCustomAttributeHistogramResult--;
  return o;
}

void checkCustomAttributeHistogramResult(api.CustomAttributeHistogramResult o) {
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingResult(o.longValueHistogramResult);
    checkUnnamed4347(o.stringValueHistogramResult);
  }
  buildCounterCustomAttributeHistogramResult--;
}

core.List<core.String> buildUnnamed4348() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4348(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomField = 0;
api.CustomField buildCustomField() {
  var o = api.CustomField();
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    o.values = buildUnnamed4348();
  }
  buildCounterCustomField--;
  return o;
}

void checkCustomField(api.CustomField o) {
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    checkUnnamed4348(o.values);
  }
  buildCounterCustomField--;
}

core.List<core.String> buildUnnamed4349() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4349(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomFieldFilter = 0;
api.CustomFieldFilter buildCustomFieldFilter() {
  var o = api.CustomFieldFilter();
  buildCounterCustomFieldFilter++;
  if (buildCounterCustomFieldFilter < 3) {
    o.queries = buildUnnamed4349();
    o.type = 'foo';
  }
  buildCounterCustomFieldFilter--;
  return o;
}

void checkCustomFieldFilter(api.CustomFieldFilter o) {
  buildCounterCustomFieldFilter++;
  if (buildCounterCustomFieldFilter < 3) {
    checkUnnamed4349(o.queries);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCustomFieldFilter--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  var o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeleteJobsByFilterRequest = 0;
api.DeleteJobsByFilterRequest buildDeleteJobsByFilterRequest() {
  var o = api.DeleteJobsByFilterRequest();
  buildCounterDeleteJobsByFilterRequest++;
  if (buildCounterDeleteJobsByFilterRequest < 3) {
    o.disableFastProcess = true;
    o.filter = buildFilter();
  }
  buildCounterDeleteJobsByFilterRequest--;
  return o;
}

void checkDeleteJobsByFilterRequest(api.DeleteJobsByFilterRequest o) {
  buildCounterDeleteJobsByFilterRequest++;
  if (buildCounterDeleteJobsByFilterRequest < 3) {
    unittest.expect(o.disableFastProcess, unittest.isTrue);
    checkFilter(o.filter);
  }
  buildCounterDeleteJobsByFilterRequest--;
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

core.List<core.String> buildUnnamed4350() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtendedCompensationFilter = 0;
api.ExtendedCompensationFilter buildExtendedCompensationFilter() {
  var o = api.ExtendedCompensationFilter();
  buildCounterExtendedCompensationFilter++;
  if (buildCounterExtendedCompensationFilter < 3) {
    o.compensationRange = buildExtendedCompensationInfoCompensationRange();
    o.compensationUnits = buildUnnamed4350();
    o.currency = 'foo';
    o.includeJobWithUnspecifiedCompensationRange = true;
    o.type = 'foo';
  }
  buildCounterExtendedCompensationFilter--;
  return o;
}

void checkExtendedCompensationFilter(api.ExtendedCompensationFilter o) {
  buildCounterExtendedCompensationFilter++;
  if (buildCounterExtendedCompensationFilter < 3) {
    checkExtendedCompensationInfoCompensationRange(o.compensationRange);
    checkUnnamed4350(o.compensationUnits);
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(
        o.includeJobWithUnspecifiedCompensationRange, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterExtendedCompensationFilter--;
}

core.List<api.ExtendedCompensationInfoCompensationEntry> buildUnnamed4351() {
  var o = <api.ExtendedCompensationInfoCompensationEntry>[];
  o.add(buildExtendedCompensationInfoCompensationEntry());
  o.add(buildExtendedCompensationInfoCompensationEntry());
  return o;
}

void checkUnnamed4351(
    core.List<api.ExtendedCompensationInfoCompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedCompensationInfoCompensationEntry(o[0]);
  checkExtendedCompensationInfoCompensationEntry(o[1]);
}

core.int buildCounterExtendedCompensationInfo = 0;
api.ExtendedCompensationInfo buildExtendedCompensationInfo() {
  var o = api.ExtendedCompensationInfo();
  buildCounterExtendedCompensationInfo++;
  if (buildCounterExtendedCompensationInfo < 3) {
    o.annualizedBaseCompensationRange =
        buildExtendedCompensationInfoCompensationRange();
    o.annualizedBaseCompensationUnspecified = true;
    o.annualizedTotalCompensationRange =
        buildExtendedCompensationInfoCompensationRange();
    o.annualizedTotalCompensationUnspecified = true;
    o.currency = 'foo';
    o.entries = buildUnnamed4351();
  }
  buildCounterExtendedCompensationInfo--;
  return o;
}

void checkExtendedCompensationInfo(api.ExtendedCompensationInfo o) {
  buildCounterExtendedCompensationInfo++;
  if (buildCounterExtendedCompensationInfo < 3) {
    checkExtendedCompensationInfoCompensationRange(
        o.annualizedBaseCompensationRange);
    unittest.expect(o.annualizedBaseCompensationUnspecified, unittest.isTrue);
    checkExtendedCompensationInfoCompensationRange(
        o.annualizedTotalCompensationRange);
    unittest.expect(o.annualizedTotalCompensationUnspecified, unittest.isTrue);
    unittest.expect(o.currency, unittest.equals('foo'));
    checkUnnamed4351(o.entries);
  }
  buildCounterExtendedCompensationInfo--;
}

core.int buildCounterExtendedCompensationInfoCompensationEntry = 0;
api.ExtendedCompensationInfoCompensationEntry
    buildExtendedCompensationInfoCompensationEntry() {
  var o = api.ExtendedCompensationInfoCompensationEntry();
  buildCounterExtendedCompensationInfoCompensationEntry++;
  if (buildCounterExtendedCompensationInfoCompensationEntry < 3) {
    o.amount = buildExtendedCompensationInfoDecimal();
    o.description = 'foo';
    o.expectedUnitsPerYear = buildExtendedCompensationInfoDecimal();
    o.range = buildExtendedCompensationInfoCompensationRange();
    o.type = 'foo';
    o.unit = 'foo';
    o.unspecified = true;
  }
  buildCounterExtendedCompensationInfoCompensationEntry--;
  return o;
}

void checkExtendedCompensationInfoCompensationEntry(
    api.ExtendedCompensationInfoCompensationEntry o) {
  buildCounterExtendedCompensationInfoCompensationEntry++;
  if (buildCounterExtendedCompensationInfoCompensationEntry < 3) {
    checkExtendedCompensationInfoDecimal(o.amount);
    unittest.expect(o.description, unittest.equals('foo'));
    checkExtendedCompensationInfoDecimal(o.expectedUnitsPerYear);
    checkExtendedCompensationInfoCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.unspecified, unittest.isTrue);
  }
  buildCounterExtendedCompensationInfoCompensationEntry--;
}

core.int buildCounterExtendedCompensationInfoCompensationRange = 0;
api.ExtendedCompensationInfoCompensationRange
    buildExtendedCompensationInfoCompensationRange() {
  var o = api.ExtendedCompensationInfoCompensationRange();
  buildCounterExtendedCompensationInfoCompensationRange++;
  if (buildCounterExtendedCompensationInfoCompensationRange < 3) {
    o.max = buildExtendedCompensationInfoDecimal();
    o.min = buildExtendedCompensationInfoDecimal();
  }
  buildCounterExtendedCompensationInfoCompensationRange--;
  return o;
}

void checkExtendedCompensationInfoCompensationRange(
    api.ExtendedCompensationInfoCompensationRange o) {
  buildCounterExtendedCompensationInfoCompensationRange++;
  if (buildCounterExtendedCompensationInfoCompensationRange < 3) {
    checkExtendedCompensationInfoDecimal(o.max);
    checkExtendedCompensationInfoDecimal(o.min);
  }
  buildCounterExtendedCompensationInfoCompensationRange--;
}

core.int buildCounterExtendedCompensationInfoDecimal = 0;
api.ExtendedCompensationInfoDecimal buildExtendedCompensationInfoDecimal() {
  var o = api.ExtendedCompensationInfoDecimal();
  buildCounterExtendedCompensationInfoDecimal++;
  if (buildCounterExtendedCompensationInfoDecimal < 3) {
    o.micros = 42;
    o.units = 'foo';
  }
  buildCounterExtendedCompensationInfoDecimal--;
  return o;
}

void checkExtendedCompensationInfoDecimal(
    api.ExtendedCompensationInfoDecimal o) {
  buildCounterExtendedCompensationInfoDecimal++;
  if (buildCounterExtendedCompensationInfoDecimal < 3) {
    unittest.expect(o.micros, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterExtendedCompensationInfoDecimal--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  var o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.requisitionId = 'foo';
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    unittest.expect(o.requisitionId, unittest.equals('foo'));
  }
  buildCounterFilter--;
}

core.List<core.String> buildUnnamed4352() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGetHistogramRequest = 0;
api.GetHistogramRequest buildGetHistogramRequest() {
  var o = api.GetHistogramRequest();
  buildCounterGetHistogramRequest++;
  if (buildCounterGetHistogramRequest < 3) {
    o.allowBroadening = true;
    o.filters = buildJobFilters();
    o.query = buildJobQuery();
    o.requestMetadata = buildRequestMetadata();
    o.searchTypes = buildUnnamed4352();
  }
  buildCounterGetHistogramRequest--;
  return o;
}

void checkGetHistogramRequest(api.GetHistogramRequest o) {
  buildCounterGetHistogramRequest++;
  if (buildCounterGetHistogramRequest < 3) {
    unittest.expect(o.allowBroadening, unittest.isTrue);
    checkJobFilters(o.filters);
    checkJobQuery(o.query);
    checkRequestMetadata(o.requestMetadata);
    checkUnnamed4352(o.searchTypes);
  }
  buildCounterGetHistogramRequest--;
}

core.List<api.HistogramResult> buildUnnamed4353() {
  var o = <api.HistogramResult>[];
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

void checkUnnamed4353(core.List<api.HistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramResult(o[0]);
  checkHistogramResult(o[1]);
}

core.int buildCounterGetHistogramResponse = 0;
api.GetHistogramResponse buildGetHistogramResponse() {
  var o = api.GetHistogramResponse();
  buildCounterGetHistogramResponse++;
  if (buildCounterGetHistogramResponse < 3) {
    o.metadata = buildResponseMetadata();
    o.results = buildUnnamed4353();
  }
  buildCounterGetHistogramResponse--;
  return o;
}

void checkGetHistogramResponse(api.GetHistogramResponse o) {
  buildCounterGetHistogramResponse++;
  if (buildCounterGetHistogramResponse < 3) {
    checkResponseMetadata(o.metadata);
    checkUnnamed4353(o.results);
  }
  buildCounterGetHistogramResponse--;
}

core.List<api.GoogleCloudTalentV4JobResult> buildUnnamed4354() {
  var o = <api.GoogleCloudTalentV4JobResult>[];
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

void checkUnnamed4354(core.List<api.GoogleCloudTalentV4JobResult> o) {
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
    o.jobResults = buildUnnamed4354();
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
  return o;
}

void checkGoogleCloudTalentV4BatchCreateJobsResponse(
    api.GoogleCloudTalentV4BatchCreateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchCreateJobsResponse < 3) {
    checkUnnamed4354(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
}

core.List<api.GoogleCloudTalentV4JobResult> buildUnnamed4355() {
  var o = <api.GoogleCloudTalentV4JobResult>[];
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

void checkUnnamed4355(core.List<api.GoogleCloudTalentV4JobResult> o) {
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
    o.jobResults = buildUnnamed4355();
  }
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse--;
  return o;
}

void checkGoogleCloudTalentV4BatchDeleteJobsResponse(
    api.GoogleCloudTalentV4BatchDeleteJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse < 3) {
    checkUnnamed4355(o.jobResults);
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

core.List<api.GoogleCloudTalentV4JobResult> buildUnnamed4356() {
  var o = <api.GoogleCloudTalentV4JobResult>[];
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

void checkUnnamed4356(core.List<api.GoogleCloudTalentV4JobResult> o) {
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
    o.jobResults = buildUnnamed4356();
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
  return o;
}

void checkGoogleCloudTalentV4BatchUpdateJobsResponse(
    api.GoogleCloudTalentV4BatchUpdateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse < 3) {
    checkUnnamed4356(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
}

core.List<api.GoogleCloudTalentV4CompensationInfoCompensationEntry>
    buildUnnamed4357() {
  var o = <api.GoogleCloudTalentV4CompensationInfoCompensationEntry>[];
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  return o;
}

void checkUnnamed4357(
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
    o.entries = buildUnnamed4357();
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
    checkUnnamed4357(o.entries);
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

core.List<core.String> buildUnnamed4358() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4359() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4359(core.List<core.String> o) {
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
    o.longValues = buildUnnamed4358();
    o.stringValues = buildUnnamed4359();
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
    checkUnnamed4358(o.longValues);
    checkUnnamed4359(o.stringValues);
  }
  buildCounterGoogleCloudTalentV4CustomAttribute--;
}

core.List<core.String> buildUnnamed4360() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4360(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute>
    buildUnnamed4361() {
  var o = <core.String, api.GoogleCloudTalentV4CustomAttribute>{};
  o['x'] = buildGoogleCloudTalentV4CustomAttribute();
  o['y'] = buildGoogleCloudTalentV4CustomAttribute();
  return o;
}

void checkUnnamed4361(
    core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4CustomAttribute(o['x']);
  checkGoogleCloudTalentV4CustomAttribute(o['y']);
}

core.List<core.String> buildUnnamed4362() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4363() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4363(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4364() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4364(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4Job = 0;
api.GoogleCloudTalentV4Job buildGoogleCloudTalentV4Job() {
  var o = api.GoogleCloudTalentV4Job();
  buildCounterGoogleCloudTalentV4Job++;
  if (buildCounterGoogleCloudTalentV4Job < 3) {
    o.addresses = buildUnnamed4360();
    o.applicationInfo = buildGoogleCloudTalentV4JobApplicationInfo();
    o.company = 'foo';
    o.companyDisplayName = 'foo';
    o.compensationInfo = buildGoogleCloudTalentV4CompensationInfo();
    o.customAttributes = buildUnnamed4361();
    o.degreeTypes = buildUnnamed4362();
    o.department = 'foo';
    o.derivedInfo = buildGoogleCloudTalentV4JobDerivedInfo();
    o.description = 'foo';
    o.employmentTypes = buildUnnamed4363();
    o.incentives = 'foo';
    o.jobBenefits = buildUnnamed4364();
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
    checkUnnamed4360(o.addresses);
    checkGoogleCloudTalentV4JobApplicationInfo(o.applicationInfo);
    unittest.expect(o.company, unittest.equals('foo'));
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    checkGoogleCloudTalentV4CompensationInfo(o.compensationInfo);
    checkUnnamed4361(o.customAttributes);
    checkUnnamed4362(o.degreeTypes);
    unittest.expect(o.department, unittest.equals('foo'));
    checkGoogleCloudTalentV4JobDerivedInfo(o.derivedInfo);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed4363(o.employmentTypes);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed4364(o.jobBenefits);
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

core.List<core.String> buildUnnamed4365() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4365(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4366() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4366(core.List<core.String> o) {
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
    o.emails = buildUnnamed4365();
    o.instruction = 'foo';
    o.uris = buildUnnamed4366();
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
  return o;
}

void checkGoogleCloudTalentV4JobApplicationInfo(
    api.GoogleCloudTalentV4JobApplicationInfo o) {
  buildCounterGoogleCloudTalentV4JobApplicationInfo++;
  if (buildCounterGoogleCloudTalentV4JobApplicationInfo < 3) {
    checkUnnamed4365(o.emails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed4366(o.uris);
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
}

core.List<core.String> buildUnnamed4367() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudTalentV4Location> buildUnnamed4368() {
  var o = <api.GoogleCloudTalentV4Location>[];
  o.add(buildGoogleCloudTalentV4Location());
  o.add(buildGoogleCloudTalentV4Location());
  return o;
}

void checkUnnamed4368(core.List<api.GoogleCloudTalentV4Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4Location(o[0]);
  checkGoogleCloudTalentV4Location(o[1]);
}

core.int buildCounterGoogleCloudTalentV4JobDerivedInfo = 0;
api.GoogleCloudTalentV4JobDerivedInfo buildGoogleCloudTalentV4JobDerivedInfo() {
  var o = api.GoogleCloudTalentV4JobDerivedInfo();
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed4367();
    o.locations = buildUnnamed4368();
  }
  buildCounterGoogleCloudTalentV4JobDerivedInfo--;
  return o;
}

void checkGoogleCloudTalentV4JobDerivedInfo(
    api.GoogleCloudTalentV4JobDerivedInfo o) {
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    checkUnnamed4367(o.jobCategories);
    checkUnnamed4368(o.locations);
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

core.List<api.CompensationHistogramRequest> buildUnnamed4369() {
  var o = <api.CompensationHistogramRequest>[];
  o.add(buildCompensationHistogramRequest());
  o.add(buildCompensationHistogramRequest());
  return o;
}

void checkUnnamed4369(core.List<api.CompensationHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramRequest(o[0]);
  checkCompensationHistogramRequest(o[1]);
}

core.List<api.CustomAttributeHistogramRequest> buildUnnamed4370() {
  var o = <api.CustomAttributeHistogramRequest>[];
  o.add(buildCustomAttributeHistogramRequest());
  o.add(buildCustomAttributeHistogramRequest());
  return o;
}

void checkUnnamed4370(core.List<api.CustomAttributeHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramRequest(o[0]);
  checkCustomAttributeHistogramRequest(o[1]);
}

core.List<core.String> buildUnnamed4371() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogramFacets = 0;
api.HistogramFacets buildHistogramFacets() {
  var o = api.HistogramFacets();
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    o.compensationHistogramFacets = buildUnnamed4369();
    o.customAttributeHistogramFacets = buildUnnamed4370();
    o.simpleHistogramFacets = buildUnnamed4371();
  }
  buildCounterHistogramFacets--;
  return o;
}

void checkHistogramFacets(api.HistogramFacets o) {
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    checkUnnamed4369(o.compensationHistogramFacets);
    checkUnnamed4370(o.customAttributeHistogramFacets);
    checkUnnamed4371(o.simpleHistogramFacets);
  }
  buildCounterHistogramFacets--;
}

core.Map<core.String, core.int> buildUnnamed4372() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed4372(core.Map<core.String, core.int> o) {
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
    o.values = buildUnnamed4372();
  }
  buildCounterHistogramResult--;
  return o;
}

void checkHistogramResult(api.HistogramResult o) {
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    unittest.expect(o.searchType, unittest.equals('foo'));
    checkUnnamed4372(o.values);
  }
  buildCounterHistogramResult--;
}

core.List<api.CompensationHistogramResult> buildUnnamed4373() {
  var o = <api.CompensationHistogramResult>[];
  o.add(buildCompensationHistogramResult());
  o.add(buildCompensationHistogramResult());
  return o;
}

void checkUnnamed4373(core.List<api.CompensationHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramResult(o[0]);
  checkCompensationHistogramResult(o[1]);
}

core.List<api.CustomAttributeHistogramResult> buildUnnamed4374() {
  var o = <api.CustomAttributeHistogramResult>[];
  o.add(buildCustomAttributeHistogramResult());
  o.add(buildCustomAttributeHistogramResult());
  return o;
}

void checkUnnamed4374(core.List<api.CustomAttributeHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramResult(o[0]);
  checkCustomAttributeHistogramResult(o[1]);
}

core.List<api.HistogramResult> buildUnnamed4375() {
  var o = <api.HistogramResult>[];
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

void checkUnnamed4375(core.List<api.HistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramResult(o[0]);
  checkHistogramResult(o[1]);
}

core.int buildCounterHistogramResults = 0;
api.HistogramResults buildHistogramResults() {
  var o = api.HistogramResults();
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    o.compensationHistogramResults = buildUnnamed4373();
    o.customAttributeHistogramResults = buildUnnamed4374();
    o.simpleHistogramResults = buildUnnamed4375();
  }
  buildCounterHistogramResults--;
  return o;
}

void checkHistogramResults(api.HistogramResults o) {
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    checkUnnamed4373(o.compensationHistogramResults);
    checkUnnamed4374(o.customAttributeHistogramResults);
    checkUnnamed4375(o.simpleHistogramResults);
  }
  buildCounterHistogramResults--;
}

core.List<core.String> buildUnnamed4376() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4376(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4377() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4377(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4378() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4378(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.CustomAttribute> buildUnnamed4379() {
  var o = <core.String, api.CustomAttribute>{};
  o['x'] = buildCustomAttribute();
  o['y'] = buildCustomAttribute();
  return o;
}

void checkUnnamed4379(core.Map<core.String, api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o['x']);
  checkCustomAttribute(o['y']);
}

core.List<core.String> buildUnnamed4380() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4380(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4381() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4381(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.CustomField> buildUnnamed4382() {
  var o = <core.String, api.CustomField>{};
  o['x'] = buildCustomField();
  o['y'] = buildCustomField();
  return o;
}

void checkUnnamed4382(core.Map<core.String, api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o['x']);
  checkCustomField(o['y']);
}

core.List<api.JobLocation> buildUnnamed4383() {
  var o = <api.JobLocation>[];
  o.add(buildJobLocation());
  o.add(buildJobLocation());
  return o;
}

void checkUnnamed4383(core.List<api.JobLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobLocation(o[0]);
  checkJobLocation(o[1]);
}

core.List<core.String> buildUnnamed4384() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4384(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.CustomField> buildUnnamed4385() {
  var o = <core.String, api.CustomField>{};
  o['x'] = buildCustomField();
  o['y'] = buildCustomField();
  return o;
}

void checkUnnamed4385(core.Map<core.String, api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o['x']);
  checkCustomField(o['y']);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  var o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.applicationEmailList = buildUnnamed4376();
    o.applicationInstruction = 'foo';
    o.applicationUrls = buildUnnamed4377();
    o.benefits = buildUnnamed4378();
    o.companyDisplayName = 'foo';
    o.companyName = 'foo';
    o.companyTitle = 'foo';
    o.compensationInfo = buildCompensationInfo();
    o.createTime = 'foo';
    o.customAttributes = buildUnnamed4379();
    o.department = 'foo';
    o.description = 'foo';
    o.distributorCompanyId = 'foo';
    o.educationLevels = buildUnnamed4380();
    o.employmentTypes = buildUnnamed4381();
    o.endDate = buildDate();
    o.expireTime = 'foo';
    o.expiryDate = buildDate();
    o.extendedCompensationInfo = buildExtendedCompensationInfo();
    o.filterableCustomFields = buildUnnamed4382();
    o.incentives = 'foo';
    o.jobLocations = buildUnnamed4383();
    o.jobTitle = 'foo';
    o.languageCode = 'foo';
    o.level = 'foo';
    o.locations = buildUnnamed4384();
    o.name = 'foo';
    o.promotionValue = 42;
    o.publishDate = buildDate();
    o.qualifications = 'foo';
    o.referenceUrl = 'foo';
    o.region = 'foo';
    o.requisitionId = 'foo';
    o.responsibilities = 'foo';
    o.startDate = buildDate();
    o.unindexedCustomFields = buildUnnamed4385();
    o.updateTime = 'foo';
    o.visibility = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkUnnamed4376(o.applicationEmailList);
    unittest.expect(o.applicationInstruction, unittest.equals('foo'));
    checkUnnamed4377(o.applicationUrls);
    checkUnnamed4378(o.benefits);
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.companyTitle, unittest.equals('foo'));
    checkCompensationInfo(o.compensationInfo);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4379(o.customAttributes);
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.distributorCompanyId, unittest.equals('foo'));
    checkUnnamed4380(o.educationLevels);
    checkUnnamed4381(o.employmentTypes);
    checkDate(o.endDate);
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkDate(o.expiryDate);
    checkExtendedCompensationInfo(o.extendedCompensationInfo);
    checkUnnamed4382(o.filterableCustomFields);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed4383(o.jobLocations);
    unittest.expect(o.jobTitle, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.level, unittest.equals('foo'));
    checkUnnamed4384(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.promotionValue, unittest.equals(42));
    checkDate(o.publishDate);
    unittest.expect(o.qualifications, unittest.equals('foo'));
    unittest.expect(o.referenceUrl, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.requisitionId, unittest.equals('foo'));
    unittest.expect(o.responsibilities, unittest.equals('foo'));
    checkDate(o.startDate);
    checkUnnamed4385(o.unindexedCustomFields);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.List<core.String> buildUnnamed4386() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4386(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4387() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4387(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4388() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4388(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.CustomFieldFilter> buildUnnamed4389() {
  var o = <core.String, api.CustomFieldFilter>{};
  o['x'] = buildCustomFieldFilter();
  o['y'] = buildCustomFieldFilter();
  return o;
}

void checkUnnamed4389(core.Map<core.String, api.CustomFieldFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomFieldFilter(o['x']);
  checkCustomFieldFilter(o['y']);
}

core.List<core.String> buildUnnamed4390() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4390(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4391() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4391(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LocationFilter> buildUnnamed4392() {
  var o = <api.LocationFilter>[];
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

void checkUnnamed4392(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobFilters = 0;
api.JobFilters buildJobFilters() {
  var o = api.JobFilters();
  buildCounterJobFilters++;
  if (buildCounterJobFilters < 3) {
    o.categories = buildUnnamed4386();
    o.commuteFilter = buildCommutePreference();
    o.companyNames = buildUnnamed4387();
    o.companyTitles = buildUnnamed4388();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = 'foo';
    o.customFieldFilters = buildUnnamed4389();
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed4390();
    o.extendedCompensationFilter = buildExtendedCompensationFilter();
    o.languageCodes = buildUnnamed4391();
    o.locationFilters = buildUnnamed4392();
    o.publishDateRange = 'foo';
    o.query = 'foo';
    o.tenantJobOnly = true;
  }
  buildCounterJobFilters--;
  return o;
}

void checkJobFilters(api.JobFilters o) {
  buildCounterJobFilters++;
  if (buildCounterJobFilters < 3) {
    checkUnnamed4386(o.categories);
    checkCommutePreference(o.commuteFilter);
    checkUnnamed4387(o.companyNames);
    checkUnnamed4388(o.companyTitles);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    checkUnnamed4389(o.customFieldFilters);
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed4390(o.employmentTypes);
    checkExtendedCompensationFilter(o.extendedCompensationFilter);
    checkUnnamed4391(o.languageCodes);
    checkUnnamed4392(o.locationFilters);
    unittest.expect(o.publishDateRange, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.tenantJobOnly, unittest.isTrue);
  }
  buildCounterJobFilters--;
}

core.int buildCounterJobLocation = 0;
api.JobLocation buildJobLocation() {
  var o = api.JobLocation();
  buildCounterJobLocation++;
  if (buildCounterJobLocation < 3) {
    o.latLng = buildLatLng();
    o.locationType = 'foo';
    o.postalAddress = buildPostalAddress();
    o.radiusMeters = 42.0;
  }
  buildCounterJobLocation--;
  return o;
}

void checkJobLocation(api.JobLocation o) {
  buildCounterJobLocation++;
  if (buildCounterJobLocation < 3) {
    checkLatLng(o.latLng);
    unittest.expect(o.locationType, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    unittest.expect(o.radiusMeters, unittest.equals(42.0));
  }
  buildCounterJobLocation--;
}

core.int buildCounterJobProcessingOptions = 0;
api.JobProcessingOptions buildJobProcessingOptions() {
  var o = api.JobProcessingOptions();
  buildCounterJobProcessingOptions++;
  if (buildCounterJobProcessingOptions < 3) {
    o.disableStreetAddressResolution = true;
    o.htmlSanitization = 'foo';
  }
  buildCounterJobProcessingOptions--;
  return o;
}

void checkJobProcessingOptions(api.JobProcessingOptions o) {
  buildCounterJobProcessingOptions++;
  if (buildCounterJobProcessingOptions < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    unittest.expect(o.htmlSanitization, unittest.equals('foo'));
  }
  buildCounterJobProcessingOptions--;
}

core.List<core.String> buildUnnamed4393() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4393(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4394() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4394(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4395() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4395(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4396() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4396(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4397() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4397(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LocationFilter> buildUnnamed4398() {
  var o = <api.LocationFilter>[];
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

void checkUnnamed4398(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobQuery = 0;
api.JobQuery buildJobQuery() {
  var o = api.JobQuery();
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    o.categories = buildUnnamed4393();
    o.commuteFilter = buildCommutePreference();
    o.companyDisplayNames = buildUnnamed4394();
    o.companyNames = buildUnnamed4395();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = 'foo';
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed4396();
    o.languageCodes = buildUnnamed4397();
    o.locationFilters = buildUnnamed4398();
    o.publishDateRange = 'foo';
    o.query = 'foo';
  }
  buildCounterJobQuery--;
  return o;
}

void checkJobQuery(api.JobQuery o) {
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    checkUnnamed4393(o.categories);
    checkCommutePreference(o.commuteFilter);
    checkUnnamed4394(o.companyDisplayNames);
    checkUnnamed4395(o.companyNames);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed4396(o.employmentTypes);
    checkUnnamed4397(o.languageCodes);
    checkUnnamed4398(o.locationFilters);
    unittest.expect(o.publishDateRange, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
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

core.List<api.Company> buildUnnamed4399() {
  var o = <api.Company>[];
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

void checkUnnamed4399(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCompaniesResponse = 0;
api.ListCompaniesResponse buildListCompaniesResponse() {
  var o = api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed4399();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListCompaniesResponse--;
  return o;
}

void checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed4399(o.companies);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCompaniesResponse--;
}

core.List<api.Job> buildUnnamed4400() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed4400(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListCompanyJobsResponse = 0;
api.ListCompanyJobsResponse buildListCompanyJobsResponse() {
  var o = api.ListCompanyJobsResponse();
  buildCounterListCompanyJobsResponse++;
  if (buildCounterListCompanyJobsResponse < 3) {
    o.jobs = buildUnnamed4400();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
    o.totalSize = 'foo';
  }
  buildCounterListCompanyJobsResponse--;
  return o;
}

void checkListCompanyJobsResponse(api.ListCompanyJobsResponse o) {
  buildCounterListCompanyJobsResponse++;
  if (buildCounterListCompanyJobsResponse < 3) {
    checkUnnamed4400(o.jobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals('foo'));
  }
  buildCounterListCompanyJobsResponse--;
}

core.List<api.Job> buildUnnamed4401() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed4401(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed4401();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed4401(o.jobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.int buildCounterLocationFilter = 0;
api.LocationFilter buildLocationFilter() {
  var o = api.LocationFilter();
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    o.distanceInMiles = 42.0;
    o.isTelecommute = true;
    o.latLng = buildLatLng();
    o.name = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterLocationFilter--;
  return o;
}

void checkLocationFilter(api.LocationFilter o) {
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    unittest.expect(o.distanceInMiles, unittest.equals(42.0));
    unittest.expect(o.isTelecommute, unittest.isTrue);
    checkLatLng(o.latLng);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
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

core.Map<core.String, api.NamespacedDebugInput> buildUnnamed4402() {
  var o = <core.String, api.NamespacedDebugInput>{};
  o['x'] = buildNamespacedDebugInput();
  o['y'] = buildNamespacedDebugInput();
  return o;
}

void checkUnnamed4402(core.Map<core.String, api.NamespacedDebugInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespacedDebugInput(o['x']);
  checkNamespacedDebugInput(o['y']);
}

core.int buildCounterMendelDebugInput = 0;
api.MendelDebugInput buildMendelDebugInput() {
  var o = api.MendelDebugInput();
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    o.namespacedDebugInput = buildUnnamed4402();
  }
  buildCounterMendelDebugInput--;
  return o;
}

void checkMendelDebugInput(api.MendelDebugInput o) {
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    checkUnnamed4402(o.namespacedDebugInput);
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

core.List<core.String> buildUnnamed4403() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4403(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4404() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4404(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed4405() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4405(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed4406() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4406(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4407() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4407(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed4408() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4408(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed4409() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4409(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4410() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4410(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed4411() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4411(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.Map<core.String, core.String> buildUnnamed4412() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4412(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.bool> buildUnnamed4413() {
  var o = <core.String, core.bool>{};
  o['x'] = true;
  o['y'] = true;
  return o;
}

void checkUnnamed4413(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.isTrue);
  unittest.expect(o['y'], unittest.isTrue);
}

core.int buildCounterNamespacedDebugInput = 0;
api.NamespacedDebugInput buildNamespacedDebugInput() {
  var o = api.NamespacedDebugInput();
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    o.absolutelyForcedExpNames = buildUnnamed4403();
    o.absolutelyForcedExpTags = buildUnnamed4404();
    o.absolutelyForcedExps = buildUnnamed4405();
    o.conditionallyForcedExpNames = buildUnnamed4406();
    o.conditionallyForcedExpTags = buildUnnamed4407();
    o.conditionallyForcedExps = buildUnnamed4408();
    o.disableAutomaticEnrollmentSelection = true;
    o.disableExpNames = buildUnnamed4409();
    o.disableExpTags = buildUnnamed4410();
    o.disableExps = buildUnnamed4411();
    o.disableManualEnrollmentSelection = true;
    o.disableOrganicSelection = true;
    o.forcedFlags = buildUnnamed4412();
    o.forcedRollouts = buildUnnamed4413();
  }
  buildCounterNamespacedDebugInput--;
  return o;
}

void checkNamespacedDebugInput(api.NamespacedDebugInput o) {
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    checkUnnamed4403(o.absolutelyForcedExpNames);
    checkUnnamed4404(o.absolutelyForcedExpTags);
    checkUnnamed4405(o.absolutelyForcedExps);
    checkUnnamed4406(o.conditionallyForcedExpNames);
    checkUnnamed4407(o.conditionallyForcedExpTags);
    checkUnnamed4408(o.conditionallyForcedExps);
    unittest.expect(o.disableAutomaticEnrollmentSelection, unittest.isTrue);
    checkUnnamed4409(o.disableExpNames);
    checkUnnamed4410(o.disableExpTags);
    checkUnnamed4411(o.disableExps);
    unittest.expect(o.disableManualEnrollmentSelection, unittest.isTrue);
    unittest.expect(o.disableOrganicSelection, unittest.isTrue);
    checkUnnamed4412(o.forcedFlags);
    checkUnnamed4413(o.forcedRollouts);
  }
  buildCounterNamespacedDebugInput--;
}

core.List<core.double> buildUnnamed4414() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed4414(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterNumericBucketingOption = 0;
api.NumericBucketingOption buildNumericBucketingOption() {
  var o = api.NumericBucketingOption();
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    o.bucketBounds = buildUnnamed4414();
    o.requiresMinMax = true;
  }
  buildCounterNumericBucketingOption--;
  return o;
}

void checkNumericBucketingOption(api.NumericBucketingOption o) {
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    checkUnnamed4414(o.bucketBounds);
    unittest.expect(o.requiresMinMax, unittest.isTrue);
  }
  buildCounterNumericBucketingOption--;
}

core.List<api.BucketizedCount> buildUnnamed4415() {
  var o = <api.BucketizedCount>[];
  o.add(buildBucketizedCount());
  o.add(buildBucketizedCount());
  return o;
}

void checkUnnamed4415(core.List<api.BucketizedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketizedCount(o[0]);
  checkBucketizedCount(o[1]);
}

core.int buildCounterNumericBucketingResult = 0;
api.NumericBucketingResult buildNumericBucketingResult() {
  var o = api.NumericBucketingResult();
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    o.counts = buildUnnamed4415();
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterNumericBucketingResult--;
  return o;
}

void checkNumericBucketingResult(api.NumericBucketingResult o) {
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    checkUnnamed4415(o.counts);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterNumericBucketingResult--;
}

core.List<core.String> buildUnnamed4416() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4416(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4417() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4417(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  var o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed4416();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed4417();
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
    checkUnnamed4416(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed4417(o.recipients);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
  }
  buildCounterPostalAddress--;
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

core.List<core.int> buildUnnamed4418() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4418(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterResponseMetadata = 0;
api.ResponseMetadata buildResponseMetadata() {
  var o = api.ResponseMetadata();
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    o.experimentIdList = buildUnnamed4418();
    o.mode = 'foo';
    o.requestId = 'foo';
  }
  buildCounterResponseMetadata--;
  return o;
}

void checkResponseMetadata(api.ResponseMetadata o) {
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    checkUnnamed4418(o.experimentIdList);
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterResponseMetadata--;
}

core.int buildCounterSearchJobsRequest = 0;
api.SearchJobsRequest buildSearchJobsRequest() {
  var o = api.SearchJobsRequest();
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    o.disableRelevanceThresholding = true;
    o.enableBroadening = true;
    o.enablePreciseResultSize = true;
    o.filters = buildJobFilters();
    o.histogramFacets = buildHistogramFacets();
    o.jobView = 'foo';
    o.mode = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = buildJobQuery();
    o.requestMetadata = buildRequestMetadata();
    o.sortBy = 'foo';
  }
  buildCounterSearchJobsRequest--;
  return o;
}

void checkSearchJobsRequest(api.SearchJobsRequest o) {
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    unittest.expect(o.disableRelevanceThresholding, unittest.isTrue);
    unittest.expect(o.enableBroadening, unittest.isTrue);
    unittest.expect(o.enablePreciseResultSize, unittest.isTrue);
    checkJobFilters(o.filters);
    checkHistogramFacets(o.histogramFacets);
    unittest.expect(o.jobView, unittest.equals('foo'));
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.offset, unittest.equals(42));
    unittest.expect(o.orderBy, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkJobQuery(o.query);
    checkRequestMetadata(o.requestMetadata);
    unittest.expect(o.sortBy, unittest.equals('foo'));
  }
  buildCounterSearchJobsRequest--;
}

core.List<api.JobLocation> buildUnnamed4419() {
  var o = <api.JobLocation>[];
  o.add(buildJobLocation());
  o.add(buildJobLocation());
  return o;
}

void checkUnnamed4419(core.List<api.JobLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobLocation(o[0]);
  checkJobLocation(o[1]);
}

core.List<api.MatchingJob> buildUnnamed4420() {
  var o = <api.MatchingJob>[];
  o.add(buildMatchingJob());
  o.add(buildMatchingJob());
  return o;
}

void checkUnnamed4420(core.List<api.MatchingJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchingJob(o[0]);
  checkMatchingJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
api.SearchJobsResponse buildSearchJobsResponse() {
  var o = api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.appliedCommuteFilter = buildCommutePreference();
    o.appliedJobLocationFilters = buildUnnamed4419();
    o.estimatedTotalSize = 'foo';
    o.histogramResults = buildHistogramResults();
    o.jobView = 'foo';
    o.matchingJobs = buildUnnamed4420();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = 'foo';
    o.numJobsFromBroadenedQuery = 42;
    o.spellResult = buildSpellingCorrection();
    o.totalSize = 'foo';
  }
  buildCounterSearchJobsResponse--;
  return o;
}

void checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    checkCommutePreference(o.appliedCommuteFilter);
    checkUnnamed4419(o.appliedJobLocationFilters);
    unittest.expect(o.estimatedTotalSize, unittest.equals('foo'));
    checkHistogramResults(o.histogramResults);
    unittest.expect(o.jobView, unittest.equals('foo'));
    checkUnnamed4420(o.matchingJobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.numJobsFromBroadenedQuery, unittest.equals(42));
    checkSpellingCorrection(o.spellResult);
    unittest.expect(o.totalSize, unittest.equals('foo'));
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

core.Map<core.String, core.Object> buildUnnamed4421() {
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

void checkUnnamed4421(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4422() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed4421());
  o.add(buildUnnamed4421());
  return o;
}

void checkUnnamed4422(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4421(o[0]);
  checkUnnamed4421(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4422();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4422(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed4423() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4423(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringValues = 0;
api.StringValues buildStringValues() {
  var o = api.StringValues();
  buildCounterStringValues++;
  if (buildCounterStringValues < 3) {
    o.values = buildUnnamed4423();
  }
  buildCounterStringValues--;
  return o;
}

void checkStringValues(api.StringValues o) {
  buildCounterStringValues++;
  if (buildCounterStringValues < 3) {
    checkUnnamed4423(o.values);
  }
  buildCounterStringValues--;
}

core.int buildCounterUpdateJobRequest = 0;
api.UpdateJobRequest buildUpdateJobRequest() {
  var o = api.UpdateJobRequest();
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    o.disableStreetAddressResolution = true;
    o.job = buildJob();
    o.processingOptions = buildJobProcessingOptions();
    o.updateJobFields = 'foo';
  }
  buildCounterUpdateJobRequest--;
  return o;
}

void checkUpdateJobRequest(api.UpdateJobRequest o) {
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    checkJob(o.job);
    checkJobProcessingOptions(o.processingOptions);
    unittest.expect(o.updateJobFields, unittest.equals('foo'));
  }
  buildCounterUpdateJobRequest--;
}

void main() {
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

  unittest.group('obj-schema-CommuteInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommuteInfo();
      var od = api.CommuteInfo.fromJson(o.toJson());
      checkCommuteInfo(od);
    });
  });

  unittest.group('obj-schema-CommutePreference', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommutePreference();
      var od = api.CommutePreference.fromJson(o.toJson());
      checkCommutePreference(od);
    });
  });

  unittest.group('obj-schema-Company', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompany();
      var od = api.Company.fromJson(o.toJson());
      checkCompany(od);
    });
  });

  unittest.group('obj-schema-CompanyInfoSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompanyInfoSource();
      var od = api.CompanyInfoSource.fromJson(o.toJson());
      checkCompanyInfoSource(od);
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

  unittest.group('obj-schema-CustomField', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomField();
      var od = api.CustomField.fromJson(o.toJson());
      checkCustomField(od);
    });
  });

  unittest.group('obj-schema-CustomFieldFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomFieldFilter();
      var od = api.CustomFieldFilter.fromJson(o.toJson());
      checkCustomFieldFilter(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DeleteJobsByFilterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteJobsByFilterRequest();
      var od = api.DeleteJobsByFilterRequest.fromJson(o.toJson());
      checkDeleteJobsByFilterRequest(od);
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

  unittest.group('obj-schema-ExtendedCompensationFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildExtendedCompensationFilter();
      var od = api.ExtendedCompensationFilter.fromJson(o.toJson());
      checkExtendedCompensationFilter(od);
    });
  });

  unittest.group('obj-schema-ExtendedCompensationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildExtendedCompensationInfo();
      var od = api.ExtendedCompensationInfo.fromJson(o.toJson());
      checkExtendedCompensationInfo(od);
    });
  });

  unittest.group('obj-schema-ExtendedCompensationInfoCompensationEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildExtendedCompensationInfoCompensationEntry();
      var od =
          api.ExtendedCompensationInfoCompensationEntry.fromJson(o.toJson());
      checkExtendedCompensationInfoCompensationEntry(od);
    });
  });

  unittest.group('obj-schema-ExtendedCompensationInfoCompensationRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildExtendedCompensationInfoCompensationRange();
      var od =
          api.ExtendedCompensationInfoCompensationRange.fromJson(o.toJson());
      checkExtendedCompensationInfoCompensationRange(od);
    });
  });

  unittest.group('obj-schema-ExtendedCompensationInfoDecimal', () {
    unittest.test('to-json--from-json', () {
      var o = buildExtendedCompensationInfoDecimal();
      var od = api.ExtendedCompensationInfoDecimal.fromJson(o.toJson());
      checkExtendedCompensationInfoDecimal(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () {
      var o = buildFilter();
      var od = api.Filter.fromJson(o.toJson());
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-GetHistogramRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetHistogramRequest();
      var od = api.GetHistogramRequest.fromJson(o.toJson());
      checkGetHistogramRequest(od);
    });
  });

  unittest.group('obj-schema-GetHistogramResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetHistogramResponse();
      var od = api.GetHistogramResponse.fromJson(o.toJson());
      checkGetHistogramResponse(od);
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

  unittest.group('obj-schema-JobFilters', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobFilters();
      var od = api.JobFilters.fromJson(o.toJson());
      checkJobFilters(od);
    });
  });

  unittest.group('obj-schema-JobLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobLocation();
      var od = api.JobLocation.fromJson(o.toJson());
      checkJobLocation(od);
    });
  });

  unittest.group('obj-schema-JobProcessingOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobProcessingOptions();
      var od = api.JobProcessingOptions.fromJson(o.toJson());
      checkJobProcessingOptions(od);
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

  unittest.group('obj-schema-ListCompanyJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCompanyJobsResponse();
      var od = api.ListCompanyJobsResponse.fromJson(o.toJson());
      checkListCompanyJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobsResponse();
      var od = api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
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

  unittest.group('obj-schema-StringValues', () {
    unittest.test('to-json--from-json', () {
      var o = buildStringValues();
      var od = api.StringValues.fromJson(o.toJson());
      checkStringValues(od);
    });
  });

  unittest.group('obj-schema-UpdateJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateJobRequest();
      var od = api.UpdateJobRequest.fromJson(o.toJson());
      checkUpdateJobRequest(od);
    });
  });

  unittest.group('resource-CompaniesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.CompaniesResourceApi res = api.JobsApi(mock).companies;
      var arg_request = buildCompany();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Company.fromJson(json);
        checkCompany(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/companies"));
        pathOffset += 12;

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
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CompaniesResourceApi res = api.JobsApi(mock).companies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.CompaniesResourceApi res = api.JobsApi(mock).companies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.CompaniesResourceApi res = api.JobsApi(mock).companies;
      var arg_mustHaveOpenJobs = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/companies"));
        pathOffset += 12;

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
        unittest.expect(queryMap["mustHaveOpenJobs"].first,
            unittest.equals("$arg_mustHaveOpenJobs"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCompaniesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              mustHaveOpenJobs: arg_mustHaveOpenJobs,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCompaniesResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CompaniesResourceApi res = api.JobsApi(mock).companies;
      var arg_request = buildCompany();
      var arg_name = 'foo';
      var arg_updateCompanyFields = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Company.fromJson(json);
        checkCompany(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["updateCompanyFields"].first,
            unittest.equals(arg_updateCompanyFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateCompanyFields: arg_updateCompanyFields,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });
  });

  unittest.group('resource-CompaniesJobsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CompaniesJobsResourceApi res = api.JobsApi(mock).companies.jobs;
      var arg_companyName = 'foo';
      var arg_idsOnly = true;
      var arg_includeJobsCount = true;
      var arg_jobRequisitionId = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["idsOnly"].first, unittest.equals("$arg_idsOnly"));
        unittest.expect(queryMap["includeJobsCount"].first,
            unittest.equals("$arg_includeJobsCount"));
        unittest.expect(queryMap["jobRequisitionId"].first,
            unittest.equals(arg_jobRequisitionId));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCompanyJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_companyName,
              idsOnly: arg_idsOnly,
              includeJobsCount: arg_includeJobsCount,
              jobRequisitionId: arg_jobRequisitionId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCompanyJobsResponse(response);
      })));
    });
  });

  unittest.group('resource-JobsResourceApi', () {
    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_request = buildBatchDeleteJobsRequest();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v2/jobs:batchDelete"));
        pathOffset += 19;

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
          .batchDelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_request = buildCreateJobRequest();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2/jobs"));
        pathOffset += 7;

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
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_name = 'foo';
      var arg_disableFastProcess = true;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["disableFastProcess"].first,
            unittest.equals("$arg_disableFastProcess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              disableFastProcess: arg_disableFastProcess, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--deleteByFilter', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_request = buildDeleteJobsByFilterRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeleteJobsByFilterRequest.fromJson(json);
        checkDeleteJobsByFilterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/jobs:deleteByFilter"));
        pathOffset += 22;

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
          .deleteByFilter(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test('method--histogram', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_request = buildGetHistogramRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetHistogramRequest.fromJson(json);
        checkGetHistogramRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2/jobs:histogram"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildGetHistogramResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .histogram(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetHistogramResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_filter = 'foo';
      var arg_idsOnly = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2/jobs"));
        pathOffset += 7;

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
        unittest.expect(
            queryMap["idsOnly"].first, unittest.equals("$arg_idsOnly"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              idsOnly: arg_idsOnly,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_request = buildSearchJobsRequest();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v2/jobs:search"));
        pathOffset += 14;

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
          .search(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });

    unittest.test('method--searchForAlert', () {
      var mock = HttpServerMock();
      api.JobsResourceApi res = api.JobsApi(mock).jobs;
      var arg_request = buildSearchJobsRequest();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/jobs:searchForAlert"));
        pathOffset += 22;

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
          .searchForAlert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });
  });

  unittest.group('resource-V2ResourceApi', () {
    unittest.test('method--complete', () {
      var mock = HttpServerMock();
      api.V2ResourceApi res = api.JobsApi(mock).v2;
      var arg_companyName = 'foo';
      var arg_languageCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v2:complete"));
        pathOffset += 11;

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
            queryMap["companyName"].first, unittest.equals(arg_companyName));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
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
          .complete(
              companyName: arg_companyName,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              query: arg_query,
              scope: arg_scope,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompleteQueryResponse(response);
      })));
    });
  });
}
