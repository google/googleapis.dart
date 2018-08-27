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

buildUnnamed4424() {
  var o = new core.List<api.CompanyInfoSource>();
  o.add(buildCompanyInfoSource());
  o.add(buildCompanyInfoSource());
  return o;
}

checkUnnamed4424(core.List<api.CompanyInfoSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompanyInfoSource(o[0]);
  checkCompanyInfoSource(o[1]);
}

buildUnnamed4425() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4425(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4426() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed4426(core.List<core.int> o) {
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
    o.companyInfoSources = buildUnnamed4424();
    o.companySize = "foo";
    o.disableLocationOptimization = true;
    o.displayName = "foo";
    o.distributorBillingCompanyId = "foo";
    o.distributorCompanyId = "foo";
    o.eeoText = "foo";
    o.hiringAgency = true;
    o.hqLocation = "foo";
    o.imageUrl = "foo";
    o.keywordSearchableCustomAttributes = buildUnnamed4425();
    o.keywordSearchableCustomFields = buildUnnamed4426();
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
    checkUnnamed4424(o.companyInfoSources);
    unittest.expect(o.companySize, unittest.equals('foo'));
    unittest.expect(o.disableLocationOptimization, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.distributorBillingCompanyId, unittest.equals('foo'));
    unittest.expect(o.distributorCompanyId, unittest.equals('foo'));
    unittest.expect(o.eeoText, unittest.equals('foo'));
    unittest.expect(o.hiringAgency, unittest.isTrue);
    unittest.expect(o.hqLocation, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    checkUnnamed4425(o.keywordSearchableCustomAttributes);
    checkUnnamed4426(o.keywordSearchableCustomFields);
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

buildUnnamed4427() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4427(core.List<core.String> o) {
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
    o.units = buildUnnamed4427();
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
    checkUnnamed4427(o.units);
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

buildUnnamed4428() {
  var o = new core.List<api.CompensationEntry>();
  o.add(buildCompensationEntry());
  o.add(buildCompensationEntry());
  return o;
}

checkUnnamed4428(core.List<api.CompensationEntry> o) {
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
    o.entries = buildUnnamed4428();
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
    checkUnnamed4428(o.entries);
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

buildUnnamed4429() {
  var o = new core.List<api.CompletionResult>();
  o.add(buildCompletionResult());
  o.add(buildCompletionResult());
  return o;
}

checkUnnamed4429(core.List<api.CompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompletionResult(o[0]);
  checkCompletionResult(o[1]);
}

core.int buildCounterCompleteQueryResponse = 0;
buildCompleteQueryResponse() {
  var o = new api.CompleteQueryResponse();
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    o.completionResults = buildUnnamed4429();
    o.metadata = buildResponseMetadata();
  }
  buildCounterCompleteQueryResponse--;
  return o;
}

checkCompleteQueryResponse(api.CompleteQueryResponse o) {
  buildCounterCompleteQueryResponse++;
  if (buildCounterCompleteQueryResponse < 3) {
    checkUnnamed4429(o.completionResults);
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

buildUnnamed4430() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed4430(core.Map<core.String, core.int> o) {
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
    o.stringValueHistogramResult = buildUnnamed4430();
  }
  buildCounterCustomAttributeHistogramResult--;
  return o;
}

checkCustomAttributeHistogramResult(api.CustomAttributeHistogramResult o) {
  buildCounterCustomAttributeHistogramResult++;
  if (buildCounterCustomAttributeHistogramResult < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkNumericBucketingResult(o.longValueHistogramResult);
    checkUnnamed4430(o.stringValueHistogramResult);
  }
  buildCounterCustomAttributeHistogramResult--;
}

buildUnnamed4431() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4431(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomField = 0;
buildCustomField() {
  var o = new api.CustomField();
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    o.values = buildUnnamed4431();
  }
  buildCounterCustomField--;
  return o;
}

checkCustomField(api.CustomField o) {
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    checkUnnamed4431(o.values);
  }
  buildCounterCustomField--;
}

buildUnnamed4432() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4432(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomFieldFilter = 0;
buildCustomFieldFilter() {
  var o = new api.CustomFieldFilter();
  buildCounterCustomFieldFilter++;
  if (buildCounterCustomFieldFilter < 3) {
    o.queries = buildUnnamed4432();
    o.type = "foo";
  }
  buildCounterCustomFieldFilter--;
  return o;
}

checkCustomFieldFilter(api.CustomFieldFilter o) {
  buildCounterCustomFieldFilter++;
  if (buildCounterCustomFieldFilter < 3) {
    checkUnnamed4432(o.queries);
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

buildUnnamed4433() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4433(core.List<core.String> o) {
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
    o.compensationUnits = buildUnnamed4433();
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
    checkUnnamed4433(o.compensationUnits);
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(
        o.includeJobWithUnspecifiedCompensationRange, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterExtendedCompensationFilter--;
}

buildUnnamed4434() {
  var o = new core.List<api.ExtendedCompensationInfoCompensationEntry>();
  o.add(buildExtendedCompensationInfoCompensationEntry());
  o.add(buildExtendedCompensationInfoCompensationEntry());
  return o;
}

checkUnnamed4434(core.List<api.ExtendedCompensationInfoCompensationEntry> o) {
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
    o.entries = buildUnnamed4434();
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
    checkUnnamed4434(o.entries);
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

buildUnnamed4435() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4435(core.List<core.String> o) {
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
    o.searchTypes = buildUnnamed4435();
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
    checkUnnamed4435(o.searchTypes);
  }
  buildCounterGetHistogramRequest--;
}

buildUnnamed4436() {
  var o = new core.List<api.HistogramResult>();
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

checkUnnamed4436(core.List<api.HistogramResult> o) {
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
    o.results = buildUnnamed4436();
  }
  buildCounterGetHistogramResponse--;
  return o;
}

checkGetHistogramResponse(api.GetHistogramResponse o) {
  buildCounterGetHistogramResponse++;
  if (buildCounterGetHistogramResponse < 3) {
    checkResponseMetadata(o.metadata);
    checkUnnamed4436(o.results);
  }
  buildCounterGetHistogramResponse--;
}

buildUnnamed4437() {
  var o = new core.List<api.CompensationHistogramRequest>();
  o.add(buildCompensationHistogramRequest());
  o.add(buildCompensationHistogramRequest());
  return o;
}

checkUnnamed4437(core.List<api.CompensationHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramRequest(o[0]);
  checkCompensationHistogramRequest(o[1]);
}

buildUnnamed4438() {
  var o = new core.List<api.CustomAttributeHistogramRequest>();
  o.add(buildCustomAttributeHistogramRequest());
  o.add(buildCustomAttributeHistogramRequest());
  return o;
}

checkUnnamed4438(core.List<api.CustomAttributeHistogramRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramRequest(o[0]);
  checkCustomAttributeHistogramRequest(o[1]);
}

buildUnnamed4439() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4439(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogramFacets = 0;
buildHistogramFacets() {
  var o = new api.HistogramFacets();
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    o.compensationHistogramFacets = buildUnnamed4437();
    o.customAttributeHistogramFacets = buildUnnamed4438();
    o.simpleHistogramFacets = buildUnnamed4439();
  }
  buildCounterHistogramFacets--;
  return o;
}

checkHistogramFacets(api.HistogramFacets o) {
  buildCounterHistogramFacets++;
  if (buildCounterHistogramFacets < 3) {
    checkUnnamed4437(o.compensationHistogramFacets);
    checkUnnamed4438(o.customAttributeHistogramFacets);
    checkUnnamed4439(o.simpleHistogramFacets);
  }
  buildCounterHistogramFacets--;
}

buildUnnamed4440() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed4440(core.Map<core.String, core.int> o) {
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
    o.values = buildUnnamed4440();
  }
  buildCounterHistogramResult--;
  return o;
}

checkHistogramResult(api.HistogramResult o) {
  buildCounterHistogramResult++;
  if (buildCounterHistogramResult < 3) {
    unittest.expect(o.searchType, unittest.equals('foo'));
    checkUnnamed4440(o.values);
  }
  buildCounterHistogramResult--;
}

buildUnnamed4441() {
  var o = new core.List<api.CompensationHistogramResult>();
  o.add(buildCompensationHistogramResult());
  o.add(buildCompensationHistogramResult());
  return o;
}

checkUnnamed4441(core.List<api.CompensationHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompensationHistogramResult(o[0]);
  checkCompensationHistogramResult(o[1]);
}

buildUnnamed4442() {
  var o = new core.List<api.CustomAttributeHistogramResult>();
  o.add(buildCustomAttributeHistogramResult());
  o.add(buildCustomAttributeHistogramResult());
  return o;
}

checkUnnamed4442(core.List<api.CustomAttributeHistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeHistogramResult(o[0]);
  checkCustomAttributeHistogramResult(o[1]);
}

buildUnnamed4443() {
  var o = new core.List<api.HistogramResult>();
  o.add(buildHistogramResult());
  o.add(buildHistogramResult());
  return o;
}

checkUnnamed4443(core.List<api.HistogramResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistogramResult(o[0]);
  checkHistogramResult(o[1]);
}

core.int buildCounterHistogramResults = 0;
buildHistogramResults() {
  var o = new api.HistogramResults();
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    o.compensationHistogramResults = buildUnnamed4441();
    o.customAttributeHistogramResults = buildUnnamed4442();
    o.simpleHistogramResults = buildUnnamed4443();
  }
  buildCounterHistogramResults--;
  return o;
}

checkHistogramResults(api.HistogramResults o) {
  buildCounterHistogramResults++;
  if (buildCounterHistogramResults < 3) {
    checkUnnamed4441(o.compensationHistogramResults);
    checkUnnamed4442(o.customAttributeHistogramResults);
    checkUnnamed4443(o.simpleHistogramResults);
  }
  buildCounterHistogramResults--;
}

buildUnnamed4444() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4444(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4445() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4445(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4446() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4446(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4447() {
  var o = new core.Map<core.String, api.CustomAttribute>();
  o["x"] = buildCustomAttribute();
  o["y"] = buildCustomAttribute();
  return o;
}

checkUnnamed4447(core.Map<core.String, api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o["x"]);
  checkCustomAttribute(o["y"]);
}

buildUnnamed4448() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4448(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4449() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4449(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4450() {
  var o = new core.Map<core.String, api.CustomField>();
  o["x"] = buildCustomField();
  o["y"] = buildCustomField();
  return o;
}

checkUnnamed4450(core.Map<core.String, api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o["x"]);
  checkCustomField(o["y"]);
}

buildUnnamed4451() {
  var o = new core.List<api.JobLocation>();
  o.add(buildJobLocation());
  o.add(buildJobLocation());
  return o;
}

checkUnnamed4451(core.List<api.JobLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobLocation(o[0]);
  checkJobLocation(o[1]);
}

buildUnnamed4452() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4452(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4453() {
  var o = new core.Map<core.String, api.CustomField>();
  o["x"] = buildCustomField();
  o["y"] = buildCustomField();
  return o;
}

checkUnnamed4453(core.Map<core.String, api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o["x"]);
  checkCustomField(o["y"]);
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.applicationEmailList = buildUnnamed4444();
    o.applicationInstruction = "foo";
    o.applicationUrls = buildUnnamed4445();
    o.benefits = buildUnnamed4446();
    o.companyDisplayName = "foo";
    o.companyName = "foo";
    o.companyTitle = "foo";
    o.compensationInfo = buildCompensationInfo();
    o.createTime = "foo";
    o.customAttributes = buildUnnamed4447();
    o.department = "foo";
    o.description = "foo";
    o.distributorCompanyId = "foo";
    o.educationLevels = buildUnnamed4448();
    o.employmentTypes = buildUnnamed4449();
    o.endDate = buildDate();
    o.expireTime = "foo";
    o.expiryDate = buildDate();
    o.extendedCompensationInfo = buildExtendedCompensationInfo();
    o.filterableCustomFields = buildUnnamed4450();
    o.incentives = "foo";
    o.jobLocations = buildUnnamed4451();
    o.jobTitle = "foo";
    o.languageCode = "foo";
    o.level = "foo";
    o.locations = buildUnnamed4452();
    o.name = "foo";
    o.promotionValue = 42;
    o.publishDate = buildDate();
    o.qualifications = "foo";
    o.referenceUrl = "foo";
    o.region = "foo";
    o.requisitionId = "foo";
    o.responsibilities = "foo";
    o.startDate = buildDate();
    o.unindexedCustomFields = buildUnnamed4453();
    o.updateTime = "foo";
    o.visibility = "foo";
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkUnnamed4444(o.applicationEmailList);
    unittest.expect(o.applicationInstruction, unittest.equals('foo'));
    checkUnnamed4445(o.applicationUrls);
    checkUnnamed4446(o.benefits);
    unittest.expect(o.companyDisplayName, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.companyTitle, unittest.equals('foo'));
    checkCompensationInfo(o.compensationInfo);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4447(o.customAttributes);
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.distributorCompanyId, unittest.equals('foo'));
    checkUnnamed4448(o.educationLevels);
    checkUnnamed4449(o.employmentTypes);
    checkDate(o.endDate);
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkDate(o.expiryDate);
    checkExtendedCompensationInfo(o.extendedCompensationInfo);
    checkUnnamed4450(o.filterableCustomFields);
    unittest.expect(o.incentives, unittest.equals('foo'));
    checkUnnamed4451(o.jobLocations);
    unittest.expect(o.jobTitle, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.level, unittest.equals('foo'));
    checkUnnamed4452(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.promotionValue, unittest.equals(42));
    checkDate(o.publishDate);
    unittest.expect(o.qualifications, unittest.equals('foo'));
    unittest.expect(o.referenceUrl, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.requisitionId, unittest.equals('foo'));
    unittest.expect(o.responsibilities, unittest.equals('foo'));
    checkDate(o.startDate);
    checkUnnamed4453(o.unindexedCustomFields);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterJob--;
}

buildUnnamed4454() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4454(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4455() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4455(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4456() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4456(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4457() {
  var o = new core.Map<core.String, api.CustomFieldFilter>();
  o["x"] = buildCustomFieldFilter();
  o["y"] = buildCustomFieldFilter();
  return o;
}

checkUnnamed4457(core.Map<core.String, api.CustomFieldFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomFieldFilter(o["x"]);
  checkCustomFieldFilter(o["y"]);
}

buildUnnamed4458() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4458(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4459() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4459(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4460() {
  var o = new core.List<api.LocationFilter>();
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

checkUnnamed4460(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobFilters = 0;
buildJobFilters() {
  var o = new api.JobFilters();
  buildCounterJobFilters++;
  if (buildCounterJobFilters < 3) {
    o.categories = buildUnnamed4454();
    o.commuteFilter = buildCommutePreference();
    o.companyNames = buildUnnamed4455();
    o.companyTitles = buildUnnamed4456();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = "foo";
    o.customFieldFilters = buildUnnamed4457();
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed4458();
    o.extendedCompensationFilter = buildExtendedCompensationFilter();
    o.languageCodes = buildUnnamed4459();
    o.locationFilters = buildUnnamed4460();
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
    checkUnnamed4454(o.categories);
    checkCommutePreference(o.commuteFilter);
    checkUnnamed4455(o.companyNames);
    checkUnnamed4456(o.companyTitles);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    checkUnnamed4457(o.customFieldFilters);
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed4458(o.employmentTypes);
    checkExtendedCompensationFilter(o.extendedCompensationFilter);
    checkUnnamed4459(o.languageCodes);
    checkUnnamed4460(o.locationFilters);
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

buildUnnamed4461() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4461(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4462() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4462(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4463() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4463(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4464() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4464(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4465() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4466() {
  var o = new core.List<api.LocationFilter>();
  o.add(buildLocationFilter());
  o.add(buildLocationFilter());
  return o;
}

checkUnnamed4466(core.List<api.LocationFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationFilter(o[0]);
  checkLocationFilter(o[1]);
}

core.int buildCounterJobQuery = 0;
buildJobQuery() {
  var o = new api.JobQuery();
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    o.categories = buildUnnamed4461();
    o.commuteFilter = buildCommutePreference();
    o.companyDisplayNames = buildUnnamed4462();
    o.companyNames = buildUnnamed4463();
    o.compensationFilter = buildCompensationFilter();
    o.customAttributeFilter = "foo";
    o.disableSpellCheck = true;
    o.employmentTypes = buildUnnamed4464();
    o.languageCodes = buildUnnamed4465();
    o.locationFilters = buildUnnamed4466();
    o.publishDateRange = "foo";
    o.query = "foo";
  }
  buildCounterJobQuery--;
  return o;
}

checkJobQuery(api.JobQuery o) {
  buildCounterJobQuery++;
  if (buildCounterJobQuery < 3) {
    checkUnnamed4461(o.categories);
    checkCommutePreference(o.commuteFilter);
    checkUnnamed4462(o.companyDisplayNames);
    checkUnnamed4463(o.companyNames);
    checkCompensationFilter(o.compensationFilter);
    unittest.expect(o.customAttributeFilter, unittest.equals('foo'));
    unittest.expect(o.disableSpellCheck, unittest.isTrue);
    checkUnnamed4464(o.employmentTypes);
    checkUnnamed4465(o.languageCodes);
    checkUnnamed4466(o.locationFilters);
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

buildUnnamed4467() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed4467(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCompaniesResponse = 0;
buildListCompaniesResponse() {
  var o = new api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed4467();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
  }
  buildCounterListCompaniesResponse--;
  return o;
}

checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed4467(o.companies);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCompaniesResponse--;
}

buildUnnamed4468() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed4468(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListCompanyJobsResponse = 0;
buildListCompanyJobsResponse() {
  var o = new api.ListCompanyJobsResponse();
  buildCounterListCompanyJobsResponse++;
  if (buildCounterListCompanyJobsResponse < 3) {
    o.jobs = buildUnnamed4468();
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
    checkUnnamed4468(o.jobs);
    checkResponseMetadata(o.metadata);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals('foo'));
  }
  buildCounterListCompanyJobsResponse--;
}

buildUnnamed4469() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed4469(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed4469();
    o.metadata = buildResponseMetadata();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed4469(o.jobs);
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

buildUnnamed4470() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed4470(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterNumericBucketingOption = 0;
buildNumericBucketingOption() {
  var o = new api.NumericBucketingOption();
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    o.bucketBounds = buildUnnamed4470();
    o.requiresMinMax = true;
  }
  buildCounterNumericBucketingOption--;
  return o;
}

checkNumericBucketingOption(api.NumericBucketingOption o) {
  buildCounterNumericBucketingOption++;
  if (buildCounterNumericBucketingOption < 3) {
    checkUnnamed4470(o.bucketBounds);
    unittest.expect(o.requiresMinMax, unittest.isTrue);
  }
  buildCounterNumericBucketingOption--;
}

buildUnnamed4471() {
  var o = new core.List<api.BucketizedCount>();
  o.add(buildBucketizedCount());
  o.add(buildBucketizedCount());
  return o;
}

checkUnnamed4471(core.List<api.BucketizedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucketizedCount(o[0]);
  checkBucketizedCount(o[1]);
}

core.int buildCounterNumericBucketingResult = 0;
buildNumericBucketingResult() {
  var o = new api.NumericBucketingResult();
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    o.counts = buildUnnamed4471();
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterNumericBucketingResult--;
  return o;
}

checkNumericBucketingResult(api.NumericBucketingResult o) {
  buildCounterNumericBucketingResult++;
  if (buildCounterNumericBucketingResult < 3) {
    checkUnnamed4471(o.counts);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterNumericBucketingResult--;
}

buildUnnamed4472() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4473() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4473(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
buildPostalAddress() {
  var o = new api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed4472();
    o.administrativeArea = "foo";
    o.languageCode = "foo";
    o.locality = "foo";
    o.organization = "foo";
    o.postalCode = "foo";
    o.recipients = buildUnnamed4473();
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
    checkUnnamed4472(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed4473(o.recipients);
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

buildUnnamed4474() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed4474(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterResponseMetadata = 0;
buildResponseMetadata() {
  var o = new api.ResponseMetadata();
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    o.experimentIdList = buildUnnamed4474();
    o.mode = "foo";
    o.requestId = "foo";
  }
  buildCounterResponseMetadata--;
  return o;
}

checkResponseMetadata(api.ResponseMetadata o) {
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    checkUnnamed4474(o.experimentIdList);
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

buildUnnamed4475() {
  var o = new core.List<api.JobLocation>();
  o.add(buildJobLocation());
  o.add(buildJobLocation());
  return o;
}

checkUnnamed4475(core.List<api.JobLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobLocation(o[0]);
  checkJobLocation(o[1]);
}

buildUnnamed4476() {
  var o = new core.List<api.MatchingJob>();
  o.add(buildMatchingJob());
  o.add(buildMatchingJob());
  return o;
}

checkUnnamed4476(core.List<api.MatchingJob> o) {
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
    o.appliedJobLocationFilters = buildUnnamed4475();
    o.estimatedTotalSize = "foo";
    o.histogramResults = buildHistogramResults();
    o.jobView = "foo";
    o.matchingJobs = buildUnnamed4476();
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
    checkUnnamed4475(o.appliedJobLocationFilters);
    unittest.expect(o.estimatedTotalSize, unittest.equals('foo'));
    checkHistogramResults(o.histogramResults);
    unittest.expect(o.jobView, unittest.equals('foo'));
    checkUnnamed4476(o.matchingJobs);
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

buildUnnamed4477() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4477(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringValues = 0;
buildStringValues() {
  var o = new api.StringValues();
  buildCounterStringValues++;
  if (buildCounterStringValues < 3) {
    o.values = buildUnnamed4477();
  }
  buildCounterStringValues--;
  return o;
}

checkStringValues(api.StringValues o) {
  buildCounterStringValues++;
  if (buildCounterStringValues < 3) {
    checkUnnamed4477(o.values);
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

  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
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
      var arg_mustHaveOpenJobs = true;
      var arg_pageToken = "foo";
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
        unittest.expect(queryMap["mustHaveOpenJobs"].first,
            unittest.equals("$arg_mustHaveOpenJobs"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
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
              mustHaveOpenJobs: arg_mustHaveOpenJobs,
              pageToken: arg_pageToken,
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
      var arg_includeJobsCount = true;
      var arg_pageToken = "foo";
      var arg_idsOnly = true;
      var arg_pageSize = 42;
      var arg_jobRequisitionId = "foo";
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
        unittest.expect(queryMap["includeJobsCount"].first,
            unittest.equals("$arg_includeJobsCount"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["idsOnly"].first, unittest.equals("$arg_idsOnly"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["jobRequisitionId"].first,
            unittest.equals(arg_jobRequisitionId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCompanyJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_companyName,
              includeJobsCount: arg_includeJobsCount,
              pageToken: arg_pageToken,
              idsOnly: arg_idsOnly,
              pageSize: arg_pageSize,
              jobRequisitionId: arg_jobRequisitionId,
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
      var arg_filter = "foo";
      var arg_pageToken = "foo";
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
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
              filter: arg_filter,
              pageToken: arg_pageToken,
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
      var arg_type = "foo";
      var arg_companyName = "foo";
      var arg_scope = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_languageCode = "foo";
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
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(
            queryMap["companyName"].first, unittest.equals(arg_companyName));
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCompleteQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .complete(
              type: arg_type,
              companyName: arg_companyName,
              scope: arg_scope,
              pageSize: arg_pageSize,
              query: arg_query,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompleteQueryResponse(response);
      })));
    });
  });
}
