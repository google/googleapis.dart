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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterBatchDeleteJobsRequest = 0;
buildBatchDeleteJobsRequest() {
  var o = new api.BatchDeleteJobsRequest();
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    o.filter = "foo";
  }
  buildCounterBatchDeleteJobsRequest--;
  return o;
}

checkBatchDeleteJobsRequest(api.BatchDeleteJobsRequest o) {
  buildCounterBatchDeleteJobsRequest++;
  if (buildCounterBatchDeleteJobsRequest < 3) {
    unittest.expect(o.filter, unittest.equals('foo'));
  }
  buildCounterBatchDeleteJobsRequest--;
}

core.int buildCounterBucketRange = 0;
buildBucketRange() {
  var o = new api.BucketRange();
  buildCounterBucketRange++;
  if (buildCounterBucketRange < 3) {
    o.from = 42.0;
    o.to = 42.0;
  }
  buildCounterBucketRange--;
  return o;
}

checkBucketRange(api.BucketRange o) {
  buildCounterBucketRange++;
  if (buildCounterBucketRange < 3) {
    unittest.expect(o.from, unittest.equals(42.0));
    unittest.expect(o.to, unittest.equals(42.0));
  }
  buildCounterBucketRange--;
}

core.int buildCounterBucketizedCount = 0;
buildBucketizedCount() {
  var o = new api.BucketizedCount();
  buildCounterBucketizedCount++;
  if (buildCounterBucketizedCount < 3) {
    o.count = 42;
    o.range = buildBucketRange();
  }
  buildCounterBucketizedCount--;
  return o;
}

checkBucketizedCount(api.BucketizedCount o) {
  buildCounterBucketizedCount++;
  if (buildCounterBucketizedCount < 3) {
    unittest.expect(o.count, unittest.equals(42));
    checkBucketRange(o.range);
  }
  buildCounterBucketizedCount--;
}

core.int buildCounterCommuteInfo = 0;
buildCommuteInfo() {
  var o = new api.CommuteInfo();
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    o.jobLocation = buildJobLocation();
    o.travelDuration = "foo";
  }
  buildCounterCommuteInfo--;
  return o;
}

checkCommuteInfo(api.CommuteInfo o) {
  buildCounterCommuteInfo++;
  if (buildCounterCommuteInfo < 3) {
    checkJobLocation(o.jobLocation);
    unittest.expect(o.travelDuration, unittest.equals('foo'));
  }
  buildCounterCommuteInfo--;
}

core.int buildCounterCommutePreference = 0;
buildCommutePreference() {
  var o = new api.CommutePreference();
  buildCounterCommutePreference++;
  if (buildCounterCommutePreference < 3) {
    o.allowNonStreetLevelAddress = true;
    o.departureHourLocal = 42;
    o.method = "foo";
    o.roadTraffic = "foo";
    o.startLocation = buildLatLng();
    o.travelTime = "foo";
  }
  buildCounterCommutePreference--;
  return o;
}

checkCommutePreference(api.CommutePreference o) {
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

buildUnnamed1210() {
  var o = new core.List<api.CompanyInfoSource>();
  o.add(buildCompanyInfoSource());
  o.add(buildCompanyInfoSource());
  return o;
}

checkUnnamed1210(core.List<api.CompanyInfoSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompanyInfoSource(o[0]);
  checkCompanyInfoSource(o[1]);
}

buildUnnamed1211() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1211(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1212() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1212(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCompany = 0;
buildCompany() {
  var o = new api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.careerPageLink = "foo";
    o.companyInfoSources = buildUnnamed1210();
    o.companySize = "foo";
    o.disableLocationOptimization = true;
    o.displayName = "foo";
    o.distributorBillingCompanyId = "foo";
    o.distributorCompanyId = "foo";
    o.eeoText = "foo";
    o.hiringAgency = true;
    o.hqLocation = "foo";
    o.imageUrl = "foo";
    o.keywordSearchableCustomAttributes = buildUnnamed1211();
    o.keywordSearchableCustomFields = buildUnnamed1212();
    o.name = "foo";
    o.structuredCompanyHqLocation = buildJobLocation();
    o.suspended = true;
    o.title = "foo";
    o.website = "foo";
  }
  buildCounterCompany--;
  return o;
}

checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    unittest.expect(o.careerPageLink, unittest.equals('foo'));
    checkUnnamed1210(o.companyInfoSources);
    unittest.expect(o.companySize, unittest.equals('foo'));
    unittest.expect(o.disableLocationOptimization, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.distributorBillingCompanyId, unittest.equals('foo'));
    unittest.expect(o.distributorCompanyId, unittest.equals('foo'));
    unittest.expect(o.eeoText, unittest.equals('foo'));
    unittest.expect(o.hiringAgency, unittest.isTrue);
    unittest.expect(o.hqLocation, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    checkUnnamed1211(o.keywordSearchableCustomAttributes);
    checkUnnamed1212(o.keywordSearchableCustomFields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkJobLocation(o.structuredCompanyHqLocation);
    unittest.expect(o.suspended, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.website, unittest.equals('foo'));
  }
  buildCounterCompany--;
}

core.int buildCounterCompanyInfoSource = 0;
buildCompanyInfoSource() {
  var o = new api.CompanyInfoSource();
  buildCounterCompanyInfoSource++;
  if (buildCounterCompanyInfoSource < 3) {
    o.freebaseMid = "foo";
    o.gplusId = "foo";
    o.mapsCid = "foo";
    o.unknownTypeId = "foo";
  }
  buildCounterCompanyInfoSource--;
  return o;
}

checkCompanyInfoSource(api.CompanyInfoSource o) {
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
buildCompensationEntry() {
  var o = new api.CompensationEntry();
  buildCounterCompensationEntry++;
  if (buildCounterCompensationEntry < 3) {
    o.amount = buildMoney();
    o.description = "foo";
    o.expectedUnitsPerYear = 42.0;
    o.range = buildCompensationRange();
    o.type = "foo";
    o.unit = "foo";
  }
  buildCounterCompensationEntry--;
  return o;
}

checkCompensationEntry(api.CompensationEntry o) {
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

buildUnnamed1213() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1213(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCompensationFilter = 0;
buildCompensationFilter() {
  var o = new api.CompensationFilter();
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    o.includeJobsWithUnspecifiedCompensationRange = true;
    o.range = buildCompensationRange();
    o.type = "foo";
    o.units = buildUnnamed1213();
  }
  buildCounterCompensationFilter--;
  return o;
}

checkCompensationFilter(api.CompensationFilter o) {
  buildCounterCompensationFilter++;
  if (buildCounterCompensationFilter < 3) {
    unittest.expect(
        o.includeJobsWithUnspecifiedCompensationRange, unittest.isTrue);
    checkCompensationRange(o.range);
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed1213(o.units);
  }
  buildCounterCompensationFilter--;
}

core.int buildCounterCompensationHistogramRequest = 0;
buildCompensationHistogramRequest() {
  var o = new api.CompensationHistogramRequest();
  buildCounterCompensationHistogramRequest++;
  if (buildCounterCompensationHistogramRequest < 3) {
    o.bucketingOption = buildNumericBucketingOption();
    o.type = "foo";
  }
  buildCounterCompensationHistogramRequest--;
  return o;
}

checkCompensationHistogramRequest(api.CompensationHistogramRequest o) {
  buildCounterCompensationHistogramRequest++;
  if (buildCounterCompensationHistogramRequest < 3) {
    checkNumericBucketingOption(o.bucketingOption);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationHistogramRequest--;
}

core.int buildCounterCompensationHistogramResult = 0;
buildCompensationHistogramResult() {
  var o = new api.CompensationHistogramResult();
  buildCounterCompensationHistogramResult++;
  if (buildCounterCompensationHistogramResult < 3) {
    o.result = buildNumericBucketingResult();
    o.type = "foo";
  }
  buildCounterCompensationHistogramResult--;
  return o;
}

checkCompensationHistogramResult(api.CompensationHistogramResult o) {
  buildCounterCompensationHistogramResult++;
  if (buildCounterCompensationHistogramResult < 3) {
    checkNumericBucketingResult(o.result);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationHistogramResult--;
}

buildUnnamed1214() {
  var o = new core.List<api.CompensationEntry>();
  o.add(buildCompensationEntry());
  o.add(buildCompensationEntry());
  return o;
}

checkUnnamed1214(core.List<api.CompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationEntry(o[0]);
  checkCompensationEntry(o[1]);
}

core.int buildCounterCompensationInfo = 0;
buildCompensationInfo() {
  var o = new api.CompensationInfo();
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    o.amount = buildMoney();
    o.annualizedBaseCompensationRange = buildCompensationRange();
    o.annualizedTotalCompensationRange = buildCompensationRange();
    o.entries = buildUnnamed1214();
    o.max = buildMoney();
    o.min = buildMoney();
    o.type = "foo";
  }
  buildCounterCompensationInfo--;
  return o;
}

checkCompensationInfo(api.CompensationInfo o) {
  buildCounterCompensationInfo++;
  if (buildCounterCompensationInfo < 3) {
    checkMoney(o.amount);
    checkCompensationRange(o.annualizedBaseCompensationRange);
    checkCompensationRange(o.annualizedTotalCompensationRange);
    checkUnnamed1214(o.entries);
    checkMoney(o.max);
    checkMoney(o.min);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompensationInfo--;
}

core.int buildCounterCompensationRange = 0;
buildCompensationRange() {
  var o = new api.CompensationRange();
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    o.max = buildMoney();
    o.min = buildMoney();
  }
  buildCounterCompensationRange--;
  return o;
}

checkCompensationRange(api.CompensationRange o) {
  buildCounterCompensationRange++;
  if (buildCounterCompensationRange < 3) {
    checkMoney(o.max);
    checkMoney(o.min);
  }
  buildCounterCompensationRange--;
}

buildUnnamed1215() {
  var o = new core.List<api.CompletionResult>();
  o.add(buildCompletionResult());
  o.add(buildCompletionResult());
  return o;
}

checkUnnamed1215(core.List<api.CompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompletionResult(o[0]);
  checkCompletionResult(o[1]);
}

core.int buildCounterCompleteQueryResponse = 0;
buildCompleteQueryResponse() {
  var o = new api.CompleteQueryResponse();
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    o.completionResults = buildUnnamed1215();
    o.metadata = buildResponseMetadata();
  }
  buildCounterCompleteQueryResponse--;
  return o;
}

checkCompleteQueryResponse(api.CompleteQueryResponse o) {
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    checkUnnamed1215(o.completionResults);
    checkResponseMetadata(o.metadata);
  }
  buildCounterCompleteQueryResponse--;
}

core.int buildCounterCompletionResult = 0;
buildCompletionResult() {
  var o = new api.CompletionResult();
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    o.imageUrl = "foo";
    o.suggestion = "foo";
    o.type = "foo";
  }
  buildCounterCompletionResult--;
  return o;
}

checkCompletionResult(api.CompletionResult o) {
  buildCounterCompletionResult++;
  if (buildCounterCompletionResult < 3) {
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.suggestion, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCompletionResult--;
}

core.int buildCounterCreateJobRequest = 0;
buildCreateJobRequest() {
  var o = new api.CreateJobRequest();
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    o.disableStreetAddressResolution = true;
    o.job = buildJob();
    o.processingOptions = buildJobProcessingOptions();
  }
  buildCounterCreateJobRequest--;
  return o;
}

checkCreateJobRequest(api.CreateJobRequest o) {
  buildCounterCreateJobRequest++;
  if (buildCounterCreateJobRequest < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    checkJob(o.job);
    checkJobProcessingOptions(o.processingOptions);
  }
  buildCounterCreateJobRequest--;
}

core.int buildCounterCustomAttribute = 0;
buildCustomAttribute() {
  var o = new api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.filterable = true;
    o.longValue = "foo";
    o.stringValues = buildStringValues();
  }
  buildCounterCustomAttribute--;
  return o;
}

checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    unittest.expect(o.filterable, unittest.isTrue);
    unittest.expect(o.longValue, unittest.equals('foo'));
    checkStringValues(o.stringValues);
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCustomAttributeHistogramRequest = 0;
buildCustomAttributeHistogramRequest() {
  var o = new api.CustomAttributeHistogramRequest();
  buildCounterCustomAttributeHistogramRequest++;
  if (buildCounterCustomAttributeHistogramRequest < 3) {
    o.key = "foo";
    o.longValueHistogramBucketingOption = buildNumericBucketingOption();
    o.stringValueHistogram = true;
  }
  buildCounterCustomAttributeHistogramRequest--;
  return o;
}

checkCustomAttributeHistogramRequest(api.CustomAttributeHistogramRequest o) {
  buildCounterCustomAttributeHistogramRequest++;
  if (buildCounterCustomAttributeHistogramRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingOption(o.longValueHistogramBucketingOption);
    unittest.expect(o.stringValueHistogram, unittest.isTrue);
  }
  buildCounterCustomAttributeHistogramRequest--;
}

buildUnnamed1216() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed1216(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterCustomAttributeHistogramResult = 0;
buildCustomAttributeHistogramResult() {
  var o = new api.CustomAttributeHistogramResult();
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    o.key = "foo";
    o.longValueHistogramResult = buildNumericBucketingResult();
    o.stringValueHistogramResult = buildUnnamed1216();
  }
  buildCounterCustomAttributeHistogramResult--;
  return o;
}

checkCustomAttributeHistogramResult(api.CustomAttributeHistogramResult o) {
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingResult(o.longValueHistogramResult);
    checkUnnamed1216(o.stringValueHistogramResult);
  }
  buildCounterCustomAttributeHistogramResult--;
}

buildUnnamed1217() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1217(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomField = 0;
buildCustomField() {
  var o = new api.CustomField();
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    o.values = buildUnnamed1217();
  }
  buildCounterCustomField--;
  return o;
}

checkCustomField(api.CustomField o) {
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    checkUnnamed1217(o.values);
  }
  buildCounterCustomField--;
}

buildUnnamed1218() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1218(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomFieldFilter = 0;
buildCustomFieldFilter() {
  var o = new api.CustomFieldFilter();
  buildCounterCustomFieldFilter++;
  if (buildCounterCustomFieldFilter < 3) {
    o.queries = buildUnnamed1218();
    o.type = "foo";
  }
  buildCounterCustomFieldFilter--;
  return o;
}

checkCustomFieldFilter(api.CustomFieldFilter o) {
  buildCounterCustomFieldFilter++;
  if (buildCounterCustomFieldFilter < 3) {
    checkUnnamed1218(o.queries);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCustomFieldFilter--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeleteJobsByFilterRequest = 0;
buildDeleteJobsByFilterRequest() {
  var o = new api.DeleteJobsByFilterRequest();
  buildCounterDeleteJobsByFilterRequest++;
  if (buildCounterDeleteJobsByFilterRequest < 3) {
    o.disableFastProcess = true;
    o.filter = buildFilter();
  }
  buildCounterDeleteJobsByFilterRequest--;
  return o;
}

checkDeleteJobsByFilterRequest(api.DeleteJobsByFilterRequest o) {
  buildCounterDeleteJobsByFilterRequest++;
  if (buildCounterDeleteJobsByFilterRequest < 3) {
    unittest.expect(o.disableFastProcess, unittest.isTrue);
    checkFilter(o.filter);
  }
  buildCounterDeleteJobsByFilterRequest--;
}

core.int buildCounterDeviceInfo = 0;
buildDeviceInfo() {
  var o = new api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.deviceType = "foo";
    o.id = "foo";
  }
  buildCounterDeviceInfo--;
  return o;
}

checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterDeviceInfo--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed1219() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1219(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtendedCompensationFilter = 0;
buildExtendedCompensationFilter() {
  var o = new api.ExtendedCompensationFilter();
  buildCounterExtendedCompensationFilter++;
  if (buildCounterExtendedCompensationFilter < 3) {
    o.compensationRange = buildExtendedCompensationInfoCompensationRange();
    o.compensationUnits = buildUnnamed1219();
    o.currency = "foo";
    o.includeJobWithUnspecifiedCompensationRange = true;
    o.type = "foo";
  }
  buildCounterExtendedCompensationFilter--;
  return o;
}

checkExtendedCompensationFilter(api.ExtendedCompensationFilter o) {
  buildCounterExtendedCompensationFilter++;
  if (buildCounterExtendedCompensationFilter < 3) {
    checkExtendedCompensationInfoCompensationRange(o.compensationRange);
    checkUnnamed1219(o.compensationUnits);
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(
        o.includeJobWithUnspecifiedCompensationRange, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterExtendedCompensationFilter--;
}

buildUnnamed1220() {
  var o = new core.List<api.ExtendedCompensationInfoCompensationEntry>();
  o.add(buildExtendedCompensationInfoCompensationEntry());
  o.add(buildExtendedCompensationInfoCompensationEntry());
  return o;
}

checkUnnamed1220(core.List<api.ExtendedCompensationInfoCompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedCompensationInfoCompensationEntry(o[0]);
  checkExtendedCompensationInfoCompensationEntry(o[1]);
}

core.int buildCounterExtendedCompensationInfo = 0;
buildExtendedCompensationInfo() {
  var o = new api.ExtendedCompensationInfo();
  buildCounterExtendedCompensationInfo++;
  if (buildCounterExtendedCompensationInfo < 3) {
    o.annualizedBaseCompensationRange =
        buildExtendedCompensationInfoCompensationRange();
    o.annualizedBaseCompensationUnspecified = true;
    o.annualizedTotalCompensationRange =
        buildExtendedCompensationInfoCompensationRange();
    o.annualizedTotalCompensationUnspecified = true;
    o.currency = "foo";
    o.entries = buildUnnamed1220();
  }
  buildCounterExtendedCompensationInfo--;
  return o;
}

checkExtendedCompensationInfo(api.ExtendedCompensationInfo o) {
  buildCounterExtendedCompensationInfo++;
  if (buildCounterExtendedCompensationInfo < 3) {
    checkExtendedCompensationInfoCompensationRange(
        o.annualizedBaseCompensationRange);
    unittest.expect(o.annualizedBaseCompensationUnspecified, unittest.isTrue);
    checkExtendedCompensationInfoCompensationRange(
        o.annualizedTotalCompensationRange);
    unittest.expect(o.annualizedTotalCompensationUnspecified, unittest.isTrue);
    unittest.expect(o.currency, unittest.equals('foo'));
    checkUnnamed1220(o.entries);
  }
  buildCounterExtendedCompensationInfo--;
}

core.int buildCounterExtendedCompensationInfoCompensationEntry = 0;
buildExtendedCompensationInfoCompensationEntry() {
  var o = new api.ExtendedCompensationInfoCompensationEntry();
  buildCounterExtendedCompensationInfoCompensationEntry++;
  if (buildCounterExtendedCompensationInfoCompensationEntry < 3) {
    o.amount = buildExtendedCompensationInfoDecimal();
    o.description = "foo";
    o.expectedUnitsPerYear = buildExtendedCompensationInfoDecimal();
    o.range = buildExtendedCompensationInfoCompensationRange();
    o.type = "foo";
    o.unit = "foo";
    o.unspecified = true;
  }
  buildCounterExtendedCompensationInfoCompensationEntry--;
  return o;
}

checkExtendedCompensationInfoCompensationEntry(
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
buildExtendedCompensationInfoCompensationRange() {
  var o = new api.ExtendedCompensationInfoCompensationRange();
  buildCounterExtendedCompensationInfoCompensationRange++;
  if (buildCounterExtendedCompensationInfoCompensationRange < 3) {
    o.max = buildExtendedCompensationInfoDecimal();
    o.min = buildExtendedCompensationInfoDecimal();
  }
  buildCounterExtendedCompensationInfoCompensationRange--;
  return o;
}

checkExtendedCompensationInfoCompensationRange(
    api.ExtendedCompensationInfoCompensationRange o) {
  buildCounterExtendedCompensationInfoCompensationRange++;
  if (buildCounterExtendedCompensationInfoCompensationRange < 3) {
    checkExtendedCompensationInfoDecimal(o.max);
    checkExtendedCompensationInfoDecimal(o.min);
  }
  buildCounterExtendedCompensationInfoCompensationRange--;
}

core.int buildCounterExtendedCompensationInfoDecimal = 0;
buildExtendedCompensationInfoDecimal() {
  var o = new api.ExtendedCompensationInfoDecimal();
  buildCounterExtendedCompensationInfoDecimal++;
  if (buildCounterExtendedCompensationInfoDecimal < 3) {
    o.micros = 42;
    o.units = "foo";
  }
  buildCounterExtendedCompensationInfoDecimal--;
  return o;
}

checkExtendedCompensationInfoDecimal(api.ExtendedCompensationInfoDecimal o) {
  buildCounterExtendedCompensationInfoDecimal++;
  if (buildCounterExtendedCompensationInfoDecimal < 3) {
    unittest.expect(o.micros, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterExtendedCompensationInfoDecimal--;
}

core.int buildCounterFilter = 0;
buildFilter() {
  var o = new api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.requisitionId = "foo";
  }
  buildCounterFilter--;
  return o;
}

checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    unittest.expect(o.requisitionId, unittest.equals('foo'));
  }
  buildCounterFilter--;
}

buildUnnamed1221() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1221(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGetHistogramRequest = 0;
buildGetHistogramRequest() {
  var o = new api.GetHistogramRequest();
  buildCounterGetHistogramRequest++;
  if (buildCounterGetHistogramRequest < 3) {
    o.allowBroadening = true;
    o.filters = buildJobFilters();
    o.query = buildJobQuery();
    o.requestMetadata = buildRequestMetadata();
    o.searchTypes = buildUnnamed1221();
  }
  buildCounterGetHistogramRequest--;
  return o;
}

checkGetHistogramRequest(api.GetHistogramRequest o) {
  buildCounterGetHistogramRequest++;
  if (buildCounterGetHistogramRequest < 3) {
    unittest.expect(o.allowBroadening, unittest.isTrue);
    checkJobFilters(o.filters);
    checkJobQuery(o.query);
    checkRequestMetadata(o.requestMetadata);
    checkUnnamed1221(o.searchTypes);
  }
  buildCounterGetHistogramRequest--;
}

buildUnnamed1222() {
  var o = new core.List<api.HistogramResult>();
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

checkUnnamed1222(core.List<api.HistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramResult(o[0]);
  checkHistogramResult(o[1]);
}

core.int buildCounterGetHistogramResponse = 0;
buildGetHistogramResponse() {
  var o = new api.GetHistogramResponse();
  buildCounterGetHistogramResponse++;
  if (buildCounterGetHistogramResponse < 3) {
    o.metadata = buildResponseMetadata();
    o.results = buildUnnamed1222();
  }
  buildCounterGetHistogramResponse--;
  return o;
}

checkGetHistogramResponse(api.GetHistogramResponse o) {
  buildCounterGetHistogramResponse++;
  if (buildCounterGetHistogramResponse < 3) {
    checkResponseMetadata(o.metadata);
    checkUnnamed1222(o.results);
  }
  buildCounterGetHistogramResponse--;
}

buildUnnamed1223() {
  var o = new core.List<api.GoogleCloudTalentV4JobResult>();
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

checkUnnamed1223(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchCreateJobsResponse = 0;
buildGoogleCloudTalentV4BatchCreateJobsResponse() {
  var o = new api.GoogleCloudTalentV4BatchCreateJobsResponse();
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchCreateJobsResponse < 3) {
    o.jobResults = buildUnnamed1223();
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
  return o;
}

checkGoogleCloudTalentV4BatchCreateJobsResponse(
    api.GoogleCloudTalentV4BatchCreateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchCreateJobsResponse < 3) {
    checkUnnamed1223(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchCreateJobsResponse--;
}

buildUnnamed1224() {
  var o = new core.List<api.GoogleCloudTalentV4JobResult>();
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

checkUnnamed1224(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse = 0;
buildGoogleCloudTalentV4BatchDeleteJobsResponse() {
  var o = new api.GoogleCloudTalentV4BatchDeleteJobsResponse();
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse < 3) {
    o.jobResults = buildUnnamed1224();
  }
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse--;
  return o;
}

checkGoogleCloudTalentV4BatchDeleteJobsResponse(
    api.GoogleCloudTalentV4BatchDeleteJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse < 3) {
    checkUnnamed1224(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchDeleteJobsResponse--;
}

core.int buildCounterGoogleCloudTalentV4BatchOperationMetadata = 0;
buildGoogleCloudTalentV4BatchOperationMetadata() {
  var o = new api.GoogleCloudTalentV4BatchOperationMetadata();
  buildCounterGoogleCloudTalentV4BatchOperationMetadata++;
  if (buildCounterGoogleCloudTalentV4BatchOperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.failureCount = 42;
    o.state = "foo";
    o.stateDescription = "foo";
    o.successCount = 42;
    o.totalCount = 42;
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudTalentV4BatchOperationMetadata--;
  return o;
}

checkGoogleCloudTalentV4BatchOperationMetadata(
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

buildUnnamed1225() {
  var o = new core.List<api.GoogleCloudTalentV4JobResult>();
  o.add(buildGoogleCloudTalentV4JobResult());
  o.add(buildGoogleCloudTalentV4JobResult());
  return o;
}

checkUnnamed1225(core.List<api.GoogleCloudTalentV4JobResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4JobResult(o[0]);
  checkGoogleCloudTalentV4JobResult(o[1]);
}

core.int buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse = 0;
buildGoogleCloudTalentV4BatchUpdateJobsResponse() {
  var o = new api.GoogleCloudTalentV4BatchUpdateJobsResponse();
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse < 3) {
    o.jobResults = buildUnnamed1225();
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
  return o;
}

checkGoogleCloudTalentV4BatchUpdateJobsResponse(
    api.GoogleCloudTalentV4BatchUpdateJobsResponse o) {
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse++;
  if (buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse < 3) {
    checkUnnamed1225(o.jobResults);
  }
  buildCounterGoogleCloudTalentV4BatchUpdateJobsResponse--;
}

buildUnnamed1226() {
  var o =
      new core.List<api.GoogleCloudTalentV4CompensationInfoCompensationEntry>();
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  o.add(buildGoogleCloudTalentV4CompensationInfoCompensationEntry());
  return o;
}

checkUnnamed1226(
    core.List<api.GoogleCloudTalentV4CompensationInfoCompensationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4CompensationInfoCompensationEntry(o[0]);
  checkGoogleCloudTalentV4CompensationInfoCompensationEntry(o[1]);
}

core.int buildCounterGoogleCloudTalentV4CompensationInfo = 0;
buildGoogleCloudTalentV4CompensationInfo() {
  var o = new api.GoogleCloudTalentV4CompensationInfo();
  buildCounterGoogleCloudTalentV4CompensationInfo++;
  if (buildCounterGoogleCloudTalentV4CompensationInfo < 3) {
    o.annualizedBaseCompensationRange =
        buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.annualizedTotalCompensationRange =
        buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.entries = buildUnnamed1226();
  }
  buildCounterGoogleCloudTalentV4CompensationInfo--;
  return o;
}

checkGoogleCloudTalentV4CompensationInfo(
    api.GoogleCloudTalentV4CompensationInfo o) {
  buildCounterGoogleCloudTalentV4CompensationInfo++;
  if (buildCounterGoogleCloudTalentV4CompensationInfo < 3) {
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(
        o.annualizedBaseCompensationRange);
    checkGoogleCloudTalentV4CompensationInfoCompensationRange(
        o.annualizedTotalCompensationRange);
    checkUnnamed1226(o.entries);
  }
  buildCounterGoogleCloudTalentV4CompensationInfo--;
}

core.int buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry = 0;
buildGoogleCloudTalentV4CompensationInfoCompensationEntry() {
  var o = new api.GoogleCloudTalentV4CompensationInfoCompensationEntry();
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry < 3) {
    o.amount = buildMoney();
    o.description = "foo";
    o.expectedUnitsPerYear = 42.0;
    o.range = buildGoogleCloudTalentV4CompensationInfoCompensationRange();
    o.type = "foo";
    o.unit = "foo";
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationEntry--;
  return o;
}

checkGoogleCloudTalentV4CompensationInfoCompensationEntry(
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
buildGoogleCloudTalentV4CompensationInfoCompensationRange() {
  var o = new api.GoogleCloudTalentV4CompensationInfoCompensationRange();
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange < 3) {
    o.maxCompensation = buildMoney();
    o.minCompensation = buildMoney();
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange--;
  return o;
}

checkGoogleCloudTalentV4CompensationInfoCompensationRange(
    api.GoogleCloudTalentV4CompensationInfoCompensationRange o) {
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange++;
  if (buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange < 3) {
    checkMoney(o.maxCompensation);
    checkMoney(o.minCompensation);
  }
  buildCounterGoogleCloudTalentV4CompensationInfoCompensationRange--;
}

buildUnnamed1227() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1227(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1228() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1228(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4CustomAttribute = 0;
buildGoogleCloudTalentV4CustomAttribute() {
  var o = new api.GoogleCloudTalentV4CustomAttribute();
  buildCounterGoogleCloudTalentV4CustomAttribute++;
  if (buildCounterGoogleCloudTalentV4CustomAttribute < 3) {
    o.filterable = true;
    o.keywordSearchable = true;
    o.longValues = buildUnnamed1227();
    o.stringValues = buildUnnamed1228();
  }
  buildCounterGoogleCloudTalentV4CustomAttribute--;
  return o;
}

checkGoogleCloudTalentV4CustomAttribute(
    api.GoogleCloudTalentV4CustomAttribute o) {
  buildCounterGoogleCloudTalentV4CustomAttribute++;
  if (buildCounterGoogleCloudTalentV4CustomAttribute < 3) {
    unittest.expect(o.filterable, unittest.isTrue);
    unittest.expect(o.keywordSearchable, unittest.isTrue);
    checkUnnamed1227(o.longValues);
    checkUnnamed1228(o.stringValues);
  }
  buildCounterGoogleCloudTalentV4CustomAttribute--;
}

buildUnnamed1229() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1229(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1230() {
  var o = new core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute>();
  o["x"] = buildGoogleCloudTalentV4CustomAttribute();
  o["y"] = buildGoogleCloudTalentV4CustomAttribute();
  return o;
}

checkUnnamed1230(
    core.Map<core.String, api.GoogleCloudTalentV4CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4CustomAttribute(o["x"]);
  checkGoogleCloudTalentV4CustomAttribute(o["y"]);
}

buildUnnamed1231() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1231(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1232() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1232(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1233() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1233(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4Job = 0;
buildGoogleCloudTalentV4Job() {
  var o = new api.GoogleCloudTalentV4Job();
  buildCounterGoogleCloudTalentV4Job++;
  if (buildCounterGoogleCloudTalentV4Job < 3) {
    o.addresses = buildUnnamed1229();
    o.applicationInfo = buildGoogleCloudTalentV4JobApplicationInfo();
    o.company = "foo";
    o.companyDisplayName = "foo";
    o.compensationInfo = buildGoogleCloudTalentV4CompensationInfo();
    o.customAttributes = buildUnnamed1230();
    o.degreeTypes = buildUnnamed1231();
    o.department = "foo";
    o.derivedInfo = buildGoogleCloudTalentV4JobDerivedInfo();
    o.description = "foo";
    o.employmentTypes = buildUnnamed1232();
    o.incentives = "foo";
    o.jobBenefits = buildUnnamed1233();
    o.jobEndTime = "foo";
    o.jobLevel = "foo";
    o.jobStartTime = "foo";
    o.languageCode = "foo";
    o.name = "foo";
    o.postingCreateTime = "foo";
    o.postingExpireTime = "foo";
    o.postingPublishTime = "foo";
    o.postingRegion = "foo";
    o.postingUpdateTime = "foo";
    o.processingOptions = buildGoogleCloudTalentV4JobProcessingOptions();
    o.promotionValue = 42;
    o.qualifications = "foo";
    o.requisitionId = "foo";
    o.responsibilities = "foo";
    o.title = "foo";
    o.visibility = "foo";
  }
  buildCounterGoogleCloudTalentV4Job--;
  return o;
}

checkGoogleCloudTalentV4Job(api.GoogleCloudTalentV4Job o) {
  buildCounterGoogleCloudTalentV4Job++;
  if (buildCounterGoogleCloudTalentV4Job < 3) {
    checkUnnamed1229(o.addresses);
    checkGoogleCloudTalentV4JobApplicationInfo(o.applicationInfo);
    unittest.expect(o.company, unittest.equals('foo'));
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    checkGoogleCloudTalentV4CompensationInfo(o.compensationInfo);
    checkUnnamed1230(o.customAttributes);
    checkUnnamed1231(o.degreeTypes);
    unittest.expect(o.department, unittest.equals('foo'));
    checkGoogleCloudTalentV4JobDerivedInfo(o.derivedInfo);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1232(o.employmentTypes);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed1233(o.jobBenefits);
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

buildUnnamed1234() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1234(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1235() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1235(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudTalentV4JobApplicationInfo = 0;
buildGoogleCloudTalentV4JobApplicationInfo() {
  var o = new api.GoogleCloudTalentV4JobApplicationInfo();
  buildCounterGoogleCloudTalentV4JobApplicationInfo++;
  if (buildCounterGoogleCloudTalentV4JobApplicationInfo < 3) {
    o.emails = buildUnnamed1234();
    o.instruction = "foo";
    o.uris = buildUnnamed1235();
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
  return o;
}

checkGoogleCloudTalentV4JobApplicationInfo(
    api.GoogleCloudTalentV4JobApplicationInfo o) {
  buildCounterGoogleCloudTalentV4JobApplicationInfo++;
  if (buildCounterGoogleCloudTalentV4JobApplicationInfo < 3) {
    checkUnnamed1234(o.emails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed1235(o.uris);
  }
  buildCounterGoogleCloudTalentV4JobApplicationInfo--;
}

buildUnnamed1236() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1236(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1237() {
  var o = new core.List<api.GoogleCloudTalentV4Location>();
  o.add(buildGoogleCloudTalentV4Location());
  o.add(buildGoogleCloudTalentV4Location());
  return o;
}

checkUnnamed1237(core.List<api.GoogleCloudTalentV4Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudTalentV4Location(o[0]);
  checkGoogleCloudTalentV4Location(o[1]);
}

core.int buildCounterGoogleCloudTalentV4JobDerivedInfo = 0;
buildGoogleCloudTalentV4JobDerivedInfo() {
  var o = new api.GoogleCloudTalentV4JobDerivedInfo();
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    o.jobCategories = buildUnnamed1236();
    o.locations = buildUnnamed1237();
  }
  buildCounterGoogleCloudTalentV4JobDerivedInfo--;
  return o;
}

checkGoogleCloudTalentV4JobDerivedInfo(
    api.GoogleCloudTalentV4JobDerivedInfo o) {
  buildCounterGoogleCloudTalentV4JobDerivedInfo++;
  if (buildCounterGoogleCloudTalentV4JobDerivedInfo < 3) {
    checkUnnamed1236(o.jobCategories);
    checkUnnamed1237(o.locations);
  }
  buildCounterGoogleCloudTalentV4JobDerivedInfo--;
}

core.int buildCounterGoogleCloudTalentV4JobProcessingOptions = 0;
buildGoogleCloudTalentV4JobProcessingOptions() {
  var o = new api.GoogleCloudTalentV4JobProcessingOptions();
  buildCounterGoogleCloudTalentV4JobProcessingOptions++;
  if (buildCounterGoogleCloudTalentV4JobProcessingOptions < 3) {
    o.disableStreetAddressResolution = true;
    o.htmlSanitization = "foo";
  }
  buildCounterGoogleCloudTalentV4JobProcessingOptions--;
  return o;
}

checkGoogleCloudTalentV4JobProcessingOptions(
    api.GoogleCloudTalentV4JobProcessingOptions o) {
  buildCounterGoogleCloudTalentV4JobProcessingOptions++;
  if (buildCounterGoogleCloudTalentV4JobProcessingOptions < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    unittest.expect(o.htmlSanitization, unittest.equals('foo'));
  }
  buildCounterGoogleCloudTalentV4JobProcessingOptions--;
}

core.int buildCounterGoogleCloudTalentV4JobResult = 0;
buildGoogleCloudTalentV4JobResult() {
  var o = new api.GoogleCloudTalentV4JobResult();
  buildCounterGoogleCloudTalentV4JobResult++;
  if (buildCounterGoogleCloudTalentV4JobResult < 3) {
    o.job = buildGoogleCloudTalentV4Job();
    o.status = buildStatus();
  }
  buildCounterGoogleCloudTalentV4JobResult--;
  return o;
}

checkGoogleCloudTalentV4JobResult(api.GoogleCloudTalentV4JobResult o) {
  buildCounterGoogleCloudTalentV4JobResult++;
  if (buildCounterGoogleCloudTalentV4JobResult < 3) {
    checkGoogleCloudTalentV4Job(o.job);
    checkStatus(o.status);
  }
  buildCounterGoogleCloudTalentV4JobResult--;
}

core.int buildCounterGoogleCloudTalentV4Location = 0;
buildGoogleCloudTalentV4Location() {
  var o = new api.GoogleCloudTalentV4Location();
  buildCounterGoogleCloudTalentV4Location++;
  if (buildCounterGoogleCloudTalentV4Location < 3) {
    o.latLng = buildLatLng();
    o.locationType = "foo";
    o.postalAddress = buildPostalAddress();
    o.radiusMiles = 42.0;
  }
  buildCounterGoogleCloudTalentV4Location--;
  return o;
}

checkGoogleCloudTalentV4Location(api.GoogleCloudTalentV4Location o) {
  buildCounterGoogleCloudTalentV4Location++;
  if (buildCounterGoogleCloudTalentV4Location < 3) {
    checkLatLng(o.latLng);
    unittest.expect(o.locationType, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    unittest.expect(o.radiusMiles, unittest.equals(42.0));
  }
  buildCounterGoogleCloudTalentV4Location--;
}

buildUnnamed1238() {
  var o = new core.List<api.CompensationHistogramRequest>();
  o.add(buildCompensationHistogramRequest());
  o.add(buildCompensationHistogramRequest());
  return o;
}

checkUnnamed1238(core.List<api.CompensationHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramRequest(o[0]);
  checkCompensationHistogramRequest(o[1]);
}

buildUnnamed1239() {
  var o = new core.List<api.CustomAttributeHistogramRequest>();
  o.add(buildCustomAttributeHistogramRequest());
  o.add(buildCustomAttributeHistogramRequest());
  return o;
}

checkUnnamed1239(core.List<api.CustomAttributeHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramRequest(o[0]);
  checkCustomAttributeHistogramRequest(o[1]);
}

buildUnnamed1240() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1240(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogramFacets = 0;
buildHistogramFacets() {
  var o = new api.HistogramFacets();
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    o.compensationHistogramFacets = buildUnnamed1238();
    o.customAttributeHistogramFacets = buildUnnamed1239();
    o.simpleHistogramFacets = buildUnnamed1240();
  }
  buildCounterHistogramFacets--;
  return o;
}

checkHistogramFacets(api.HistogramFacets o) {
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    checkUnnamed1238(o.compensationHistogramFacets);
    checkUnnamed1239(o.customAttributeHistogramFacets);
    checkUnnamed1240(o.simpleHistogramFacets);
  }
  buildCounterHistogramFacets--;
}

buildUnnamed1241() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed1241(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterHistogramResult = 0;
buildHistogramResult() {
  var o = new api.HistogramResult();
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    o.searchType = "foo";
    o.values = buildUnnamed1241();
  }
  buildCounterHistogramResult--;
  return o;
}

checkHistogramResult(api.HistogramResult o) {
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    unittest.expect(o.searchType, unittest.equals('foo'));
    checkUnnamed1241(o.values);
  }
  buildCounterHistogramResult--;
}

buildUnnamed1242() {
  var o = new core.List<api.CompensationHistogramResult>();
  o.add(buildCompensationHistogramResult());
  o.add(buildCompensationHistogramResult());
  return o;
}

checkUnnamed1242(core.List<api.CompensationHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramResult(o[0]);
  checkCompensationHistogramResult(o[1]);
}

buildUnnamed1243() {
  var o = new core.List<api.CustomAttributeHistogramResult>();
  o.add(buildCustomAttributeHistogramResult());
  o.add(buildCustomAttributeHistogramResult());
  return o;
}

checkUnnamed1243(core.List<api.CustomAttributeHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramResult(o[0]);
  checkCustomAttributeHistogramResult(o[1]);
}

buildUnnamed1244() {
  var o = new core.List<api.HistogramResult>();
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

checkUnnamed1244(core.List<api.HistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramResult(o[0]);
  checkHistogramResult(o[1]);
}

core.int buildCounterHistogramResults = 0;
buildHistogramResults() {
  var o = new api.HistogramResults();
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    o.compensationHistogramResults = buildUnnamed1242();
    o.customAttributeHistogramResults = buildUnnamed1243();
    o.simpleHistogramResults = buildUnnamed1244();
  }
  buildCounterHistogramResults--;
  return o;
}

checkHistogramResults(api.HistogramResults o) {
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    checkUnnamed1242(o.compensationHistogramResults);
    checkUnnamed1243(o.customAttributeHistogramResults);
    checkUnnamed1244(o.simpleHistogramResults);
  }
  buildCounterHistogramResults--;
}

buildUnnamed1245() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1245(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1246() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1246(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1247() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1247(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1248() {
  var o = new core.Map<core.String, api.CustomAttribute>();
  o["x"] = buildCustomAttribute();
  o["y"] = buildCustomAttribute();
  return o;
}

checkUnnamed1248(core.Map<core.String, api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o["x"]);
  checkCustomAttribute(o["y"]);
}

buildUnnamed1249() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1249(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1250() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1250(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1251() {
  var o = new core.Map<core.String, api.CustomField>();
  o["x"] = buildCustomField();
  o["y"] = buildCustomField();
  return o;
}

checkUnnamed1251(core.Map<core.String, api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o["x"]);
  checkCustomField(o["y"]);
}

buildUnnamed1252() {
  var o = new core.List<api.JobLocation>();
  o.add(buildJobLocation());
  o.add(buildJobLocation());
  return o;
}

checkUnnamed1252(core.List<api.JobLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobLocation(o[0]);
  checkJobLocation(o[1]);
}

buildUnnamed1253() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1253(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1254() {
  var o = new core.Map<core.String, api.CustomField>();
  o["x"] = buildCustomField();
  o["y"] = buildCustomField();
  return o;
}

checkUnnamed1254(core.Map<core.String, api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o["x"]);
  checkCustomField(o["y"]);
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.applicationEmailList = buildUnnamed1245();
    o.applicationInstruction = "foo";
    o.applicationUrls = buildUnnamed1246();
    o.benefits = buildUnnamed1247();
    o.companyDisplayName = "foo";
    o.companyName = "foo";
    o.companyTitle = "foo";
    o.compensationInfo = buildCompensationInfo();
    o.createTime = "foo";
    o.customAttributes = buildUnnamed1248();
    o.department = "foo";
    o.description = "foo";
    o.distributorCompanyId = "foo";
    o.educationLevels = buildUnnamed1249();
    o.employmentTypes = buildUnnamed1250();
    o.endDate = buildDate();
    o.expireTime = "foo";
    o.expiryDate = buildDate();
    o.extendedCompensationInfo = buildExtendedCompensationInfo();
    o.filterableCustomFields = buildUnnamed1251();
    o.incentives = "foo";
    o.jobLocations = buildUnnamed1252();
    o.jobTitle = "foo";
    o.languageCode = "foo";
    o.level = "foo";
    o.locations = buildUnnamed1253();
    o.name = "foo";
    o.promotionValue = 42;
    o.publishDate = buildDate();
    o.qualifications = "foo";
    o.referenceUrl = "foo";
    o.region = "foo";
    o.requisitionId = "foo";
    o.responsibilities = "foo";
    o.startDate = buildDate();
    o.unindexedCustomFields = buildUnnamed1254();
    o.updateTime = "foo";
    o.visibility = "foo";
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkUnnamed1245(o.applicationEmailList);
    unittest.expect(o.applicationInstruction, unittest.equals('foo'));
    checkUnnamed1246(o.applicationUrls);
    checkUnnamed1247(o.benefits);
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.companyTitle, unittest.equals('foo'));
    checkCompensationInfo(o.compensationInfo);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed1248(o.customAttributes);
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.distributorCompanyId, unittest.equals('foo'));
    checkUnnamed1249(o.educationLevels);
    checkUnnamed1250(o.employmentTypes);
    checkDate(o.endDate);
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkDate(o.expiryDate);
    checkExtendedCompensationInfo(o.extendedCompensationInfo);
    checkUnnamed1251(o.filterableCustomFields);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed1252(o.jobLocations);
    unittest.expect(o.jobTitle, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.level, unittest.equals('foo'));
    checkUnnamed1253(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.promotionValue, unittest.equals(42));
    checkDate(o.publishDate);
    unittest.expect(o.qualifications, unittest.equals('foo'));
    unittest.expect(o.referenceUrl, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.requisitionId, unittest.equals('foo'));
    unittest.expect(o.responsibilities, unittest.equals('foo'));
    checkDate(o.startDate);
    checkUnnamed1254(o.unindexedCustomFields);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterJob--;
}

buildUnnamed1255() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1255(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1256() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1256(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1257() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1257(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1258() {
  var o = new core.Map<core.String, api.CustomFieldFilter>();
  o["x"] = buildCustomFieldFilter();
  o["y"] = buildCustomFieldFilter();
  return o;
}

checkUnnamed1258(core.Map<core.String, api.CustomFieldFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomFieldFilter(o["x"]);
  checkCustomFieldFilter(o["y"]);
}

buildUnnamed1259() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1259(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1260() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1260(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1261() {
  var o = new core.List<api.LocationFilter>();
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

checkUnnamed1261(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobFilters = 0;
buildJobFilters() {
  var o = new api.JobFilters();
  buildCounterJobFilters++;
  if (buildCounterJobFilters < 3) {
    o.categories = buildUnnamed1255();
    o.commuteFilter = buildCommutePreference();
    o.companyNames = buildUnnamed1256();
    o.companyTitles = buildUnnamed1257();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = "foo";
    o.customFieldFilters = buildUnnamed1258();
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed1259();
    o.extendedCompensationFilter = buildExtendedCompensationFilter();
    o.languageCodes = buildUnnamed1260();
    o.locationFilters = buildUnnamed1261();
    o.publishDateRange = "foo";
    o.query = "foo";
    o.tenantJobOnly = true;
  }
  buildCounterJobFilters--;
  return o;
}

checkJobFilters(api.JobFilters o) {
  buildCounterJobFilters++;
  if (buildCounterJobFilters < 3) {
    checkUnnamed1255(o.categories);
    checkCommutePreference(o.commuteFilter);
    checkUnnamed1256(o.companyNames);
    checkUnnamed1257(o.companyTitles);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    checkUnnamed1258(o.customFieldFilters);
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed1259(o.employmentTypes);
    checkExtendedCompensationFilter(o.extendedCompensationFilter);
    checkUnnamed1260(o.languageCodes);
    checkUnnamed1261(o.locationFilters);
    unittest.expect(o.publishDateRange, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.tenantJobOnly, unittest.isTrue);
  }
  buildCounterJobFilters--;
}

core.int buildCounterJobLocation = 0;
buildJobLocation() {
  var o = new api.JobLocation();
  buildCounterJobLocation++;
  if (buildCounterJobLocation < 3) {
    o.latLng = buildLatLng();
    o.locationType = "foo";
    o.postalAddress = buildPostalAddress();
    o.radiusMeters = 42.0;
  }
  buildCounterJobLocation--;
  return o;
}

checkJobLocation(api.JobLocation o) {
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
buildJobProcessingOptions() {
  var o = new api.JobProcessingOptions();
  buildCounterJobProcessingOptions++;
  if (buildCounterJobProcessingOptions < 3) {
    o.disableStreetAddressResolution = true;
    o.htmlSanitization = "foo";
  }
  buildCounterJobProcessingOptions--;
  return o;
}

checkJobProcessingOptions(api.JobProcessingOptions o) {
  buildCounterJobProcessingOptions++;
  if (buildCounterJobProcessingOptions < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    unittest.expect(o.htmlSanitization, unittest.equals('foo'));
  }
  buildCounterJobProcessingOptions--;
}

buildUnnamed1262() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1262(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1263() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1263(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1264() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1264(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1265() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1265(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1266() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1266(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1267() {
  var o = new core.List<api.LocationFilter>();
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

checkUnnamed1267(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobQuery = 0;
buildJobQuery() {
  var o = new api.JobQuery();
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    o.categories = buildUnnamed1262();
    o.commuteFilter = buildCommutePreference();
    o.companyDisplayNames = buildUnnamed1263();
    o.companyNames = buildUnnamed1264();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = "foo";
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed1265();
    o.languageCodes = buildUnnamed1266();
    o.locationFilters = buildUnnamed1267();
    o.publishDateRange = "foo";
    o.query = "foo";
  }
  buildCounterJobQuery--;
  return o;
}

checkJobQuery(api.JobQuery o) {
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    checkUnnamed1262(o.categories);
    checkCommutePreference(o.commuteFilter);
    checkUnnamed1263(o.companyDisplayNames);
    checkUnnamed1264(o.companyNames);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed1265(o.employmentTypes);
    checkUnnamed1266(o.languageCodes);
    checkUnnamed1267(o.locationFilters);
    unittest.expect(o.publishDateRange, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
  }
  buildCounterJobQuery--;
}

core.int buildCounterLatLng = 0;
buildLatLng() {
  var o = new api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

buildUnnamed1268() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed1268(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCompaniesResponse = 0;
buildListCompaniesResponse() {
  var o = new api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed1268();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
  }
  buildCounterListCompaniesResponse--;
  return o;
}

checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed1268(o.companies);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCompaniesResponse--;
}

buildUnnamed1269() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed1269(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListCompanyJobsResponse = 0;
buildListCompanyJobsResponse() {
  var o = new api.ListCompanyJobsResponse();
  buildCounterListCompanyJobsResponse++;
  if (buildCounterListCompanyJobsResponse < 3) {
    o.jobs = buildUnnamed1269();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
    o.totalSize = "foo";
  }
  buildCounterListCompanyJobsResponse--;
  return o;
}

checkListCompanyJobsResponse(api.ListCompanyJobsResponse o) {
  buildCounterListCompanyJobsResponse++;
  if (buildCounterListCompanyJobsResponse < 3) {
    checkUnnamed1269(o.jobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals('foo'));
  }
  buildCounterListCompanyJobsResponse--;
}

buildUnnamed1270() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed1270(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed1270();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed1270(o.jobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.int buildCounterLocationFilter = 0;
buildLocationFilter() {
  var o = new api.LocationFilter();
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    o.distanceInMiles = 42.0;
    o.isTelecommute = true;
    o.latLng = buildLatLng();
    o.name = "foo";
    o.regionCode = "foo";
  }
  buildCounterLocationFilter--;
  return o;
}

checkLocationFilter(api.LocationFilter o) {
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
buildMatchingJob() {
  var o = new api.MatchingJob();
  buildCounterMatchingJob++;
  if (buildCounterMatchingJob < 3) {
    o.commuteInfo = buildCommuteInfo();
    o.job = buildJob();
    o.jobSummary = "foo";
    o.jobTitleSnippet = "foo";
    o.searchTextSnippet = "foo";
  }
  buildCounterMatchingJob--;
  return o;
}

checkMatchingJob(api.MatchingJob o) {
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

buildUnnamed1271() {
  var o = new core.Map<core.String, api.NamespacedDebugInput>();
  o["x"] = buildNamespacedDebugInput();
  o["y"] = buildNamespacedDebugInput();
  return o;
}

checkUnnamed1271(core.Map<core.String, api.NamespacedDebugInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamespacedDebugInput(o["x"]);
  checkNamespacedDebugInput(o["y"]);
}

core.int buildCounterMendelDebugInput = 0;
buildMendelDebugInput() {
  var o = new api.MendelDebugInput();
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    o.namespacedDebugInput = buildUnnamed1271();
  }
  buildCounterMendelDebugInput--;
  return o;
}

checkMendelDebugInput(api.MendelDebugInput o) {
  buildCounterMendelDebugInput++;
  if (buildCounterMendelDebugInput < 3) {
    checkUnnamed1271(o.namespacedDebugInput);
  }
  buildCounterMendelDebugInput--;
}

core.int buildCounterMoney = 0;
buildMoney() {
  var o = new api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterMoney--;
  return o;
}

checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

buildUnnamed1272() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1273() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1273(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1274() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1274(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1276() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1277() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1277(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1278() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1278(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1279() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1279(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1280() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1280(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1281() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1281(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1282() {
  var o = new core.Map<core.String, core.bool>();
  o["x"] = true;
  o["y"] = true;
  return o;
}

checkUnnamed1282(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.isTrue);
  unittest.expect(o["y"], unittest.isTrue);
}

core.int buildCounterNamespacedDebugInput = 0;
buildNamespacedDebugInput() {
  var o = new api.NamespacedDebugInput();
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    o.absolutelyForcedExpNames = buildUnnamed1272();
    o.absolutelyForcedExpTags = buildUnnamed1273();
    o.absolutelyForcedExps = buildUnnamed1274();
    o.conditionallyForcedExpNames = buildUnnamed1275();
    o.conditionallyForcedExpTags = buildUnnamed1276();
    o.conditionallyForcedExps = buildUnnamed1277();
    o.disableAutomaticEnrollmentSelection = true;
    o.disableExpNames = buildUnnamed1278();
    o.disableExpTags = buildUnnamed1279();
    o.disableExps = buildUnnamed1280();
    o.disableManualEnrollmentSelection = true;
    o.disableOrganicSelection = true;
    o.forcedFlags = buildUnnamed1281();
    o.forcedRollouts = buildUnnamed1282();
  }
  buildCounterNamespacedDebugInput--;
  return o;
}

checkNamespacedDebugInput(api.NamespacedDebugInput o) {
  buildCounterNamespacedDebugInput++;
  if (buildCounterNamespacedDebugInput < 3) {
    checkUnnamed1272(o.absolutelyForcedExpNames);
    checkUnnamed1273(o.absolutelyForcedExpTags);
    checkUnnamed1274(o.absolutelyForcedExps);
    checkUnnamed1275(o.conditionallyForcedExpNames);
    checkUnnamed1276(o.conditionallyForcedExpTags);
    checkUnnamed1277(o.conditionallyForcedExps);
    unittest.expect(o.disableAutomaticEnrollmentSelection, unittest.isTrue);
    checkUnnamed1278(o.disableExpNames);
    checkUnnamed1279(o.disableExpTags);
    checkUnnamed1280(o.disableExps);
    unittest.expect(o.disableManualEnrollmentSelection, unittest.isTrue);
    unittest.expect(o.disableOrganicSelection, unittest.isTrue);
    checkUnnamed1281(o.forcedFlags);
    checkUnnamed1282(o.forcedRollouts);
  }
  buildCounterNamespacedDebugInput--;
}

buildUnnamed1283() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1283(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterNumericBucketingOption = 0;
buildNumericBucketingOption() {
  var o = new api.NumericBucketingOption();
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    o.bucketBounds = buildUnnamed1283();
    o.requiresMinMax = true;
  }
  buildCounterNumericBucketingOption--;
  return o;
}

checkNumericBucketingOption(api.NumericBucketingOption o) {
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    checkUnnamed1283(o.bucketBounds);
    unittest.expect(o.requiresMinMax, unittest.isTrue);
  }
  buildCounterNumericBucketingOption--;
}

buildUnnamed1284() {
  var o = new core.List<api.BucketizedCount>();
  o.add(buildBucketizedCount());
  o.add(buildBucketizedCount());
  return o;
}

checkUnnamed1284(core.List<api.BucketizedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketizedCount(o[0]);
  checkBucketizedCount(o[1]);
}

core.int buildCounterNumericBucketingResult = 0;
buildNumericBucketingResult() {
  var o = new api.NumericBucketingResult();
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    o.counts = buildUnnamed1284();
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterNumericBucketingResult--;
  return o;
}

checkNumericBucketingResult(api.NumericBucketingResult o) {
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    checkUnnamed1284(o.counts);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterNumericBucketingResult--;
}

buildUnnamed1285() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1285(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1286() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1286(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
buildPostalAddress() {
  var o = new api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed1285();
    o.administrativeArea = "foo";
    o.languageCode = "foo";
    o.locality = "foo";
    o.organization = "foo";
    o.postalCode = "foo";
    o.recipients = buildUnnamed1286();
    o.regionCode = "foo";
    o.revision = 42;
    o.sortingCode = "foo";
    o.sublocality = "foo";
  }
  buildCounterPostalAddress--;
  return o;
}

checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed1285(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed1286(o.recipients);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
  }
  buildCounterPostalAddress--;
}

core.int buildCounterRequestMetadata = 0;
buildRequestMetadata() {
  var o = new api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    o.deviceInfo = buildDeviceInfo();
    o.domain = "foo";
    o.sessionId = "foo";
    o.userId = "foo";
  }
  buildCounterRequestMetadata--;
  return o;
}

checkRequestMetadata(api.RequestMetadata o) {
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    checkDeviceInfo(o.deviceInfo);
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.sessionId, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterRequestMetadata--;
}

buildUnnamed1287() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1287(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterResponseMetadata = 0;
buildResponseMetadata() {
  var o = new api.ResponseMetadata();
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    o.experimentIdList = buildUnnamed1287();
    o.mode = "foo";
    o.requestId = "foo";
  }
  buildCounterResponseMetadata--;
  return o;
}

checkResponseMetadata(api.ResponseMetadata o) {
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    checkUnnamed1287(o.experimentIdList);
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterResponseMetadata--;
}

core.int buildCounterSearchJobsRequest = 0;
buildSearchJobsRequest() {
  var o = new api.SearchJobsRequest();
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    o.disableRelevanceThresholding = true;
    o.enableBroadening = true;
    o.enablePreciseResultSize = true;
    o.filters = buildJobFilters();
    o.histogramFacets = buildHistogramFacets();
    o.jobView = "foo";
    o.mode = "foo";
    o.offset = 42;
    o.orderBy = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.query = buildJobQuery();
    o.requestMetadata = buildRequestMetadata();
    o.sortBy = "foo";
  }
  buildCounterSearchJobsRequest--;
  return o;
}

checkSearchJobsRequest(api.SearchJobsRequest o) {
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

buildUnnamed1288() {
  var o = new core.List<api.JobLocation>();
  o.add(buildJobLocation());
  o.add(buildJobLocation());
  return o;
}

checkUnnamed1288(core.List<api.JobLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobLocation(o[0]);
  checkJobLocation(o[1]);
}

buildUnnamed1289() {
  var o = new core.List<api.MatchingJob>();
  o.add(buildMatchingJob());
  o.add(buildMatchingJob());
  return o;
}

checkUnnamed1289(core.List<api.MatchingJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchingJob(o[0]);
  checkMatchingJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
buildSearchJobsResponse() {
  var o = new api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.appliedCommuteFilter = buildCommutePreference();
    o.appliedJobLocationFilters = buildUnnamed1288();
    o.estimatedTotalSize = "foo";
    o.histogramResults = buildHistogramResults();
    o.jobView = "foo";
    o.matchingJobs = buildUnnamed1289();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
    o.numJobsFromBroadenedQuery = 42;
    o.spellResult = buildSpellingCorrection();
    o.totalSize = "foo";
  }
  buildCounterSearchJobsResponse--;
  return o;
}

checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    checkCommutePreference(o.appliedCommuteFilter);
    checkUnnamed1288(o.appliedJobLocationFilters);
    unittest.expect(o.estimatedTotalSize, unittest.equals('foo'));
    checkHistogramResults(o.histogramResults);
    unittest.expect(o.jobView, unittest.equals('foo'));
    checkUnnamed1289(o.matchingJobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.numJobsFromBroadenedQuery, unittest.equals(42));
    checkSpellingCorrection(o.spellResult);
    unittest.expect(o.totalSize, unittest.equals('foo'));
  }
  buildCounterSearchJobsResponse--;
}

core.int buildCounterSpellingCorrection = 0;
buildSpellingCorrection() {
  var o = new api.SpellingCorrection();
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    o.corrected = true;
    o.correctedText = "foo";
  }
  buildCounterSpellingCorrection--;
  return o;
}

checkSpellingCorrection(api.SpellingCorrection o) {
  buildCounterSpellingCorrection++;
  if (buildCounterSpellingCorrection < 3) {
    unittest.expect(o.corrected, unittest.isTrue);
    unittest.expect(o.correctedText, unittest.equals('foo'));
  }
  buildCounterSpellingCorrection--;
}

buildUnnamed1290() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1290(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed1291() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1290());
  o.add(buildUnnamed1290());
  return o;
}

checkUnnamed1291(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1290(o[0]);
  checkUnnamed1290(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1291();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1291(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed1292() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1292(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringValues = 0;
buildStringValues() {
  var o = new api.StringValues();
  buildCounterStringValues++;
  if (buildCounterStringValues < 3) {
    o.values = buildUnnamed1292();
  }
  buildCounterStringValues--;
  return o;
}

checkStringValues(api.StringValues o) {
  buildCounterStringValues++;
  if (buildCounterStringValues < 3) {
    checkUnnamed1292(o.values);
  }
  buildCounterStringValues--;
}

core.int buildCounterUpdateJobRequest = 0;
buildUpdateJobRequest() {
  var o = new api.UpdateJobRequest();
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    o.disableStreetAddressResolution = true;
    o.job = buildJob();
    o.processingOptions = buildJobProcessingOptions();
    o.updateJobFields = "foo";
  }
  buildCounterUpdateJobRequest--;
  return o;
}

checkUpdateJobRequest(api.UpdateJobRequest o) {
  buildCounterUpdateJobRequest++;
  if (buildCounterUpdateJobRequest < 3) {
    unittest.expect(o.disableStreetAddressResolution, unittest.isTrue);
    checkJob(o.job);
    checkJobProcessingOptions(o.processingOptions);
    unittest.expect(o.updateJobFields, unittest.equals('foo'));
  }
  buildCounterUpdateJobRequest--;
}

main() {
  unittest.group("obj-schema-BatchDeleteJobsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteJobsRequest();
      var od = new api.BatchDeleteJobsRequest.fromJson(o.toJson());
      checkBatchDeleteJobsRequest(od);
    });
  });

  unittest.group("obj-schema-BucketRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketRange();
      var od = new api.BucketRange.fromJson(o.toJson());
      checkBucketRange(od);
    });
  });

  unittest.group("obj-schema-BucketizedCount", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketizedCount();
      var od = new api.BucketizedCount.fromJson(o.toJson());
      checkBucketizedCount(od);
    });
  });

  unittest.group("obj-schema-CommuteInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommuteInfo();
      var od = new api.CommuteInfo.fromJson(o.toJson());
      checkCommuteInfo(od);
    });
  });

  unittest.group("obj-schema-CommutePreference", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommutePreference();
      var od = new api.CommutePreference.fromJson(o.toJson());
      checkCommutePreference(od);
    });
  });

  unittest.group("obj-schema-Company", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompany();
      var od = new api.Company.fromJson(o.toJson());
      checkCompany(od);
    });
  });

  unittest.group("obj-schema-CompanyInfoSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompanyInfoSource();
      var od = new api.CompanyInfoSource.fromJson(o.toJson());
      checkCompanyInfoSource(od);
    });
  });

  unittest.group("obj-schema-CompensationEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationEntry();
      var od = new api.CompensationEntry.fromJson(o.toJson());
      checkCompensationEntry(od);
    });
  });

  unittest.group("obj-schema-CompensationFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationFilter();
      var od = new api.CompensationFilter.fromJson(o.toJson());
      checkCompensationFilter(od);
    });
  });

  unittest.group("obj-schema-CompensationHistogramRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationHistogramRequest();
      var od = new api.CompensationHistogramRequest.fromJson(o.toJson());
      checkCompensationHistogramRequest(od);
    });
  });

  unittest.group("obj-schema-CompensationHistogramResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationHistogramResult();
      var od = new api.CompensationHistogramResult.fromJson(o.toJson());
      checkCompensationHistogramResult(od);
    });
  });

  unittest.group("obj-schema-CompensationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationInfo();
      var od = new api.CompensationInfo.fromJson(o.toJson());
      checkCompensationInfo(od);
    });
  });

  unittest.group("obj-schema-CompensationRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompensationRange();
      var od = new api.CompensationRange.fromJson(o.toJson());
      checkCompensationRange(od);
    });
  });

  unittest.group("obj-schema-CompleteQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompleteQueryResponse();
      var od = new api.CompleteQueryResponse.fromJson(o.toJson());
      checkCompleteQueryResponse(od);
    });
  });

  unittest.group("obj-schema-CompletionResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompletionResult();
      var od = new api.CompletionResult.fromJson(o.toJson());
      checkCompletionResult(od);
    });
  });

  unittest.group("obj-schema-CreateJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateJobRequest();
      var od = new api.CreateJobRequest.fromJson(o.toJson());
      checkCreateJobRequest(od);
    });
  });

  unittest.group("obj-schema-CustomAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAttribute();
      var od = new api.CustomAttribute.fromJson(o.toJson());
      checkCustomAttribute(od);
    });
  });

  unittest.group("obj-schema-CustomAttributeHistogramRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAttributeHistogramRequest();
      var od = new api.CustomAttributeHistogramRequest.fromJson(o.toJson());
      checkCustomAttributeHistogramRequest(od);
    });
  });

  unittest.group("obj-schema-CustomAttributeHistogramResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAttributeHistogramResult();
      var od = new api.CustomAttributeHistogramResult.fromJson(o.toJson());
      checkCustomAttributeHistogramResult(od);
    });
  });

  unittest.group("obj-schema-CustomField", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomField();
      var od = new api.CustomField.fromJson(o.toJson());
      checkCustomField(od);
    });
  });

  unittest.group("obj-schema-CustomFieldFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomFieldFilter();
      var od = new api.CustomFieldFilter.fromJson(o.toJson());
      checkCustomFieldFilter(od);
    });
  });

  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-DeleteJobsByFilterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteJobsByFilterRequest();
      var od = new api.DeleteJobsByFilterRequest.fromJson(o.toJson());
      checkDeleteJobsByFilterRequest(od);
    });
  });

  unittest.group("obj-schema-DeviceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceInfo();
      var od = new api.DeviceInfo.fromJson(o.toJson());
      checkDeviceInfo(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ExtendedCompensationFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtendedCompensationFilter();
      var od = new api.ExtendedCompensationFilter.fromJson(o.toJson());
      checkExtendedCompensationFilter(od);
    });
  });

  unittest.group("obj-schema-ExtendedCompensationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtendedCompensationInfo();
      var od = new api.ExtendedCompensationInfo.fromJson(o.toJson());
      checkExtendedCompensationInfo(od);
    });
  });

  unittest.group("obj-schema-ExtendedCompensationInfoCompensationEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtendedCompensationInfoCompensationEntry();
      var od = new api.ExtendedCompensationInfoCompensationEntry.fromJson(
          o.toJson());
      checkExtendedCompensationInfoCompensationEntry(od);
    });
  });

  unittest.group("obj-schema-ExtendedCompensationInfoCompensationRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtendedCompensationInfoCompensationRange();
      var od = new api.ExtendedCompensationInfoCompensationRange.fromJson(
          o.toJson());
      checkExtendedCompensationInfoCompensationRange(od);
    });
  });

  unittest.group("obj-schema-ExtendedCompensationInfoDecimal", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtendedCompensationInfoDecimal();
      var od = new api.ExtendedCompensationInfoDecimal.fromJson(o.toJson());
      checkExtendedCompensationInfoDecimal(od);
    });
  });

  unittest.group("obj-schema-Filter", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilter();
      var od = new api.Filter.fromJson(o.toJson());
      checkFilter(od);
    });
  });

  unittest.group("obj-schema-GetHistogramRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetHistogramRequest();
      var od = new api.GetHistogramRequest.fromJson(o.toJson());
      checkGetHistogramRequest(od);
    });
  });

  unittest.group("obj-schema-GetHistogramResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetHistogramResponse();
      var od = new api.GetHistogramResponse.fromJson(o.toJson());
      checkGetHistogramResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchCreateJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchCreateJobsResponse();
      var od = new api.GoogleCloudTalentV4BatchCreateJobsResponse.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchCreateJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchDeleteJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchDeleteJobsResponse();
      var od = new api.GoogleCloudTalentV4BatchDeleteJobsResponse.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchDeleteJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchOperationMetadata();
      var od = new api.GoogleCloudTalentV4BatchOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4BatchUpdateJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4BatchUpdateJobsResponse();
      var od = new api.GoogleCloudTalentV4BatchUpdateJobsResponse.fromJson(
          o.toJson());
      checkGoogleCloudTalentV4BatchUpdateJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4CompensationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CompensationInfo();
      var od = new api.GoogleCloudTalentV4CompensationInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4CompensationInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudTalentV4CompensationInfoCompensationEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CompensationInfoCompensationEntry();
      var od =
          new api.GoogleCloudTalentV4CompensationInfoCompensationEntry.fromJson(
              o.toJson());
      checkGoogleCloudTalentV4CompensationInfoCompensationEntry(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudTalentV4CompensationInfoCompensationRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CompensationInfoCompensationRange();
      var od =
          new api.GoogleCloudTalentV4CompensationInfoCompensationRange.fromJson(
              o.toJson());
      checkGoogleCloudTalentV4CompensationInfoCompensationRange(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4CustomAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4CustomAttribute();
      var od = new api.GoogleCloudTalentV4CustomAttribute.fromJson(o.toJson());
      checkGoogleCloudTalentV4CustomAttribute(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4Job();
      var od = new api.GoogleCloudTalentV4Job.fromJson(o.toJson());
      checkGoogleCloudTalentV4Job(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobApplicationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobApplicationInfo();
      var od =
          new api.GoogleCloudTalentV4JobApplicationInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobApplicationInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobDerivedInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobDerivedInfo();
      var od = new api.GoogleCloudTalentV4JobDerivedInfo.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobDerivedInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobProcessingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobProcessingOptions();
      var od =
          new api.GoogleCloudTalentV4JobProcessingOptions.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobProcessingOptions(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4JobResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4JobResult();
      var od = new api.GoogleCloudTalentV4JobResult.fromJson(o.toJson());
      checkGoogleCloudTalentV4JobResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudTalentV4Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudTalentV4Location();
      var od = new api.GoogleCloudTalentV4Location.fromJson(o.toJson());
      checkGoogleCloudTalentV4Location(od);
    });
  });

  unittest.group("obj-schema-HistogramFacets", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramFacets();
      var od = new api.HistogramFacets.fromJson(o.toJson());
      checkHistogramFacets(od);
    });
  });

  unittest.group("obj-schema-HistogramResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramResult();
      var od = new api.HistogramResult.fromJson(o.toJson());
      checkHistogramResult(od);
    });
  });

  unittest.group("obj-schema-HistogramResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogramResults();
      var od = new api.HistogramResults.fromJson(o.toJson());
      checkHistogramResults(od);
    });
  });

  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group("obj-schema-JobFilters", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobFilters();
      var od = new api.JobFilters.fromJson(o.toJson());
      checkJobFilters(od);
    });
  });

  unittest.group("obj-schema-JobLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobLocation();
      var od = new api.JobLocation.fromJson(o.toJson());
      checkJobLocation(od);
    });
  });

  unittest.group("obj-schema-JobProcessingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobProcessingOptions();
      var od = new api.JobProcessingOptions.fromJson(o.toJson());
      checkJobProcessingOptions(od);
    });
  });

  unittest.group("obj-schema-JobQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobQuery();
      var od = new api.JobQuery.fromJson(o.toJson());
      checkJobQuery(od);
    });
  });

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-ListCompaniesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCompaniesResponse();
      var od = new api.ListCompaniesResponse.fromJson(o.toJson());
      checkListCompaniesResponse(od);
    });
  });

  unittest.group("obj-schema-ListCompanyJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCompanyJobsResponse();
      var od = new api.ListCompanyJobsResponse.fromJson(o.toJson());
      checkListCompanyJobsResponse(od);
    });
  });

  unittest.group("obj-schema-ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListJobsResponse();
      var od = new api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group("obj-schema-LocationFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationFilter();
      var od = new api.LocationFilter.fromJson(o.toJson());
      checkLocationFilter(od);
    });
  });

  unittest.group("obj-schema-MatchingJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatchingJob();
      var od = new api.MatchingJob.fromJson(o.toJson());
      checkMatchingJob(od);
    });
  });

  unittest.group("obj-schema-MendelDebugInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildMendelDebugInput();
      var od = new api.MendelDebugInput.fromJson(o.toJson());
      checkMendelDebugInput(od);
    });
  });

  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group("obj-schema-NamespacedDebugInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamespacedDebugInput();
      var od = new api.NamespacedDebugInput.fromJson(o.toJson());
      checkNamespacedDebugInput(od);
    });
  });

  unittest.group("obj-schema-NumericBucketingOption", () {
    unittest.test("to-json--from-json", () {
      var o = buildNumericBucketingOption();
      var od = new api.NumericBucketingOption.fromJson(o.toJson());
      checkNumericBucketingOption(od);
    });
  });

  unittest.group("obj-schema-NumericBucketingResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildNumericBucketingResult();
      var od = new api.NumericBucketingResult.fromJson(o.toJson());
      checkNumericBucketingResult(od);
    });
  });

  unittest.group("obj-schema-PostalAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalAddress();
      var od = new api.PostalAddress.fromJson(o.toJson());
      checkPostalAddress(od);
    });
  });

  unittest.group("obj-schema-RequestMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestMetadata();
      var od = new api.RequestMetadata.fromJson(o.toJson());
      checkRequestMetadata(od);
    });
  });

  unittest.group("obj-schema-ResponseMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponseMetadata();
      var od = new api.ResponseMetadata.fromJson(o.toJson());
      checkResponseMetadata(od);
    });
  });

  unittest.group("obj-schema-SearchJobsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchJobsRequest();
      var od = new api.SearchJobsRequest.fromJson(o.toJson());
      checkSearchJobsRequest(od);
    });
  });

  unittest.group("obj-schema-SearchJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchJobsResponse();
      var od = new api.SearchJobsResponse.fromJson(o.toJson());
      checkSearchJobsResponse(od);
    });
  });

  unittest.group("obj-schema-SpellingCorrection", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpellingCorrection();
      var od = new api.SpellingCorrection.fromJson(o.toJson());
      checkSpellingCorrection(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-StringValues", () {
    unittest.test("to-json--from-json", () {
      var o = buildStringValues();
      var od = new api.StringValues.fromJson(o.toJson());
      checkStringValues(od);
    });
  });

  unittest.group("obj-schema-UpdateJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateJobRequest();
      var od = new api.UpdateJobRequest.fromJson(o.toJson());
      checkUpdateJobRequest(od);
    });
  });

  unittest.group("resource-CompaniesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CompaniesResourceApi res = new api.JobsApi(mock).companies;
      var arg_request = buildCompany();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Company.fromJson(json);
        checkCompany(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/companies"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CompaniesResourceApi res = new api.JobsApi(mock).companies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CompaniesResourceApi res = new api.JobsApi(mock).companies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CompaniesResourceApi res = new api.JobsApi(mock).companies;
      var arg_pageToken = "foo";
      var arg_mustHaveOpenJobs = true;
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/companies"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["mustHaveOpenJobs"].first,
            unittest.equals("$arg_mustHaveOpenJobs"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCompaniesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              mustHaveOpenJobs: arg_mustHaveOpenJobs,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCompaniesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CompaniesResourceApi res = new api.JobsApi(mock).companies;
      var arg_request = buildCompany();
      var arg_name = "foo";
      var arg_updateCompanyFields = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Company.fromJson(json);
        checkCompany(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["updateCompanyFields"].first,
            unittest.equals(arg_updateCompanyFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-CompaniesJobsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CompaniesJobsResourceApi res = new api.JobsApi(mock).companies.jobs;
      var arg_companyName = "foo";
      var arg_idsOnly = true;
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_jobRequisitionId = "foo";
      var arg_includeJobsCount = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["idsOnly"].first, unittest.equals("$arg_idsOnly"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["jobRequisitionId"].first,
            unittest.equals(arg_jobRequisitionId));
        unittest.expect(queryMap["includeJobsCount"].first,
            unittest.equals("$arg_includeJobsCount"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCompanyJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_companyName,
              idsOnly: arg_idsOnly,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              jobRequisitionId: arg_jobRequisitionId,
              includeJobsCount: arg_includeJobsCount,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCompanyJobsResponse(response);
      })));
    });
  });

  unittest.group("resource-JobsResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_request = buildBatchDeleteJobsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchDeleteJobsRequest.fromJson(json);
        checkBatchDeleteJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v2/jobs:batchDelete"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_request = buildCreateJobRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateJobRequest.fromJson(json);
        checkCreateJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2/jobs"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_name = "foo";
      var arg_disableFastProcess = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["disableFastProcess"].first,
            unittest.equals("$arg_disableFastProcess"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              disableFastProcess: arg_disableFastProcess, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--deleteByFilter", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_request = buildDeleteJobsByFilterRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeleteJobsByFilterRequest.fromJson(json);
        checkDeleteJobsByFilterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/jobs:deleteByFilter"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteByFilter(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--histogram", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_request = buildGetHistogramRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetHistogramRequest.fromJson(json);
        checkGetHistogramRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2/jobs:histogram"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetHistogramResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .histogram(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetHistogramResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_idsOnly = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v2/jobs"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["idsOnly"].first, unittest.equals("$arg_idsOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              idsOnly: arg_idsOnly,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_request = buildUpdateJobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateJobRequest.fromJson(json);
        checkUpdateJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchJobsRequest.fromJson(json);
        checkSearchJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v2/jobs:search"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });

    unittest.test("method--searchForAlert", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.JobsApi(mock).jobs;
      var arg_request = buildSearchJobsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchJobsRequest.fromJson(json);
        checkSearchJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/jobs:searchForAlert"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForAlert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchJobsResponse(response);
      })));
    });
  });

  unittest.group("resource-V2ResourceApi", () {
    unittest.test("method--complete", () {
      var mock = new HttpServerMock();
      api.V2ResourceApi res = new api.JobsApi(mock).v2;
      var arg_companyName = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_languageCode = "foo";
      var arg_type = "foo";
      var arg_scope = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v2:complete"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["companyName"].first, unittest.equals(arg_companyName));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCompleteQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .complete(
              companyName: arg_companyName,
              pageSize: arg_pageSize,
              query: arg_query,
              languageCode: arg_languageCode,
              type: arg_type,
              scope: arg_scope,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompleteQueryResponse(response);
      })));
    });
  });
}
